// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LearningMetricImpl _$$LearningMetricImplFromJson(Map<String, dynamic> json) =>
    _$LearningMetricImpl(
      userId: json['userId'] as String,
      type: $enumDecode(_$LearningMetricTypeEnumMap, json['type']),
      value: (json['value'] as num).toInt(),
      recordedAt: DateTime.parse(json['recordedAt'] as String),
      appId: json['appId'] as String?,
      customData: json['customData'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$LearningMetricImplToJson(
  _$LearningMetricImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'type': _$LearningMetricTypeEnumMap[instance.type]!,
  'value': instance.value,
  'recordedAt': instance.recordedAt.toIso8601String(),
  'appId': instance.appId,
  'customData': instance.customData,
};

const _$LearningMetricTypeEnumMap = {
  LearningMetricType.quizCompleted: 'quizCompleted',
  LearningMetricType.correctAnswers: 'correctAnswers',
  LearningMetricType.timeSpent: 'timeSpent',
  LearningMetricType.streakDays: 'streakDays',
  LearningMetricType.badgesEarned: 'badgesEarned',
  LearningMetricType.coinsEarned: 'coinsEarned',
  LearningMetricType.characterProgress: 'characterProgress',
  LearningMetricType.friendsAdded: 'friendsAdded',
  LearningMetricType.levelUp: 'levelUp',
  LearningMetricType.achievementUnlocked: 'achievementUnlocked',
};

_$UserSegmentAnalyticsImpl _$$UserSegmentAnalyticsImplFromJson(
  Map<String, dynamic> json,
) => _$UserSegmentAnalyticsImpl(
  userId: json['userId'] as String,
  segmentId: json['segmentId'] as String,
  engagementScore: (json['engagementScore'] as num).toInt(),
  retentionScore: (json['retentionScore'] as num).toInt(),
  lastActiveAt: DateTime.parse(json['lastActiveAt'] as String),
  totalLearningMinutes: (json['totalLearningMinutes'] as num).toInt(),
  consecutiveAbsenceDays: (json['consecutiveAbsenceDays'] as num).toInt(),
  subjectScores: Map<String, int>.from(json['subjectScores'] as Map),
  cohortDate: json['cohortDate'] as String?,
  churnRiskLevel: json['churnRiskLevel'] as String?,
  engagementTrend: (json['engagementTrend'] as num?)?.toInt(),
  retentionTrend: (json['retentionTrend'] as num?)?.toInt(),
);

Map<String, dynamic> _$$UserSegmentAnalyticsImplToJson(
  _$UserSegmentAnalyticsImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'segmentId': instance.segmentId,
  'engagementScore': instance.engagementScore,
  'retentionScore': instance.retentionScore,
  'lastActiveAt': instance.lastActiveAt.toIso8601String(),
  'totalLearningMinutes': instance.totalLearningMinutes,
  'consecutiveAbsenceDays': instance.consecutiveAbsenceDays,
  'subjectScores': instance.subjectScores,
  'cohortDate': instance.cohortDate,
  'churnRiskLevel': instance.churnRiskLevel,
  'engagementTrend': instance.engagementTrend,
  'retentionTrend': instance.retentionTrend,
};

_$WeeklyReportImpl _$$WeeklyReportImplFromJson(Map<String, dynamic> json) =>
    _$WeeklyReportImpl(
      userId: json['userId'] as String,
      weekStartDate: DateTime.parse(json['weekStartDate'] as String),
      totalMinutes: (json['totalMinutes'] as num).toInt(),
      totalQuizzesCompleted: (json['totalQuizzesCompleted'] as num).toInt(),
      averageAccuracy: (json['averageAccuracy'] as num).toDouble(),
      topicsFocused: (json['topicsFocused'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      newBadgesEarned: (json['newBadgesEarned'] as num).toInt(),
      coinsEarned: (json['coinsEarned'] as num).toInt(),
      weeklyGoalStatus: json['weeklyGoalStatus'] as String?,
      friendsInteracted: (json['friendsInteracted'] as num?)?.toInt(),
      challengesCompleted: (json['challengesCompleted'] as num?)?.toInt(),
      subjectBreakdown: (json['subjectBreakdown'] as Map<String, dynamic>?)
          ?.map((k, e) => MapEntry(k, (e as num).toInt())),
    );

Map<String, dynamic> _$$WeeklyReportImplToJson(_$WeeklyReportImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'weekStartDate': instance.weekStartDate.toIso8601String(),
      'totalMinutes': instance.totalMinutes,
      'totalQuizzesCompleted': instance.totalQuizzesCompleted,
      'averageAccuracy': instance.averageAccuracy,
      'topicsFocused': instance.topicsFocused,
      'newBadgesEarned': instance.newBadgesEarned,
      'coinsEarned': instance.coinsEarned,
      'weeklyGoalStatus': instance.weeklyGoalStatus,
      'friendsInteracted': instance.friendsInteracted,
      'challengesCompleted': instance.challengesCompleted,
      'subjectBreakdown': instance.subjectBreakdown,
    };

_$MonthlyReportImpl _$$MonthlyReportImplFromJson(Map<String, dynamic> json) =>
    _$MonthlyReportImpl(
      userId: json['userId'] as String,
      month: (json['month'] as num).toInt(),
      year: (json['year'] as num).toInt(),
      totalMinutes: (json['totalMinutes'] as num).toInt(),
      totalQuizzesCompleted: (json['totalQuizzesCompleted'] as num).toInt(),
      averageAccuracy: (json['averageAccuracy'] as num).toDouble(),
      badgesEarned: (json['badgesEarned'] as num).toInt(),
      coinsEarned: (json['coinsEarned'] as num).toInt(),
      friendsAdded: (json['friendsAdded'] as num).toInt(),
      growthTrend: json['growthTrend'] as String,
      subjectPerformance: json['subjectPerformance'] as Map<String, dynamic>,
      achievements: (json['achievements'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      longestStreak: (json['longestStreak'] as num?)?.toInt(),
      newCharactersUnlocked: (json['newCharactersUnlocked'] as num?)?.toInt(),
      improvementRate: (json['improvementRate'] as num?)?.toDouble(),
      recommendation: json['recommendation'] as String?,
    );

Map<String, dynamic> _$$MonthlyReportImplToJson(_$MonthlyReportImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'month': instance.month,
      'year': instance.year,
      'totalMinutes': instance.totalMinutes,
      'totalQuizzesCompleted': instance.totalQuizzesCompleted,
      'averageAccuracy': instance.averageAccuracy,
      'badgesEarned': instance.badgesEarned,
      'coinsEarned': instance.coinsEarned,
      'friendsAdded': instance.friendsAdded,
      'growthTrend': instance.growthTrend,
      'subjectPerformance': instance.subjectPerformance,
      'achievements': instance.achievements,
      'longestStreak': instance.longestStreak,
      'newCharactersUnlocked': instance.newCharactersUnlocked,
      'improvementRate': instance.improvementRate,
      'recommendation': instance.recommendation,
    };

_$LearningGoalImpl _$$LearningGoalImplFromJson(Map<String, dynamic> json) =>
    _$LearningGoalImpl(
      userId: json['userId'] as String,
      goalId: json['goalId'] as String,
      goalType: json['goalType'] as String,
      targetValue: (json['targetValue'] as num).toInt(),
      startDate: DateTime.parse(json['startDate'] as String),
      deadline: json['deadline'] == null
          ? null
          : DateTime.parse(json['deadline'] as String),
      currentProgress: (json['currentProgress'] as num).toInt(),
      isCompleted: json['isCompleted'] as bool,
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
      status: $enumDecodeNullable(_$GoalStatusEnumMap, json['status']),
      description: json['description'] as String?,
      rewards: (json['rewards'] as num?)?.toInt(),
      difficulty: (json['difficulty'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$LearningGoalImplToJson(_$LearningGoalImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'goalId': instance.goalId,
      'goalType': instance.goalType,
      'targetValue': instance.targetValue,
      'startDate': instance.startDate.toIso8601String(),
      'deadline': instance.deadline?.toIso8601String(),
      'currentProgress': instance.currentProgress,
      'isCompleted': instance.isCompleted,
      'completedAt': instance.completedAt?.toIso8601String(),
      'status': _$GoalStatusEnumMap[instance.status],
      'description': instance.description,
      'rewards': instance.rewards,
      'difficulty': instance.difficulty,
    };

const _$GoalStatusEnumMap = {
  GoalStatus.active: 'active',
  GoalStatus.completed: 'completed',
  GoalStatus.failed: 'failed',
  GoalStatus.abandoned: 'abandoned',
};

_$AnalyticsConfigImpl _$$AnalyticsConfigImplFromJson(
  Map<String, dynamic> json,
) => _$AnalyticsConfigImpl(
  enableMetricsTracking: json['enableMetricsTracking'] as bool,
  enableReportGeneration: json['enableReportGeneration'] as bool,
  enabledMetrics: (json['enabledMetrics'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  reportGenerationIntervalDays: (json['reportGenerationIntervalDays'] as num)
      .toInt(),
  goalsConfig: Map<String, int>.from(json['goalsConfig'] as Map),
  enableSegmentation: json['enableSegmentation'] as bool?,
  enableAIPredictions: json['enableAIPredictions'] as bool?,
  segmentThresholds: json['segmentThresholds'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$$AnalyticsConfigImplToJson(
  _$AnalyticsConfigImpl instance,
) => <String, dynamic>{
  'enableMetricsTracking': instance.enableMetricsTracking,
  'enableReportGeneration': instance.enableReportGeneration,
  'enabledMetrics': instance.enabledMetrics,
  'reportGenerationIntervalDays': instance.reportGenerationIntervalDays,
  'goalsConfig': instance.goalsConfig,
  'enableSegmentation': instance.enableSegmentation,
  'enableAIPredictions': instance.enableAIPredictions,
  'segmentThresholds': instance.segmentThresholds,
};

_$BehaviorAnalyticsImpl _$$BehaviorAnalyticsImplFromJson(
  Map<String, dynamic> json,
) => _$BehaviorAnalyticsImpl(
  userId: json['userId'] as String,
  analyzedDate: DateTime.parse(json['analyzedDate'] as String),
  sessionCounts: Map<String, int>.from(json['sessionCounts'] as Map),
  preferredTopics: Map<String, int>.from(json['preferredTopics'] as Map),
  averageSessionDurationMinutes: (json['averageSessionDurationMinutes'] as num)
      .toInt(),
  weekdayVsWeekendRatio: (json['weekdayVsWeekendRatio'] as num).toDouble(),
  peakActivityHour: (json['peakActivityHour'] as num).toInt(),
  learningPattern: json['learningPattern'] as String?,
  predictedNextActivationDays: (json['predictedNextActivationDays'] as num?)
      ?.toInt(),
);

Map<String, dynamic> _$$BehaviorAnalyticsImplToJson(
  _$BehaviorAnalyticsImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'analyzedDate': instance.analyzedDate.toIso8601String(),
  'sessionCounts': instance.sessionCounts,
  'preferredTopics': instance.preferredTopics,
  'averageSessionDurationMinutes': instance.averageSessionDurationMinutes,
  'weekdayVsWeekendRatio': instance.weekdayVsWeekendRatio,
  'peakActivityHour': instance.peakActivityHour,
  'learningPattern': instance.learningPattern,
  'predictedNextActivationDays': instance.predictedNextActivationDays,
};

_$PopulationStatsImpl _$$PopulationStatsImplFromJson(
  Map<String, dynamic> json,
) => _$PopulationStatsImpl(
  totalUsers: (json['totalUsers'] as num).toInt(),
  activeUsersLast7Days: (json['activeUsersLast7Days'] as num).toInt(),
  activeUsersLast30Days: (json['activeUsersLast30Days'] as num).toInt(),
  churnedUsersLast30Days: (json['churnedUsersLast30Days'] as num).toInt(),
  churnRate: (json['churnRate'] as num).toDouble(),
  sampledAt: DateTime.parse(json['sampledAt'] as String),
  segmentDistribution: Map<String, int>.from(
    json['segmentDistribution'] as Map,
  ),
  retentionByDay: (json['retentionByDay'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, (e as num).toDouble()),
  ),
  ageGroupDistribution: (json['ageGroupDistribution'] as Map<String, dynamic>?)
      ?.map((k, e) => MapEntry(k, (e as num).toInt())),
  mau: (json['mau'] as num?)?.toDouble(),
  dau: (json['dau'] as num?)?.toDouble(),
);

Map<String, dynamic> _$$PopulationStatsImplToJson(
  _$PopulationStatsImpl instance,
) => <String, dynamic>{
  'totalUsers': instance.totalUsers,
  'activeUsersLast7Days': instance.activeUsersLast7Days,
  'activeUsersLast30Days': instance.activeUsersLast30Days,
  'churnedUsersLast30Days': instance.churnedUsersLast30Days,
  'churnRate': instance.churnRate,
  'sampledAt': instance.sampledAt.toIso8601String(),
  'segmentDistribution': instance.segmentDistribution,
  'retentionByDay': instance.retentionByDay,
  'ageGroupDistribution': instance.ageGroupDistribution,
  'mau': instance.mau,
  'dau': instance.dau,
};

_$CohortAnalyticsImpl _$$CohortAnalyticsImplFromJson(
  Map<String, dynamic> json,
) => _$CohortAnalyticsImpl(
  cohortId: json['cohortId'] as String,
  cohortSize: (json['cohortSize'] as num).toInt(),
  retentionByWeek: (json['retentionByWeek'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(int.parse(k), (e as num).toDouble()),
  ),
  engagementByWeek: (json['engagementByWeek'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(int.parse(k), (e as num).toDouble()),
  ),
  lifetimeValue: (json['lifetimeValue'] as num).toDouble(),
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$$CohortAnalyticsImplToJson(
  _$CohortAnalyticsImpl instance,
) => <String, dynamic>{
  'cohortId': instance.cohortId,
  'cohortSize': instance.cohortSize,
  'retentionByWeek': instance.retentionByWeek.map(
    (k, e) => MapEntry(k.toString(), e),
  ),
  'engagementByWeek': instance.engagementByWeek.map(
    (k, e) => MapEntry(k.toString(), e),
  ),
  'lifetimeValue': instance.lifetimeValue,
  'createdAt': instance.createdAt.toIso8601String(),
};

_$ABTestMetricsImpl _$$ABTestMetricsImplFromJson(Map<String, dynamic> json) =>
    _$ABTestMetricsImpl(
      testId: json['testId'] as String,
      variant: json['variant'] as String,
      impressions: (json['impressions'] as num).toInt(),
      conversions: (json['conversions'] as num).toInt(),
      conversionRate: (json['conversionRate'] as num).toDouble(),
      totalRevenue: (json['totalRevenue'] as num).toInt(),
      averageOrderValue: (json['averageOrderValue'] as num).toDouble(),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      confidence: (json['confidence'] as num?)?.toDouble(),
      winner: json['winner'] as String?,
    );

Map<String, dynamic> _$$ABTestMetricsImplToJson(_$ABTestMetricsImpl instance) =>
    <String, dynamic>{
      'testId': instance.testId,
      'variant': instance.variant,
      'impressions': instance.impressions,
      'conversions': instance.conversions,
      'conversionRate': instance.conversionRate,
      'totalRevenue': instance.totalRevenue,
      'averageOrderValue': instance.averageOrderValue,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'confidence': instance.confidence,
      'winner': instance.winner,
    };
