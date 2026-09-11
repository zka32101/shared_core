# Phase 4.18 統合ガイド - プッシュ通知・ユーザーリテンション

各アプリで Phase 4.18 プッシュ通知・リテンション機能を統合するためのガイドです。

---

## 📦 Phase 4.18 実装内容

### 実装概要
- **Firebase Cloud Messaging (FCM)** によるプッシュ通知
- **ユーザー通知設定** （頻度・トピック・サイレント時間）
- **チャーン予測・リテンション施策** 自動実行
- **キャンペーン管理** （季節イベント・特別オファー・A/B テスト）
- **通知パフォーマンス分析** ダッシュボード

### モデル
- **PushNotificationConfig**: FCM 設定（RemoteConfig から読み込み）
- **UserNotificationPreference**: ユーザー通知設定（頻度・タイプ・サイレント時間）
- **PushNotificationEvent**: 通知イベント記録（送信・開封・クリック）
- **NotificationCampaign**: キャンペーン定義（期間・セグメント・内容）
- **RetentionMetrics**: リテンション分析（チャーンリスク・推奨アクション）
- **CampaignPerformance**: キャンペーン効果測定

### プロバイダー
- **notificationConfigProvider**: RemoteConfig から FCM 設定を取得
- **userNotificationPreferenceProvider**: ユーザー通知設定を取得
- **userRetentionMetricsProvider**: ユーザーリテンションメトリクスを取得
- **activeCampaignsProvider**: アクティブなキャンペーン一覧を取得
- **notificationNotifierProvider**: 通知設定の更新・管理
- **retentionNotifierProvider**: リテンション分析・施策実行

### サービス
- **PushNotificationService**: FCM・Cloud Messaging 実行ロジック

### UI コンポーネント
- **NotificationSettingsScreen**: ユーザー通知設定画面
- **RetentionAnalyticsDashboard**: リテンション分析ダッシュボード

---

## 🔧 統合手順

### 1. pubspec.yaml で shared_core を更新

```yaml
dependencies:
  shared_core:
    git:
      url: https://github.com/zka32101/shared_core.git
      ref: claude/relaxed-brahmagupta-9tarv4  # Phase 4.18 ブランチ
```

実行:
```bash
flutter pub get
```

### 2. Firebase RemoteConfig に Phase 4.18 パラメータを追加

#### a) `push_notification_config` (JSON)

```json
{
  "enablePushNotifications": true,
  "enabledNotificationTypes": {
    "dailyReminder": true,
    "streakReminder": true,
    "goalAchieved": true,
    "churnRiskWarning": true,
    "specialOffer": true,
    "seasonalEvent": true,
    "friendActivity": true,
    "achievementUnlocked": true
  },
  "defaultFrequency": "daily",
  "quietHours": [21, 9],
  "enableAIPoweredNotifications": false,
  "retentionDaysThreshold": 7,
  "campaignConfig": {
    "enableAutomaticCampaigns": true,
    "enableSeasonalCampaigns": true,
    "enableABTestCampaigns": true
  }
}
```

### 3. Firestore セキュリティルール更新

通知コレクションへのアクセス許可を追加：

```firestore
match /analytics/notifications/{document=**} {
  allow read: if request.auth.uid != null;
  allow write: if request.auth.uid != null && isAdmin();
}

match /analytics/retention/{document=**} {
  allow read: if request.auth.uid != null;
  allow write: if request.auth.uid != null && isAdmin();
}

function isAdmin() {
  return get(/databases/$(database)/documents/admins/$(request.auth.uid)).data.isAdmin == true;
}
```

### 4. FCM 初期化（main.dart）

```dart
import 'package:shared_core/services/push_notification_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  
  // FCM 初期化
  final pushService = PushNotificationService();
  await pushService.initialize(
    onMessageHandler: (RemoteMessage message) {
      // バックグラウンドで受信した通知を処理
      print('Received message: ${message.notification?.title}');
    },
  );
  
  // FCM トークンを取得・保存
  final fcmToken = await pushService.getFCMToken();
  if (fcmToken != null) {
    // ユーザープロフィールに保存
    // await updateUserFCMToken(userId, fcmToken);
  }
  
  runApp(const MyApp());
}
```

### 5. 各画面での統合例

#### デイリーリマインダー設定

```dart
import 'package:shared_core/services/push_notification_service.dart';

final pushService = PushNotificationService();

// デイリーリマインダーをスケジュール（朝7時）
await pushService.scheduleDailyReminder(
  userId: userId,
  title: '学習しましょう',
  body: '今日の学習を始めよう！',
  time: const TimeOfDay(hour: 7, minute: 0),
);
```

#### ストリークリマインダー

```dart
// 3日連続学習した場合
await pushService.scheduleStreakReminder(
  userId: userId,
  streakDays: 3,
);
```

#### ゴール達成通知

```dart
// ゴール達成時
await pushService.sendGoalAchievedNotification(
  userId: userId,
  goalType: 'daily_time',
  goalName: '30分学習達成',
);
```

#### チャーン予防キャンペーン

```dart
import 'package:shared_core/providers/retention_provider.dart';

// チャーン予防キャンペーンを実行
await ref.read(retentionNotifierProvider.notifier).scheduleRetentionAction(
  userId: userId,
  actionType: 'send_exclusive_offer',
  actionValue: 'discount_20_percent',
  scheduledAt: DateTime.now(),
);

// リエンゲージメント通知を送信
await ref.read(retentionNotifierProvider.notifier).sendReEngagementNotification(
  userId: userId,
  title: 'ご無沙汰です',
  body: 'キャンペーン実施中！特別割引で復帰しませんか？',
);
```

