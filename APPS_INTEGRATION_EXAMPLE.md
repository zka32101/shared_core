# Phase 4.12: 各アプリでの DynamicPaywallWidget 統合例

**対象**: 小学コレシリーズ 7アプリ（国語・算数・理科・英語・社会・プログラミング・道徳）  
**実装パターン**: DynamicPaywallWidget に置き換え

---

## ステップ 1: Firestore ユーザースキーマ更新

### 既存スキーマに追加フィールド

**Firestore: `users/{userId}`**

```dart
// 既存フィールド
{
  'uid': 'user_xxx',
  'name': '太郎',
  'email': 'taro@example.com',
  ...
  
  // Phase 4.12 新規フィールド
  'createdAt': Timestamp.now(),           // ← 新規判定用（欠落時は null）
  'lastActivityAt': Timestamp.now(),      // ← 非アクティブ/チャーン判定用（毎日更新）
  'totalLearningMinutes': 350,            // ← VIP判定用（累積、学習終了時に加算）
  
  // 購買ヒストリ（自動更新）
  'lastPurchasePrice': 120,               // ← DynamicPricingNotifier が自動設定
  'lastPurchaseAt': Timestamp,            // ← DynamicPricingNotifier が自動設定
  'purchaseSegment': 'active',            // ← DynamicPricingNotifier が自動設定
}
```

### 初期値設定（ユーザー作成時）

各アプリの `lib/services/user_service.dart` など：

```dart
Future<void> createUser(String userId, String name) async {
  await FirebaseFirestore.instance.collection('users').doc(userId).set({
    'uid': userId,
    'name': name,
    'email': FirebaseAuth.instance.currentUser?.email ?? '',
    'createdAt': FieldValue.serverTimestamp(),  // ← 新規判定用
    'lastActivityAt': FieldValue.serverTimestamp(),
    'totalLearningMinutes': 0,
    'createdAtMillis': DateTime.now().millisecondsSinceEpoch,
  });
}
```

---

## ステップ 2: 学習時間トラッキングの更新

### 各アプリの進捗プロバイダーで totalLearningMinutes を加算

**例: 国語コレ（kokugo_kore）**

```dart
// lib/providers/progress_provider.dart の completeQuiz メソッド内

Future<void> completeQuiz(String quizId, int score, int durationSeconds) async {
  try {
    // 既存の進捗更新処理...
    state = state.copyWith(
      completedCount: state.completedCount + 1,
      // ...
    );

    // ─── Phase 4.12 新規：学習時間をカウント ───────────────────
    final durationMinutes = (durationSeconds / 60).ceil();
    await FirebaseFirestore.instance
        .collection('users')
        .doc(currentUserId)
        .update({
          'totalLearningMinutes': FieldValue.increment(durationMinutes),
          'lastActivityAt': FieldValue.serverTimestamp(),
        });
  } catch (e) {
    print('Error: $e');
  }
}
```

### lastActivityAt の定期更新（毎日）

アプリ起動時または学習画面表示時に呼び出す：

```dart
Future<void> updateLastActivityAt() async {
  try {
    final now = DateTime.now();
    final lastUpdated = DateTime.now().subtract(const Duration(hours: 24));
    
    // 24時間以上経過していたら更新
    if (now.difference(lastUpdated).inHours >= 24) {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(currentUserId)
          .update({
            'lastActivityAt': FieldValue.serverTimestamp(),
          });
    }
  } catch (e) {
    print('Error updating lastActivityAt: $e');
  }
}
```

---

## ステップ 3: Paywall 画面の置き換え

### Before（既存）

**例: 社会コレ（social_quiz_app）の `lib/screens/premium_screen.dart`**

```dart
class PremiumScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('プレミアム会員')),
      body: AdaptivePaywallScreen(
        onSubscribeTap: () {
          // RevenueCat の購買フロー
          _handleSubscribe(context, ref);
        },
      ),
    );
  }
}
```

### After（新規：ダイナミック価格対応）

