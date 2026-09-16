// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cloud_functions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CloudFunctionConfigImpl _$$CloudFunctionConfigImplFromJson(
  Map<String, dynamic> json,
) => _$CloudFunctionConfigImpl(
  enableAutoReportGeneration: json['enableAutoReportGeneration'] as bool,
  enableSegmentationUpdates: json['enableSegmentationUpdates'] as bool,
  enableCohortAnalysis: json['enableCohortAnalysis'] as bool,
  enableNotifications: json['enableNotifications'] as bool,
  reportGenerationIntervalDays: (json['reportGenerationIntervalDays'] as num)
      .toInt(),
  segmentationUpdateIntervalHours:
      (json['segmentationUpdateIntervalHours'] as num).toInt(),
  cohortAnalysisIntervalDays: (json['cohortAnalysisIntervalDays'] as num)
      .toInt(),
  notificationConfig: json['notificationConfig'] as Map<String, dynamic>,
  enableChurnPrediction: json['enableChurnPrediction'] as bool,
);

Map<String, dynamic> _$$CloudFunctionConfigImplToJson(
  _$CloudFunctionConfigImpl instance,
) => <String, dynamic>{
  'enableAutoReportGeneration': instance.enableAutoReportGeneration,
  'enableSegmentationUpdates': instance.enableSegmentationUpdates,
  'enableCohortAnalysis': instance.enableCohortAnalysis,
  'enableNotifications': instance.enableNotifications,
  'reportGenerationIntervalDays': instance.reportGenerationIntervalDays,
  'segmentationUpdateIntervalHours': instance.segmentationUpdateIntervalHours,
  'cohortAnalysisIntervalDays': instance.cohortAnalysisIntervalDays,
  'notificationConfig': instance.notificationConfig,
  'enableChurnPrediction': instance.enableChurnPrediction,
};

_$SegmentationResultImpl _$$SegmentationResultImplFromJson(
  Map<String, dynamic> json,
) => _$SegmentationResultImpl(
  userId: json['userId'] as String,
  previousSegment: json['previousSegment'] as String,
  newSegment: json['newSegment'] as String,
  engagementScore: (json['engagementScore'] as num).toInt(),
  retentionScore: (json['retentionScore'] as num).toInt(),
  churnRiskScore: (json['churnRiskScore'] as num).toDouble(),
  analyzedAt: DateTime.parse(json['analyzedAt'] as String),
);

Map<String, dynamic> _$$SegmentationResultImplToJson(
  _$SegmentationResultImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'previousSegment': instance.previousSegment,
  'newSegment': instance.newSegment,
  'engagementScore': instance.engagementScore,
  'retentionScore': instance.retentionScore,
  'churnRiskScore': instance.churnRiskScore,
  'analyzedAt': instance.analyzedAt.toIso8601String(),
};

_$CohortAnalysisResultImpl _$$CohortAnalysisResultImplFromJson(
  Map<String, dynamic> json,
) => _$CohortAnalysisResultImpl(
  cohortId: json['cohortId'] as String,
  cohortStartDate: DateTime.parse(json['cohortStartDate'] as String),
  totalUsersInCohort: (json['totalUsersInCohort'] as num).toInt(),
  retentionByDaysSinceSignup:
      (json['retentionByDaysSinceSignup'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), (e as num).toInt()),
      ),
  engagementByWeek: (json['engagementByWeek'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(int.parse(k), (e as num).toDouble()),
  ),
  avgSessionDurationMinutes: (json['avgSessionDurationMinutes'] as num)
      .toDouble(),
  totalQuizzesCompleted: (json['totalQuizzesCompleted'] as num).toInt(),
  avgAccuracy: (json['avgAccuracy'] as num).toDouble(),
  analyzedAt: DateTime.parse(json['analyzedAt'] as String),
);

