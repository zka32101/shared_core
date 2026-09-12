import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';

@freezed
class AppNotification with _$AppNotification {
  const factory AppNotification({
    required String id,
    required String title,
    required String body,
    required String type, // 'daily_reminder', 'achievement', 'friend_request', 'weekly_summary', 'engagement'
    required DateTime createdAt,
    required bool isRead,
    String? actionUrl,
    Map<String, dynamic>? data,
  }) = _AppNotification;

  const AppNotification._();

  bool get isPending => DateTime.now().isBefore(createdAt);
}

@freezed
class ReminderConfig with _$ReminderConfig {
  const factory ReminderConfig({
    required bool enableDailyReminder,
    required bool enableAchievementNotification,
    required bool enableFriendNotification,
    required bool enableWeeklyReport,
    required bool enableEngagementReminder,
    required TimeOfDay dailyReminderTime,
    required int weeklyReportDayOfWeek, // 0 = Sunday, 6 = Saturday
  }) = _ReminderConfig;

  const ReminderConfig._();
}

@freezed
class TimeOfDay with _$TimeOfDay {
  const factory TimeOfDay({
    required int hour,
    required int minute,
  }) = _TimeOfDay;

  const TimeOfDay._();

  String toIso8601String() => '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';

  factory TimeOfDay.fromIso8601String(String str) {
    final parts = str.split(':');
    return TimeOfDay(hour: int.parse(parts[0]), minute: int.parse(parts[1]));
  }
}

@freezed
class NotificationStats with _$NotificationStats {
  const factory NotificationStats({
    required int totalNotifications,
    required int unreadCount,
    required int achievementCount,
    required int friendRequestCount,
    required DateTime lastCheckAt,
  }) = _NotificationStats;

  const NotificationStats._();
}
