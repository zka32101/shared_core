// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cross_app_report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CrossAppReport _$CrossAppReportFromJson(Map<String, dynamic> json) =>
    _CrossAppReport(
      userId: json['userId'] as String,
      appReports: (json['appReports'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, AppReportSummary.fromJson(e as Map<String, dynamic>)),
      ),
      generatedAt: DateTime.parse(json['generatedAt'] as String),
      totalStats: CrossAppStats.fromJson(
        json['totalStats'] as Map<String, dynamic>,
      ),
      reportPeriod: json['reportPeriod'] as String,
    );

Map<String, dynamic> _$CrossAppReportToJson(_CrossAppReport instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'appReports': instance.appReports,
      'generatedAt': instance.generatedAt.toIso8601String(),
      'totalStats': instance.totalStats,
      'reportPeriod': instance.reportPeriod,
    };

_AppReportSummary _$AppReportSummaryFromJson(Map<String, dynamic> json) =>
    _AppReportSummary(
      appId: json['appId'] as String,
      appName: json['appName'] as String,
      totalLearningMinutes: (json['totalLearningMinutes'] as num).toInt(),
      averageAccuracy: (json['averageAccuracy'] as num).toDouble(),
      quizzesCompleted: (json['quizzesCompleted'] as num).toInt(),
      badgesEarned: (json['badgesEarned'] as num).toInt(),
      coinsEarned: (json['coinsEarned'] as num).toInt(),
      growthTrend: (json['growthTrend'] as num).toDouble(),
      performanceLevel: json['performanceLevel'] as String,
    );

Map<String, dynamic> _$AppReportSummaryToJson(_AppReportSummary instance) =>
    <String, dynamic>{
      'appId': instance.appId,
      'appName': instance.appName,
      'totalLearningMinutes': instance.totalLearningMinutes,
      'averageAccuracy': instance.averageAccuracy,
      'quizzesCompleted': instance.quizzesCompleted,
      'badgesEarned': instance.badgesEarned,
      'coinsEarned': instance.coinsEarned,
      'growthTrend': instance.growthTrend,
      'performanceLevel': instance.performanceLevel,
    };

_CrossAppStats _$CrossAppStatsFromJson(Map<String, dynamic> json) =>
    _CrossAppStats(
      totalLearningMinutes: (json['totalLearningMinutes'] as num).toInt(),
      totalQuizzesCompleted: (json['totalQuizzesCompleted'] as num).toInt(),
      overallAverageAccuracy: (json['overallAverageAccuracy'] as num)
          .toDouble(),
      totalBadgesEarned: (json['totalBadgesEarned'] as num).toInt(),
      totalCoinsEarned: (json['totalCoinsEarned'] as num).toInt(),
      appsActive: (json['appsActive'] as num).toInt(),
      topPerformingApps: (json['topPerformingApps'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      overallPerformance: json['overallPerformance'] as String,
      consistencyScore: (json['consistencyScore'] as num).toDouble(),
      consecutiveDaysLearning: (json['consecutiveDaysLearning'] as num).toInt(),
    );

Map<String, dynamic> _$CrossAppStatsToJson(_CrossAppStats instance) =>
    <String, dynamic>{
      'totalLearningMinutes': instance.totalLearningMinutes,
      'totalQuizzesCompleted': instance.totalQuizzesCompleted,
      'overallAverageAccuracy': instance.overallAverageAccuracy,
      'totalBadgesEarned': instance.totalBadgesEarned,
      'totalCoinsEarned': instance.totalCoinsEarned,
      'appsActive': instance.appsActive,
      'topPerformingApps': instance.topPerformingApps,
      'overallPerformance': instance.overallPerformance,
      'consistencyScore': instance.consistencyScore,
      'consecutiveDaysLearning': instance.consecutiveDaysLearning,
    };

_WeeklyReportComparison _$WeeklyReportComparisonFromJson(
  Map<String, dynamic> json,
) => _WeeklyReportComparison(
  startDate: DateTime.parse(json['startDate'] as String),
  endDate: DateTime.parse(json['endDate'] as String),
  dailyStats: (json['dailyStats'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, DailyAppStats.fromJson(e as Map<String, dynamic>)),
  ),
  bestDay: json['bestDay'] as String,
  bestDayMinutes: (json['bestDayMinutes'] as num).toInt(),
);

Map<String, dynamic> _$WeeklyReportComparisonToJson(
  _WeeklyReportComparison instance,
) => <String, dynamic>{
  'startDate': instance.startDate.toIso8601String(),
  'endDate': instance.endDate.toIso8601String(),
  'dailyStats': instance.dailyStats,
  'bestDay': instance.bestDay,
  'bestDayMinutes': instance.bestDayMinutes,
};

_DailyAppStats _$DailyAppStatsFromJson(Map<String, dynamic> json) =>
    _DailyAppStats(
      date: DateTime.parse(json['date'] as String),
      appLearningMinutes: Map<String, int>.from(
        json['appLearningMinutes'] as Map,
      ),
      totalMinutes: (json['totalMinutes'] as num).toInt(),
    );

Map<String, dynamic> _$DailyAppStatsToJson(_DailyAppStats instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'appLearningMinutes': instance.appLearningMinutes,
      'totalMinutes': instance.totalMinutes,
    };

_MonthlyReportComparison _$MonthlyReportComparisonFromJson(
  Map<String, dynamic> json,
) => _MonthlyReportComparison(
  month: (json['month'] as num).toInt(),
  year: (json['year'] as num).toInt(),
  appMonthlyStats: (json['appMonthlyStats'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, AppMonthlyStats.fromJson(e as Map<String, dynamic>)),
  ),
  monthlyAggregates: CrossAppStats.fromJson(
    json['monthlyAggregates'] as Map<String, dynamic>,
  ),
  achievements: (json['achievements'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$MonthlyReportComparisonToJson(
  _MonthlyReportComparison instance,
) => <String, dynamic>{
  'month': instance.month,
  'year': instance.year,
  'appMonthlyStats': instance.appMonthlyStats,
  'monthlyAggregates': instance.monthlyAggregates,
  'achievements': instance.achievements,
};

_AppMonthlyStats _$AppMonthlyStatsFromJson(Map<String, dynamic> json) =>
    _AppMonthlyStats(
      appId: json['appId'] as String,
      totalLearningMinutes: (json['totalLearningMinutes'] as num).toInt(),
      averageAccuracy: (json['averageAccuracy'] as num).toDouble(),
      quizzesCompleted: (json['quizzesCompleted'] as num).toInt(),
      badgesEarned: (json['badgesEarned'] as num).toInt(),
      improvementRate: (json['improvementRate'] as num).toDouble(),
      topicsLearned: (json['topicsLearned'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$AppMonthlyStatsToJson(_AppMonthlyStats instance) =>
    <String, dynamic>{
      'appId': instance.appId,
      'totalLearningMinutes': instance.totalLearningMinutes,
      'averageAccuracy': instance.averageAccuracy,
      'quizzesCompleted': instance.quizzesCompleted,
      'badgesEarned': instance.badgesEarned,
      'improvementRate': instance.improvementRate,
      'topicsLearned': instance.topicsLearned,
    };
