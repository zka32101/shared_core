import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

/// 通知タイプの列挙型
enum NotificationType {
  learningReminder, // 学習リマインダー
  missionAchieved, // ミッション達成
  friendInvite, // フレンド招待
  streakMilestone, // ストリーク達成
  badgeEarned, // バッジ獲得
  weeklyReport, // 週次レポート
  dailyBonus, // デイリーボーナス
  levelUp, // レベルアップ
  newContent, // 新規コンテンツ
  appUpdate, // アプリ更新
  specialEvent, // 特別イベント
}

/// 通知スケジュールタイプ
enum NotificationScheduleType {
  immediate, // 即座に配信
  scheduled, // 指定時刻に配信
  daily, // 毎日配信
  weekly, // 毎週配信
  adaptive, // 適応的（ユーザーの活動パターンに基づく）
}

@freezed
class PushNotification with _$PushNotification {
  const factory PushNotification({
    required String id,
    required String userId,
    required NotificationType type,
    required String title,
    required String body,
    required NotificationScheduleType scheduleType,
    required DateTime createdAt,
    DateTime? scheduledFor,
    required bool isRead,
    DateTime? readAt,
    required Map<String, dynamic> metadata,
    String? actionUrl,
    String? imageUrl,
    required bool isActive,
  }) = _PushNotification;

  factory PushNotification.fromJson(Map<String, dynamic> json) =>
      _$PushNotificationFromJson(json);
}

@freezed
class NotificationPreferences with _$NotificationPreferences {
  const factory NotificationPreferences({
    required String userId,
    required bool enableAllNotifications,
    required Map<String, bool> typePreferences,
    required String? preferredNotificationTime,
    required bool enableQuietHours,
    String? quietHoursStart,
    String? quietHoursEnd,
    required bool enableAppNotifications,
    required bool enableEmailDigest,
    required String emailDigestFrequency,
    required DateTime updatedAt,
  }) = _NotificationPreferences;

  factory NotificationPreferences.fromJson(Map<String, dynamic> json) =>
      _$NotificationPreferencesFromJson(json);
}

@freezed
class DeviceToken with _$DeviceToken {
  const factory DeviceToken({
    required String userId,
    required String token,
    required String platform,
    required String appVersion,
    required DateTime registeredAt,
    DateTime? lastUsedAt,
    required bool isActive,
  }) = _DeviceToken;

  factory DeviceToken.fromJson(Map<String, dynamic> json) =>
      _$DeviceTokenFromJson(json);
}
