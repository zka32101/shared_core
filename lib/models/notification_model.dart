import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

enum NotificationType {
  dailyReminder,
  streakReminder,
  goalAchieved,
  churnRiskWarning,
  specialOffer,
  seasonalEvent,
  friendActivity,
  achievementUnlocked,
}

enum NotificationFrequency {
  always,
  daily,
  weekly,
  never,
}

@freezed
class PushNotificationConfig with _$PushNotificationConfig {
  const factory PushNotificationConfig({
    required bool enablePushNotifications,
    required Map<String, bool> enabledNotificationTypes,
    required NotificationFrequency defaultFrequency,
    required List<int> quietHours, // [9, 21] = 9:00-21:00
    required bool enableAIPoweredNotifications,
    required int retentionDaysThreshold,
    required Map<String, dynamic> campaignConfig,
  }) = _PushNotificationConfig;

  factory PushNotificationConfig.fromJson(Map<String, dynamic> json) =>
      _$PushNotificationConfigFromJson(json);
}

@freezed
class UserNotificationPreference with _$UserNotificationPreference {
  const factory UserNotificationPreference({
    required String userId,
    required String fcmToken,
    required NotificationFrequency frequency,
    required List<NotificationType> enabledTypes,
    required List<int> quietHours,
    required bool enableSound,
    required bool enableVibration,
    required bool enableLEDFlash,
    required DateTime updatedAt,
    required bool isOptedIn,
  }) = _UserNotificationPreference;

  factory UserNotificationPreference.fromJson(Map<String, dynamic> json) =>
      _$UserNotificationPreferenceFromJson(json);
}

@freezed
class PushNotificationEvent with _$PushNotificationEvent {
  const factory PushNotificationEvent({
    required String notificationId,
    required String userId,
    required NotificationType type,
    required String title,
    required String body,
    required Map<String, dynamic> data,
    required DateTime sentAt,
    required bool wasOpened,
    required DateTime? openedAt,
    required int? actionIndex, // which button was tapped
  }) = _PushNotificationEvent;

  factory PushNotificationEvent.fromJson(Map<String, dynamic> json) =>
      _$PushNotificationEventFromJson(json);
}

@freezed
class NotificationCampaign with _$NotificationCampaign {
  const factory NotificationCampaign({
    required String campaignId,
    required String name,
    required String description,
    required NotificationType type,
    required String title,
    required String body,
    required Map<String, dynamic> data,
    required DateTime startDate,
    required DateTime endDate,
    required bool isActive,
    required List<String> targetSegments, // ['newUser', 'active', 'churnRisk']
    required int maxSendCount,
    required int sendIntervalHours,
    required Map<String, dynamic> abTestConfig, // A/B test for content
    required DateTime createdAt,
  }) = _NotificationCampaign;

  factory NotificationCampaign.fromJson(Map<String, dynamic> json) =>
      _$NotificationCampaignFromJson(json);
}

@freezed
class RetentionMetrics with _$RetentionMetrics {
  const factory RetentionMetrics({
    required String userId,
    required int daysActive,
    required int consecutiveActiveStreak,
    required DateTime lastActiveDate,
    required int daysSinceLastActive,
    required double churnRiskScore,
    required String riskLevel, // 'low', 'medium', 'high', 'critical'
    required List<String> recommendedRetentionActions,
    required int notificationClickRate,
    required int totalNotificationsSent,
    required DateTime analyzedAt,
  }) = _RetentionMetrics;

  factory RetentionMetrics.fromJson(Map<String, dynamic> json) =>
      _$RetentionMetricsFromJson(json);
}

@freezed
class CampaignPerformance with _$CampaignPerformance {
  const factory CampaignPerformance({
    required String campaignId,
    required int totalSent,
    required int totalOpened,
    required double openRate,
    required int totalClicked,
    required double clickRate,
    required int conversionCount,
    required double conversionRate,
    required double estimatedLTV,
    required List<String> performanceBySegment,
    required DateTime analyzedAt,
  }) = _CampaignPerformance;

  factory CampaignPerformance.fromJson(Map<String, dynamic> json) =>
      _$CampaignPerformanceFromJson(json);
}

@freezed
class RetentionAction with _$RetentionAction {
  const factory RetentionAction({
    required String actionId,
    required String userId,
    required String actionType, // 'offer_discount', 'send_motivation', 're_engagement_campaign'
    required String actionValue,
    required DateTime scheduledAt,
    required bool wasExecuted,
    required DateTime? executedAt,
    required String? result, // 'success', 'failed', 'skipped'
  }) = _RetentionAction;

  factory RetentionAction.fromJson(Map<String, dynamic> json) =>
      _$RetentionActionFromJson(json);
}
