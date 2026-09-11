// Analytics プロバイダー（データ取得）
//
// Phase 4.16: Analytics・レポート強化統一化
// Firestore から分析データを取得する Riverpod プロバイダー群

import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/analytics_model.dart';

// ─────────────────────────────────────────────────────────────────
// RemoteConfig から分析設定を読み込み
// ─────────────────────────────────────────────────────────────────

final analyticsConfigProvider = FutureProvider<AnalyticsConfig>((ref) async {
  try {
    final remoteConfig = FirebaseRemoteConfig.instance;

    // RemoteConfig からフェッチ
    await remoteConfig.fetchAndActivate();

    final configJson = remoteConfig.getString('analytics_config');
    if (configJson.isEmpty) {
      // デフォルト設定を返す
      return _defaultAnalyticsConfig();
    }

    final decoded = jsonDecode(configJson) as Map<String, dynamic>;
    return AnalyticsConfig.fromJson(decoded);
  } catch (e) {
    // エラーの場合はデフォルト設定
    return _defaultAnalyticsConfig();
  }
});

AnalyticsConfig _defaultAnalyticsConfig() {
  return AnalyticsConfig(
    enableMetricsTracking: true,
    enableReportGeneration: true,
    enabledMetrics: [
      'quizCompleted',
      'correctAnswers',
      'timeSpent',
      'streakDays',
    ],
    reportGenerationIntervalDays: 7,
    goalsConfig: {
      'daily_time': 30,
      'quizzes': 5,
      'accuracy': 80,
      'streak': 7,
    },
    enableSegmentation: true,
    enableAIPredictions: true,
  );
}

// ─────────────────────────────────────────────────────────────────
// ユーザーセグメント分析を取得
// ─────────────────────────────────────────────────────────────────

final userSegmentAnalyticsProvider = FutureProvider.autoDispose
    .family<UserSegmentAnalytics, String>((ref, userId) async {
  final firestore = FirebaseFirestore.instance;

  try {
    final doc = await firestore
        .collection('analytics/users/$userId/segment_analytics')
        .doc('current')
        .get();

    if (!doc.exists) {
      return UserSegmentAnalytics(
        userId: userId,
        segmentId: 'newUser',
        engagementScore: 50,
        retentionScore: 50,
        lastActiveAt: DateTime.now(),
        totalLearningMinutes: 0,
        consecutiveAbsenceDays: 0,
        subjectScores: {},
      );
    }

    return UserSegmentAnalytics.fromJson(doc.data()!);
  } catch (e) {
    throw Exception('Failed to load segment analytics: $e');
  }
});

// ─────────────────────────────────────────────────────────────────
// 週次レポートを取得
// ─────────────────────────────────────────────────────────────────

final weeklyReportProvider = FutureProvider.autoDispose
    .family<WeeklyReport?, String>((ref, userId) async {
  final firestore = FirebaseFirestore.instance;
  final now = DateTime.now();

  // 週の開始日を計算（月曜日を基準）
  final weekStartDate = now.subtract(Duration(days: now.weekday - 1));
  final docId = 'weekly_${weekStartDate.year}_${weekStartDate.month}_${weekStartDate.day}';

  try {
    final doc = await firestore
        .collection('analytics/users/$userId/reports')
        .doc(docId)
        .get();

    if (!doc.exists) return null;
    return WeeklyReport.fromJson(doc.data()!);
  } catch (e) {
    throw Exception('Failed to load weekly report: $e');
  }
});

// ─────────────────────────────────────────────────────────────────
// 月次レポートを取得
// ─────────────────────────────────────────────────────────────────

final monthlyReportProvider = FutureProvider.autoDispose
    .family<MonthlyReport?, String>((ref, userId) async {
  final firestore = FirebaseFirestore.instance;
  final now = DateTime.now();
  final docId = 'monthly_${now.year}_${now.month}';

  try {
    final doc = await firestore
        .collection('analytics/users/$userId/reports')
        .doc(docId)
        .get();

    if (!doc.exists) return null;
    return MonthlyReport.fromJson(doc.data()!);
  } catch (e) {
    throw Exception('Failed to load monthly report: $e');
  }
});

// ─────────────────────────────────────────────────────────────────
// ユーザーの学習ゴールを取得
// ─────────────────────────────────────────────────────────────────

final userLearningGoalsProvider = FutureProvider.autoDispose
    .family<List<LearningGoal>, String>((ref, userId) async {
  final firestore = FirebaseFirestore.instance;

  try {
    final snapshot = await firestore
        .collection('analytics/users/$userId/goals')
        .orderBy('startDate', descending: true)
        .get();

    return snapshot.docs
        .map((doc) => LearningGoal.fromJson(doc.data()))
        .toList();
  } catch (e) {
    throw Exception('Failed to load learning goals: $e');
  }
});

// アクティブなゴールのみを取得
final activeGoalsProvider = FutureProvider.autoDispose
    .family<List<LearningGoal>, String>((ref, userId) async {
  final goals = await ref.watch(userLearningGoalsProvider(userId).future);
  return goals.where((g) => !g.isCompleted).toList();
});

