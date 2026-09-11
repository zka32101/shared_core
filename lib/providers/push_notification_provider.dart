import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/push_notification_model.dart';

/// プッシュ通知取得ハンドラー
typedef FetchPushNotificationsHandler = Future<List<PushNotificationPayload>> Function({
  required String userId,
  required int limit,
});

/// FCM トークン取得ハンドラー
typedef GetFCMTokenHandler = Future<String> Function();

/// 通知スケジュール保存ハンドラー
typedef ScheduleNotificationHandler = Future<void> Function({
  required NotificationSchedule schedule,
});

/// 通知ログ記録ハンドラー
typedef LogNotificationHandler = Future<void> Function({
  required NotificationLog log,
});

/// プッシュ通知設定取得ハンドラー
typedef FetchNotificationConfigHandler = Future<PushNotificationConfig?> Function({
  required String userId,
});

/// プッシュ通知設定更新ハンドラー
typedef UpdateNotificationConfigHandler = Future<void> Function({
  required String userId,
  required PushNotificationConfig config,
});

/// プッシュ通知管理状態
class PushNotificationState {
  final List<PushNotificationPayload> notifications;
  final PushNotificationConfig? userConfig;
  final Map<String, NotificationSchedule> scheduledNotifications;
  final String? fcmToken;
  final bool isLoading;
  final String? error;
  final int? unreadCount;

  const PushNotificationState({
    required this.notifications,
    this.userConfig,
    required this.scheduledNotifications,
    this.fcmToken,
    this.isLoading = false,
    this.error,
    this.unreadCount = 0,
  });

  static const empty = PushNotificationState(
    notifications: [],
    scheduledNotifications: {},
  );

  PushNotificationState copyWith({
    List<PushNotificationPayload>? notifications,
    PushNotificationConfig? userConfig,
    Map<String, NotificationSchedule>? scheduledNotifications,
    String? fcmToken,
    bool? isLoading,
    String? error,
    int? unreadCount,
    bool clearError = false,
  }) =>
      PushNotificationState(
        notifications: notifications ?? this.notifications,
        userConfig: userConfig ?? this.userConfig,
        scheduledNotifications: scheduledNotifications ?? this.scheduledNotifications,
        fcmToken: fcmToken ?? this.fcmToken,
        isLoading: isLoading ?? this.isLoading,
        error: clearError ? null : (error ?? this.error),
        unreadCount: unreadCount ?? this.unreadCount,
      );
}

/// プッシュ通知管理 Notifier
class PushNotificationNotifier extends Notifier<PushNotificationState> {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  FetchPushNotificationsHandler? _fetchHandler;
  GetFCMTokenHandler? _fcmTokenHandler;
  ScheduleNotificationHandler? _scheduleHandler;
  LogNotificationHandler? _logHandler;
  FetchNotificationConfigHandler? _configFetchHandler;
  UpdateNotificationConfigHandler? _configUpdateHandler;

  @override
  PushNotificationState build() {
    return const PushNotificationState(
      notifications: [],
      scheduledNotifications: {},
    );
  }

  void setHandlers({
    required FetchPushNotificationsHandler fetchHandler,
    required GetFCMTokenHandler fcmTokenHandler,
    required ScheduleNotificationHandler scheduleHandler,
    required LogNotificationHandler logHandler,
    required FetchNotificationConfigHandler configFetchHandler,
    required UpdateNotificationConfigHandler configUpdateHandler,
  }) {
    _fetchHandler = fetchHandler;
    _fcmTokenHandler = fcmTokenHandler;
    _scheduleHandler = scheduleHandler;
    _logHandler = logHandler;
    _configFetchHandler = configFetchHandler;
    _configUpdateHandler = configUpdateHandler;
  }

  /// FCM トークンを取得
  Future<void> fetchFCMToken() async {
    try {
      final handler = _fcmTokenHandler;
      if (handler == null) {
        throw Exception('GetFCMTokenHandler not set');
      }

      final token = await handler();
      state = state.copyWith(fcmToken: token, clearError: true);
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }

  /// 通知一覧を取得
  Future<void> fetchNotifications(String userId, {int limit = 50}) async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final handler = _fetchHandler;
      if (handler == null) {
        throw Exception('FetchPushNotificationsHandler not set');
      }

      final notifications = await handler(userId: userId, limit: limit);
      final unreadCount = notifications.where((n) => !(n.isRead ?? false)).length;

      state = state.copyWith(
        notifications: notifications,
        isLoading: false,
        unreadCount: unreadCount,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  /// 通知を既読にマーク
  void markAsRead(String notificationId) {
    final updatedNotifications = state.notifications.map((n) {
      if (n.notificationId == notificationId) {
        return n.copyWith(isRead: true);
      }
      return n;
    }).toList();

    final unreadCount = updatedNotifications.where((n) => !(n.isRead ?? false)).length;
    state = state.copyWith(
      notifications: updatedNotifications,
      unreadCount: unreadCount,
    );
  }

  /// 通知を全て既読にマーク
  void markAllAsRead() {
    final updatedNotifications = state.notifications
        .map((n) => n.copyWith(isRead: true))
        .toList();

    state = state.copyWith(
      notifications: updatedNotifications,
      unreadCount: 0,
    );
  }

  /// 通知をスケジュール
  Future<void> scheduleNotification(NotificationSchedule schedule) async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final handler = _scheduleHandler;
      if (handler == null) {
        throw Exception('ScheduleNotificationHandler not set');
      }

      await handler(schedule: schedule);

      final updatedSchedules = {
        ...state.scheduledNotifications,
        schedule.scheduleId: schedule,
      };

      state = state.copyWith(
        scheduledNotifications: updatedSchedules,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  /// 通知をログに記録
  Future<void> logNotification(NotificationLog log) async {
    try {
      final handler = _logHandler;
      if (handler == null) {
        throw Exception('LogNotificationHandler not set');
      }

      await handler(log: log);
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }

  /// 通知設定を取得
  Future<void> fetchNotificationConfig(String userId) async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final handler = _configFetchHandler;
      if (handler == null) {
        throw Exception('FetchNotificationConfigHandler not set');
      }

      final config = await handler(userId: userId);
      state = state.copyWith(
        userConfig: config,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  /// 通知設定を更新
  Future<void> updateNotificationConfig(String userId, PushNotificationConfig config) async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final handler = _configUpdateHandler;
      if (handler == null) {
        throw Exception('UpdateNotificationConfigHandler not set');
      }

      await handler(userId: userId, config: config);
      state = state.copyWith(
        userConfig: config,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }
}

/// プッシュ通知管理プロバイダー
final pushNotificationProvider =
    NotifierProvider<PushNotificationNotifier, PushNotificationState>(
  () => PushNotificationNotifier(),
);

/// FCM トークンプロバイダー
final fcmTokenProvider = Provider.autoDispose<String?>((ref) {
  final state = ref.watch(pushNotificationProvider);
  return state.fcmToken;
});

/// 未読通知数プロバイダー
final unreadNotificationCountProvider = Provider.autoDispose<int>((ref) {
  final state = ref.watch(pushNotificationProvider);
  return state.unreadCount ?? 0;
});

/// 通知設定プロバイダー
final notificationConfigProvider = Provider.autoDispose<PushNotificationConfig?>((ref) {
  final state = ref.watch(pushNotificationProvider);
  return state.userConfig;
});

/// スケジュール済み通知プロバイダー
final scheduledNotificationsProvider = Provider.autoDispose<List<NotificationSchedule>>((ref) {
  final state = ref.watch(pushNotificationProvider);
  return state.scheduledNotifications.values.toList();
});
