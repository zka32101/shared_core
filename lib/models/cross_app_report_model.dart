import 'package:freezed_annotation/freezed_annotation.dart';

part 'cross_app_report_model.freezed.dart';
part 'cross_app_report_model.g.dart';

@freezed
class CrossAppReport with _$CrossAppReport {
  const factory CrossAppReport({
    required String userId,
    required Map<String, AppReportSummary> appReports,
    required DateTime generatedAt,
    required CrossAppStats totalStats,
    required String reportPeriod, // 'weekly', 'monthly'
  }) = _CrossAppReport;

  factory CrossAppReport.fromJson(Map<String, dynamic> json) =>
      _$CrossAppReportFromJson(json);
}

@freezed
class AppReportSummary with _$AppReportSummary {
  const factory AppReportSummary({
    required String appId, // 'kokugo', 'sansu', 'eigo', etc.
    required String appName,
    required int totalLearningMinutes,
    required double averageAccuracy,
    required int quizzesCompleted,
    required int badgesEarned,
    required int coinsEarned,
    required double growthTrend, // -1.0 to 1.0
    required String performanceLevel, // 'excellent', 'good', 'average', 'needs_improvement'
  }) = _AppReportSummary;

  factory AppReportSummary.fromJson(Map<String, dynamic> json) =>
      _$AppReportSummaryFromJson(json);
}

@freezed
class CrossAppStats with _$CrossAppStats {
  const factory CrossAppStats({
    required int totalLearningMinutes,
    required int totalQuizzesCompleted,
    required double overallAverageAccuracy,
    required int totalBadgesEarned,
    required int totalCoinsEarned,
    required int appsActive, // 何個のアプリで学習したか
    required List<String> topPerformingApps, // パフォーマンス上位3アプリ
    required String overallPerformance, // 'excellent', 'good', 'average', 'needs_improvement'
    required double consistencyScore, // 0-100: 継続度
    required int consecutiveDaysLearning, // 連続学習日数
  }) = _CrossAppStats;

  factory CrossAppStats.fromJson(Map<String, dynamic> json) =>
      _$CrossAppStatsFromJson(json);
}

@freezed
class WeeklyReportComparison with _$WeeklyReportComparison {
  const factory WeeklyReportComparison({
    required DateTime startDate,
    required DateTime endDate,
    required Map<String, DailyAppStats> dailyStats,
    required String bestDay, // 最も学習した日
    required int bestDayMinutes,
  }) = _WeeklyReportComparison;

  factory WeeklyReportComparison.fromJson(Map<String, dynamic> json) =>
      _$WeeklyReportComparisonFromJson(json);
}

@freezed
class DailyAppStats with _$DailyAppStats {
  const factory DailyAppStats({
    required DateTime date,
    required Map<String, int> appLearningMinutes, // appId -> minutes
    required int totalMinutes,
  }) = _DailyAppStats;

  factory DailyAppStats.fromJson(Map<String, dynamic> json) =>
      _$DailyAppStatsFromJson(json);
}

@freezed
class MonthlyReportComparison with _$MonthlyReportComparison {
  const factory MonthlyReportComparison({
    required int month,
    required int year,
    required Map<String, AppMonthlyStats> appMonthlyStats,
    required CrossAppStats monthlyAggregates,
    required List<String> achievements, // 月間達成事項
  }) = _MonthlyReportComparison;

  factory MonthlyReportComparison.fromJson(Map<String, dynamic> json) =>
      _$MonthlyReportComparisonFromJson(json);
}

@freezed
class AppMonthlyStats with _$AppMonthlyStats {
  const factory AppMonthlyStats({
    required String appId,
    required int totalLearningMinutes,
    required double averageAccuracy,
    required int quizzesCompleted,
    required int badgesEarned,
    required double improvementRate, // 前月比 (%)
    required List<String> topicsLearned,
  }) = _AppMonthlyStats;

  factory AppMonthlyStats.fromJson(Map<String, dynamic> json) =>
      _$AppMonthlyStatsFromJson(json);
}
