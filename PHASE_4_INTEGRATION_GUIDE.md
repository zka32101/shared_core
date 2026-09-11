# Phase 4 統合ガイド (Phase 4.15-4.17)

各アプリ（国語・算数・理科・英語・社会・プログラミング・道徳）が `shared_core` の Phase 4.15-4.17 フレームワークを統合するためのガイドです。

---

## 📦 Phase 4.15-4.17 実装内容

### Phase 4.15: A/B テストフレームワーク ✅
- **モデル**: ABTestConfig, ABTestAssignment, ABTestEvent, ABTestResult, PopulationStats
- **プロバイダー**: abTestConfigProvider, userABTestAssignmentsProvider, abTestResultsProvider
- **UI**: ABTestDashboard（分析ダッシュボード）
- **用途**: Paywall デザイン A/B テスト、Dynamic Pricing テスト、パフォーマンス測定

### Phase 4.16: Analytics・レポート強化 ✅
- **モデル**: LearningMetric, UserSegmentAnalytics, WeeklyReport, MonthlyReport, LearningGoal, BehaviorAnalytics
- **プロバイダー**: analyticsConfigProvider, userSegmentAnalyticsProvider, weeklyReportProvider, monthlyReportProvider, userLearningGoalsProvider
- **UI**: AnalyticsDashboard（セグメント分析・レポート・ゴール表示）
- **用途**: ユーザーセグメンテーション、学習メトリクス集計、親向けレポート生成、ゴール管理

### Phase 4.17: Cloud Functions・ユーザー分析自動実行 ✅
- **モデル**: CloudFunctionConfig, SegmentationResult, CohortAnalysisResult, ChurnPrediction, FunctionExecutionLog
- **プロバイダー**: cloudFunctionsConfigProvider, latestSegmentationResultsProvider, cohortAnalysisProvider, churnPredictionsProvider
- **サービス**: CloudFunctionsService（Firebase Cloud Functions トリガー）
- **UI**: CloudFunctionsDashboard（関数実行管理・結果可視化）
- **用途**: 自動レポート生成、セグメント分析更新、チャーン予測、リアルタイム通知
- **⚠️ AI相談機能は除外** (ユーザー指示に従う)

---

## 🔧 各アプリの統合手順

### 1. pubspec.yaml の確認

shared_core が既に git dependency で参照されていることを確認：

```yaml
dependencies:
  shared_core:
    git:
      url: https://github.com/zka32101/shared_core.git
      ref: main
```

更新が必要な場合：
```bash
flutter pub get
```

### 2. Firebase RemoteConfig セットアップ

各アプリの Firebase Console で以下の RemoteConfig パラメータを追加：

#### a) A/B テスト設定

**パラメータ名**: `ab_tests_config`  
**型**: JSON

```json
{
  "paywall_variant_test": {
    "testId": "paywall_variant_test",
    "testName": "Paywall バリアント A/B テスト",
    "variants": ["control", "variant_b", "variant_c"],
    "startDate": "2026-09-15T00:00:00Z",
    "endDate": "2026-10-15T23:59:59Z",
    "isActive": true,
    "trafficAllocation": {
      "control": 0.5,
      "variant_b": 0.3,
      "variant_c": 0.2
    }
  }
}
```

#### b) Analytics 設定

**パラメータ名**: `analytics_config`  
**型**: JSON

```json
{
  "enableMetricsTracking": true,
  "enableReportGeneration": true,
  "enabledMetrics": [
    "quizCompleted",
    "correctAnswers",
    "timeSpent",
    "streakDays",
    "badgesEarned"
  ],
  "reportGenerationIntervalDays": 7,
  "goalsConfig": {
    "daily_time": 30,
    "quizzes": 5,
    "accuracy": 80,
    "streak": 7
  },
  "enableSegmentation": true,
  "enableAIPredictions": true,
  "segmentThresholds": {
    "churnRiskThreshold": 0.7,
    "activeThreshold": 0.5,
    "vipThreshold": 0.9
  }
}
```

