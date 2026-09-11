# Phase 4.14: Multiplayer System Unification — 実装ガイド

**実装日**: 2026-09-11  
**バージョン**: shared_core v0.2.0+  
**ステータス**: ✅ コア実装完了、各アプリ統合準備中

---

## 📋 概要

Phase 4.14 は、小学コレシリーズ全7アプリでの **統一マルチプレイ・マッチメイキング・レーティング・ランキングシステム** を実現します。

### 主な特徴

- ✅ **Eloレーティング & Glicko-2対応** - プロ級のレーティング計算
- ✅ **リアルタイムマッチメイキング** - ±300レート範囲、最大60秒待機
- ✅ **複数ランキング** - グローバル + 教科別（7教科別立）
- ✅ **バトルセッション管理** - 複数ラウンド、スコア同期、結果保存
- ✅ **統一UI/UX** - 3つの新規画面（マッチメイキング、バトル、ランキング）
- ✅ **アプリ独立実装** - ハンドラベース設計で、Firestore/REST等どのバックエンドでも対応可能

---

## 🏗️ 実装された新規コンポーネント

### 1. データモデル拡張 (`lib/models/multiplayer_model.dart`)

#### 新規追加モデル

| モデル | 説明 | 用途 |
|--------|------|------|
| `UserRating` | Glicko-2対応レーティング情報 | ユーザーのレート・信頼度・ボラティリティ管理 |
| `RatingSystem` | Elo / Glicko-2 の選択列挙型 | レーティング方式の明示 |
| `MatchResult` | 対戦結果（勝敗・スコア・レート変動） | 対戦履歴の記録 |
| `BattleSession` | 全体の対戦セッション管理 | 複数ラウンド、プレイヤー情報、結果格納 |
| `BattleRound` | 1ラウンド分の問題・回答データ | 各問題の回答時間・正誤情報 |
| `MatchmakingRequest` | マッチメイキング要求 | ユーザーの検索条件（レート範囲、教科等） |
| `LeaderboardEntry` | ランキング1行分 | 順位・ユーザー名・レート・勝率 |

#### 既存モデル

| モデル | 説明 | 変更内容 |
|--------|------|---------|
| `MatchmakingQueueEntry` | キューエントリ | 変更なし（後方互換性保持） |
| `MatchStatus` | マッチ進行状況 | 変更なし |
| `PlayerRating` | シンプルなプレイヤー成績 | 変更なし（レガシー用） |

### 2. レーティング計算サービス (`lib/services/rating_calculator.dart`)

#### 提供メソッド

```dart
// Elo レーティング
static double calculateEloChange(double playerRating, double opponentRating, bool playerWon)
static UserRating updateEloFromMatches(UserRating player, List<...> results)

// Glicko-2（推奨）
static UserRating updateGlicko2(UserRating player, double opponentRating, ...)
static UserRating updateGlicko2Batch(UserRating player, List<...> results)

// ランキング計算
static List<(int rank, String userId)> calculateRanks(List<...> entries)
```

### 3. プロバイダー拡張 (`lib/providers/`)

#### matchmaking_provider.dart 拡張

```dart
// 新規: 詳細レーティングハンドラ
class AdvancedMatchmakingHandlers extends MatchmakingHandlers {
  final UpdatePlayerRatingHandler updatePlayerRating;
  final GetUserRatingHandler getUserRating;
  final CreateOrGetUserRatingHandler createOrGetUserRating;
}
```

#### 新規: battle_session_provider.dart

```dart
// ハンドラ群
typedef GetBattleSessionHandler = Future<BattleSession?> Function(String sessionId);
typedef WatchBattleSessionHandler = Stream<BattleSession> Function(String sessionId);
typedef GetUserRatingHandler = Future<UserRating> Function(String userId);
typedef GetGlobalLeaderboardHandler = Future<List<LeaderboardEntry>> Function(...);
typedef GetSubjectLeaderboardHandler = Future<List<LeaderboardEntry>> Function(String subject, ...);

// Providers
final activeBattleSessionProvider = StreamProvider.autoDispose.family<BattleSession, String>(...);
final userRatingProvider = FutureProvider.autoDispose.family<UserRating, String>(...);
final globalLeaderboardProvider = FutureProvider.autoDispose<List<LeaderboardEntry>>(...);
final subjectLeaderboardProvider = FutureProvider.autoDispose.family<List<LeaderboardEntry>, String>(...);
```

