// Push Notification Provider
// Phase 4.18: Push Notification & User Retention Strategy

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_core/models/push_notification_model.dart';

// 通知リストProvider
final notificationsProvider =
    StateNotifierProvider<NotificationNotifier, List<NotificationPayload>>(
        (ref) {
  return NotificationNotifier();
});

class NotificationNotifier extends StateNotifier<List<NotificationPayload>> {
  NotificationNotifier() : super([]);

  /// 通知を記録
  Future<void> recordNotification(NotificationPayload notification) async {
    state = [...state, notification];
  }

  /// 通知を既読にマーク
  Future<void> markAsRead(String notificationId) async {
    state = state.map((n) {
      if (n.notificationId == notificationId) {
        return n.copyWith(isRead: true, readAt: DateTime.now());
      }
      return n;
    }).toList();
  }

  /// 通知をクリア
  Future<void> clearNotification(String notificationId) async {
    state = state
        .where((n) => n.notificationId != notificationId)
        .toList();
  }

  /// 未読通知をクリア
  Future<void> clearAllRead() async {
    state = state.where((n) => !n.isRead).toList();
  }
}

// 未読通知数Provider
final unreadNotificationCountProvider = Provider<int>((ref) {
  final notifications = ref.watch(notificationsProvider);
  return notifications.where((n) => !n.isRead).length;
});

// スケジュール済み通知Provider
final scheduledNotificationsProvider = StateNotifierProvider<
    ScheduledNotificationNotifier, List<NotificationSchedule>>((ref) {
  return ScheduledNotificationNotifier();
});

class ScheduledNotificationNotifier
    extends StateNotifier<List<NotificationSchedule>> {
  ScheduledNotificationNotifier() : super([]);

  /// スケジュール付き通知を作成
  Future<void> createSchedule(NotificationSchedule schedule) async {
    state = [...state, schedule];
  }

  /// スケジュール付き通知を更新
  Future<void> updateSchedule(NotificationSchedule schedule) async {
    state = state.map((s) {
      if (s.scheduleId == schedule.scheduleId) {
        return schedule;
      }
      return s;
    }).toList();
  }

  /// スケジュール付き通知を無効化
  Future<void> disableSchedule(String scheduleId) async {
    state = state.map((s) {
      if (s.scheduleId == scheduleId) {
        return s.copyWith(isActive: false);
      }
      return s;
    }).toList();
  }

  /// スケジュール付き通知を削除
  Future<void> deleteSchedule(String scheduleId) async {
    state = state.where((s) => s.scheduleId != scheduleId).toList();
  }

  /// アクティブなスケジュール取得
  List<NotificationSchedule> getActiveSchedules() {
    return state.where((s) => s.isActive).toList();
  }
}

// 通知設定Provider
final notificationSettingsProvider =
    StateNotifierProvider<NotificationSettingsNotifier, NotificationSettings?>(
        (ref) {
  return NotificationSettingsNotifier();
});

class NotificationSettingsNotifier
    extends StateNotifier<NotificationSettings?> {
  NotificationSettingsNotifier() : super(null);

  /// 通知設定を読み込み
  Future<void> loadSettings(String userId) async {
    // Firestore or SharedPreferences から読み込み
    state = NotificationSettings(
      userId: userId,
      quietHours: [22, 8],
      updatedAt: DateTime.now(),
    );
  }

  /// 通知設定を更新
  Future<void> updateSettings(NotificationSettings settings) async {
    state = settings;
  }

  /// プッシュ通知の有効化
  Future<void> enablePushNotifications() async {
    if (state != null) {
      state = state!.copyWith(enablePushNotifications: true);
    }
  }

  /// プッシュ通知の無効化
  Future<void> disablePushNotifications() async {
    if (state != null) {
      state = state!.copyWith(enablePushNotifications: false);
    }
  }

  /// リテンション通知の設定
  Future<void> setRetentionNotifications(bool enabled) async {
    if (state != null) {
      state = state!.copyWith(enableRetentionNotifications: enabled);
    }
  }

  /// サイレント時間を設定
  Future<void> setQuietHours(List<int> hours) async {
    if (state != null) {
      state = state!.copyWith(quietHours: hours);
    }
  }
}

// ユーザーリテンション指標Provider
final userRetentionMetricsProvider = StateNotifierProvider<
    RetentionMetricsNotifier, Map<String, RetentionMetrics>>((ref) {
  return RetentionMetricsNotifier();
});

class RetentionMetricsNotifier
    extends StateNotifier<Map<String, RetentionMetrics>> {
  RetentionMetricsNotifier() : super({});

  /// ユーザーのリテンション指標を記録
  Future<void> recordRetentionMetrics(RetentionMetrics metrics) async {
    state = {
      ...state,
      metrics.userId: metrics,
    };
  }

  /// ユーザーのリテンション指標を取得
  RetentionMetrics? getMetrics(String userId) {
    return state[userId];
  }

  /// すべてのリテンション指標を取得
  List<RetentionMetrics> getAllMetrics() {
    return state.values.toList();
  }

  /// リスクレベル別にユーザーを分類
  List<RetentionMetrics> getUsersByRiskLevel(String riskLevel) {
    return state.values
        .where((m) => m.riskLevel == riskLevel)
        .toList();
  }

  /// 高リスクユーザーを取得
  List<RetentionMetrics> getHighRiskUsers() {
    return state.values
        .where((m) => m.riskLevel == 'high' || m.riskLevel == 'critical')
        .toList();
  }
}

// チャーン予測Provider
final churnPredictionProvider = FutureProvider.autoDispose
    .family<List<RetentionMetrics>, String>((ref, userId) async {
  final metrics = ref.watch(userRetentionMetricsProvider);
  final userMetrics = metrics[userId];

  if (userMetrics == null) {
    return [];
  }

  // チャーン予測：リスクが高いユーザーのリストを返す
  final allMetrics = metrics.values.toList();
  return allMetrics
      .where((m) => m.riskLevel == 'high' || m.riskLevel == 'critical')
      .toList();
});

// リテンション通知候補を取得するProvider
final retentionNotificationCandidatesProvider =
    Provider<List<RetentionMetrics>>((ref) {
  final metrics = ref.watch(userRetentionMetricsNotifier);

  // 高リスクユーザーを対象に通知候補を返す
  return metrics.values
      .where((m) => m.riskLevel == 'high' || m.riskLevel == 'critical')
      .toList();
});

// ローカル参照用の notifier
final userRetentionMetricsNotifier =
    StateNotifierProvider<RetentionMetricsNotifier, Map<String, RetentionMetrics>>(
        (ref) {
  return RetentionMetricsNotifier();
});
