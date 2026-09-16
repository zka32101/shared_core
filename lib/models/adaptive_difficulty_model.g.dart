// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adaptive_difficulty_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdaptiveMetrics _$AdaptiveMetricsFromJson(Map<String, dynamic> json) =>
    _AdaptiveMetrics(
      accuracy: (json['accuracy'] as num).toDouble(),
      completionRate: (json['completionRate'] as num).toDouble(),
      averageTimePerQuestion: (json['averageTimePerQuestion'] as num).toInt(),
      totalQuestionsAnswered: (json['totalQuestionsAnswered'] as num).toInt(),
      correctAnswers: (json['correctAnswers'] as num).toInt(),
      wrongAnswers: (json['wrongAnswers'] as num).toInt(),
      lastUpdatedAt: DateTime.parse(json['lastUpdatedAt'] as String),
    );

Map<String, dynamic> _$AdaptiveMetricsToJson(_AdaptiveMetrics instance) =>
    <String, dynamic>{
      'accuracy': instance.accuracy,
      'completionRate': instance.completionRate,
      'averageTimePerQuestion': instance.averageTimePerQuestion,
      'totalQuestionsAnswered': instance.totalQuestionsAnswered,
      'correctAnswers': instance.correctAnswers,
      'wrongAnswers': instance.wrongAnswers,
      'lastUpdatedAt': instance.lastUpdatedAt.toIso8601String(),
    };

_UserAdaptiveDifficulty _$UserAdaptiveDifficultyFromJson(
  Map<String, dynamic> json,
) => _UserAdaptiveDifficulty(
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

Map<String, dynamic> _$UserAdaptiveDifficultyToJson(
  _UserAdaptiveDifficulty instance,
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

_DifficultyAdjustmentHistory _$DifficultyAdjustmentHistoryFromJson(
  Map<String, dynamic> json,
) => _DifficultyAdjustmentHistory(
  userId: json['userId'] as String,
  appId: json['appId'] as String,
  previousLevel: $enumDecode(_$DifficultyLevelEnumMap, json['previousLevel']),
  newLevel: $enumDecode(_$DifficultyLevelEnumMap, json['newLevel']),
  reason: json['reason'] as String,
  adjustedAt: DateTime.parse(json['adjustedAt'] as String),
  metricsSnapshot: (json['metricsSnapshot'] as num).toDouble(),
);

Map<String, dynamic> _$DifficultyAdjustmentHistoryToJson(
  _DifficultyAdjustmentHistory instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'appId': instance.appId,
  'previousLevel': _$DifficultyLevelEnumMap[instance.previousLevel]!,
  'newLevel': _$DifficultyLevelEnumMap[instance.newLevel]!,
  'reason': instance.reason,
  'adjustedAt': instance.adjustedAt.toIso8601String(),
  'metricsSnapshot': instance.metricsSnapshot,
};

_AdaptiveDifficultyConfig _$AdaptiveDifficultyConfigFromJson(
  Map<String, dynamic> json,
) => _AdaptiveDifficultyConfig(
  enableAutoAdjust: json['enableAutoAdjust'] as bool,
  adjustmentIntervalDays: (json['adjustmentIntervalDays'] as num).toInt(),
  highAccuracyThreshold: (json['highAccuracyThreshold'] as num).toDouble(),
  lowAccuracyThreshold: (json['lowAccuracyThreshold'] as num).toDouble(),
  completionThreshold: (json['completionThreshold'] as num).toDouble(),
  minQuestionsBeforeAdjust: (json['minQuestionsBeforeAdjust'] as num).toInt(),
  difficultyMultipliers: (json['difficultyMultipliers'] as Map<String, dynamic>)
      .map((k, e) => MapEntry(k, (e as num).toDouble())),
);

Map<String, dynamic> _$AdaptiveDifficultyConfigToJson(
  _AdaptiveDifficultyConfig instance,
) => <String, dynamic>{
  'enableAutoAdjust': instance.enableAutoAdjust,
  'adjustmentIntervalDays': instance.adjustmentIntervalDays,
  'highAccuracyThreshold': instance.highAccuracyThreshold,
  'lowAccuracyThreshold': instance.lowAccuracyThreshold,
  'completionThreshold': instance.completionThreshold,
  'minQuestionsBeforeAdjust': instance.minQuestionsBeforeAdjust,
  'difficultyMultipliers': instance.difficultyMultipliers,
};

_DifficultyRecommendation _$DifficultyRecommendationFromJson(
  Map<String, dynamic> json,
) => _DifficultyRecommendation(
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

Map<String, dynamic> _$DifficultyRecommendationToJson(
  _DifficultyRecommendation instance,
) => <String, dynamic>{
  'recommendedLevel': _$DifficultyLevelEnumMap[instance.recommendedLevel]!,
  'confidence': instance.confidence,
  'reason': instance.reason,
  'indicators': instance.indicators,
  'calculatedAt': instance.calculatedAt.toIso8601String(),
};

_DifficultyPerformanceStats _$DifficultyPerformanceStatsFromJson(
  Map<String, dynamic> json,
) => _DifficultyPerformanceStats(
  level: $enumDecode(_$DifficultyLevelEnumMap, json['level']),
  avgAccuracy: (json['avgAccuracy'] as num).toDouble(),
  avgCompletionTime: (json['avgCompletionTime'] as num).toDouble(),
  totalAttempts: (json['totalAttempts'] as num).toInt(),
  successfulAttempts: (json['successfulAttempts'] as num).toInt(),
  lastUsedAt: json['lastUsedAt'] == null
      ? null
      : DateTime.parse(json['lastUsedAt'] as String),
);

Map<String, dynamic> _$DifficultyPerformanceStatsToJson(
  _DifficultyPerformanceStats instance,
) => <String, dynamic>{
  'level': _$DifficultyLevelEnumMap[instance.level]!,
  'avgAccuracy': instance.avgAccuracy,
  'avgCompletionTime': instance.avgCompletionTime,
  'totalAttempts': instance.totalAttempts,
  'successfulAttempts': instance.successfulAttempts,
  'lastUsedAt': instance.lastUsedAt?.toIso8601String(),
};

_UserLearningPattern _$UserLearningPatternFromJson(Map<String, dynamic> json) =>
    _UserLearningPattern(
      userId: json['userId'] as String,
      appId: json['appId'] as String,
      performanceByLevel: (json['performanceByLevel'] as Map<String, dynamic>)
          .map(
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

Map<String, dynamic> _$UserLearningPatternToJson(
  _UserLearningPattern instance,
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
