// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cross_app_report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CrossAppReportImpl _$$CrossAppReportImplFromJson(Map<String, dynamic> json) =>
    _$CrossAppReportImpl(
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

Map<String, dynamic> _$$CrossAppReportImplToJson(
  _$CrossAppReportImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'appReports': instance.appReports,
  'generatedAt': instance.generatedAt.toIso8601String(),
  'totalStats': instance.totalStats,
  'reportPeriod': instance.reportPeriod,
};

_$AppReportSummaryImpl _$$AppReportSummaryImplFromJson(
  Map<String, dynamic> json,
) => _$AppReportSummaryImpl(
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

Map<String, dynamic> _$$AppReportSummaryImplToJson(
  _$AppReportSummaryImpl instance,
) => <String, dynamic>{
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

_$CrossAppStatsImpl _$$CrossAppStatsImplFromJson(Map<String, dynamic> json) =>
    _$CrossAppStatsImpl(
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

Map<String, dynamic> _$$CrossAppStatsImplToJson(_$CrossAppStatsImpl instance) =>
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

_$WeeklyReportComparisonImpl _$$WeeklyReportComparisonImplFromJson(
  Map<String, dynamic> json,
) => _$WeeklyReportComparisonImpl(
  startDate: DateTime.parse(json['startDate'] as String),
  endDate: DateTime.parse(json['endDate'] as String),
  dailyStats: (json['dailyStats'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, DailyAppStats.fromJson(e as Map<String, dynamic>)),
  ),
  bestDay: json['bestDay'] as String,
  bestDayMinutes: (json['bestDayMinutes'] as num).toInt(),
);

Map<String, dynamic> _$$WeeklyReportComparisonImplToJson(
  _$WeeklyReportComparisonImpl instance,
) => <String, dynamic>{
  'startDate': instance.startDate.toIso8601String(),
  'endDate': instance.endDate.toIso8601String(),
  'dailyStats': instance.dailyStats,
  'bestDay': instance.bestDay,
  'bestDayMinutes': instance.bestDayMinutes,
};

_$DailyAppStatsImpl _$$DailyAppStatsImplFromJson(Map<String, dynamic> json) =>
    _$DailyAppStatsImpl(
      date: DateTime.parse(json['date'] as String),
      appLearningMinutes: Map<String, int>.from(
        json['appLearningMinutes'] as Map,
      ),
      totalMinutes: (json['totalMinutes'] as num).toInt(),
    );

Map<String, dynamic> _$$DailyAppStatsImplToJson(_$DailyAppStatsImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'appLearningMinutes': instance.appLearningMinutes,
      'totalMinutes': instance.totalMinutes,
    };

_$MonthlyReportComparisonImpl _$$MonthlyReportComparisonImplFromJson(
  Map<String, dynamic> json,
) => _$MonthlyReportComparisonImpl(
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

Map<String, dynamic> _$$MonthlyReportComparisonImplToJson(
  _$MonthlyReportComparisonImpl instance,
) => <String, dynamic>{
  'month': instance.month,
  'year': instance.year,
  'appMonthlyStats': instance.appMonthlyStats,
  'monthlyAggregates': instance.monthlyAggregates,
  'achievements': instance.achievements,
};

_$AppMonthlyStatsImpl _$$AppMonthlyStatsImplFromJson(
  Map<String, dynamic> json,
) => _$AppMonthlyStatsImpl(
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

Map<String, dynamic> _$$AppMonthlyStatsImplToJson(
  _$AppMonthlyStatsImpl instance,
) => <String, dynamic>{
  'appId': instance.appId,
  'totalLearningMinutes': instance.totalLearningMinutes,
  'averageAccuracy': instance.averageAccuracy,
  'quizzesCompleted': instance.quizzesCompleted,
  'badgesEarned': instance.badgesEarned,
  'improvementRate': instance.improvementRate,
  'topicsLearned': instance.topicsLearned,
};