```dart
import 'package:shared_core/dynamic_paywall_widget.dart';

class PremiumScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userId = ref.watch(authProvider).valueOrNull?.uid ?? '';

    return Scaffold(
      appBar: AppBar(title: const Text('プレミアム会員')),
      body: DynamicPaywallWidget(
        userId: userId,
        onSubscribeTap: () {
          // RevenueCat の購買フロー
          _handleSubscribe(context, ref);
        },
        onRestoreTap: () {
          // 以前の購入を復元
          _handleRestore(context, ref);
        },
      ),
    );
  }
}
```

---

## ステップ 4: Firebase RemoteConfig 初期化

### アプリの main.dart に RemoteConfig fetch 処理を追加

```dart
import 'package:firebase_remote_config/firebase_remote_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Firebase 初期化
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  // ─── Phase 4.12 新規：RemoteConfig 初期化 ────────────────────
  final remoteConfig = FirebaseRemoteConfig.instance;
  await remoteConfig.setConfigSettings(
    RemoteConfigSettings(
      fetchTimeout: const Duration(minutes: 1),
      minimumFetchInterval: const Duration(hours: 12),
    ),
  );
  
  // デフォルト値を設定（RemoteConfig が取得できない場合のフォールバック）
  await remoteConfig.setDefaults({
    'pricing_config': '''
    {
      "basePrice": 120,
      "segmentPrices": {
        "newUser": 50,
        "inactive": 79,
        "active": 120,
        "vip": 150,
        "churnRisk": 49
      },
      "seasonalOffers": [],
      "vipThresholdMinutes": 1000,
      "inactiveThresholdDays": 7,
      "churnRiskThresholdDays": 30
    }
    ''',
  });
  
  // RemoteConfig を fetch（バックグラウンド）
  unawaited(
    remoteConfig.fetchAndActivate().catchError((e) {
      print('RemoteConfig fetch error: $e');
      // エラーはログするが、アプリ起動は続行
    }),
  );
  
  runApp(const MyApp());
}
```

---

## ステップ 5: 各アプリの pubspec.yaml 更新

```yaml
dependencies:
  flutter:
    sdk: flutter
  
  # 既存依存...
  shared_core:
    git:
      url: https://github.com/org-zka32101/shared_core.git
      ref: main
  
  # Phase 4.12 新規：RemoteConfig（自動で依存される可能性が高いが明示的に）
  firebase_remote_config: ^4.0.0
```

```bash
cd your_app
flutter pub get
```

---

## ステップ 6: テスト・QA

### ユーザーセグメント動作確認

#### テストケース 1: 新規ユーザー（初月）

1. 新しいテストアカウント作成
2. PremiumScreen にアクセス
3. **期待**: ¥50 表示、「新規ユーザー限定」バナー

```dart
// Firestore で確認
users/test_user_001 {
  createdAt: 現在時刻,
  lastActivityAt: 現在時刻,
  totalLearningMinutes: 0,
}
```

#### テストケース 2: 非アクティブユーザー（7日以上未使用）

1. 既存テストアカウントで `lastActivityAt` を 7日前に設定
   ```dart
   await FirebaseFirestore.instance
       .collection('users')
       .doc('test_user_002')
       .update({
         'lastActivityAt': Timestamp.fromDate(
           DateTime.now().subtract(const Duration(days: 7)),
         ),
       });
   ```
2. PremiumScreen にアクセス
3. **期待**: ¥79 表示、「リエンゲージメント オファー」バナー（3日限定）

#### テストケース 3: VIP（累積1000分+）

1. テストアカウントで `totalLearningMinutes` を 1000 に設定
   ```dart
   await FirebaseFirestore.instance
       .collection('users')
       .doc('test_user_003')
       .update({
         'totalLearningMinutes': 1000,
       });
   ```
2. PremiumScreen にアクセス
3. **期待**: ¥150 表示、「VIP エクスクルーシブ」表示、プレミアム機能拡張