### 4. UI ウィジェット (`lib/widgets/multiplayer/`)

#### 3つの新規画面

| ウィジェット | 説明 | 用途 |
|------------|------|------|
| `MatchmakingScreen` | マッチメイキング待機画面 | 対戦相手探索中の表示、タイムアウト処理 |
| `BattleScreen` | バトル進行中画面 | リアルタイムスコア同期、ラウンド進行 |
| `LeaderboardScreen` | グローバル・教科別ランキング | 順位表示、ユーザー詳細情報 |
| `UserRankingDetailScreen` | ユーザー詳細画面 | 成績統計、レート情報表示 |

---

## 🚀 各アプリでの統合手順

### Step 1: shared_core の git dependency を確認

`pubspec.yaml` に以下があることを確認：

```yaml
dependencies:
  shared_core:
    git:
      url: https://github.com/org-zka32101/shared_core.git
      ref: main  # または特定のタグ
```

### Step 2: Firebase / Firestore を準備

共通 Firebase プロジェクトで以下のコレクション構造を作成：

```
Firestore
├── battle_sessions/
│   └── {sessionId}
│       ├── sessionId: String
│       ├── player1Id, player2Id: String
│       ├── status: "waiting" | "inProgress" | "finished"
│       ├── rounds: Array<BattleRound>
│       └── ...
├── leaderboards/
│   ├── global/
│   │   └── entries/
│   │       └── {userId}
│   │           ├── rank: int
│   │           ├── userId, userName: String
│   │           ├── rating: int
│   │           ├── wins, totalMatches: int
│   │           ├── winRate: double
│   │           └── ...
│   ├── sansu/
│   ├── kokugo/
│   ├── eigo/
│   ├── rika/
│   ├── shakai/
│   ├── programming/
│   └── doutoku/
└── users/{userId}/
    ├── rating/
    │   └── current
    │       ├── userId, rating: String/int
    │       ├── ratingDeviation, volatility: double
    │       ├── totalMatches, winCount: int
    │       └── ...
    └── matches/ (optional)
        └── {matchId}
```

Firestore セキュリティルール例（`firebase_service.dart` で実装）：

```firestore
match /battle_sessions/{sessionId} {
  allow read: if request.auth != null;
  allow write: if request.auth.uid in resource.data.playerIds;
}

match /leaderboards/{document=**} {
  allow read: if request.auth != null;
  allow write: if false; // サーバー側の Cloud Functions で更新
}

match /users/{userId}/rating/{document=**} {
  allow read: if request.auth != null;
  allow write: if request.auth.uid == userId;
}
```

### Step 3: アプリ側の Handlers を実装

各アプリの `lib/services/firebase_multiplayer_service.dart` で以下を実装：

```dart
import 'package:shared_core/providers/battle_session_provider.dart';
import 'package:shared_core/services/rating_calculator.dart';

class FirebaseMultiplayerService {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;

  FirebaseMultiplayerService(this._firestore, this._auth);

  // BattleSessionHandlers の各メソッドを実装
  Future<BattleSession?> getBattleSession(String sessionId) async {
    final doc = await _firestore.collection('battle_sessions').doc(sessionId).get();
    if (!doc.exists) return null;
    return BattleSession.fromJson(doc.data() as Map<String, dynamic>);
  }

  Stream<BattleSession> watchBattleSession(String sessionId) {
    return _firestore
        .collection('battle_sessions')
        .doc(sessionId)
        .snapshots()
        .map((snap) => BattleSession.fromJson(snap.data() as Map<String, dynamic>));
  }

  Future<UserRating> getUserRating(String userId) async {
    final doc = await _firestore
        .collection('users')
        .doc(userId)
        .collection('rating')
        .doc('current')
        .get();

    if (doc.exists) {
      return UserRating.fromJson(doc.data() as Map<String, dynamic>);
    }

    // 初期レーティング作成
    final initial = UserRating.initial(userId);
    await _firestore
        .collection('users')
        .doc(userId)
        .collection('rating')
        .doc('current')
        .set(initial.toJson());
    return initial;
  }

  Future<List<LeaderboardEntry>> getGlobalLeaderboard({int limit = 100, int offset = 0}) async {
    final docs = await _firestore
        .collection('leaderboards')
        .doc('global')
        .collection('entries')
        .orderBy('rating', descending: true)
        .limit(limit)
        .get();

    return docs.docs
        .asMap()
        .entries
        .map((e) {
          final data = e.value.data();
          data['rank'] = offset + e.key + 1;
          return LeaderboardEntry.fromJson(data);
        })
        .toList();
  }

  Future<List<LeaderboardEntry>> getSubjectLeaderboard(String subject, {int limit = 50, int offset = 0}) async {
    final docs = await _firestore
        .collection('leaderboards')
        .doc(subject)
        .collection('entries')
        .orderBy('rating', descending: true)
        .limit(limit)
        .get();

    return docs.docs
        .asMap()
        .entries
        .map((e) {
          final data = e.value.data();
          data['rank'] = offset + e.key + 1;
          return LeaderboardEntry.fromJson(data);
        })
        .toList();
  }

  // 対戦後のレーティング更新
  Future<UserRating> updatePlayerRating({
    required String userId,
    required String opponentId,
    required double opponentRating,
    required bool playerWon,
  }) async {
    final currentRating = await getUserRating(userId);

    // Glicko-2で更新
    final newRating = RatingCalculator.updateGlicko2(
      currentRating,
      opponentRating,
      1.0, // opponentRD（Firestore等から取得）
      playerWon,
    );

    // Firestore に保存
    await _firestore
        .collection('users')
        .doc(userId)
        .collection('rating')
        .doc('current')
        .set(newRating.toJson());

    return newRating;
  }

  // Cloud Functions で呼び出し：対戦終了時にランキング更新
  // updateGlobalLeaderboard(winnerId, loserId, winnerRating, loserRating)
}
```