#### c) Cloud Functions 設定

**パラメータ名**: `cloud_functions_config`  
**型**: JSON

```json
{
  "enableAutoReportGeneration": true,
  "enableSegmentationUpdates": true,
  "enableCohortAnalysis": true,
  "enableNotifications": true,
  "reportGenerationIntervalDays": 7,
  "segmentationUpdateIntervalHours": 24,
  "cohortAnalysisIntervalDays": 7,
  "notificationConfig": {
    "enableSegmentChangeNotification": true,
    "enableGoalAchievedNotification": true,
    "enableStreakReminder": true
  },
  "enableChurnPrediction": true
}
```

### 3. Firestore セキュリティルール更新

各アプリの Firestore セキュリティルール（`firestore.rules`）に Analytics コレクションへのアクセス許可を追加：

```firestore
match /analytics/{document=**} {
  allow read: if request.auth.uid != null;
  allow write: if request.auth.uid != null && isAdmin();
}

function isAdmin() {
  return get(/databases/$(database)/documents/admins/$(request.auth.uid)).data.isAdmin == true;
}
```

### 4. 各ダッシュボードの統合（オプション）

#### A/B テストダッシュボード

```dart
import 'package:shared_core/widgets/ab_test_dashboard.dart';

// 管理画面 / Settings 画面に追加
Navigator.push(
  context,
  MaterialPageRoute(builder: (_) => ABTestDashboard()),
);
```

#### Analytics ダッシュボード

```dart
import 'package:shared_core/widgets/analytics_dashboard.dart';

// プログレス画面に追加
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (_) => AnalyticsDashboard(userId: userId),
  ),
);
```

#### Cloud Functions ダッシュボード

```dart
import 'package:shared_core/widgets/cloud_functions_dashboard.dart';

// 管理画面に追加
Navigator.push(
  context,
  MaterialPageRoute(builder: (_) => CloudFunctionsDashboard()),
);
```

### 5. メトリクス記録の統合

各アプリのクイズ・進捗画面で、メトリクス記録を組み込む：

```dart
import 'package:shared_core/providers/analytics_notifier.dart';

// クイズ完了時
await ref.read(analyticsNotifierProvider.notifier).recordMetric(
  userId: userId,
  type: LearningMetricType.quizCompleted,
  value: 1,
  appId: 'sansu', // 'kokugo', 'rika', 'eigo', 'social', 'programming', 'morality'
);

// 正解時
await ref.read(analyticsNotifierProvider.notifier).recordMetric(
  userId: userId,
  type: LearningMetricType.correctAnswers,
  value: correctCount,
  appId: 'sansu',
);

// 学習時間
await ref.read(analyticsNotifierProvider.notifier).recordMetric(
  userId: userId,
  type: LearningMetricType.timeSpent,
  value: minutesSpent,
  appId: 'sansu',
);
```

### 6. A/B テストバリアント別UI実装

Paywall 等で A/B テストを使用する場合：

```dart
import 'package:shared_core/providers/ab_test_providers.dart';
import 'package:shared_core/models/ab_test_model.dart';

class PaywallScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final variant = ref.watch(userTestVariantProvider('paywall_variant_test'));
    
    return variant == TestVariant.control
        ? _PaywallSimple()
        : variant == TestVariant.variant_b
            ? _PaywallFeatured()
            : _PaywallLocalOffer();
  }
}
```

### 7. 学習ゴール・チャレンジ機能

各アプリでゴール管理を実装：

