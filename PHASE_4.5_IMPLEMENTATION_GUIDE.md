# Phase 4.5: デイリーミッション統一実装ガイド

**実装完了日**: 2026-09-12  
**ステータス**: ✅ shared_core 側の実装完了  
**次フェーズ**: 各アプリ側のハンドラ実装

---

## 概要

Phase 4.5 では、7つの小学コレシリーズアプリで統一されたデイリーミッション機能を提供します。shared_core が型と共通ロジックのみを提供し、実際の Firestore 処理は各アプリから handler 注入する設計です。

### 設計原則
- **型と共通ロジック**: shared_core 提供（キャッシュ戦略、リセット判定、状態管理）
- **実処理**（Firestore）: 各アプリが handler として実装
- **Cache-First**: ローカル SharedPreferences が SoT（source of truth）、handler は非同期で後付け

---

## Shared Core 実装状況

### 1. Models（`lib/models/daily_mission_model.dart`）✅

```dart
// ミッション定義
class DailyMission {
  final String missionId;
  final String title;
  final String description;
  final int targetValue;       // クリア条件（問題数など）
  final String unit;           // 単位（問、分、など）
  final String subject;        // 教科タグ
  final MissionReward reward;  // 報酬
  final DateTime resetTime;
  final bool enabled;
  final List<String> appIds;
}

// 進捗追跡
class DailyMissionProgress {
  final String userId;
  final String missionId;
  final int currentValue;
  final bool completed;
  final DateTime? completedAt;
  final DateTime createdAt;
  final DateTime lastResetDate;
}

// UI 表示用
class DailyMissionListItem {
  final DailyMission mission;
  final DailyMissionProgress progress;
  final bool isLocked;
  final int progressPercentage;
}
```

### 2. Provider（`lib/providers/daily_mission_provider.dart`）✅

**TypeDef（Handler インターフェース）**:
```dart
typedef DailyMissionFetchHandler = 
  Future<List<DailyMission>> Function(String appId);
typedef DailyMissionProgressHandler = 
  Future<void> Function(String userId, String missionId, int currentValue);
typedef DailyMissionCompleteHandler = 
  Future<void> Function(String userId, String missionId, MissionReward reward);
```

**Setter メソッド**:
```dart
void setFetchHandler(DailyMissionFetchHandler handler);
void setProgressHandler(DailyMissionProgressHandler handler);
void setCompleteHandler(DailyMissionCompleteHandler handler);
```

**キー機能**:
- `initializeDailyMissions()`: ミッション読み込み・リセット判定
- `updateDailyProgress()`: 進捗更新（キャッシュ優先、handler 非同期）
- `completeDailyMission()`: ミッション完了・報酬配布
- `getActiveMissions()`: UI 表示用ミッション一覧

### 3. Widgets（`lib/widgets/daily_mission_dashboard.dart`）✅

- **DailyMissionDashboard**: 統合ダッシュボード
  - 本日の報酬サマリー（獲得コイン・完了度）
  - ミッション一覧表示
  - 進捗バー・完了ボタン
- **_TodaysRewardCard**: 報酬サマリーカード
- **_MissionCard**: ミッション個別カード

---

## 各アプリ側の実装パターン

### ステップ 1: Firestore Mission Service 作成

**ファイル**: `lib/services/firestore_mission_service.dart`

```dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_core/models/daily_mission_model.dart';
import 'package:shared_core/providers/daily_mission_provider.dart';

class FirestoreMissionService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  static final String appId = 'your_app_id'; // 'sansu', 'kokugo', など

  /// Handler 1: ミッション取得
  Future<List<DailyMission>> fetchMissions(String appId) async {
    try {
      final doc = await _firestore
          .collection('apps')
          .doc(appId)
          .collection('daily_missions')
          .doc('active')
          .get();

      if (!doc.exists) {
        return []; // フォールバックデフォルト
      }

      final data = doc.data() as Map<String, dynamic>;
      final missions = (data['missions'] as List?)
          ?.map((m) => DailyMission.fromJson(m as Map<String, dynamic>))
          .toList() ?? [];

      return missions;
    } catch (e) {
      debugPrint('Error fetching missions: $e');
      rethrow; // Provider でキャッチされ、デフォルト読込へ
    }
  }

  /// Handler 2: 進捗更新（Firestore 永続化）
  Future<void> updateProgress(
    String userId,
    String missionId,
    int currentValue,
  ) async {
    try {
      await _firestore
          .collection('users')
          .doc(userId)
          .collection('daily_missions')
          .doc(missionId)
          .update({
        'currentValue': currentValue,
        'lastUpdatedAt': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      debugPrint('Error updating progress: $e');
      // キャッシュは既に更新済みなので、ここはエラー無視
    }
  }

  /// Handler 3: 報酬配布
  Future<void> completeMission(
    String userId,
    String missionId,
    MissionReward reward,
  ) async {
    try {
      // Firestore transaction で報酬配布
      await _firestore.runTransaction((transaction) async {
        final userRef = _firestore.collection('users').doc(userId);
        
        // ミッション完了マーク
        transaction.update(
          userRef.collection('daily_missions').doc(missionId),
          {
            'completed': true,
            'completedAt': FieldValue.serverTimestamp(),
          },
        );

        // コイン加算
        if (reward.type == RewardType.coins) {
          final userDoc = await transaction.get(userRef);
          final currentCoins = (userDoc.data()?['coins'] as int?) ?? 0;
          transaction.update(userRef, {
            'coins': currentCoins + reward.amount,
          });
        }

        // 報酬ログ（分析用）
        transaction.set(
          userRef.collection('reward_logs').doc(),
          {
            'type': 'mission_completion',
            'missionId': missionId,
            'reward': reward.toJson(),
            'timestamp': FieldValue.serverTimestamp(),
          },
        );
      });
    } catch (e) {
      debugPrint('Error completing mission: $e');
      rethrow;
    }
  }
}
```