### Step 4: ProviderScope で Handlers を注入

`main.dart` で以下を追加：

```dart
import 'package:shared_core/providers/battle_session_provider.dart';
import 'package:shared_core/providers/matchmaking_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final multiplayerService = FirebaseMultiplayerService(
    FirebaseFirestore.instance,
    FirebaseAuth.instance,
  );

  runApp(
    ProviderScope(
      overrides: [
        // Battle Session Handlers
        battleSessionHandlersProvider.overrideWithValue(
          BattleSessionHandlers(
            getBattleSession: (sessionId) => multiplayerService.getBattleSession(sessionId),
            watchBattleSession: (sessionId) => multiplayerService.watchBattleSession(sessionId),
            getUserRating: (userId) => multiplayerService.getUserRating(userId),
            getGlobalLeaderboard: ({int limit = 100, int offset = 0}) =>
                multiplayerService.getGlobalLeaderboard(limit: limit, offset: offset),
            getSubjectLeaderboard: (subject, {int limit = 50, int offset = 0}) =>
                multiplayerService.getSubjectLeaderboard(subject, limit: limit, offset: offset),
          ),
        ),
        // Matchmaking Handlers (既存)
        matchmakingHandlersProvider.overrideWithValue(
          MatchmakingHandlers(
            joinQueue: (entry) => /* Firestore に登録 */,
            leaveQueue: (userId) => /* Firestore から削除 */,
            findOpponent: ({required myUserId, required myRating, required ratingRange, metadata}) => /* 相手検索 */,
            confirmMatch: ({required me, required opponent}) => /* マッチ確定 */,
            watchQueueEntry: (userId) => /* キューエントリを監視 */,
            getOrCreatePlayerRating: ({required userId, required displayName}) => /* ユーザーレート取得/作成 */,
          ),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
```

### Step 5: UI 画面を統合

#### ホーム画面に「対戦開始」ボタン追加

```dart
ElevatedButton(
  onPressed: () => Navigator.push(
    context,
    MaterialPageRoute(
      builder: (_) => MatchmakingScreen(
        subject: 'sansu', // 教科別
        userRating: 1600,
        onMatchFound: (matchId) {
          // バトル画面へ遷移
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => BattleScreen(sessionId: matchId)),
          );
        },
        onTimeout: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('対戦相手が見つかりませんでした')),
          );
        },
      ),
    ),
  ),
  child: Text('対戦を開始'),
)
```

#### ランキング画面を追加

```dart
// ナビゲーション等で以下を呼び出し
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (_) => LeaderboardScreen(
      subjects: ['sansu', 'kokugo'], // 各アプリ固有の教科を指定
      onUserTap: (userId) {
        // ユーザー詳細画面へ遷移
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => UserRankingDetailScreen(userId: userId),
          ),
        );
      },
    ),
  ),
)
```

