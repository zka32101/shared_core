// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adaptive_difficulty_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdaptiveMetricsImpl _$$AdaptiveMetricsImplFromJson(
  Map<String, dynamic> json,
) => _$AdaptiveMetricsImpl(
  accuracy: (json['accuracy'] as num).toDouble(),
  completionRate: (json['completionRate'] as num).toDouble(),
  averageTimePerQuestion: (json['averageTimePerQuestion'] as num).toInt(),
  totalQuestionsAnswered: (json['totalQuestionsAnswered'] as num).toInt(),
  correctAnswers: (json['correctAnswers'] as num).toInt(),
  wrongAnswers: (json['wrongAnswers'] as num).toInt(),
  lastUpdatedAt: DateTime.parse(json['lastUpdatedAt'] as String),
);

Map<String, dynamic> _$$AdaptiveMetricsImplToJson(
  _$AdaptiveMetricsImpl instance,
) => <String, dynamic>{
  'accuracy': instance.accuracy,
  'completionRate': instance.completionRate,
  'averageTimePerQuestion': instance.averageTimePerQuestion,
  'totalQuestionsAnswered': instance.totalQuestionsAnswered,
  'correctAnswers': instance.correctAnswers,
  'wrongAnswers': instance.wrongAnswers,
  'lastUpdatedAt': instance.lastUpdatedAt.toIso8601String(),
};

_$UserAdaptiveDifficultyImpl _$$UserAdaptiveDifficultyImplFromJson(
  Map<String, dynamic> json,
) => _$UserAdaptiveDifficultyImpl(
  userId: json['userId'] as String,
  appId: json['appId'] as String,
  currentLevel: $enumDecode(_$DifficultyLevelEnumMap, json['currentLevel']),
  recommendedLevel: $enumDecode(
    _$DifficultyLevelEnumMap,
    json['recommendedLevel'],
  ),
  metrics: AdaptiveMetrics.fromJson(json['metrics'] as Map<String, dynamic>),
  adjustmentCount: (json['adjustmentCount'] as num).toInt(),
  lastAdjustedAt: json['lastAdjustedAt'] == null
      ? null
      : DateTime.parse(json['lastAdjustedAt'] as String),
  isAutoAdjust: json['isAutoAdjust'] as bool,
  confidenceScore: (json['confidenceScore'] as num).toDouble(),
);

Map<String, dynamic> _$$UserAdaptiveDifficultyImplToJson(
  _$UserAdaptiveDifficultyImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'appId': instance.appId,
  'currentLevel': _$DifficultyLevelEnumMap[instance.currentLevel]!,
  'recommendedLevel': _$DifficultyLevelEnumMap[instance.recommendedLevel]!,
  'metrics': instance.metrics,
  'adjustmentCount': instance.adjustmentCount,
  'lastAdjustedAt': instance.lastAdjustedAt?.toIso8601String(),
  'isAutoAdjust': instance.isAutoAdjust,
  'confidenceScore': instance.confidenceScore,
};

const _$DifficultyLevelEnumMap = {
  DifficultyLevel.veryEasy: 'veryEasy',
  DifficultyLevel.easy: 'easy',
  DifficultyLevel.normal: 'normal',
  DifficultyLevel.hard: 'hard',
  DifficultyLevel.veryHard: 'veryHard',
};

_$DifficultyAdjustmentHistoryImpl _$$DifficultyAdjustmentHistoryImplFromJson(
  Map<String, dynamic> json,
) => _$DifficultyAdjustmentHistoryImpl(
  userId: json['userId'] as String,
  appId: json['appId'] as String,
  previousLevel: $enumDecode(_$DifficultyLevelEnumMap, json['previousLevel']),
  newLevel: $enumDecode(_$DifficultyLevelEnumMap, json['newLevel']),
  reason: json['reason'] as String,
  adjustedAt: DateTime.parse(json['adjustedAt'] as String),
  metricsSnapshot: (json['metricsSnapshot'] as num).toDouble(),
);

Map<String, dynamic> _$$DifficultyAdjustmentHistoryImplToJson(
  _$DifficultyAdjustmentHistoryImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'appId': instance.appId,
  'previousLevel': _$DifficultyLevelEnumMap[instance.previousLevel]!,
  'newLevel': _$DifficultyLevelEnumMap[instance.newLevel]!,
  'reason': instance.reason,
  'adjustedAt': instance.adjustedAt.toIso8601String(),
  'metricsSnapshot': instance.metricsSnapshot,
};