// ─────────────────────────────────────────────────────────────────
// 学習メトリクス（過去7日間）を取得
// ─────────────────────────────────────────────────────────────────

final recentLearningMetricsProvider = FutureProvider.autoDispose
    .family<List<LearningMetric>, String>((ref, userId) async {
  final firestore = FirebaseFirestore.instance;
  final sevenDaysAgo = DateTime.now().subtract(Duration(days: 7));

  try {
    final snapshot = await firestore
        .collection('analytics/users/$userId/metrics')
        .where('recordedAt', isGreaterThanOrEqualTo: sevenDaysAgo)
        .orderBy('recordedAt', descending: true)
        .get();

    return snapshot.docs
        .map((doc) => LearningMetric.fromJson(doc.data()))
        .toList();
  } catch (e) {
    throw Exception('Failed to load recent metrics: $e');
  }
});

// ─────────────────────────────────────────────────────────────────
// ユーザーの行動パターン分析を取得
// ─────────────────────────────────────────────────────────────────

final behaviorAnalyticsProvider = FutureProvider.autoDispose
    .family<BehaviorAnalytics?, String>((ref, userId) async {
  final firestore = FirebaseFirestore.instance;

  try {
    final doc = await firestore
        .collection('analytics/users/$userId/behavior')
        .doc('latest')
        .get();

    if (!doc.exists) return null;
    return BehaviorAnalytics.fromJson(doc.data()!);
  } catch (e) {
    throw Exception('Failed to load behavior analytics: $e');
  }
});

// ─────────────────────────────────────────────────────────────────
// グローバル人口統計を取得
// ─────────────────────────────────────────────────────────────────

final populationStatsProvider = FutureProvider<PopulationStats>((ref) async {
  final firestore = FirebaseFirestore.instance;

  try {
    final doc = await firestore
        .collection('analytics/global')
        .doc('population_stats')
        .get();

    if (!doc.exists) {
      return PopulationStats(
        totalUsers: 0,
        activeUsersLast7Days: 0,
        activeUsersLast30Days: 0,
        churnedUsersLast30Days: 0,
        churnRate: 0.0,
        sampledAt: DateTime.now(),
        segmentDistribution: {},
      );
    }

    return PopulationStats.fromJson(doc.data()!);
  } catch (e) {
    throw Exception('Failed to load population stats: $e');
  }
});

// ─────────────────────────────────────────────────────────────────
// コホート分析を取得
// ─────────────────────────────────────────────────────────────────

final cohortAnalyticsProvider = FutureProvider.autoDispose
    .family<CohortAnalytics?, String>((ref, cohortId) async {
  final firestore = FirebaseFirestore.instance;

  try {
    final doc = await firestore
        .collection('analytics/cohorts')
        .doc(cohortId)
        .get();

    if (!doc.exists) return null;
    return CohortAnalytics.fromJson(doc.data()!);
  } catch (e) {
    throw Exception('Failed to load cohort analytics: $e');
  }
});

// ─────────────────────────────────────────────────────────────────
// 全コホートの一覧を取得
// ─────────────────────────────────────────────────────────────────

final allCohortsProvider = FutureProvider<List<CohortAnalytics>>((ref) async {
  final firestore = FirebaseFirestore.instance;

  try {
    final snapshot = await firestore
        .collection('analytics/cohorts')
        .orderBy('createdAt', descending: true)
        .get();

    return snapshot.docs
        .map((doc) => CohortAnalytics.fromJson(doc.data()))
        .toList();
  } catch (e) {
    throw Exception('Failed to load cohorts: $e');
  }
});

// ─────────────────────────────────────────────────────────────────
// A/B テスト結果を取得
// ─────────────────────────────────────────────────────────────────

final abTestMetricsProvider = FutureProvider.autoDispose
    .family<ABTestMetrics?, (String testId, String variant)>((ref, params) async {
  final firestore = FirebaseFirestore.instance;
  final (testId, variant) = params;

  try {
    final doc = await firestore
        .collection('analytics/ab_tests/results')
        .doc('${testId}_$variant')
        .get();

    if (!doc.exists) return null;
    return ABTestMetrics.fromJson(doc.data()!);
  } catch (e) {
    throw Exception('Failed to load A/B test metrics: $e');
  }
});

// テスト全体の結果を取得
final abTestResultsProvider = FutureProvider.autoDispose
    .family<List<ABTestMetrics>, String>((ref, testId) async {
  final firestore = FirebaseFirestore.instance;

  try {
    final snapshot = await firestore
        .collection('analytics/ab_tests/results')
        .where('testId', isEqualTo: testId)
        .get();

    return snapshot.docs
        .map((doc) => ABTestMetrics.fromJson(doc.data()))
        .toList();
  } catch (e) {
    throw Exception('Failed to load A/B test results: $e');
  }
});
