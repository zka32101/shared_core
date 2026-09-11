import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

import '../models/push_notification_model.dart';

/// Firebase Cloud Messaging サービス
class FirebaseMessagingService {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  /// FCM を初期化
  Future<void> initialize() async {
    try {
      // 通知パーミッションをリクエスト
      final settings = await _firebaseMessaging.requestPermission(
        alert: true,
        announcement: false,
        badge: true,
        carryForward: true,
        criticalAlert: false,
        provisional: false,
        sound: true,
      );

      if (kDebugMode) {
        debugPrint('Notification permission status: ${settings.authorizationStatus}');
      }

      // フォアグラウンド通知を処理
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        _handleMessage(message);
      });

      // バックグラウンド通知を処理（フォアグラウンドから遷移したとき）
      FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
        _handleMessageOpenedApp(message);
      });

      // アプリが完全に閉じている状態で通知をタップしたとき
      final initialMessage = await _firebaseMessaging.getInitialMessage();
      if (initialMessage != null) {
        _handleMessageOpenedApp(initialMessage);
      }
    } catch (e) {
      debugPrint('FCM initialization error: $e');
    }
  }

  /// FCM トークンを取得
  Future<String?> getFCMToken() async {
    try {
      return await _firebaseMessaging.getToken();
    } catch (e) {
      debugPrint('Error getting FCM token: $e');
      return null;
    }
  }

  /// FCM トークン更新時のリスナーを設定
  void setTokenRefreshListener(Function(String) onTokenRefresh) {
    _firebaseMessaging.onTokenRefresh.listen((newToken) {
      debugPrint('FCM token refreshed: $newToken');
      onTokenRefresh(newToken);
    });
  }

  /// トピックをサブスクライブ
  Future<void> subscribeToTopic(String topic) async {
    try {
      await _firebaseMessaging.subscribeToTopic(topic);
      debugPrint('Subscribed to topic: $topic');
    } catch (e) {
      debugPrint('Error subscribing to topic: $e');
    }
  }

  /// トピックからアンサブスクライブ
  Future<void> unsubscribeFromTopic(String topic) async {
    try {
      await _firebaseMessaging.unsubscribeFromTopic(topic);
      debugPrint('Unsubscribed from topic: $topic');
    } catch (e) {
      debugPrint('Error unsubscribing from topic: $e');
    }
  }

  /// フォアグラウンド通知を処理
  void _handleMessage(RemoteMessage message) {
    debugPrint('Handling a foreground message: ${message.messageId}');
    debugPrint('Message data: ${message.data}');
    debugPrint('Message notification: ${message.notification}');

    final notification = message.notification;
    if (notification != null) {
      debugPrint('Title: ${notification.title}');
      debugPrint('Body: ${notification.body}');
    }
  }

  /// アプリが開かれた時の通知を処理
  void _handleMessageOpenedApp(RemoteMessage message) {
    debugPrint('Handling message opened app: ${message.messageId}');
    debugPrint('Deep link data: ${message.data}');

    // ここでディープリンク処理を実装
    final deepLink = message.data['deepLink'];
    if (deepLink != null) {
      debugPrint('Opening deep link: $deepLink');
      // Router.of(context).go(deepLink);
    }
  }

  /// 通知の APNs トークンを設定（iOS）
  Future<void> setAPNSToken(String? token) async {
    if (token != null) {
      await _firebaseMessaging.setAPNSToken(token);
    }
  }

  /// Android デバイストークンを設定
  Future<void> setAndroidDeviceToken(String? token) async {
    if (token != null) {
      // Android デバイストークンの設定（必要に応じて）
      debugPrint('Android device token: $token');
    }
  }
}

/// バックグラウンド通知ハンドラー（トップレベル関数）
@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  debugPrint('Handling a background message: ${message.messageId}');
  debugPrint('Message data: ${message.data}');
}
