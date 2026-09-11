import 'package:freezed_annotation/freezed_annotation.dart';

part 'cloud_functions_model.freezed.dart';
part 'cloud_functions_model.g.dart';

enum FunctionType {
  generateWeeklyReport,
  generateMonthlyReport,
  updateUserSegmentation,
  updateCohortAnalytics,
  sendNotification,
  updatePopulationStats,
  calculateAverageLearningTime,
  identifyChurnRiskUsers,
}

@freezed
class CloudFunctionConfig with _$CloudFunctionConfig {
  const factory CloudFunctionConfig({
    required bool enableAutoReportGeneration,
    required bool enableSegmentationUpdates,
    required bool enableCohortAnalysis,
    required bool enableNotifications,
    required int reportGenerationIntervalDays,
    required int segmentationUpdateIntervalHours,
    required int cohortAnalysisIntervalDays,
    required Map<String, dynamic> notificationConfig,
    required bool enableChurnPrediction,
  }) = _CloudFunctionConfig;

  factory CloudFunctionConfig.fromJson(Map<String, dynamic> json) =>
      _$CloudFunctionConfigFromJson(json);
}

@freezed
class SegmentationResult with _$SegmentationResult {
  const factory SegmentationResult({
    required String userId,
    required String previousSegment,
    required String newSegment,
    required int engagementScore,
    required int retentionScore,
    required double churnRiskScore,
    required DateTime analyzedAt,
  }) = _SegmentationResult;

  factory SegmentationResult.fromJson(Map<String, dynamic> json) =>
      _$SegmentationResultFromJson(json);
}

@freezed
class CohortAnalysisResult with _$CohortAnalysisResult {
  const factory CohortAnalysisResult({
    required String cohortId,
    required DateTime cohortStartDate,
    required int totalUsersInCohort,
    required Map<int, int> retentionByDaysSinceSignup,
    required Map<int, double> engagementByWeek,
    required double avgSessionDurationMinutes,
    required int totalQuizzesCompleted,
    required double avgAccuracy,
    required DateTime analyzedAt,
  }) = _CohortAnalysisResult;

  factory CohortAnalysisResult.fromJson(Map<String, dynamic> json) =>
      _$CohortAnalysisResultFromJson(json);
}

@freezed
class NotificationPayload with _$NotificationPayload {
  const factory NotificationPayload({
    required String userId,
    required String notificationType,
    required String title,
    required String body,
    required Map<String, dynamic> data,
    required DateTime scheduledAt,
    required bool isScheduled,
  }) = _NotificationPayload;

  factory NotificationPayload.fromJson(Map<String, dynamic> json) =>
      _$NotificationPayloadFromJson(json);
}

@freezed
class FunctionExecutionLog with _$FunctionExecutionLog {
  const factory FunctionExecutionLog({
    required String functionId,
    required FunctionType functionType,
    required DateTime executedAt,
    required String status,
    required int processedUsers,
    required int failedUsers,
    required int durationSeconds,
    String? errorMessage,
  }) = _FunctionExecutionLog;

  factory FunctionExecutionLog.fromJson(Map<String, dynamic> json) =>
      _$FunctionExecutionLogFromJson(json);
}

@freezed
class ChurnPrediction with _$ChurnPrediction {
  const factory ChurnPrediction({
    required String userId,
    required double churnRiskScore,
    required String riskLevel,
    required List<String> riskIndicators,
    required DateTime predictedChurnDate,
    required List<String> recommendedActions,
    required DateTime analyzedAt,
  }) = _ChurnPrediction;

  factory ChurnPrediction.fromJson(Map<String, dynamic> json) =>
      _$ChurnPredictionFromJson(json);
}