_$AdaptiveDifficultyConfigImpl _$$AdaptiveDifficultyConfigImplFromJson(
  Map<String, dynamic> json,
) => _$AdaptiveDifficultyConfigImpl(
  enableAutoAdjust: json['enableAutoAdjust'] as bool,
  adjustmentIntervalDays: (json['adjustmentIntervalDays'] as num).toInt(),
  highAccuracyThreshold: (json['highAccuracyThreshold'] as num).toDouble(),
  lowAccuracyThreshold: (json['lowAccuracyThreshold'] as num).toDouble(),
  completionThreshold: (json['completionThreshold'] as num).toDouble(),
  minQuestionsBeforeAdjust: (json['minQuestionsBeforeAdjust'] as num).toInt(),
  difficultyMultipliers: (json['difficultyMultipliers'] as Map<String, dynamic>)
      .map((k, e) => MapEntry(k, (e as num).toDouble())),
);

Map<String, dynamic> _$$AdaptiveDifficultyConfigImplToJson(
  _$AdaptiveDifficultyConfigImpl instance,
) => <String, dynamic>{
  'enableAutoAdjust': instance.enableAutoAdjust,
  'adjustmentIntervalDays': instance.adjustmentIntervalDays,
  'highAccuracyThreshold': instance.highAccuracyThreshold,
  'lowAccuracyThreshold': instance.lowAccuracyThreshold,
  'completionThreshold': instance.completionThreshold,
  'minQuestionsBeforeAdjust': instance.minQuestionsBeforeAdjust,
  'difficultyMultipliers': instance.difficultyMultipliers,
};

_$DifficultyRecommendationImpl _$$DifficultyRecommendationImplFromJson(
  Map<String, dynamic> json,
) => _$DifficultyRecommendationImpl(
  recommendedLevel: $enumDecode(
    _$DifficultyLevelEnumMap,
    json['recommendedLevel'],
  ),
  confidence: (json['confidence'] as num).toDouble(),
  reason: json['reason'] as String,
  indicators: (json['indicators'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  calculatedAt: DateTime.parse(json['calculatedAt'] as String),
);

Map<String, dynamic> _$$DifficultyRecommendationImplToJson(
  _$DifficultyRecommendationImpl instance,
) => <String, dynamic>{
  'recommendedLevel': _$DifficultyLevelEnumMap[instance.recommendedLevel]!,
  'confidence': instance.confidence,
  'reason': instance.reason,
  'indicators': instance.indicators,
  'calculatedAt': instance.calculatedAt.toIso8601String(),
};

_$DifficultyPerformanceStatsImpl _$$DifficultyPerformanceStatsImplFromJson(
  Map<String, dynamic> json,
) => _$DifficultyPerformanceStatsImpl(
  level: $enumDecode(_$DifficultyLevelEnumMap, json['level']),
  avgAccuracy: (json['avgAccuracy'] as num).toDouble(),
  avgCompletionTime: (json['avgCompletionTime'] as num).toDouble(),
  totalAttempts: (json['totalAttempts'] as num).toInt(),
  successfulAttempts: (json['successfulAttempts'] as num).toInt(),
  lastUsedAt: json['lastUsedAt'] == null
      ? null
      : DateTime.parse(json['lastUsedAt'] as String),
);

Map<String, dynamic> _$$DifficultyPerformanceStatsImplToJson(
  _$DifficultyPerformanceStatsImpl instance,
) => <String, dynamic>{
  'level': _$DifficultyLevelEnumMap[instance.level]!,
  'avgAccuracy': instance.avgAccuracy,
  'avgCompletionTime': instance.avgCompletionTime,
  'totalAttempts': instance.totalAttempts,
  'successfulAttempts': instance.successfulAttempts,
  'lastUsedAt': instance.lastUsedAt?.toIso8601String(),
};

_$UserLearningPatternImpl _$$UserLearningPatternImplFromJson(
  Map<String, dynamic> json,
) => _$UserLearningPatternImpl(
  userId: json['userId'] as String,
  appId: json['appId'] as String,
  performanceByLevel: (json['performanceByLevel'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(
      k,
      DifficultyPerformanceStats.fromJson(e as Map<String, dynamic>),
    ),
  ),
  mostCommonLevel: $enumDecode(
    _$DifficultyLevelEnumMap,
    json['mostCommonLevel'],
  ),
  mostSuccessfulLevel: $enumDecode(
    _$DifficultyLevelEnumMap,
    json['mostSuccessfulLevel'],
  ),
  learningVelocity: (json['learningVelocity'] as num).toDouble(),
  analyzedAt: DateTime.parse(json['analyzedAt'] as String),
);

Map<String, dynamic> _$$UserLearningPatternImplToJson(
  _$UserLearningPatternImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'appId': instance.appId,
  'performanceByLevel': instance.performanceByLevel,
  'mostCommonLevel': _$DifficultyLevelEnumMap[instance.mostCommonLevel]!,
  'mostSuccessfulLevel':
      _$DifficultyLevelEnumMap[instance.mostSuccessfulLevel]!,
  'learningVelocity': instance.learningVelocity,
  'analyzedAt': instance.analyzedAt.toIso8601String(),
};