### Analytics トラッキング確認

Firestore コンソール → `analytics/pricing/impressions` コレクション確認：

```json
{
  "userId": "test_user_001",
  "displayPrice": 50,
  "basePrice": 120,
  "segment": "newUser",
  "discountReason": "新規ユーザー限定オファー",
  "appliedDiscount": 58.3,
  "timestamp": "2026-09-12T10:30:00Z",
  "isLimited": true
}
```

購買後、`analytics/pricing/conversions` にも記録される

---

## ステップ 7: Firebase RemoteConfig でオファーを動的変更

### 例：新学期キャンペーンを 4/1 から開始

1. Firebase Console → Remote Config → `pricing_config` パラメータを編集
2. `seasonalOffers` に新しいオファーを追加：

```json
{
  "name": "新学期スタートキャンペーン",
  "startDate": "2027-04-01",
  "endDate": "2027-04-15",
  "offerPrice": 89,
  "description": "新学期応援 30% OFF",
  "isActive": true
}
```

3. 「公開」をクリック
4. 全アプリの次回起動時に自動反映

---

## ステップ 8: Analytics ダッシュボード構築（オプション）

### BigQuery で週次レポート

Firestore から BigQuery へエクスポート設定をし、以下クエリで Conversion Rate を監視：

```sql
SELECT
  segment,
  COUNT(DISTINCT userId) as unique_impressions,
  COUNT(DISTINCT 
    CASE WHEN eventType = 'conversion' THEN userId END
  ) as conversions,
  ROUND(
    COUNT(DISTINCT 
      CASE WHEN eventType = 'conversion' THEN userId END
    ) * 100.0 / COUNT(DISTINCT userId),
    2
  ) as conversion_rate_percent
FROM `your_project.analytics_pricing_events`
WHERE DATE(timestamp) >= DATE_SUB(CURRENT_DATE(), INTERVAL 7 DAY)
GROUP BY segment
ORDER BY conversion_rate_percent DESC;
```

---

## チェックリスト（実装順序）

### 共通パッケージ（shared_core）
- [x] `pricing_strategy.dart` 実装
- [x] `user_segment_provider.dart` 実装
- [x] `dynamic_pricing_notifier.dart` 実装
- [x] `dynamic_paywall_widget.dart` 実装

### 各アプリ（実装優先順）

#### Phase 1: 基本実装
- [ ] Firestore ユーザースキーマ更新（`createdAt`, `lastActivityAt`, `totalLearningMinutes`）
- [ ] 学習進捗プロバイダーで `totalLearningMinutes` を加算
- [ ] main.dart に RemoteConfig 初期化を追加
- [ ] Paywall 画面を DynamicPaywallWidget に置き換え

#### Phase 2: テスト・QA
- [ ] 全セグメント（新規・非アクティブ・アクティブ・VIP・チャーン）の表示確認
- [ ] トラッキングログが Firestore に記録されるか確認
- [ ] RemoteConfig オファーが動的に反映されるか確認

#### Phase 3: 運用
- [ ] Firebase RemoteConfig で初期オファー設定
- [ ] Analytics ダッシュボード構築（Conversion Rate 監視）
- [ ] 週次レビュー（LTV、チャーン率の改善確認）

---

## 実装サポート

各アプリの実装に関する質問は、以下のドキュメントを参照：

1. **モデル・プロバイダー詳細**: `PHASE_4_12_DYNAMIC_PRICING_GUIDE.md`
2. **Paywall UI カスタマイズ**: `DynamicPaywallWidget` のソースコード（`lib/widgets/dynamic_paywall_widget.dart`）
3. **Firestore セキュリティルール**: [Firebase 公式ドキュメント](https://firebase.google.com/docs/firestore/security/start)

---

**作成日**: 2026-09-11  
**ステータス**: ✅ 実装ガイド完成  
**対象アプリ**: 国語・算数・理科・英語・社会・プログラミング・道徳 (7アプリ)
