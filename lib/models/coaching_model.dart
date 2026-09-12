import 'package:freezed_annotation/freezed_annotation.dart';

part 'coaching_model.freezed.dart';
part 'coaching_model.g.dart';

@freezed
class CoachingSession with _$CoachingSession {
  const factory CoachingSession({
    required String userId,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String sessionId,
    required List<String> analyzedSubjects, // 'kokugo', 'sansu' など
    required List<CoachingAdvice> advices,
    required LearningInsight learningInsight,
    required int motivationScore, // 0-100: ユーザーのモチベーション指標
    required String coachingPhase, // 'initial', 'weakness_focus', 'strength_build', 'maintenance'
    required List<String> recommendedTopics, // 重点学習トピック
    required bool isActive,
  }) = _CoachingSession;

  factory CoachingSession.fromJson(Map<String, dynamic> json) =>
      _$CoachingSessionFromJson(json);
}

@freezed
class CoachingAdvice with _$CoachingAdvice {
  const factory CoachingAdvice({
    required String adviceId,
    required String category, // 'weakness', 'strength', 'motivation', 'strategy'
    required String title,
    required String description,
    required String actionableHint, // 具体的な学習アクション
    required int priority, // 1-5: 優先度
    required DateTime givenAt,
    required String targetSubject, // 対象教科
    required bool isActedUpon, // ユーザーが実行したか
    required DateTime? actedUponAt,
    required int expectedImpactScore, // 1-100: 期待効果
  }) = _CoachingAdvice;

  factory CoachingAdvice.fromJson(Map<String, dynamic> json) =>
      _$CoachingAdviceFromJson(json);
}

@freezed
class LearningInsight with _$LearningInsight {
  const factory LearningInsight({
    required String userId,
    required DateTime analyzedAt,
    required Map<String, SubjectInsight> subjectInsights, // appId -> 分析結果
    required String overallLearningPattern, // 'bursty', 'consistent', 'irregular', 'declining'
    required List<String> strengthAreas, // 得意分野トピック
    required List<String> weaknessAreas, // 弱点分野トピック
    required double consistencyTrendScore, // -1.0 ~ 1.0: 継続度の傾向
    required double engagementTrendScore, // -1.0 ~ 1.0: エンゲージメント傾向
    required String recommendedFocusArea, // 重点学習推奨分野
    required int estimatedDaysToImprovement, // 改善予想日数
    required List<String> successPatterns, // 成功パターン
    required List<String> failurePatterns, // 失敗パターン
  }) = _LearningInsight;

  factory LearningInsight.fromJson(Map<String, dynamic> json) =>
      _$LearningInsightFromJson(json);
}

@freezed
class SubjectInsight with _$SubjectInsight {
  const factory SubjectInsight({
    required String appId,
    required String appName,
    required double currentAccuracy,
    required double accuracyTrend, // -1.0 ~ 1.0: 精度の傾向
    required int totalLearningMinutes,
    required int averageSessionDuration, // 平均セッション時間（分）
    required List<TopicStrength> topicStrengths, // トピック別強度
    required List<String> strugglingTopics, // つまづきトピック
    required int daysSinceLastSession,
    required int consecutiveDaysLearned,
    required double estimatedReadiness, // 0-100: 次ステップ準備度
  }) = _SubjectInsight;

  factory SubjectInsight.fromJson(Map<String, dynamic> json) =>
      _$SubjectInsightFromJson(json);
}

@freezed
class TopicStrength with _$TopicStrength {
  const factory TopicStrength({
    required String topicId,
    required String topicName,
    required double masteryLevel, // 0-100: 習熟度
    required int questionsAttempted,
    required int questionsCorrect,
    required double timeSpentMinutes,
  }) = _TopicStrength;

  factory TopicStrength.fromJson(Map<String, dynamic> json) =>
      _$TopicStrengthFromJson(json);
}

@freezed
class CoachingGoal with _$CoachingGoal {
  const factory CoachingGoal({
    required String goalId,
    required String userId,
    required String targetSubject,
    required String goal, // 'improve_accuracy', 'consistent_learning', 'learn_new_topic'
    required double targetValue, // 目標値（精度% または 日数など）
    required DateTime createdAt,
    required DateTime deadline,
    required double currentProgress, // 0-100
    required bool isCompleted,
    required DateTime? completedAt,
    required List<String> relatedAdvices, // 関連アドバイスID
  }) = _CoachingGoal;

  factory CoachingGoal.fromJson(Map<String, dynamic> json) =>
      _$CoachingGoalFromJson(json);
}

@freezed
class CoachingFeedback with _$CoachingFeedback {
  const factory CoachingFeedback({
    required String feedbackId,
    required String userId,
    required String adviceId,
    required DateTime givenAt,
    required bool wasHelpful,
    required int helpfulnessScore, // 1-5
    required String userFeedback, // ユーザーの感想
    required DateTime? feedbackAt,
  }) = _CoachingFeedback;

  factory CoachingFeedback.fromJson(Map<String, dynamic> json) =>
      _$CoachingFeedbackFromJson(json);
}

@freezed
class AICoachPrompt with _$AICoachPrompt {
  const factory AICoachPrompt({
    required String userId,
    required List<String> subjectIds,
    required LearningInsight insight,
    required List<CoachingGoal> activeGoals,
    required int maxAdvices,
    required String coachingStyle, // 'motivational', 'analytical', 'practical'
  }) = _AICoachPrompt;

  factory AICoachPrompt.fromJson(Map<String, dynamic> json) =>
      _$AICoachPromptFromJson(json);
}

@freezed
class CoachingAnalyticsEvent with _$CoachingAnalyticsEvent {
  const factory CoachingAnalyticsEvent({
    required String userId,
    required String sessionId,
    required String eventType, // 'advice_given', 'advice_acted', 'goal_achieved', 'feedback_provided'
    required DateTime eventTime,
    required Map<String, dynamic> eventData,
  }) = _CoachingAnalyticsEvent;

  factory CoachingAnalyticsEvent.fromJson(Map<String, dynamic> json) =>
      _$CoachingAnalyticsEventFromJson(json);
}
