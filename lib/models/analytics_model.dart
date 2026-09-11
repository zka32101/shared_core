// 小学コレシリーズ共通「分析・レポート」システムの型定義
//
// Phase 4.16: Analytics・レポート強化統一化
// 7つの小学コレアプリ全体でユーザーセグメント分析・学習メトリクス集計・
// レポート生成・ダッシュボード表示を統一化
//
// - LearningMetric: 学習メトリクス（クイズ完了数、正解数、学習時間など）
// - UserSegmentAnalytics: ユーザーセグメント分析（エンゲージメント、リテンション）
// - WeeklyReport: 週次レポート
// - MonthlyReport: 月次レポート
// - LearningGoal: 学習ゴール・チャレンジ管理
// - AnalyticsConfig: RemoteConfig から読み込む分析設定

import 'package:freezed_annotation/freezed_annotation.dart';

part 'analytics_model.freezed.dart';
part 'analytics_model.g.dart';

// ─────────────────────────────────────────────────────────────────
// Enums
// ─────────────────────────────────────────────────────────────────

enum LearningMetricType {
  quizCompleted,      // クイズ完了数
  correctAnswers,     // 正解数
  timeSpent,          // 学習時間（分）
  streakDays,         // 連続学習日数
  badgesEarned,       // 獲得バッジ数
  coinsEarned,        // 獲得コイン数
  characterProgress,  // キャラクター進捗
  friendsAdded,       // フレンド追加数
  levelUp,            // レベルアップ
  achievementUnlocked, // 実績解除
}

enum GoalStatus {
  active,      // 進行中
  completed,   // 完了
  failed,      // 失敗
  abandoned,   // 放棄
}

// ─────────────────────────────────────────────────────────────────
// Models
// ─────────────────────────────────────────────────────────────────

/// 学習メトリクス（単一イベント記録）
@freezed
class LearningMetric with _$LearningMetric {
  const factory LearningMetric({
    required String userId,
    required LearningMetricType type,
    required int value,
    required DateTime recordedAt,
    String? appId,      // 教科別追跡（'kokugo', 'sansu'など）
    Map<String, dynamic>? customData, // カスタムデータ
  }) = _LearningMetric;

  factory LearningMetric.fromJson(Map<String, dynamic> json) =>
      _$LearningMetricFromJson(json);
}

/// ユーザーセグメント分析
@freezed
class UserSegmentAnalytics with _$UserSegmentAnalytics {
  const factory UserSegmentAnalytics({
    required String userId,
    required String segmentId,   // newUser, inactive, active, vip, churnRisk
    required int engagementScore, // 0-100
    required int retentionScore,  // 0-100
    required DateTime lastActiveAt,
    required int totalLearningMinutes,
    required int consecutiveAbsenceDays,
    required Map<String, int> subjectScores, // { 'kokugo': 85, 'sansu': 72 }
    String? cohortDate, // ユーザー登録日
    String? churnRiskLevel, // 'low', 'medium', 'high'
    int? engagementTrend, // -100 to 100
    int? retentionTrend,  // -100 to 100
  }) = _UserSegmentAnalytics;

  factory UserSegmentAnalytics.fromJson(Map<String, dynamic> json) =>
      _$UserSegmentAnalyticsFromJson(json);
}

/// 週次レポート
@freezed
class WeeklyReport with _$WeeklyReport {
  const factory WeeklyReport({
    required String userId,
    required DateTime weekStartDate,
    required int totalMinutes,
    required int totalQuizzesCompleted,
    required double averageAccuracy,
    required List<String> topicsFocused,
    required int newBadgesEarned,
    required int coinsEarned,
    String? weeklyGoalStatus,  // 'completed', 'partial', 'missed'
    int? friendsInteracted,
    int? challengesCompleted,
    Map<String, int>? subjectBreakdown, // { 'kokugo': 45, 'sansu': 60 }
  }) = _WeeklyReport;

  factory WeeklyReport.fromJson(Map<String, dynamic> json) =>
      _$WeeklyReportFromJson(json);
}

/// 月次レポート
@freezed
class MonthlyReport with _$MonthlyReport {
  const factory MonthlyReport({
    required String userId,
    required int month,               // 1-12
    required int year,
    required int totalMinutes,
    required int totalQuizzesCompleted,
    required double averageAccuracy,
    required int badgesEarned,
    required int coinsEarned,
    required int friendsAdded,
    required String growthTrend,      // 'improving', 'stable', 'declining'
    required Map<String, dynamic> subjectPerformance, // { 'kokugo': { 'accuracy': 85, 'time': 120 } }
    required List<String> achievements,
    int? longestStreak, // 最長連続学習日数
    int? newCharactersUnlocked,
    double? improvementRate, // 前月比の改善率（%）
    String? recommendation, // AI推奨学習方針
  }) = _MonthlyReport;

