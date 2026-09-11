import 'dart:async';
import 'package:firebase_cloud_functions/firebase_cloud_functions.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import '../models/notification_model.dart';

class PushNotificationService {
  static final PushNotificationService _instance =
      PushNotificationService._internal();

  factory PushNotificationService() {
    return _instance;
  }

  PushNotificationService._internal();

  final FirebaseMessaging _messaging = FirebaseMessaging.instance;
  final FlutterLocalNotificationsPlugin _localNotifications =
      FlutterLocalNotificationsPlugin();
  final FirebaseFunctions _functions = FirebaseFunctions.instance;

  /// サービスを初期化
  Future<void> initialize({
    required Future<void> Function(RemoteMessage) onMessageHandler,
  }) async {
    // FCM 初期化
    await _messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    // ローカル通知初期化
    const AndroidInitializationSettings androidInitSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const DarwinInitializationSettings iosInitSettings =
        DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    const InitializationSettings initSettings = InitializationSettings(
      android: androidInitSettings,
      iOS: iosInitSettings,
    );

    await _localNotifications.initialize(initSettings);

    // メッセージハンドラー登録
    FirebaseMessaging.onMessage.listen(onMessageHandler);
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      _handleNotificationTap(message);
    });
  }

  /// FCM トークンを取得
  Future<String?> getFCMToken() async {
    try {
      return await _messaging.getToken();
    } catch (e) {
      return null;
    }
  }

  /// デイリーリマインダー通知をスケジュール
  Future<void> scheduleDailyReminder({
    required String userId,
    required String title,
    required String body,
    required TimeOfDay time,
  }) async {
    try {
      await _functions.httpsCallable('scheduleDailyReminder').call({
        'userId': userId,
        'title': title,
        'body': body,
        'hour': time.hour,
        'minute': time.minute,
      });
    } catch (e) {
      throw Exception('Failed to schedule daily reminder: $e');
    }
  }

  /// ストリークリマインダーをスケジュール
  Future<void> scheduleStreakReminder({
    required String userId,
    required int streakDays,
  }) async {
    try {
      await _functions.httpsCallable('scheduleStreakReminder').call({
        'userId': userId,
        'streakDays': streakDays,
      });
    } catch (e) {
      throw Exception('Failed to schedule streak reminder: $e');
    }
  }

  /// ゴール達成通知を送信
  Future<void> sendGoalAchievedNotification({
    required String userId,
    required String goalType,
    required String goalName,
  }) async {
    try {
      await _functions.httpsCallable('sendGoalNotification').call({
        'userId': userId,
        'type': 'goal_achieved',
        'goalType': goalType,
        'goalName': goalName,
      });
    } catch (e) {
      throw Exception('Failed to send goal notification: $e');
    }
  }

  /// チャーン予防キャンペーンを実行
  Future<void> executeChurnPreventionCampaign({
    required String userId,
    required String campaignId,
    required String title,
    required String body,
  }) async {
    try {
      await _functions.httpsCallable('executeChurnPrevention').call({
        'userId': userId,
        'campaignId': campaignId,
        'title': title,
        'body': body,
      });
    } catch (e) {
      throw Exception('Failed to execute churn prevention campaign: $e');
    }
  }

  /// 季節イベント通知を送信
  Future<void> sendSeasonalEventNotification({
    required String userId,
    required String eventType,
    required String eventTitle,
    required String eventDescription,
  }) async {
    try {
      await _functions.httpsCallable('sendSeasonalEvent').call({
        'userId': userId,
        'eventType': eventType,
        'eventTitle': eventTitle,
        'eventDescription': eventDescription,
      });
    } catch (e) {
      throw Exception('Failed to send seasonal event notification: $e');
    }
  }

  /// A/B テストキャンペーンを実行
  Future<void> executeABTestCampaign({
    required String userId,
    required String campaignId,
    required String variant,
    required String title,
    required String body,
  }) async {
    try {
      await _functions.httpsCallable('executeABTestCampaign').call({
        'userId': userId,
        'campaignId': campaignId,
        'variant': variant,
        'title': title,
        'body': body,
      });
    } catch (e) {
      throw Exception('Failed to execute A/B test campaign: $e');
    }
  }

  /// ローカル通知を表示
  Future<void> showLocalNotification({
    required String title,
    required String body,
    required String payload,
    required bool enableSound,
    required bool enableVibration,
  }) async {
    try {
      const AndroidNotificationDetails androidDetails =
          AndroidNotificationDetails(
        'shogaku_kore_channel',
        'Learning Notifications',
        channelDescription: 'Notifications for learning reminders and achievements',
        importance: Importance.max,
        priority: Priority.high,
      );

      const DarwinNotificationDetails iosDetails =
          DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: true,
      );

      const NotificationDetails details = NotificationDetails(
        android: androidDetails,
        iOS: iosDetails,
      );

      await _localNotifications.show(
        payload.hashCode,
        title,
        body,
        details,
        payload: payload,
      );
    } catch (e) {
      print('Failed to show local notification: $e');
    }
  }

  /// リエンゲージメント通知をバッチ送信
  Future<void> sendBatchReEngagementNotifications({
    required List<String> userIds,
    required String title,
    required String body,
    required String campaignId,
  }) async {
    try {
      await _functions.httpsCallable('sendBatchNotifications').call({
        'userIds': userIds,
        'title': title,
        'body': body,
        'campaignId': campaignId,
        'type': 're_engagement',
      });
    } catch (e) {
      throw Exception('Failed to send batch notifications: $e');
    }
  }

  /// トピックへのサブスクリプション
  Future<void> subscribeToTopic({
    required String topic,
  }) async {
    try {
      await _messaging.subscribeToTopic(topic);
    } catch (e) {
      throw Exception('Failed to subscribe to topic: $e');
    }
  }

  /// トピックからのアンサブスクリプション
  Future<void> unsubscribeFromTopic({
    required String topic,
  }) async {
    try {
      await _messaging.unsubscribeFromTopic(topic);
    } catch (e) {
      throw Exception('Failed to unsubscribe from topic: $e');
    }
  }

  /// 通知タップ時の処理
  void _handleNotificationTap(RemoteMessage message) {
    // アプリが起動する処理を実装
    // 通常はディープリンクをハンドルする
    final data = message.data;
    if (data.containsKey('target')) {
      final target = data['target'];
      // ナビゲーション処理など
    }
  }
}