Map<String, dynamic> _$$CohortAnalysisResultImplToJson(
  _$CohortAnalysisResultImpl instance,
) => <String, dynamic>{
  'cohortId': instance.cohortId,
  'cohortStartDate': instance.cohortStartDate.toIso8601String(),
  'totalUsersInCohort': instance.totalUsersInCohort,
  'retentionByDaysSinceSignup': instance.retentionByDaysSinceSignup.map(
    (k, e) => MapEntry(k.toString(), e),
  ),
  'engagementByWeek': instance.engagementByWeek.map(
    (k, e) => MapEntry(k.toString(), e),
  ),
  'avgSessionDurationMinutes': instance.avgSessionDurationMinutes,
  'totalQuizzesCompleted': instance.totalQuizzesCompleted,
  'avgAccuracy': instance.avgAccuracy,
  'analyzedAt': instance.analyzedAt.toIso8601String(),
};

_$NotificationPayloadImpl _$$NotificationPayloadImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationPayloadImpl(
  userId: json['userId'] as String,
  notificationType: json['notificationType'] as String,
  title: json['title'] as String,
  body: json['body'] as String,
  data: json['data'] as Map<String, dynamic>,
  scheduledAt: DateTime.parse(json['scheduledAt'] as String),
  isScheduled: json['isScheduled'] as bool,
);

Map<String, dynamic> _$$NotificationPayloadImplToJson(
  _$NotificationPayloadImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'notificationType': instance.notificationType,
  'title': instance.title,
  'body': instance.body,
  'data': instance.data,
  'scheduledAt': instance.scheduledAt.toIso8601String(),
  'isScheduled': instance.isScheduled,
};

_$FunctionExecutionLogImpl _$$FunctionExecutionLogImplFromJson(
  Map<String, dynamic> json,
) => _$FunctionExecutionLogImpl(
  functionId: json['functionId'] as String,
  functionType: $enumDecode(_$FunctionTypeEnumMap, json['functionType']),
  executedAt: DateTime.parse(json['executedAt'] as String),
  status: json['status'] as String,
  processedUsers: (json['processedUsers'] as num).toInt(),
  failedUsers: (json['failedUsers'] as num).toInt(),
  durationSeconds: (json['durationSeconds'] as num).toInt(),
  errorMessage: json['errorMessage'] as String?,
);

Map<String, dynamic> _$$FunctionExecutionLogImplToJson(
  _$FunctionExecutionLogImpl instance,
) => <String, dynamic>{
  'functionId': instance.functionId,
  'functionType': _$FunctionTypeEnumMap[instance.functionType]!,
  'executedAt': instance.executedAt.toIso8601String(),
  'status': instance.status,
  'processedUsers': instance.processedUsers,
  'failedUsers': instance.failedUsers,
  'durationSeconds': instance.durationSeconds,
  'errorMessage': instance.errorMessage,
};

const _$FunctionTypeEnumMap = {
  FunctionType.generateWeeklyReport: 'generateWeeklyReport',
  FunctionType.generateMonthlyReport: 'generateMonthlyReport',
  FunctionType.updateUserSegmentation: 'updateUserSegmentation',
  FunctionType.updateCohortAnalytics: 'updateCohortAnalytics',
  FunctionType.sendNotification: 'sendNotification',
  FunctionType.updatePopulationStats: 'updatePopulationStats',
  FunctionType.calculateAverageLearningTime: 'calculateAverageLearningTime',
  FunctionType.identifyChurnRiskUsers: 'identifyChurnRiskUsers',
};

_$ChurnPredictionImpl _$$ChurnPredictionImplFromJson(
  Map<String, dynamic> json,
) => _$ChurnPredictionImpl(
  userId: json['userId'] as String,
  churnRiskScore: (json['churnRiskScore'] as num).toDouble(),
  riskLevel: json['riskLevel'] as String,
  riskIndicators: (json['riskIndicators'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  predictedChurnDate: DateTime.parse(json['predictedChurnDate'] as String),
  recommendedActions: (json['recommendedActions'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  analyzedAt: DateTime.parse(json['analyzedAt'] as String),
);

Map<String, dynamic> _$$ChurnPredictionImplToJson(
  _$ChurnPredictionImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'churnRiskScore': instance.churnRiskScore,
  'riskLevel': instance.riskLevel,
  'riskIndicators': instance.riskIndicators,
  'predictedChurnDate': instance.predictedChurnDate.toIso8601String(),
  'recommendedActions': instance.recommendedActions,
  'analyzedAt': instance.analyzedAt.toIso8601String(),
};
