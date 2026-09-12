import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/cross_app_report_model.dart';

final crossAppReportProvider =
    FutureProvider.autoDispose.family<CrossAppReport, String>((ref, userId) async {
  final firestore = FirebaseFirestore.instance;

  // 各アプリから学習データを集約
  final docSnapshot = await firestore
      .collection('analytics')
      .doc('cross_app_reports')
      .collection('users')
      .doc(userId)
      .get();

  if (!docSnapshot.exists) {
    throw Exception('No cross-app report found for user');
  }

  return CrossAppReport.fromJson(docSnapshot.data() as Map<String, dynamic>);
});

final weeklyReportComparisonProvider =
    FutureProvider.autoDispose.family<WeeklyReportComparison, String>(
        (ref, userId) async {
  final firestore = FirebaseFirestore.instance;

  final docSnapshot = await firestore
      .collection('analytics')
      .doc('weekly_comparisons')
      .collection('users')
      .doc(userId)
      .get();

  if (!docSnapshot.exists) {
    throw Exception('No weekly comparison found');
  }

  return WeeklyReportComparison.fromJson(
      docSnapshot.data() as Map<String, dynamic>);
});

final monthlyReportComparisonProvider =
    FutureProvider.autoDispose.family<MonthlyReportComparison, String>(
        (ref, userId) async {
  final firestore = FirebaseFirestore.instance;
  final now = DateTime.now();

  final docSnapshot = await firestore
      .collection('analytics')
      .doc('monthly_comparisons')
      .collection('users')
      .doc('${userId}_${now.year}_${now.month}')
      .get();

  if (!docSnapshot.exists) {
    throw Exception('No monthly comparison found');
  }

  return MonthlyReportComparison.fromJson(
      docSnapshot.data() as Map<String, dynamic>);
});

// ローカルキャッシュ用 StateNotifier
class CrossAppReportNotifier extends StateNotifier<CrossAppReport?> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  CrossAppReportNotifier() : super(null);

  /// ユーザーのクロスアプリレポートを生成・キャッシュ
  Future<CrossAppReport> generateCrossAppReport(String userId) async {
    try {
      // 各アプリのデータを集約（複数のコレクションから）
      final appIds = [
        'kokugo',
        'sansu',
        'eigo',
        'rika',
        'syakai',
        'programming',
        'moral'
      ];

      final appReports = <String, AppReportSummary>{};
      int totalMinutes = 0;
      int totalQuizzes = 0;
      int totalBadges = 0;
      int totalCoins = 0;
      double totalAccuracy = 0;
      final topPerformers = <String, double>{};

      for (final appId in appIds) {
        try {
          final appDataDoc = await _firestore
              .collection('analytics')
              .doc('app_summaries')
              .collection('users')
              .doc('${userId}_$appId')
              .get();

          if (appDataDoc.exists) {
            final data = appDataDoc.data() ?? {};
            final minutes = (data['totalLearningMinutes'] ?? 0) as int;
            final quizzes = (data['quizzesCompleted'] ?? 0) as int;
            final accuracy = (data['averageAccuracy'] ?? 0.0) as double;
            final badges = (data['badgesEarned'] ?? 0) as int;
            final coins = (data['coinsEarned'] ?? 0) as int;
            final trend = (data['growthTrend'] ?? 0.0) as double;

            appReports[appId] = AppReportSummary(
              appId: appId,
              appName: _getAppName(appId),
              totalLearningMinutes: minutes,
              averageAccuracy: accuracy,
              quizzesCompleted: quizzes,
              badgesEarned: badges,
              coinsEarned: coins,
              growthTrend: trend,
              performanceLevel: _calculatePerformanceLevel(accuracy),
            );

            totalMinutes += minutes;
            totalQuizzes += quizzes;
            totalBadges += badges;
            totalCoins += coins;
            totalAccuracy += accuracy;
            topPerformers[appId] = accuracy;
          }
        } catch (e) {
          // 個別アプリデータ取得失敗時はスキップ
          continue;
        }
      }

      final appsActive = appReports.length;
      final overallAccuracy =
          appsActive > 0 ? totalAccuracy / appsActive : 0.0;

      // トップパフォーマーを抽出
      final sortedApps = topPerformers.entries.toList()
        ..sort((a, b) => b.value.compareTo(a.value));
      final topPerformingAppsList = sortedApps
          .take(3)
          .map((e) => e.key)
          .toList();

      final report = CrossAppReport(
        userId: userId,
        appReports: appReports,
        generatedAt: DateTime.now(),
        totalStats: CrossAppStats(
          totalLearningMinutes: totalMinutes,
          totalQuizzesCompleted: totalQuizzes,
          overallAverageAccuracy: overallAccuracy,
          totalBadgesEarned: totalBadges,
          totalCoinsEarned: totalCoins,
          appsActive: appsActive,
          topPerformingApps: topPerformingAppsList,
          overallPerformance: _calculatePerformanceLevel(overallAccuracy),
          consistencyScore: _calculateConsistencyScore(totalMinutes, appsActive),
          consecutiveDaysLearning: await _getConsecutiveDays(userId),
        ),
        reportPeriod: 'weekly',
      );

      // Firestore に保存
      await _firestore
          .collection('analytics')
          .doc('cross_app_reports')
          .collection('users')
          .doc(userId)
          .set(report.toJson());

      state = report;
      return report;
    } catch (e) {
      rethrow;
    }
  }

  String _getAppName(String appId) {
    const appNames = {
      'kokugo': '国語',
      'sansu': '算数',
      'eigo': '英語',
      'rika': '理科',
      'syakai': '社会',
      'programming': 'プログラミング',
      'moral': '道徳',
    };
    return appNames[appId] ?? appId;
  }

  String _calculatePerformanceLevel(double accuracy) {
    if (accuracy >= 85) return 'excellent';
    if (accuracy >= 70) return 'good';
    if (accuracy >= 50) return 'average';
    return 'needs_improvement';
  }

  double _calculateConsistencyScore(int totalMinutes, int appsActive) {
    // 総学習時間とアプリ数に基づいて計算（0-100スケール）
    final timeScore = (totalMinutes / 600).clamp(0.0, 1.0) * 60;
    final appScore = (appsActive / 7) * 40;
    return timeScore + appScore;
  }

  Future<int> _getConsecutiveDays(String userId) async {
    try {
      final doc = await _firestore
          .collection('users')
          .doc(userId)
          .collection('stats')
          .doc('streak')
          .get();

      if (doc.exists) {
        return (doc.data()?['consecutiveDays'] ?? 0) as int;
      }
      return 0;
    } catch (e) {
      return 0;
    }
  }
}

final crossAppReportNotifierProvider =
    StateNotifierProvider<CrossAppReportNotifier, CrossAppReport?>((ref) {
  return CrossAppReportNotifier();
});