---

## 📊 レーティング計算の詳細

### Elo レーティング（シンプル）

期待勝率を基に、試合結果に応じてレーティングを更新：

```
R' = R + K * (actual - expected)
```

**長所**: 実装が簡単、計算が高速  
**短所**: 時間経過による信頼度減衰を考慮しない

### Glicko-2（推奨）

Eloの拡張版で、レーティングの信頼度（RD）とボラティリティ（σ）を考慮：

```
rating' = rating + (K / (RD^-2 + 1/d^2)) * Σ g(RD_i) * (s_i - E(...))
RD' = sqrt(1 / (1/RD^2 + 1/d^2))
σ' = iterative volatility calculation
```

**長所**: より精密、長時間の非対戦で信頼度が低下、競技的に厳密  
**短所**: 計算複雑、反復演算が必要

### 使用例

```dart
// Glicko-2で更新（推奨）
final newRating = RatingCalculator.updateGlicko2(
  player: currentRating,
  opponentRating: 1500.0,
  opponentRatingDeviation: 200.0,
  playerWon: true,
  daysSinceLastMatch: 0,
);

// Elo で更新（シンプル）
final change = RatingCalculator.calculateEloChange(
  playerRating: 1600,
  opponentRating: 1500,
  playerWon: true,
  kFactor: 32.0,
);
final newRating = 1600 + change;
```

---

## 🔄 マッチメイキング・バトルフロー

### マッチメイキング フロー

```
1. ユーザーが「対戦開始」→ MatchmakingScreen 表示
2. MatchmakingScreen.initState() で:
   - matchmakingProvider.notifier.startSearching() 実行
   - handlers.joinQueue() でキューに追加
   - handlers.findOpponent() で相手検索（±300レート範囲）
3. 相手が見つかった場合:
   - handlers.confirmMatch() でマッチ確定
   - matchId が返される → BattleScreen へ遷移
4. 相手が見つからない場合:
   - 60秒後にタイムアウト → MatchmakingScreen をポップ
   - ScaffoldMessenger で失敗メッセージ表示
```

### バトル フロー

```
1. BattleScreen が activeBattleSessionProvider(sessionId) を監視
2. バトルセッションがリアルタイム更新されるたび、UI が自動更新
3. ラウンドごとに:
   - 問題表示 → プレイヤー回答 → スコア更新
   - 各プレイヤーの回答をラウンドデータに保存
4. 全ラウンド終了後:
   - 勝敗判定 (winnerId = 相手より高スコアのプレイヤー)
   - MatchResult 作成 → Firestore に保存
   - RatingCalculator でレーティング更新
   - ランキング更新（Cloud Functions）
   - BattleResultScreen へ遷移
```

---

## 🔐 Firebase セキュリティ

### Firestore セキュリティルール

```firestore
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    // バトルセッション: 対戦者のみ読み書き可
    match /battle_sessions/{sessionId} {
      allow read: if request.auth != null;
      allow create, update: if request.auth.uid in request.resource.data.playerIds;
      allow delete: if false; // サーバー側のみ削除
    }

    // ランキング: 全員読み取り、サーバーのみ書き込み
    match /leaderboards/{document=**} {
      allow read: if request.auth != null;
      allow write: if false; // Cloud Functions が更新
    }

    // ユーザーレーティング: ユーザーのみアクセス
    match /users/{userId}/rating/{document=**} {
      allow read, write: if request.auth.uid == userId;
    }

    // 対戦履歴
    match /users/{userId}/matches/{document=**} {
      allow read, write: if request.auth.uid == userId;
    }
  }
}
```

### Cloud Functions（バックエンドレーティング更新）

```typescript
// functions/src/updateLeaderboard.ts
import * as functions from 'firebase-functions';
import * as admin from 'firebase-admin';

export const onMatchCompleted = functions.firestore
  .document('battle_sessions/{sessionId}')
  .onUpdate(async (change, context) => {
    const before = change.before.data();
    const after = change.after.data();

    // 状態が finished に変わった場合のみ処理
    if (before.status !== 'finished' && after.status === 'finished') {
      const winnerId = after.winnerId;
      const loserId = after.playerIds.find(id => id !== winnerId);

      // ランキング更新（トランザクション）
      await admin.firestore().runTransaction(async (tx) => {
        // グローバルランキング更新
        tx.update(
          admin.firestore().collection('leaderboards/global/entries').doc(winnerId),
          { wins: admin.firestore.FieldValue.increment(1), /* ... */ }
        );
        // 教科別ランキング更新（subject メタデータから）
        // ...
      });
    }
  });
```

