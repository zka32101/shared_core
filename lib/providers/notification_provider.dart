import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/notification_model.dart';

/// 通知状態管理（StateNotifier）
class NotificationNotifier extends StateNotifier<List<AppNotification>> {
  NotificationNotifier() : super([]);

  /// 通知を追加
  void addNotification(AppNotification notification) {
    state = [notification, ...state];
  }

  /// 通知を既読にする
  void markAsRead(String notificationId) {
    state = [
      for (final n in state)
        if (n.id == notificationId)
          n.copyWith(isRead: true)
        else
          n,
    ];
  }

  /// すべてを既読にする
  void markAllAsRead() {
    state = [
      for (final n in state)
        n.copyWith(isRead: true),
    ];
  }

  /// 通知を削除
  void removeNotification(String notificationId) {
    state = state.where((n) => n.id != notificationId).toList();
  }

  /// 特定タイプの通知をすべて削除
  void removeNotificationsOfType(String type) {
    state = state.where((n) => n.type != type).toList();
  }

  /// 未読通知数を取得
  int getUnreadCount() => state.where((n) => !n.isRead).length;

  /// 特定タイプの未読通知数
  int getUnreadCountByType(String type) =>
      state.where((n) => !n.isRead && n.type == type).length;
}

/// リマインダー設定状態管理
class ReminderConfigNotifier extends StateNotifier<ReminderConfig> {
  ReminderConfigNotifier()
      : super(
          const ReminderConfig(
            enableDailyReminder: true,
            enableAchievementNotification: true,
            enableFriendNotification: true,
            enableWeeklyReport: true,
            enableEngagementReminder: false,
            dailyReminderTime: TimeOfDay(hour: 9, minute: 0),
            weeklyReportDayOfWeek: 0, // Sunday
          ),
        );

  /// リマインダー設定を更新
  void updateConfig(ReminderConfig config) {
    state = config;
  }

  /// 日次リマインダーを有効/無効
  void setDailyReminderEnabled(bool enabled) {
    state = state.copyWith(enableDailyReminder: enabled);
  }

  /// リマインダー時刻を変更
  void setDailyReminderTime(TimeOfDay time) {
    state = state.copyWith(dailyReminderTime: time);
  }

  /// 週次レポート曜日を変更
  void setWeeklyReportDay(int dayOfWeek) {
    state = state.copyWith(weeklyReportDayOfWeek: dayOfWeek);
  }

  /// アチーブメント通知設定
  void setAchievementNotificationEnabled(bool enabled) {
    state = state.copyWith(enableAchievementNotification: enabled);
  }

  /// フレンド通知設定
  void setFriendNotificationEnabled(bool enabled) {
    state = state.copyWith(enableFriendNotification: enabled);
  }
}

// Riverpod Providers
final notificationProvider =
    StateNotifierProvider<NotificationNotifier, List<AppNotification>>((ref) {
  return NotificationNotifier();
});

final reminderConfigProvider =
    StateNotifierProvider<ReminderConfigNotifier, ReminderConfig>((ref) {
  return ReminderConfigNotifier();
});

/// 未読通知数
final unreadNotificationCountProvider = Provider<int>((ref) {
  final notifications = ref.watch(notificationProvider);
  return notifications.where((n) => !n.isRead).length;
});

/// 通知統計情報
final notificationStatsProvider = Provider<NotificationStats>((ref) {
  final notifications = ref.watch(notificationProvider);
  return NotificationStats(
    totalNotifications: notifications.length,
    unreadCount: notifications.where((n) => !n.isRead).length,
    achievementCount:
        notifications.where((n) => n.type == 'achievement').length,
    friendRequestCount:
        notifications.where((n) => n.type == 'friend_request').length,
    lastCheckAt: DateTime.now(),
  );
});

/// 特定タイプの通知を取得
final notificationsByTypeProvider =
    Provider.family<List<AppNotification>, String>((ref, type) {
  final notifications = ref.watch(notificationProvider);
  return notifications.where((n) => n.type == type).toList();
});

/// 最新10件の通知
final recentNotificationsProvider =
    Provider<List<AppNotification>>((ref) {
  final notifications = ref.watch(notificationProvider);
  return notifications.take(10).toList();
});