  factory MonthlyReport.fromJson(Map<String, dynamic> json) =>
      _$MonthlyReportFromJson(json);
}

/// 学習ゴール・チャレンジ
@freezed
class LearningGoal with _$LearningGoal {
  const factory LearningGoal({
    required String userId,
    required String goalId,
    required String goalType,         // 'daily_time', 'quizzes', 'accuracy', 'streak'
    required int targetValue,
    required DateTime startDate,
    DateTime? deadline,
    required int currentProgress,
    required bool isCompleted,
    DateTime? completedAt,
    GoalStatus? status,
    String? description,
    int? rewards, // 達成時の報酬コイン
    double? difficulty, // 難度レベル（1.0-3.0）
  }) = _LearningGoal;

  factory LearningGoal.fromJson(Map<String, dynamic> json) =>
      _$LearningGoalFromJson(json);
}

/// 分析設定（RemoteConfig から読み込む）
@freezed
class AnalyticsConfig with _$AnalyticsConfig {
  const factory AnalyticsConfig({
    required bool enableMetricsTracking,
    required bool enableReportGeneration,
    required List<String> enabledMetrics,
    required int reportGenerationIntervalDays, // 7 or 30
    required Map<String, int> goalsConfig,     // { 'daily_time': 30, 'quizzes': 5 }
    bool? enableSegmentation,
    bool? enableAIPredictions,
    Map<String, dynamic>? segmentThresholds, // { 'churnRiskThreshold': 0.7 }
  }) = _AnalyticsConfig;

  factory AnalyticsConfig.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsConfigFromJson(json);
}

/// ユーザーの行動パターン分析
@freezed
class BehaviorAnalytics with _$BehaviorAnalytics {
  const factory BehaviorAnalytics({
    required String userId,
    required DateTime analyzedDate,
    required Map<String, int> sessionCounts, // { 'morning': 5, 'afternoon': 3 }
    required Map<String, int> preferredTopics,
    required int averageSessionDurationMinutes,
    required double weekdayVsWeekendRatio,
    required int peakActivityHour, // 0-23
    String? learningPattern, // 'bursty', 'consistent', 'irregular'
    int? predictedNextActivationDays, // 次回起動予測日数
  }) = _BehaviorAnalytics;

  factory BehaviorAnalytics.fromJson(Map<String, dynamic> json) =>
      _$BehaviorAnalyticsFromJson(json);
}

/// グローバル人口統計
@freezed
class PopulationStats with _$PopulationStats {
  const factory PopulationStats({
    required int totalUsers,
    required int activeUsersLast7Days,
    required int activeUsersLast30Days,
    required int churnedUsersLast30Days,
    required double churnRate,
    required DateTime sampledAt,
    required Map<String, int> segmentDistribution, // { 'newUser': 100, 'active': 500 }
    Map<String, double>? retentionByDay, // 日数ごとの継続率
    Map<String, int>? ageGroupDistribution,
    double? mau, // 月間アクティブユーザー
    double? dau, // 日間アクティブユーザー
  }) = _PopulationStats;

  factory PopulationStats.fromJson(Map<String, dynamic> json) =>
      _$PopulationStatsFromJson(json);
}

/// コホート分析（同じ時期に登録したユーザーグループ）
@freezed
class CohortAnalytics with _$CohortAnalytics {
  const factory CohortAnalytics({
    required String cohortId, // 登録月（例: '2026-09'）
    required int cohortSize,
    required Map<int, double> retentionByWeek, // { 1: 0.95, 2: 0.87, ... }
    required Map<int, double> engagementByWeek,
    required double lifetimeValue,
    required DateTime createdAt,
  }) = _CohortAnalytics;

  factory CohortAnalytics.fromJson(Map<String, dynamic> json) =>
      _$CohortAnalyticsFromJson(json);
}

/// A/B テスト結果集計（analytics の一部）
@freezed
class ABTestMetrics with _$ABTestMetrics {
  const factory ABTestMetrics({
    required String testId,
    required String variant,
    required int impressions,
    required int conversions,
    required double conversionRate,
    required int totalRevenue,
    required double averageOrderValue,
    required DateTime updatedAt,
    double? confidence, // 統計的信頼度
    String? winner, // test_winner, variant_winner, null (ongoing)
  }) = _ABTestMetrics;

  factory ABTestMetrics.fromJson(Map<String, dynamic> json) =>
      _$ABTestMetricsFromJson(json);
}