---

## 📱 Firebase RemoteConfig 設定（オプション）

Runtime config での動的制御例：

```json
{
  "matchmaking_config": {
    "ratingRangeThreshold": 300,
    "maxWaitTimeSeconds": 60,
    "autoMatchPriority": ["nearby-rating", "quick-match"],
    "questionsPerMatch": 3,
    "ratingSystem": "glicko2"
  },
  "rating_config": {
    "eloKFactor": 32.0,
    "glicko2Tau": 0.5,
    "minRating": 1400,
    "maxRating": 2800,
    "initialRating": 1500,
    "ratingDecayPercent": 0.05
  }
}
```

使用例（各アプリで）：

```dart
final config = FirebaseRemoteConfig.instance;
await config.fetchAndActivate();

final ratingSystem = config.getString('rating_config')['ratingSystem']; // "glicko2"
final maxWait = config.getInt('matchmaking_config')['maxWaitTimeSeconds']; // 60
```

---

## 📝 実装チェックリスト（各アプリ用）

### 準備段階
- [ ] `pubspec.yaml` で shared_core の version を確認
- [ ] Firebase Console でプロジェクトを作成（共通プロジェクト推奨）
- [ ] Firestore セキュリティルールを設定
- [ ] Cloud Functions をデプロイ（ランキング更新等）

### 実装段階
- [ ] `lib/services/firebase_multiplayer_service.dart` を実装
- [ ] `main.dart` で BattleSessionHandlers, MatchmakingHandlers を注入
- [ ] ホーム画面に「対戦開始」ボタンを追加
- [ ] ナビゲーション画面にランキング画面を追加
- [ ] BattleScreen で具体的な問題コンテンツを実装（アプリ固有）

### テスト段階
- [ ] マッチメイキングが 60秒以内に成立することを確認
- [ ] バトルセッションがリアルタイムで同期されることを確認
- [ ] レーティング計算が正しく反映されることを確認
- [ ] ランキング表示が正しいことを確認

### リリース前
- [ ] Firebase RemoteConfig で本番値を設定
- [ ] Firestore インデックスが自動作成されたことを確認
- [ ] プライバシーポリシーにマルチプレイ・ランキング機能について記載
- [ ] App Store / Google Play に申請

---

## 🔗 関連ファイル

| ファイル | 説明 |
|---------|------|
| `lib/models/multiplayer_model.dart` | 7つの新規データモデル定義 |
| `lib/services/rating_calculator.dart` | Elo & Glicko-2 レーティング計算 |
| `lib/providers/battle_session_provider.dart` | バトルセッション & ランキング provider |
| `lib/providers/matchmaking_provider.dart` | マッチメイキング handler (拡張) |
| `lib/widgets/multiplayer/matchmaking_screen.dart` | マッチメイキング待機画面 |
| `lib/widgets/multiplayer/battle_screen.dart` | バトル進行中画面 |
| `lib/widgets/multiplayer/leaderboard_screen.dart` | ランキング画面 |

---

## 📞 サポート・Q&A

**Q: Firestore/REST 以外のバックエンドを使いたい**  
A: `BattleSessionHandlers` と `MatchmakingHandlers` を実装すれば、どのバックエンドでも対応可能です。

**Q: Glicko-2 計算が複雑**  
A: シンプルな場合は `calculateEloChange()` を使い、スケーリングに応じて Glicko-2 に移行できます。

**Q: ランキングをローカルに保存したい**  
A: `LeaderboardEntry.toJson()` で JSON 化し、SharedPreferences / Hive に保存可能です。

**Q: 複数回対戦時の計算**  
A: `RatingCalculator.updateGlicko2Batch()` で複数試合を一括処理できます。

---

## 🚀 次フェーズ予定

- **Phase 4.15** (2026-10月): フレンド機能との統合（プライベートランキング）
- **Phase 4.16** (2026-11月): リプレイ・配信機能（対戦動画保存）
- **Phase 4.17** (2026-12月): トーナメント機能（複数戦でのシリーズランキング）

---

**最終更新**: 2026-09-11  
**作成者**: Claude Haiku 4.5  
**所属**: Anthropic