#### 通知設定画面を表示

```dart
import 'package:shared_core/widgets/notification_settings_widget.dart';

Navigator.push(
  context,
  MaterialPageRoute(
    builder: (_) => NotificationSettingsScreen(userId: userId),
  ),
);
```

#### リテンション分析ダッシュボード

```dart
import 'package:shared_core/widgets/notification_settings_widget.dart';

Navigator.push(
  context,
  MaterialPageRoute(
    builder: (_) => RetentionAnalyticsDashboard(userId: userId),
  ),
);
```

### 6. リテンション分析の利用

```dart
import 'package:shared_core/providers/notification_provider.dart';
import 'package:shared_core/providers/retention_provider.dart';

// ユーザーのリテンションメトリクスを監視
final retentionMetrics = ref.watch(
  userRetentionMetricsProvider(userId),
);

// リテンション分析を更新
await ref.read(retentionNotifierProvider.notifier).updateRetentionMetrics(
  userId: userId,
  daysActive: 45,
  consecutiveActiveStreak: 7,
  daysSinceLastActive: 2,
  notificationClickRate: 12,
  totalNotificationsSent: 50,
);

// 推奨リテンション施策を確認
if (retentionMetrics.asData != null) {
  final metrics = retentionMetrics.asData!.value;
  print('リスクレベル: ${metrics.riskLevel}');
  print('推奨アクション: ${metrics.recommendedRetentionActions}');
}
```

---

## 📊 Firestore スキーマ

### collections/analytics/notifications/user_preferences/{userId}
```json
{
  userId: string,
  fcmToken: string,
  frequency: string,              // 'always', 'daily', 'weekly', 'never'
  enabledTypes: [string],         // 通知タイプのリスト
  quietHours: [int, int],         // [21, 9] = 21:00-09:00
  enableSound: bool,
  enableVibration: bool,
  enableLEDFlash: bool,
  updatedAt: Timestamp,
  isOptedIn: bool,
}
```

### collections/analytics/retention/user_metrics/{userId}
```json
{
  userId: string,
  daysActive: int,
  consecutiveActiveStreak: int,
  lastActiveDate: Timestamp,
  daysSinceLastActive: int,
  churnRiskScore: double,         // 0.0-1.0
  riskLevel: string,              // 'low', 'medium', 'high', 'critical'
  recommendedRetentionActions: [string],
  notificationClickRate: int,
  totalNotificationsSent: int,
  analyzedAt: Timestamp,
}
```

### collections/analytics/notifications/events/{notificationId}
```json
{
  notificationId: string,
  userId: string,
  type: string,
  title: string,
  body: string,
  data: map,
  sentAt: Timestamp,
  wasOpened: bool,
  openedAt: Timestamp,
  actionIndex: int,
}
```

### collections/analytics/notifications/campaigns/{campaignId}
```json
{
  campaignId: string,
  name: string,
  description: string,
  type: string,
  title: string,
  body: string,
  data: map,
  startDate: Timestamp,
  endDate: Timestamp,
  isActive: bool,
  targetSegments: [string],       // ['newUser', 'active', 'churnRisk']
  maxSendCount: int,
  sendIntervalHours: int,
  abTestConfig: map,
  createdAt: Timestamp,
}
```

---

## ⚠️ セキュリティ・注意事項

### 1. FCM トークン管理
- FCM トークンはユーザープロフィールに安全に保存
- トークン更新時は `updateFCMToken()` を呼び出し

### 2. 通知コンテンツ
- 個人情報は通知本文に含めない
- ディープリンクは署名付きリンク (Dynamic Links など) で配信

### 3. COPPA準拠
- 子ども（13歳未満）への通知は保護者許可が必須
- 保護者ゲートで通知設定を保護

### 4. チャーン予測
- チャーン予測はルールベース分析のみ（機械学習なし）
- 推奨アクションは自動実行、人為的オーバーライドは不可

---

## 🧪 テスト・確認

### ローカルテスト
```bash
flutter run -v
```

テスト時は Firebase Emulator Suite を使用可能：
```bash
firebase emulators:start
```

### 通知テスト
```bash
# Cloud Messaging テスト通知を送信
# Firebase Console → Cloud Messaging → 新しいキャンペーン → テスト送信
```

---

## 📝 チェックリスト

各アプリが Phase 4.18 を統合する際：

### 必須
- [ ] `flutter pub get` で shared_core 最新版をダウンロード
- [ ] Firebase RemoteConfig に `push_notification_config` を追加
- [ ] Firestore セキュリティルール更新
- [ ] FCM 初期化コード (`main.dart`)
- [ ] `PushNotificationService` インスタンス作成・初期化
- [ ] `NotificationSettingsScreen` を設定画面に追加

### オプション
- [ ] `RetentionAnalyticsDashboard` を管理画面に追加
- [ ] デイリーリマインダー機能実装
- [ ] ストリークリマインダー機能実装
- [ ] チャーン予防キャンペーン自動実行
- [ ] 季節イベント通知実装

### テスト
- [ ] ローカルで通知設定が正常に保存
- [ ] Firestore に通知イベントが記録
- [ ] RemoteConfig から設定が正常に取得
- [ ] UI コンポーネント（設定画面・ダッシュボード）が正常に表示
- [ ] エラーハンドリング・フォールバック動作確認

---

**最終更新**: 2026-09-11  
**状態**: ✅ Phase 4.18 実装完了  
**次フェーズ**: Phase 4.19 A/B テスト・最適化（計画中）
