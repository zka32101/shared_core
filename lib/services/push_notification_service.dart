import 'dart:async';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:shared_core/models/push_notification_model.dart';

class PushNotificationService {
  static final PushNotificationService _instance =
      PushNotificationService._internal();

  factory PushNotificationService() {
    return _instance;
  }

  PushNotificationService._internal();

  late FirebaseMessaging _firebaseMessaging;
  late FlutterLocalNotificationsPlugin _localNotifications;

  bool _isInitialized = false;
  final _notificationStream = StreamController<NotificationPayload>.broadcast();

  Stream<NotificationPayload> get notificationStream =>
      _notificationStream.stream;

  /// Firebase Cloud Messaging & Local Notifications を初期化
  Future<void> initialize() async {
    if (_isInitialized) return;

    try {
      // Firebase Cloud Messaging 初期化
      _firebaseMessaging = FirebaseMessaging.instance;

      // FCM 権限をリクエスト
      final settings = await _firebaseMessaging.requestPermission(
        alert: true,
        announcement: true,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        provisional: false,
        sound: true,
      );

      // ローカル通知初期化
      await _initializeLocalNotifications();

      // FCM メッセージハンドラーを登録
      _setupMessageHandlers();

      _isInitialized = true;

      print('[PushNotification] Service initialized successfully');
    } catch (e) {
      print('[PushNotification] Initialization error: $e');
      rethrow;
    }
  }

  /// ローカル通知を初期化
  Future<void> _initializeLocalNotifications() async {
    _localNotifications = FlutterLocalNotificationsPlugin();

    const AndroidInitializationSettings androidSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    const DarwinInitializationSettings iosSettings =
        DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    final InitializationSettings initSettings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );

    await _localNotifications.initialize(
      initSettings,
      onDidReceiveNotificationResponse: _handleNotificationResponse,
      onDidReceiveBackgroundNotificationResponse: _handleBackgroundResponse,
    );
  }

  /// メッセージハンドラーを設定
  void _setupMessageHandlers() {
    // フォアグラウンドメッセージ
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('[FCM] Foreground message: ${message.notification?.title}');
      _handleForegroundMessage(message);
    });

    // バックグラウンドメッセージ（ユーザーが通知をタップ）
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('[FCM] Message opened: ${message.notification?.title}');
      _handleMessageOpenedApp(message);
    });

    // バックグラウンドメッセージハンドラー（静的）
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  }

  /// フォアグラウンドメッセージ処理
  Future<void> _handleForegroundMessage(RemoteMessage message) async {
    final notification = message.notification;
    final data = message.data;

    if (notification != null) {
      // ローカル通知を表示
      await _showLocalNotification(
        title: notification.title ?? 'Notification',
        body: notification.body ?? '',
        notificationId: message.messageId ?? 'default',
        customData: data,
      );

      // StreamController に通知を流す
      _notificationStream.add(NotificationPayload(
        notificationId: message.messageId ?? 'default',
        userId: data['userId'] ?? '',
        title: notification.title ?? '',
        body: notification.body ?? '',
        type: data['type'] ?? 'event',
        customData: data,
        createdAt: DateTime.now(),
      ));
    }
  }

  /// メッセージタップ時の処理
  Future<void> _handleMessageOpenedApp(RemoteMessage message) async {
    print('[FCM] User tapped notification');
    // アプリ内ナビゲーションなどを実装
  }

  /// ローカル通知を表示
  Future<void> _showLocalNotification({
    required String title,
    required String body,
    required String notificationId,
    Map<String, dynamic>? customData,
  }) async {
    try {
      const AndroidNotificationDetails androidDetails =
          AndroidNotificationDetails(
        'shared_core_channel',
        'Shared Core Notifications',
        channelDescription: 'Notifications from Shared Core',
        importance: Importance.max,
        priority: Priority.high,
        showWhen: true,
      );

      const DarwinNotificationDetails iosDetails =
          DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: true,
      );

      final NotificationDetails notificationDetails = NotificationDetails(
        android: androidDetails,
        iOS: iosDetails,
      );

      await _localNotifications.show(
        notificationId.hashCode,
        title,
        body,
        notificationDetails,
        payload: customData != null ? customData.toString() : null,
      );
    } catch (e) {
      print('[PushNotification] Error showing local notification: $e');
    }
  }

  /// ローカル通知レスポンスハンドラー
  void _handleNotificationResponse(NotificationResponse response) {
    print('[LocalNotification] User tapped notification: ${response.payload}');
  }

  /// バックグラウンド通知レスポンスハンドラー
  static void _handleBackgroundResponse(NotificationResponse response) {
    print('[LocalNotification] Background notification response');
  }

  /// FCM トークンを取得
  Future<String?> getFCMToken() async {
    try {
      return await _firebaseMessaging.getToken();
    } catch (e) {
      print('[PushNotification] Error getting FCM token: $e');
      return null;
    }
  }

  /// 購読トピックを設定
  Future<void> subscribeToTopic(String topic) async {
    try {
      await _firebaseMessaging.subscribeToTopic(topic);
      print('[FCM] Subscribed to topic: $topic');
    } catch (e) {
      print('[PushNotification] Error subscribing to topic: $e');
    }
  }

  /// トピック購読を解除
  Future<void> unsubscribeFromTopic(String topic) async {
    try {
      await _firebaseMessaging.unsubscribeFromTopic(topic);
      print('[FCM] Unsubscribed from topic: $topic');
    } catch (e) {
      print('[PushNotification] Error unsubscribing from topic: $e');
    }
  }

  /// スケジュール済み通知を送信
  Future<void> scheduleNotification({
    required String title,
    required String body,
    required DateTime scheduledTime,
    Map<String, dynamic>? customData,
  }) async {
    try {
      final duration = scheduledTime.difference(DateTime.now());

      if (duration.isNegative) {
        print('[PushNotification] Scheduled time is in the past');
        return;
      }

      // Android では AlarmManager を使用（FlutterLocalNotifications で対応）
      // iOS では UNCalendarNotificationTrigger を使用
      final AndroidNotificationDetails androidDetails =
          AndroidNotificationDetails(
        'scheduled_notifications',
        'Scheduled Notifications',
        channelDescription: 'Scheduled notifications from Shared Core',
        importance: Importance.max,
        priority: Priority.high,
        showWhen: true,
      );

      const DarwinNotificationDetails iosDetails =
          DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: true,
      );

      final NotificationDetails notificationDetails = NotificationDetails(
        android: androidDetails,
        iOS: iosDetails,
      );

      await _localNotifications.zonedSchedule(
        title.hashCode,
        title,
        body,
        scheduledTime,
        notificationDetails,
        androidScheduleMode: AndroidScheduleMode.exactAndAllowWhileIdle,
        payload: customData != null ? customData.toString() : null,
      );

      print('[PushNotification] Scheduled notification for: $scheduledTime');
    } catch (e) {
      print('[PushNotification] Error scheduling notification: $e');
    }
  }

  /// すべての通知をクリア
  Future<void> clearAllNotifications() async {
    try {
      await _localNotifications.cancelAll();
      print('[PushNotification] All notifications cleared');
    } catch (e) {
      print('[PushNotification] Error clearing notifications: $e');
    }
  }

  /// リソースをクリーンアップ
  void dispose() {
    _notificationStream.close();
  }
}

/// Firebase Cloud Messaging バックグラウンドハンドラー（トップレベル関数）
@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print('[FCM] Background message: ${message.notification?.title}');
  // バックグラウンドで受信したメッセージの処理
}