```dart
import 'package:shared_core/providers/analytics_notifier.dart';

// ゴール作成
final goalId = await ref.read(analyticsNotifierProvider.notifier).createLearningGoal(
  userId: userId,
  goalType: 'daily_time',     // 'daily_time', 'quizzes', 'accuracy', 'streak'
  targetValue: 30,             // 分または個数
  deadline: DateTime.now().add(Duration(days: 7)),
);

// ゴール進捗更新
await ref.read(analyticsNotifierProvider.notifier).updateGoalProgress(
  userId: userId,
  goalId: goalId,
  currentProgress: 15, // 現在の進捗
);

// ゴール完了時
await ref.read(analyticsNotifierProvider.notifier).markGoal(
  userId: userId,
  goalId: goalId,
  status: 'completed', // 'completed', 'failed', 'abandoned'
);
```

---

## 📊 デフォルト RemoteConfig 値

各アプリがデフォルト値を定義する際の参考：

```dart
// lib/config/constants.dart
const Map<String, dynamic> REMOTE_CONFIG_DEFAULTS = {
  'ab_tests_config': '{"paywall_variant_test": {"testId": "paywall_variant_test", ...}}',
  'analytics_config': '{...}',
  'cloud_functions_config': '{...}',
};
```

---

## ⚠️ セキュリティ・注意事項

### 1. API キー管理
- Firebase API キーは各アプリの環境変数で管理（コード直書き禁止）
- Cloud Functions の認証は Firebase App Check で保護

### 2. Firestore セキュリティ
- Analytics データの読み書きは認証ユーザーのみに制限
- Admin ユーザーのみが Full レポートアクセス可能

### 3. COPPA 対応
- ユーザーのプライベート情報はデータ削除・匿名化に対応
- 学習データ以外の個人情報は保存しない

### 4. チャーン予測
- `ChurnPrediction` データは機械学習推奨なしで、ルールベース分析のみ
- **AI相談機能は除外** (ユーザー指示に従う)

---

## 🧪 Firebase Local Emulator での動作確認

```bash
# Firebase Emulator Suite の起動
firebase emulators:start

# Firestore パス確認
http://localhost:4000 (Emulator UI)
```

Emulator 環境での RemoteConfig テスト：

```dart
// lib/services/firebase_service.dart
final remoteConfig = FirebaseRemoteConfig.instance;
if (kDebugMode) {
  remoteConfig.setConfigSettings(
    RemoteConfigSettings(
      minimumFetchInterval: Duration.zero,  // 開発時は即座に fetch
    ),
  );
}
```

---

## 📝 チェックリスト

各アプリが Phase 4.15-4.17 を統合する際：

### 必須
- [ ] `flutter pub get` で shared_core 最新版をダウンロード
- [ ] Firebase RemoteConfig に 3つのパラメータを追加
- [ ] Firestore セキュリティルール更新
- [ ] メトリクス記録コードをクイズ・進捗画面に追加
- [ ] 親向けレポート表示機能の実装 (MonthlyReportCard など)

### オプション
- [ ] A/B テストダッシュボードを Settings に追加
- [ ] Analytics ダッシュボードをプログレス画面に追加
- [ ] Cloud Functions ダッシュボードを管理画面に追加
- [ ] 学習ゴール・チャレンジ機能実装
- [ ] A/B テストバリアント別 Paywall UI 実装

### テスト
- [ ] ローカルで各プロバイダーが正常に動作
- [ ] Firestore に Analytics データが正常に記録
- [ ] RemoteConfig から設定が正常に取得
- [ ] UI コンポーネント（ダッシュボード等）が正常に表示
- [ ] エラーハンドリング・フォールバック動作確認

---

## 🔗 参考資料

- [shared_core GitHub](https://github.com/zka32101/shared_core)
- [Firebase RemoteConfig Console](https://console.firebase.google.com/project/_/config)
- [Firestore Security Rules](https://firebase.google.com/docs/firestore/security)
- [Riverpod Documentation](https://riverpod.dev)

---

**最終更新**: 2026-09-11  
**状態**: ✅ Phase 4.15-4.17 実装完了  
**次フェーズ**: Phase 4.18 プッシュ通知・ユーザーリテンション
