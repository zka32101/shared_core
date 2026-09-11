import 'package:freezed_annotation/freezed_annotation.dart';

part 'retention_model.freezed.dart';
part 'retention_model.g.dart';

/// リスクレベル
enum ChurnRiskLevel {
  low,                  // リスク低
  medium,               // リスク中
  high,                 // リスク高
  critical,             // リスク極高
}

/// ユーザーのアクティビティレベル
enum ActivityLevel {
  veryActive,           // 非常にアクティブ（毎日）
  active,               // アクティブ（週4-6日）
  moderate,             // 中程度（週2-3日）
  inactive,             // 非アクティブ（週1日以下）
  dormant,              // 休止状態（30日以上ログインなし）
}

/// チャーン予測結果
@freezed
class ChurnPrediction with _$ChurnPrediction {
  const factory ChurnPrediction({
    required String predictionId,
    required String userId,
    required double churnRiskScore,    // 0.0-1.0（1.0 に近いほどチャーン予測）
    required ChurnRiskLevel riskLevel,
    required List<String> riskIndicators,  // リスク要因（例: ['no_activity_7days', 'declining_accuracy']）
    required DateTime predictedChurnDate,   // 予測チャーン日（リスク極高の場合）
    required List<String> recommendedActions, // 推奨アクション（例: ['send_reminder', 'offer_discount']）
    required int consecutiveAbsenceDays,
    required int totalLearningMinutesLast7Days,
    required double averageAccuracyLast7Days,
    required int questsCompletedLast7Days,
    required DateTime analyzedAt,
  }) = _ChurnPrediction;

  factory ChurnPrediction.fromJson(Map<String, dynamic> json) =>
      _$ChurnPredictionFromJson(json);
}

/// ユーザーリテンション分析
@freezed
class UserRetentionAnalytics with _$UserRetentionAnalytics {
  const factory UserRetentionAnalytics({
    required String userId,
    required ActivityLevel activityLevel,
    required int totalActiveDays,      // これまでのアクティブ日数
    required int currentStreak,        // 現在の連続ログイン日数
    required int longestStreak,        // 最長連続ログイン日数
    required int consecutiveAbsenceDays,
    required DateTime lastActiveAt,
    required int totalLearningMinutes, // 総学習時間
    required double averageSessionDurationMinutes,
    required int totalQuestsCompleted,
    required double averageAccuracy,
    required int appDiversityScore,    // 複数アプリ利用スコア（1-10）
    required int friendsCount,
    required bool hasActiveGoal,
    required DateTime firstActiveAt,
    required DateTime analyzedAt,
  }) = _UserRetentionAnalytics;

  factory UserRetentionAnalytics.fromJson(Map<String, dynamic> json) =>
      _$UserRetentionAnalyticsFromJson(json);
}

/// リエンゲージメント施策
@freezed
class ReengagementCampaign with _$ReengagementCampaign {
  const factory ReengagementCampaign({
    required String campaignId,
    required String userId,
    required ChurnRiskLevel targetRiskLevel,
    required DateTime campaignStartDate,
    required DateTime campaignEndDate,
    required List<String> actionsTaken,   // 実施されたアクション（例: ['notification_sent', 'offer_given']）
    bool? notificationSent,               // 通知送信フラグ
    String? notificationId,
    bool? incentiveOffered,               // インセンティブ提供フラグ
    String? incentiveType,                // インセンティブタイプ（例: 'bonus_coins', 'free_premium'）
    int? incentiveValue,
    bool? isSuccessful,                   // キャンペーン成功フラグ（ユーザーがアクティブに戻ったか）
    DateTime? userReturnedAt,
    required DateTime createdAt,
    DateTime? updatedAt,
  }) = _ReengagementCampaign;

  factory ReengagementCampaign.fromJson(Map<String, dynamic> json) =>
      _$ReengagementCampaignFromJson(json);
}

/// コホート分析（同期登録ユーザーグループ）
@freezed
class CohortAnalytics with _$CohortAnalytics {
  const factory CohortAnalytics({
    required String cohortId,
    required DateTime cohortStartDate,   // コホート開始日（登録日）
    required int totalUsersInCohort,
    required Map<int, double> retentionByDaysSinceSignup,  // Day 0, 1, 3, 7, 14, 30, 60, 90 のリテンション率
    required Map<int, double> engagementByWeek,  // 週単位のエンゲージメント率
    required double avgSessionDurationMinutes,
    required int totalQuestsCompletedByAll,
    required double avgQuestsPerUser,
    required double averageAccuracy,
    required double churnRateAt30Days,
    required DateTime analyzedAt,
  }) = _CohortAnalytics;

  factory CohortAnalytics.fromJson(Map<String, dynamic> json) =>
      _$CohortAnalyticsFromJson(json);
}

/// 人口統計
@freezed
class PopulationStats with _$PopulationStats {
  const factory PopulationStats({
    required int totalUsers,
    required int activeUsersLast7Days,
    required int activeUsersLast30Days,
    required int churnedUsersLast30Days,
    required double churnRate,         // (churnedUsers / totalActiveUsers) * 100
    required int newUsersLast7Days,
    required Map<ActivityLevel, int> activityLevelDistribution,
    required Map<ChurnRiskLevel, int> riskLevelDistribution,
    required double averageRetention7Days,
    required double averageRetention30Days,
    required DateTime sampledAt,
  }) = _PopulationStats;

  factory PopulationStats.fromJson(Map<String, dynamic> json) =>
      _$PopulationStatsFromJson(json);
}

/// ユーザー行動パターン分析
@freezed
class BehaviorAnalytics with _$BehaviorAnalytics {
  const factory BehaviorAnalytics({
    required String userId,
    required Map<String, int> sessionCountsByTimeOfDay,  // 時間帯別セッション数（例: {'morning': 5, 'afternoon': 3}）
    required Map<String, int> preferredTopics,           // 学習トピック別の学習回数
    required double morningVsEveningRatio,
    required double weekdayVsWeekendRatio,
    required int peakActivityHour,                       // 最も活動が多い時間（0-23）
    required String learningPattern,                     // 'bursty'（集中型）, 'consistent'（継続型）, 'irregular'（不規則型）
    required double timeToFirstChallenge,                // ログイン後、最初のチャレンジまでの時間（分）
    required double averageTimePerChallenge,
    required DateTime analyzedAt,
  }) = _BehaviorAnalytics;

  factory BehaviorAnalytics.fromJson(Map<String, dynamic> json) =>
      _$BehaviorAnalyticsFromJson(json);
}

/// リテンション設定
@freezed
class RetentionConfig with _$RetentionConfig {
  const factory RetentionConfig({
    required bool enableChurnPrediction,
    required bool enableReengagementCampaigns,
    required int churnPredictionIntervalDays,            // チャーン予測の実行間隔
    required int reengagementCheckIntervalDays,
    required int absenceThresholdDaysForDormant,        // 何日以上ログインがなければ dormant と判定するか
    required int absenceThresholdDaysForInactive,
    required double churnRiskThresholdForCritical,
    required double churnRiskThresholdForHigh,
    required double churnRiskThresholdForMedium,
    required bool enableNotifications,
    required bool enableIncentives,
    required String incentiveType,                       // 'bonus_coins', 'free_premium', 'badge'
    required int incentiveValue,
  }) = _RetentionConfig;

  factory RetentionConfig.fromJson(Map<String, dynamic> json) =>
      _$RetentionConfigFromJson(json);
}
