import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:riverpod/riverpod.dart';
import '../models/notification_model.dart';

// RemoteConfig からプッシュ通知設定を取得
final notificationConfigProvider =
    FutureProvider<PushNotificationConfig>((ref) async {
  final remoteConfig = FirebaseRemoteConfig.instance;

  try {
    final configJson = remoteConfig.getString('push_notification_config');
    if (configJson.isEmpty) {
      throw Exception('push_notification_config not configured');
    }
    return PushNotificationConfig.fromJson(
      Map<String, dynamic>.from(
        (remoteConfig.getAll()['push_notification_config']?.asMap() ?? {})
            as Map,
      ),
    );
  } catch (e) {
    return const PushNotificationConfig(
      enablePushNotifications: false,
      enabledNotificationTypes: {},
      defaultFrequency: NotificationFrequency.daily,
      quietHours: [21, 9],
      enableAIPoweredNotifications: false,
      retentionDaysThreshold: 7,
      campaignConfig: {},
    );
  }
});

// ユーザーの通知設定を取得
final userNotificationPreferenceProvider =
    FutureProvider.family<UserNotificationPreference, String>((ref, userId) async {
  try {
    final doc = await FirebaseFirestore.instance
        .collection('analytics/notifications/user_preferences')
        .doc(userId)
        .get();

    if (!doc.exists) {
      throw Exception('User notification preference not found');
    }

    return UserNotificationPreference.fromJson(doc.data()!);
  } catch (e) {
    return UserNotificationPreference(
      userId: userId,
      fcmToken: '',
      frequency: NotificationFrequency.daily,
      enabledTypes: NotificationType.values,
      quietHours: [21, 9],
      enableSound: true,
      enableVibration: true,
      enableLEDFlash: false,
      updatedAt: DateTime.now(),
      isOptedIn: true,
    );
  }
});

// ユーザーのリテンションメトリクスを取得
final userRetentionMetricsProvider =
    FutureProvider.family<RetentionMetrics, String>((ref, userId) async {
  try {
    final doc = await FirebaseFirestore.instance
        .collection('analytics/retention/user_metrics')
        .doc(userId)
        .get();

    if (!doc.exists) {
      throw Exception('Retention metrics not found');
    }

    return RetentionMetrics.fromJson(doc.data()!);
  } catch (e) {
    return RetentionMetrics(
      userId: userId,
      daysActive: 0,
      consecutiveActiveStreak: 0,
      lastActiveDate: DateTime.now(),
      daysSinceLastActive: 0,
      churnRiskScore: 0.0,
      riskLevel: 'low',
      recommendedRetentionActions: [],
      notificationClickRate: 0,
      totalNotificationsSent: 0,
      analyzedAt: DateTime.now(),
    );
  }
});

// アクティブなキャンペーンを取得
final activeCampaignsProvider = FutureProvider<List<NotificationCampaign>>((ref) async {
  try {
    final now = DateTime.now();
    final snapshot = await FirebaseFirestore.instance
        .collection('analytics/notifications/campaigns')
        .where('isActive', isEqualTo: true)
        .where('endDate', isGreaterThan: now)
        .get();

    return snapshot.docs
        .map((doc) => NotificationCampaign.fromJson(doc.data()))
        .toList();
  } catch (e) {
    return [];
  }
});

// キャンペーンパフォーマンスを取得
final campaignPerformanceProvider =
    FutureProvider.family<CampaignPerformance, String>((ref, campaignId) async {
  try {
    final doc = await FirebaseFirestore.instance
        .collection('analytics/notifications/campaign_performance')
        .doc(campaignId)
        .get();

    if (!doc.exists) {
      throw Exception('Campaign performance not found');
    }

    return CampaignPerformance.fromJson(doc.data()!);
  } catch (e) {
    return CampaignPerformance(
      campaignId: campaignId,
      totalSent: 0,
      totalOpened: 0,
      openRate: 0.0,
      totalClicked: 0,
      clickRate: 0.0,
      conversionCount: 0,
      conversionRate: 0.0,
      estimatedLTV: 0.0,
      performanceBySegment: [],
      analyzedAt: DateTime.now(),
    );
  }
});

// ユーザーのリテンションアクション一覧を取得
final userRetentionActionsProvider =
    FutureProvider.family<List<RetentionAction>, String>((ref, userId) async {
  try {
    final snapshot = await FirebaseFirestore.instance
        .collection('analytics/retention/user_actions')
        .doc(userId)
        .collection('actions')
        .where('wasExecuted', isEqualTo: false)
        .get();

    return snapshot.docs
        .map((doc) => RetentionAction.fromJson(doc.data()))
        .toList();
  } catch (e) {
    return [];
  }
});

// 全ユーザーのリテンションメトリクス（管理画面用）
final populationRetentionStatsProvider =
    FutureProvider<Map<String, dynamic>>((ref) async {
  try {
    final doc = await FirebaseFirestore.instance
        .collection('analytics/retention/global_stats')
        .doc('latest')
        .get();

    if (!doc.exists) {
      throw Exception('Population retention stats not found');
    }

    return doc.data()!;
  } catch (e) {
    return {
      'totalUsers': 0,
      'activeUsers': 0,
      'riskUsers': 0,
      'churnedUsers': 0,
      'avgRetentionRate': 0.0,
      'avgChurnRiskScore': 0.0,
      'sampledAt': DateTime.now(),
    };
  }
});

// 通知イベント記録を取得
final recentNotificationEventsProvider =
    FutureProvider.family<List<PushNotificationEvent>, String>((ref, userId) async {
  try {
    final snapshot = await FirebaseFirestore.instance
        .collection('analytics/notifications/events')
        .where('userId', isEqualTo: userId)
        .orderBy('sentAt', descending: true)
        .limit(50)
        .get();

    return snapshot.docs
        .map((doc) => PushNotificationEvent.fromJson(doc.data()))
        .toList();
  } catch (e) {
    return [];
  }
});
