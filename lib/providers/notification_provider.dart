import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import '../models/notification_model.dart';
import '../services/notification_service.dart';

final notificationServiceProvider = Provider((ref) {
  return NotificationService();
});

final notificationPreferencesProvider = FutureProvider.autoDispose
    .family<NotificationPreferences?, String>((ref, userId) async {
  final service = ref.watch(notificationServiceProvider);
  return service.getNotificationPreferences(userId);
});

final userNotificationsProvider = StreamProvider.autoDispose
    .family<List<PushNotification>, String>((ref, userId) {
  final service = ref.watch(notificationServiceProvider);
  return service.getUserNotifications(userId);
});

class NotificationNotifier extends StateNotifier<Map<String, dynamic>> {
  final NotificationService _service;

  NotificationNotifier(this._service) : super({});

  /// デバイストークン登録
  Future<void> registerDeviceToken(String userId, String appVersion) async {
    try {
      final token = await _service.registerDeviceToken(userId, appVersion);
      state = {...state, 'deviceToken': token};
    } catch (e) {
      state = {...state, 'error': e.toString()};
      rethrow;
    }
  }

  /// 通知ハンドラー設定
  void setupNotificationHandlers(
    Function(RemoteMessage) onMessageCallback,
    Function(RemoteMessage) onMessageOpenedCallback,
  ) {
    _service.setupNotificationHandlers(onMessageCallback, onMessageOpenedCallback);
  }

  /// 通知を既読にマーク
  Future<void> markNotificationAsRead(
    String userId,
    String notificationId,
  ) async {
    try {
      await _service.markNotificationAsRead(userId, notificationId);
      state = {...state, 'lastReadNotification': notificationId};
    } catch (e) {
      rethrow;
    }
  }

  /// 学習リマインダーをスケジュール
  Future<void> scheduleStudyReminder({
    required String userId,
    required String time,
  }) async {
    try {
      await _service.scheduleStudyReminder(userId: userId, time: time);
      state = {
        ...state,
        'lastScheduledReminder': {'userId': userId, 'time': time}
      };
    } catch (e) {
      rethrow;
    }
  }

  /// 通知設定を更新
  Future<void> updatePreferences(
    String userId,
    NotificationPreferences preferences,
  ) async {
    try {
      await _service.updateNotificationPreferences(userId, preferences);
      state = {...state, 'preferencesUpdated': DateTime.now()};
    } catch (e) {
      rethrow;
    }
  }

  /// ログアウト時にトークンを無効化
  Future<void> deactivateDeviceToken(String userId, String token) async {
    try {
      await _service.deactivateDeviceToken(userId, token);
      state = {...state, 'deviceToken': null};
    } catch (e) {
      rethrow;
    }
  }
}

final notificationNotifierProvider =
    StateNotifierProvider<NotificationNotifier, Map<String, dynamic>>((ref) {
  final service = ref.watch(notificationServiceProvider);
  return NotificationNotifier(service);
});
