import 'package:freezed_annotation/freezed_annotation.dart';

part 'push_notification_model.freezed.dart';
part 'push_notification_model.g.dart';

/// プッシュ通知タイプ
enum NotificationType {
  eventStart,           // イベント開始
  eventEnding,          // イベント終了間近
  friendRequest,        // フレンドリクエスト
  leaderboardUpdate,    // ランキング更新
  dailyReminder,        // デイリーリマインダー
  streakReminder,       // 連続学習リマインダー
  reengagement,         // リエンゲージメント通知
  newFeature,           // 新機能通知
  reward,               // 報酬獲得
  achievement,          // 達成通知
}

/// 通知スケジュールタイプ
enum NotificationScheduleType {
  immediate,            // 即座に配信
  scheduled,            // スケジュール配信
  recurring,            // 繰り返し配信
}

/// プッシュ通知ペイロード
@freezed
class PushNotificationPayload with _$PushNotificationPayload {
  const factory PushNotificationPayload({
    required String notificationId,
    required String userId,
    required NotificationType type,
    required String title,
    required String body,
    String? imageUrl,
    String? deepLink,           // アプリ内リンク（例: /leaderboard, /event/123）
    Map<String, String>? customData,
    required DateTime createdAt,
    required DateTime sentAt,
    bool? isRead,               // 既読フラグ
    DateTime? readAt,           // 既読時刻
  }) = _PushNotificationPayload;

  factory PushNotificationPayload.fromJson(Map<String, dynamic> json) =>
      _$PushNotificationPayloadFromJson(json);
}

/// 通知スケジュール
@freezed
class NotificationSchedule with _$NotificationSchedule {
  const factory NotificationSchedule({
    required String scheduleId,
    required String userId,
    required NotificationType type,
    required String title,
    required String body,
    String? imageUrl,
    String? deepLink,
    Map<String, String>? customData,
    required NotificationScheduleType scheduleType,
    required DateTime scheduledTime,   // スケジュール配信時刻
    String? cronExpression,            // 繰り返し配信用 cron (例: '0 9 * * *')
    int? maxOccurrences,               // 最大配信回数
    int? occurrenceCount,              // 現在の配信回数
    required bool isActive,
    required DateTime createdAt,
    DateTime? updatedAt,
    DateTime? disabledAt,
  }) = _NotificationSchedule;

  factory NotificationSchedule.fromJson(Map<String, dynamic> json) =>
      _$NotificationScheduleFromJson(json);
}

/// 通知ログ（配信履歴）
@freezed
class NotificationLog with _$NotificationLog {
  const factory NotificationLog({
    required String logId,
    required String notificationId,
    required String userId,
    required NotificationType type,
    required bool isDelivered,         // 配信成功フラグ
    required DateTime sentAt,
    DateTime? deliveredAt,             // 配信完了時刻
    String? fcmToken,                  // 送信時の FCM トークン
    String? deliveryStatus,            // 配信ステータス (success, failed, bounced)
    String? errorMessage,              // エラーメッセージ（失敗時）
    bool? isRead,
    DateTime? readAt,
    int? engagementTimeSeconds,        // 通知をタップしてからアプリを使用した時間
  }) = _NotificationLog;

  factory NotificationLog.fromJson(Map<String, dynamic> json) =>
      _$NotificationLogFromJson(json);
}

/// プッシュ通知設定
@freezed
class PushNotificationConfig with _$PushNotificationConfig {
  const factory PushNotificationConfig({
    required String userId,
    required bool isEnabled,
    required bool eventNotificationsEnabled,
    required bool friendNotificationsEnabled,
    required bool leaderboardNotificationsEnabled,
    required bool dailyReminderEnabled,
    String? dailyReminderTime,         // HH:mm 形式 (例: '09:00')
    required bool streakReminderEnabled,
    String? streakReminderTime,        // HH:mm 形式
    required bool reengagementEnabled,
    int? reengagementIntervalDays,     // リエンゲージメント通知の間隔（日数）
    required bool soundEnabled,
    required bool vibrationEnabled,
    List<NotificationType>? disabledTypes,  // 無効化した通知タイプ
    required DateTime updatedAt,
  }) = _PushNotificationConfig;

  factory PushNotificationConfig.fromJson(Map<String, dynamic> json) =>
      _$PushNotificationConfigFromJson(json);
}

/// 通知統計
@freezed
class NotificationStats with _$NotificationStats {
  const factory NotificationStats({
    required String userId,
    required int totalSent,
    required int totalDelivered,
    required int totalRead,
    required double readRate,          // (totalRead / totalSent)
    required int totalClicks,
    required double clickRate,         // (totalClicks / totalDelivered)
    required int lastNotificationDaysAgo,
    required DateTime calculatedAt,
  }) = _NotificationStats;

  factory NotificationStats.fromJson(Map<String, dynamic> json) =>
      _$NotificationStatsFromJson(json);
}

/// FCM トークン管理
@freezed
class FCMTokenInfo with _$FCMTokenInfo {
  const factory FCMTokenInfo({
    required String tokenId,
    required String userId,
    required String fcmToken,
    required String platform,         // 'android', 'ios', 'web'
    required String deviceModel,      // デバイスモデル
    required String osVersion,        // OS バージョン
    required bool isActive,
    required DateTime createdAt,
    required DateTime lastUpdatedAt,
    DateTime? deactivatedAt,
  }) = _FCMTokenInfo;

  factory FCMTokenInfo.fromJson(Map<String, dynamic> json) =>
      _$FCMTokenInfoFromJson(json);
}