### ステップ 2: Provider に Handler を注入

**ファイル**: `main.dart`

```dart
import 'package:shared_core/providers/daily_mission_provider.dart';
import 'services/firestore_mission_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  final missionService = FirestoreMissionService();

  // Provider にハンドラを注入
  final container = ProviderContainer(
    overrides: [
      // ... 他の override ...
    ],
  );

  // Handler 注入（initializeDailyMissions 前に実行）
  container.read(dailyMissionProvider.notifier)
    ..setFetchHandler(missionService.fetchMissions)
    ..setProgressHandler(missionService.updateProgress)
    ..setCompleteHandler(missionService.completeMission);

  // ユーザーID 取得後にミッションを初期化
  final userId = await _getCurrentUserId(); // Firebase Auth
  container.read(dailyMissionProvider.notifier)
      .initializeDailyMissions(userId, 'app_id');

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const MyApp(),
    ),
  );
}
```

### ステップ 3: 画面から利用

**ファイル**: 任意の画面（`home_screen.dart` など）

```dart
// ダッシュボード表示
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (_) => const DailyMissionDashboard(
      appTitle: '算数コレ',
      primaryColor: Colors.blue,
    ),
  ),
);

// または provider から直接アクセス
final activeMissions = ref.watch(activeDailyMissionsProvider);
final totalCoins = ref.watch(dailyMissionCoinsProvider);

// 進捗更新
await ref.read(dailyMissionProvider.notifier)
    .updateDailyProgress('mission_id', 5);

// ミッション完了
await ref.read(dailyMissionProvider.notifier)
    .completeDailyMission('mission_id');
```

---

## Firestore スキーマ例

### Collections 構造

```
apps/{appId}/daily_missions/
  └─ active/
     ├─ missions (array)
     │  ├─ [0]
     │  │  ├─ missionId: "morning_5problems"
     │  │  ├─ title: "朝の5問チャレンジ"
     │  │  ├─ description: "毎朝5問クイズに挑戦しよう"
     │  │  ├─ targetValue: 5
     │  │  ├─ unit: "問"
     │  │  ├─ subject: "sansu"
     │  │  ├─ reward: { type: "coins", amount: 50 }
     │  │  ├─ enabled: true
     │  │  └─ appIds: ["sansu", "kokugo"]
     │  └─ ...
     ├─ updatedAt: Timestamp
     └─ version: 2

users/{userId}/daily_missions/
  └─ {missionId}/
     ├─ userId: string
     ├─ missionId: string
     ├─ currentValue: int
     ├─ completed: bool
     ├─ completedAt: Timestamp?
     ├─ createdAt: Timestamp
     ├─ lastResetDate: Date
     └─ lastUpdatedAt: Timestamp

users/{userId}/reward_logs/
  └─ {logId}/
     ├─ type: "mission_completion"
     ├─ missionId: string
     ├─ reward: { type: "coins", amount: 50 }
     └─ timestamp: Timestamp
```

### Document 例

**apps/sansu/daily_missions/active**
```json
{
  "missions": [
    {
      "missionId": "morning_5problems",
      "title": "朝の5問チャレンジ",
      "description": "毎朝5問クイズに挑戦しよう",
      "targetValue": 5,
      "unit": "問",
      "subject": "sansu",
      "reward": {
        "type": "coins",
        "amount": 50
      },
      "enabled": true,
      "appIds": ["sansu"]
    }
  ],
  "updatedAt": Timestamp,
  "version": 2
}
```

---

## Firestore セキュリティルール例

