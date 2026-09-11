import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod/riverpod.dart';
import '../models/notification_model.dart';

class NotificationNotifier extends StateNotifier<UserNotificationPreference?> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  NotificationNotifier() : super(null);

  /// ユーザーの通知設定を初期化
  Future<void> initializeNotificationPreferences({
    required String userId,
    required String fcmToken,
  }) async {
    try {
      final pref = UserNotificationPreference(
        userId: userId,
        fcmToken: fcmToken,
        frequency: NotificationFrequency.daily,
        enabledTypes: NotificationType.values.toList(),
        quietHours: [21, 9],
        enableSound: true,
        enableVibration: true,
        enableLEDFlash: false,
        updatedAt: DateTime.now(),
        isOptedIn: true,
      );

      await _firestore
          .collection('analytics/notifications/user_preferences')
          .doc(userId)
          .set(pref.toJson());

      state = pref;
    } catch (e) {
      throw Exception('Failed to initialize notification preferences: $e');
    }
  }

  /// 通知頻度を更新
  Future<void> updateNotificationFrequency({
    required String userId,
    required NotificationFrequency frequency,
  }) async {
    try {
      await _firestore
          .collection('analytics/notifications/user_preferences')
          .doc(userId)
          .update({
        'frequency': frequency.name,
        'updatedAt': DateTime.now(),
      });

      if (state != null) {
        state = state!.copyWith(
          frequency: frequency,
          updatedAt: DateTime.now(),
        );
      }
    } catch (e) {
      throw Exception('Failed to update notification frequency: $e');
    }
  }

  /// 通知タイプの有効/無効を切り替え
  Future<void> toggleNotificationType({
    required String userId,
    required NotificationType type,
    required bool enabled,
  }) async {
    try {
      List<NotificationType> updatedTypes = [...(state?.enabledTypes ?? [])];
      if (enabled && !updatedTypes.contains(type)) {
        updatedTypes.add(type);
      } else if (!enabled) {
        updatedTypes.remove(type);
      }

      await _firestore
          .collection('analytics/notifications/user_preferences')
          .doc(userId)
          .update({
        'enabledTypes': updatedTypes.map((t) => t.name).toList(),
        'updatedAt': DateTime.now(),
      });

      if (state != null) {
        state = state!.copyWith(
          enabledTypes: updatedTypes,
          updatedAt: DateTime.now(),
        );
      }
    } catch (e) {
      throw Exception('Failed to toggle notification type: $e');
    }
  }

  /// サイレント時間を設定
  Future<void> setQuietHours({
    required String userId,
    required int startHour,
    required int endHour,
  }) async {
    try {
      await _firestore
          .collection('analytics/notifications/user_preferences')
          .doc(userId)
          .update({
        'quietHours': [startHour, endHour],
        'updatedAt': DateTime.now(),
      });

      if (state != null) {
        state = state!.copyWith(
          quietHours: [startHour, endHour],
          updatedAt: DateTime.now(),
        );
      }
    } catch (e) {
      throw Exception('Failed to set quiet hours: $e');
    }
  }

  /// サウンド設定を更新
  Future<void> updateSoundSetting({
    required String userId,
    required bool enabled,
  }) async {
    try {
      await _firestore
          .collection('analytics/notifications/user_preferences')
          .doc(userId)
          .update({
        'enableSound': enabled,
        'updatedAt': DateTime.now(),
      });

      if (state != null) {
        state = state!.copyWith(
          enableSound: enabled,
          updatedAt: DateTime.now(),
        );
      }
    } catch (e) {
      throw Exception('Failed to update sound setting: $e');
    }
  }

  /// 振動設定を更新
  Future<void> updateVibrationSetting({
    required String userId,
    required bool enabled,
  }) async {
    try {
      await _firestore
          .collection('analytics/notifications/user_preferences')
          .doc(userId)
          .update({
        'enableVibration': enabled,
        'updatedAt': DateTime.now(),
      });

      if (state != null) {
        state = state!.copyWith(
          enableVibration: enabled,
          updatedAt: DateTime.now(),
        );
      }
    } catch (e) {
      throw Exception('Failed to update vibration setting: $e');
    }
  }

  /// オプトイン/オプトアウト
  Future<void> setNotificationOptIn({
    required String userId,
    required bool isOptedIn,
  }) async {
    try {
      await _firestore
          .collection('analytics/notifications/user_preferences')
          .doc(userId)
          .update({
        'isOptedIn': isOptedIn,
        'updatedAt': DateTime.now(),
      });

      if (state != null) {
        state = state!.copyWith(
          isOptedIn: isOptedIn,
          updatedAt: DateTime.now(),
        );
      }
    } catch (e) {
      throw Exception('Failed to update opt-in status: $e');
    }
  }

  /// 通知イベントを記録
  Future<void> recordNotificationEvent({
    required String userId,
    required NotificationType type,
    required String title,
    required String body,
    required bool wasOpened,
    required int? actionIndex,
  }) async {
    try {
      final eventId = _firestore.collection('dummy').doc().id;
      final event = PushNotificationEvent(
        notificationId: eventId,
        userId: userId,
        type: type,
        title: title,
        body: body,
        data: {},
        sentAt: DateTime.now(),
        wasOpened: wasOpened,
        openedAt: wasOpened ? DateTime.now() : null,
        actionIndex: actionIndex,
      );

      await _firestore
          .collection('analytics/notifications/events')
          .doc(eventId)
          .set(event.toJson());
    } catch (e) {
      throw Exception('Failed to record notification event: $e');
    }
  }

  /// キャンペーンパフォーマンスを更新
  Future<void> updateCampaignPerformance({
    required String campaignId,
    required int totalSent,
    required int totalOpened,
    required int totalClicked,
    required int conversionCount,
  }) async {
    try {
      final openRate = totalSent > 0 ? totalOpened / totalSent : 0.0;
      final clickRate = totalSent > 0 ? totalClicked / totalSent : 0.0;
      final conversionRate = totalSent > 0 ? conversionCount / totalSent : 0.0;

      await _firestore
          .collection('analytics/notifications/campaign_performance')
          .doc(campaignId)
          .set({
        'campaignId': campaignId,
        'totalSent': totalSent,
        'totalOpened': totalOpened,
        'openRate': openRate,
        'totalClicked': totalClicked,
        'clickRate': clickRate,
        'conversionCount': conversionCount,
        'conversionRate': conversionRate,
        'estimatedLTV': conversionRate * 120, // ¥120 月額想定
        'analyzedAt': DateTime.now(),
      }, SetOptions(merge: true));
    } catch (e) {
      throw Exception('Failed to update campaign performance: $e');
    }
  }

  /// FCM トークンを更新
  Future<void> updateFCMToken({
    required String userId,
    required String newToken,
  }) async {
    try {
      await _firestore
          .collection('analytics/notifications/user_preferences')
          .doc(userId)
          .update({
        'fcmToken': newToken,
        'updatedAt': DateTime.now(),
      });

      if (state != null) {
        state = state!.copyWith(
          fcmToken: newToken,
          updatedAt: DateTime.now(),
        );
      }
    } catch (e) {
      throw Exception('Failed to update FCM token: $e');
    }
  }
}

// 通知管理プロバイダー
final notificationNotifierProvider =
    StateNotifierProvider<NotificationNotifier, UserNotificationPreference?>((ref) {
  return NotificationNotifier();
});
