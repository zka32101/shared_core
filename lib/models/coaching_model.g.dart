// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coaching_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoachingSessionImpl _$$CoachingSessionImplFromJson(
  Map<String, dynamic> json,
) => _$CoachingSessionImpl(
  userId: json['userId'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  sessionId: json['sessionId'] as String,
  analyzedSubjects: (json['analyzedSubjects'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  advices: (json['advices'] as List<dynamic>)
      .map((e) => CoachingAdvice.fromJson(e as Map<String, dynamic>))
      .toList(),
  learningInsight: LearningInsight.fromJson(
    json['learningInsight'] as Map<String, dynamic>,
  ),
  motivationScore: (json['motivationScore'] as num).toInt(),
  coachingPhase: json['coachingPhase'] as String,
  recommendedTopics: (json['recommendedTopics'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  isActive: json['isActive'] as bool,
);

Map<String, dynamic> _$$CoachingSessionImplToJson(
  _$CoachingSessionImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'sessionId': instance.sessionId,
  'analyzedSubjects': instance.analyzedSubjects,
  'advices': instance.advices,
  'learningInsight': instance.learningInsight,
  'motivationScore': instance.motivationScore,
  'coachingPhase': instance.coachingPhase,
  'recommendedTopics': instance.recommendedTopics,
  'isActive': instance.isActive,
};

_$CoachingAdviceImpl _$$CoachingAdviceImplFromJson(Map<String, dynamic> json) =>
    _$CoachingAdviceImpl(
      adviceId: json['adviceId'] as String,
      category: json['category'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      actionableHint: json['actionableHint'] as String,
      priority: (json['priority'] as num).toInt(),
      givenAt: DateTime.parse(json['givenAt'] as String),
      targetSubject: json['targetSubject'] as String,
      isActedUpon: json['isActedUpon'] as bool,
      actedUponAt: json['actedUponAt'] == null
          ? null
          : DateTime.parse(json['actedUponAt'] as String),
      expectedImpactScore: (json['expectedImpactScore'] as num).toInt(),
    );

Map<String, dynamic> _$$CoachingAdviceImplToJson(
  _$CoachingAdviceImpl instance,
) => <String, dynamic>{
  'adviceId': instance.adviceId,
  'category': instance.category,
  'title': instance.title,
  'description': instance.description,
  'actionableHint': instance.actionableHint,
  'priority': instance.priority,
  'givenAt': instance.givenAt.toIso8601String(),
  'targetSubject': instance.targetSubject,
  'isActedUpon': instance.isActedUpon,
  'actedUponAt': instance.actedUponAt?.toIso8601String(),
  'expectedImpactScore': instance.expectedImpactScore,
};

_$LearningInsightImpl _$$LearningInsightImplFromJson(
  Map<String, dynamic> json,
) => _$LearningInsightImpl(
  userId: json['userId'] as String,
  analyzedAt: DateTime.parse(json['analyzedAt'] as String),
  subjectInsights: (json['subjectInsights'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, SubjectInsight.fromJson(e as Map<String, dynamic>)),
  ),
  overallLearningPattern: json['overallLearningPattern'] as String,
  strengthAreas: (json['strengthAreas'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  weaknessAreas: (json['weaknessAreas'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  consistencyTrendScore: (json['consistencyTrendScore'] as num).toDouble(),
  engagementTrendScore: (json['engagementTrendScore'] as num).toDouble(),
  recommendedFocusArea: json['recommendedFocusArea'] as String,
  estimatedDaysToImprovement: (json['estimatedDaysToImprovement'] as num)
      .toInt(),
  successPatterns: (json['successPatterns'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  failurePatterns: (json['failurePatterns'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$$LearningInsightImplToJson(
  _$LearningInsightImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'analyzedAt': instance.analyzedAt.toIso8601String(),
  'subjectInsights': instance.subjectInsights,
  'overallLearningPattern': instance.overallLearningPattern,
  'strengthAreas': instance.strengthAreas,
  'weaknessAreas': instance.weaknessAreas,
  'consistencyTrendScore': instance.consistencyTrendScore,
  'engagementTrendScore': instance.engagementTrendScore,
  'recommendedFocusArea': instance.recommendedFocusArea,
  'estimatedDaysToImprovement': instance.estimatedDaysToImprovement,
  'successPatterns': instance.successPatterns,
  'failurePatterns': instance.failurePatterns,
};

_$SubjectInsightImpl _$$SubjectInsightImplFromJson(Map<String, dynamic> json) =>
    _$SubjectInsightImpl(
      appId: json['appId'] as String,
      appName: json['appName'] as String,
      currentAccuracy: (json['currentAccuracy'] as num).toDouble(),
      accuracyTrend: (json['accuracyTrend'] as num).toDouble(),
      totalLearningMinutes: (json['totalLearningMinutes'] as num).toInt(),
      averageSessionDuration: (json['averageSessionDuration'] as num).toInt(),
      topicStrengths: (json['topicStrengths'] as List<dynamic>)
          .map((e) => TopicStrength.fromJson(e as Map<String, dynamic>))
          .toList(),
      strugglingTopics: (json['strugglingTopics'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      daysSinceLastSession: (json['daysSinceLastSession'] as num).toInt(),
      consecutiveDaysLearned: (json['consecutiveDaysLearned'] as num).toInt(),
      estimatedReadiness: (json['estimatedReadiness'] as num).toDouble(),
    );

Map<String, dynamic> _$$SubjectInsightImplToJson(
  _$SubjectInsightImpl instance,
) => <String, dynamic>{
  'appId': instance.appId,
  'appName': instance.appName,
  'currentAccuracy': instance.currentAccuracy,
  'accuracyTrend': instance.accuracyTrend,
  'totalLearningMinutes': instance.totalLearningMinutes,
  'averageSessionDuration': instance.averageSessionDuration,
  'topicStrengths': instance.topicStrengths,
  'strugglingTopics': instance.strugglingTopics,
  'daysSinceLastSession': instance.daysSinceLastSession,
  'consecutiveDaysLearned': instance.consecutiveDaysLearned,
  'estimatedReadiness': instance.estimatedReadiness,
};

_$TopicStrengthImpl _$$TopicStrengthImplFromJson(Map<String, dynamic> json) =>
    _$TopicStrengthImpl(
      topicId: json['topicId'] as String,
      topicName: json['topicName'] as String,
      masteryLevel: (json['masteryLevel'] as num).toDouble(),
      questionsAttempted: (json['questionsAttempted'] as num).toInt(),
      questionsCorrect: (json['questionsCorrect'] as num).toInt(),
      timeSpentMinutes: (json['timeSpentMinutes'] as num).toDouble(),
    );

Map<String, dynamic> _$$TopicStrengthImplToJson(_$TopicStrengthImpl instance) =>
    <String, dynamic>{
      'topicId': instance.topicId,
      'topicName': instance.topicName,
      'masteryLevel': instance.masteryLevel,
      'questionsAttempted': instance.questionsAttempted,
      'questionsCorrect': instance.questionsCorrect,
      'timeSpentMinutes': instance.timeSpentMinutes,
    };

_$CoachingGoalImpl _$$CoachingGoalImplFromJson(Map<String, dynamic> json) =>
    _$CoachingGoalImpl(
      goalId: json['goalId'] as String,
      userId: json['userId'] as String,
      targetSubject: json['targetSubject'] as String,
      goal: json['goal'] as String,
      targetValue: (json['targetValue'] as num).toDouble(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      deadline: DateTime.parse(json['deadline'] as String),
      currentProgress: (json['currentProgress'] as num).toDouble(),
      isCompleted: json['isCompleted'] as bool,
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
      relatedAdvices: (json['relatedAdvices'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$CoachingGoalImplToJson(_$CoachingGoalImpl instance) =>
    <String, dynamic>{
      'goalId': instance.goalId,
      'userId': instance.userId,
      'targetSubject': instance.targetSubject,
      'goal': instance.goal,
      'targetValue': instance.targetValue,
      'createdAt': instance.createdAt.toIso8601String(),
      'deadline': instance.deadline.toIso8601String(),
      'currentProgress': instance.currentProgress,
      'isCompleted': instance.isCompleted,
      'completedAt': instance.completedAt?.toIso8601String(),
      'relatedAdvices': instance.relatedAdvices,
    };

_$CoachingFeedbackImpl _$$CoachingFeedbackImplFromJson(
  Map<String, dynamic> json,
) => _$CoachingFeedbackImpl(
  feedbackId: json['feedbackId'] as String,
  userId: json['userId'] as String,
  adviceId: json['adviceId'] as String,
  givenAt: DateTime.parse(json['givenAt'] as String),
  wasHelpful: json['wasHelpful'] as bool,
  helpfulnessScore: (json['helpfulnessScore'] as num).toInt(),
  userFeedback: json['userFeedback'] as String,
  feedbackAt: json['feedbackAt'] == null
      ? null
      : DateTime.parse(json['feedbackAt'] as String),
);

Map<String, dynamic> _$$CoachingFeedbackImplToJson(
  _$CoachingFeedbackImpl instance,
) => <String, dynamic>{
  'feedbackId': instance.feedbackId,
  'userId': instance.userId,
  'adviceId': instance.adviceId,
  'givenAt': instance.givenAt.toIso8601String(),
  'wasHelpful': instance.wasHelpful,
  'helpfulnessScore': instance.helpfulnessScore,
  'userFeedback': instance.userFeedback,
  'feedbackAt': instance.feedbackAt?.toIso8601String(),
};

_$AICoachPromptImpl _$$AICoachPromptImplFromJson(Map<String, dynamic> json) =>
    _$AICoachPromptImpl(
      userId: json['userId'] as String,
      subjectIds: (json['subjectIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      insight: LearningInsight.fromJson(
        json['insight'] as Map<String, dynamic>,
      ),
      activeGoals: (json['activeGoals'] as List<dynamic>)
          .map((e) => CoachingGoal.fromJson(e as Map<String, dynamic>))
          .toList(),
      maxAdvices: (json['maxAdvices'] as num).toInt(),
      coachingStyle: json['coachingStyle'] as String,
    );

Map<String, dynamic> _$$AICoachPromptImplToJson(_$AICoachPromptImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'subjectIds': instance.subjectIds,
      'insight': instance.insight,
      'activeGoals': instance.activeGoals,
      'maxAdvices': instance.maxAdvices,
      'coachingStyle': instance.coachingStyle,
    };

_$CoachingAnalyticsEventImpl _$$CoachingAnalyticsEventImplFromJson(
  Map<String, dynamic> json,
) => _$CoachingAnalyticsEventImpl(
  userId: json['userId'] as String,
  sessionId: json['sessionId'] as String,
  eventType: json['eventType'] as String,
  eventTime: DateTime.parse(json['eventTime'] as String),
  eventData: json['eventData'] as Map<String, dynamic>,
);

Map<String, dynamic> _$$CoachingAnalyticsEventImplToJson(
  _$CoachingAnalyticsEventImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'sessionId': instance.sessionId,
  'eventType': instance.eventType,
  'eventTime': instance.eventTime.toIso8601String(),
  'eventData': instance.eventData,
};
