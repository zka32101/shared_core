import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/notification_model.dart';

class NotificationService {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  /// デバイストークンを登録
  Future<String> registerDeviceToken(String userId, String appVersion) async {
    try {
      // FCM トークン取得
      final token = await _firebaseMessaging.getToken();
      if (token == null) {
        throw Exception('Failed to get FCM token');
      }

      // Firestore に保存
      final deviceToken = DeviceToken(
        userId: userId,
        token: token,
        platform: _getPlatform(),
        appVersion: appVersion,
        registeredAt: DateTime.now(),
        lastUsedAt: null,
        isActive: true,
      );

      await _firestore
          .collection('notifications')
          .doc('device_tokens')
          .collection('users')
          .doc('${userId}_$token')
          .set(deviceToken.toJson());

      return token;
    } catch (e) {
      rethrow;
    }
  }

  /// デバイストークンを更新
  Future<void> updateDeviceTokenLastUsed(String userId, String token) async {
    await _firestore
        .collection('notifications')
        .doc('device_tokens')
        .collection('users')
        .doc('${userId}_$token')
        .update({'lastUsedAt': DateTime.now()});
  }

  /// FCM 通知ハンドラーを設定
  void setupNotificationHandlers(
    Function(RemoteMessage) onMessageCallback,
    Function(RemoteMessage) onMessageOpenedCallback,
  ) {
    // バックグラウンドメッセージハンドラー
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    // フォアグラウンドメッセージハンドラー
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      onMessageCallback(message);
    });

    // アプリ起動時のメッセージハンドラー
    FirebaseMessaging.instance.getInitialMessage().then((message) {
      if (message != null) {
        onMessageOpenedCallback(message);
      }
    });

    // バックグラウンドからアプリ開く時のハンドラー
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      onMessageOpenedCallback(message);
    });
  }

  /// 通知ログを記録（分析用）
  Future<void> logNotificationEvent(
    String userId,
    String notificationId,
    String eventType, // 'sent', 'delivered', 'opened', 'clicked'
  ) async {
    await _firestore
        .collection('notifications')
        .doc('analytics')
        .collection('events')
        .add({
          'userId': userId,
          'notificationId': notificationId,
          'eventType': eventType,
          'timestamp': DateTime.now(),
        });
  }

  /// プッシュ通知を送信（Cloud Functions 経由）
  Future<void> sendPushNotification({
    required String userId,
    required String title,
    required String body,
    required Map<String, String> data,
  }) async {
    try {
      await _firestore
          .collection('notifications')
          .doc('queue')
          .collection('pending')
          .add({
            'userId': userId,
            'title': title,
            'body': body,
            'data': data,
            'createdAt': DateTime.now(),
            'status': 'pending',
          });
    } catch (e) {
      rethrow;
    }
  }

  /// ユーザーの通知設定を取得
  Future<NotificationPreferences?> getNotificationPreferences(
      String userId) async {
    try {
      final doc = await _firestore
          .collection('notifications')
          .doc('preferences')
          .collection('users')
          .doc(userId)
          .get();

      if (!doc.exists) {
        return null;
      }

      return NotificationPreferences.fromJson(doc.data()!);
    } catch (e) {
      rethrow;
    }
  }

  /// ユーザーの通知設定を更新
  Future<void> updateNotificationPreferences(
    String userId,
    NotificationPreferences preferences,
  ) async {
    await _firestore
        .collection('notifications')
        .doc('preferences')
        .collection('users')
        .doc(userId)
        .set(preferences.toJson());
  }

  /// 通知を既読にマーク
  Future<void> markNotificationAsRead(
    String userId,
    String notificationId,
  ) async {
    await _firestore
        .collection('notifications')
        .doc('messages')
        .collection('users')
        .doc(userId)
        .collection('inbox')
        .doc(notificationId)
        .update({'isRead': true, 'readAt': DateTime.now()});

    await logNotificationEvent(userId, notificationId, 'opened');
  }

  /// ユーザーの通知一覧を取得
  Stream<List<PushNotification>> getUserNotifications(String userId) {
    return _firestore
        .collection('notifications')
        .doc('messages')
        .collection('users')
        .doc(userId)
        .collection('inbox')
        .orderBy('createdAt', descending: true)
        .limit(50)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs
          .map((doc) => PushNotification.fromJson(doc.data()))
          .toList();
    });
  }

  /// 学習リマインダー通知をスケジュール
  Future<void> scheduleStudyReminder({
    required String userId,
    required String time, // HH:mm
  }) async {
    await _firestore
        .collection('notifications')
        .doc('schedules')
        .collection('reminders')
        .add({
          'userId': userId,
          'type': 'learningReminder',
          'scheduledTime': time,
          'isEnabled': true,
          'createdAt': DateTime.now(),
        });
  }

  /// デバイストークンを無効化（ログアウト時）
  Future<void> deactivateDeviceToken(String userId, String token) async {
    await _firestore
        .collection('notifications')
        .doc('device_tokens')
        .collection('users')
        .doc('${userId}_$token')
        .update({'isActive': false});
  }

  String _getPlatform() {
    // プラットフォーム判定
    return 'unknown'; // 実装はプラットフォーム検出ライブラリで
  }
}

/// バックグラウンドメッセージハンドラー
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // バックグラウンドでのメッセージ処理
  print('Handling a background message: ${message.messageId}');
}