```firestore
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    // 読み取り専用: アプリ設定
    match /apps/{appId}/daily_missions/{doc=**} {
      allow read: if true;
      allow write: if false;
    }

    // ユーザーの進捗: 本人のみ読み書き
    match /users/{userId}/daily_missions/{missionId} {
      allow read: if request.auth.uid == userId;
      allow write: if request.auth.uid == userId;
    }

    // 報酬ログ: 本人のみ読み取り
    match /users/{userId}/reward_logs/{logId} {
      allow read: if request.auth.uid == userId;
      allow write: if request.auth.uid == userId;
    }
  }
}
```

---

## 各アプリ統合チェックリスト

実装時に以下を確認してください。

### [ ] Phase 4.5 基盤

- [ ] `pubspec.yaml` で `shared_core` をインポート（git dependency）
- [ ] `DailyMissionDashboard`, `activeDailyMissionsProvider`, `dailyMissionCoinsProvider` をインポート可能か確認

### [ ] Firestore スキーマ設定

- [ ] `apps/{appId}/daily_missions/active` collection を作成
- [ ] ミッション定義を JSON 形式で登録（20+個推奨）
- [ ] `users/{userId}/daily_missions` subcollection を有効化

### [ ] Firestore Mission Service 実装

- [ ] `FirestoreMissionService` クラスを作成（`lib/services/` 下）
- [ ] 3つのハンドラを実装（fetch, progress, complete）
- [ ] エラーハンドリング・debugPrint を追加
- [ ] Transaction で報酬配布の原子性を確保

### [ ] Provider Handler 注入

- [ ] `main.dart` で `FirestoreMissionService` をインスタンス化
- [ ] `setFetchHandler`, `setProgressHandler`, `setCompleteHandler` を呼び出し
- [ ] `initializeDailyMissions(userId, appId)` を適切なタイミングで実行

### [ ] UI 統合

- [ ] ホーム画面に `DailyMissionDashboard` へのナビゲーションを追加
- [ ] または `DailyMissionCard` ウィジェットを既存画面に埋め込み
- [ ] Theme 色を `primaryColor` に合わせてカスタマイズ

### [ ] テスト

- [ ] ローカルデバッグでミッション取得が機能するか確認
- [ ] 進捗更新が SharedPreferences に保存されるか確認
- [ ] Firestore に同期されるか確認
- [ ] 日付リセット判定が正しく機能するか確認（5:00 AM 基準）
- [ ] ネットワーク遮断時のキャッシュフォールバックが機能するか確認

### [ ] ドキュメント更新

- [ ] アプリの `CLAUDE.md` に Phase 4.5 実装セクションを追加
- [ ] ハンドラ実装の概要を記載

---

## よくある質問

**Q. Handler が null の場合はどうなる？**  
A. shared_core は自動的にデフォルトミッション（朝の5問チャレンジ）を使用。アプリが handler を設定しないと、Firestore データが使われず、デフォルトのみになります。

**Q. SharedPreferences と Firestore が同期しない場合は？**  
A. キャッシュが SoT。アプリ起動時に `initializeDailyMissions()` を呼ぶと、Firestore から最新ミッション定義を読み込みます。進捗は eventually consistent（数秒～数分）。

**Q. 複数デバイス間でミッション進捗は同期される？**  
A. Firestore に同期されるため、別デバイスからログインすると最新進捗が読め込まれます。ローカルキャッシュは device-specific。

**Q. ミッション定義をリアルタイム更新したい場合は？**  
A. Firebase RemoteConfig で配信し、app 起動時や特定時間に `fetchHandler` を再実行。ただし shared_core は RemoteConfig 統合を提供していないため、アプリ側で実装。

---

## 実装例リファレンス

### sansu-kore（参考実装）
実装完了予定。→ GitHub PR

### 他アプリ
Phase 4.5 リリース後、各アプリで順次実装。優先度順：
1. eigo（英語）
2. kokugo（国語）
3. shogaku-kore-programming（プログラミング）
4. shinshin（道徳）
5. social_quiz_app（社会）
6. cross_promo_kit（クロスプロモ）
7. yourwish（SNS ゲーム）

---

## Phase 4.6 への展開

Phase 4.5 が全アプリに展開できたら、次は：

- **Phase 4.6**: 保護者ゲート・スクリーンタイム制限（ParentalGate, ScreenTimeNotifier）
- **Phase 4.7**: サブスクリプション統一（全アプリ RevenueCat）
- **Phase 4.8**: グローバルランキング・フレンド機能（Firestore マルチアプリ連携）

---

**最終更新**: 2026-09-12  
**ステータス**: shared_core 実装完了、各アプリ実装待ち  
**次タスク**: 各アプリで `FirestoreMissionService` を実装し、handler を注入

