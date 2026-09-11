// Analytics StateNotifier（データ記録・更新）
//
// Phase 4.16: Analytics・レポート強化統一化
// 学習メトリクス・セグメント分析・レポート生成を統一管理

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/analytics_model.dart';

// ─────────────────────────────────────────────────────────────────
// Analytics StateNotifier
// ─────────────────────────────────────────────────────────────────

class AnalyticsNotifier extends StateNotifier<Map<String, dynamic>> {
  final firestore = FirebaseFirestore.instance;

  AnalyticsNotifier() : super({});

  // ─────────────────────────────────────────────────────────────────
  // メトリクス記録
  // ─────────────────────────────────────────────────────────────────

  /// 学習メトリクスを記録
  Future<void> recordMetric({
    required String userId,
    required LearningMetricType type,
    required int value,
    String? appId,
    Map<String, dynamic>? customData,
  }) async {
    try {
      final metric = LearningMetric(
        userId: userId,
        type: type,
        value: value,
        recordedAt: DateTime.now(),
        appId: appId,
        customData: customData,
      );

      await firestore
          .collection('analytics/users/$userId/metrics')
          .add(metric.toJson());

      // 集計用スナップショットを非同期で更新
      _updateAggregates(userId);
    } catch (e) {
      debugPrint('Error recording metric: $e');
      rethrow;
    }
  }

  // ─────────────────────────────────────────────────────────────────
  // ユーザーセグメント分析更新
  // ─────────────────────────────────────────────────────────────────

  /// ユーザーセグメント分析を更新
  Future<void> updateUserSegmentAnalytics({
    required String userId,
    required String segmentId,
    required int engagementScore,
    required int retentionScore,
    required int totalLearningMinutes,
    required Map<String, int> subjectScores,
    int? consecutiveAbsenceDays,
    String? churnRiskLevel,
  }) async {
    try {
      final analytics = UserSegmentAnalytics(
        userId: userId,
        segmentId: segmentId,
        engagementScore: engagementScore,
        retentionScore: retentionScore,
        lastActiveAt: DateTime.now(),
        totalLearningMinutes: totalLearningMinutes,
        consecutiveAbsenceDays: consecutiveAbsenceDays ?? 0,
        subjectScores: subjectScores,
        churnRiskLevel: churnRiskLevel,
      );

      await firestore
          .collection('analytics/users/$userId/segment_analytics')
          .doc('current')
          .set(analytics.toJson(), SetOptions(merge: true));

      state = {...state, 'lastSegmentUpdate': DateTime.now()};
    } catch (e) {
      debugPrint('Error updating segment analytics: $e');
      rethrow;
    }
  }

  // ─────────────────────────────────────────────────────────────────
  // レポート生成
  // ─────────────────────────────────────────────────────────────────

  /// 週次レポートを生成
  Future<void> generateWeeklyReport({
    required String userId,
    required int totalMinutes,
    required int totalQuizzesCompleted,
    required double averageAccuracy,
    required List<String> topicsFocused,
    required int newBadgesEarned,
    required int coinsEarned,
    Map<String, int>? subjectBreakdown,
  }) async {
    try {
      final now = DateTime.now();
      final weekStartDate = now.subtract(Duration(days: now.weekday - 1));

      // 目標達成判定
      final dailyGoal = 210; // 30分 × 7日
      final weeklyGoalStatus = totalMinutes >= dailyGoal
          ? 'completed'
          : totalMinutes >= (dailyGoal * 0.7)
              ? 'partial'
              : 'missed';

      final report = WeeklyReport(
        userId: userId,
        weekStartDate: weekStartDate,
        totalMinutes: totalMinutes,
        totalQuizzesCompleted: totalQuizzesCompleted,
        averageAccuracy: averageAccuracy,
        topicsFocused: topicsFocused,
        newBadgesEarned: newBadgesEarned,
        coinsEarned: coinsEarned,
        weeklyGoalStatus: weeklyGoalStatus,
        subjectBreakdown: subjectBreakdown,
      );

      final docId = 'weekly_${weekStartDate.year}_${weekStartDate.month}_${weekStartDate.day}';
      await firestore
          .collection('analytics/users/$userId/reports')
          .doc(docId)
          .set(report.toJson(), SetOptions(merge: true));

      state = {...state, 'lastWeeklyReportDate': weekStartDate};
    } catch (e) {
      debugPrint('Error generating weekly report: $e');
      rethrow;
    }
  }

  /// 月次レポートを生成
  Future<void> generateMonthlyReport({
    required String userId,
    required int totalMinutes,
    required int totalQuizzesCompleted,
    required double averageAccuracy,
    required int badgesEarned,
    required int coinsEarned,
    required int friendsAdded,
    required Map<String, dynamic> subjectPerformance,
    required List<String> achievements,
    int? longestStreak,
    int? newCharactersUnlocked,
  }) async {
    try {
      final now = DateTime.now();

      // 前月との比較で成長トレンドを判定
      final previousMonthDoc = await firestore
          .collection('analytics/users/$userId/reports')
          .doc('monthly_${now.year}_${now.month - 1}')
          .get();

      String growthTrend = 'stable';
      double improvementRate = 0.0;

      if (previousMonthDoc.exists) {
        final previousMonthData = MonthlyReport.fromJson(previousMonthDoc.data()!);
        final accuracyDiff = averageAccuracy - previousMonthData.averageAccuracy;

        if (accuracyDiff > 5) {
          growthTrend = 'improving';
          improvementRate = (accuracyDiff / previousMonthData.averageAccuracy * 100)
              .clamp(0.0, 100.0);
        } else if (accuracyDiff < -5) {
          growthTrend = 'declining';
        }
      }

      final report = MonthlyReport(
        userId: userId,
        month: now.month,
        year: now.year,
        totalMinutes: totalMinutes,
        totalQuizzesCompleted: totalQuizzesCompleted,
        averageAccuracy: averageAccuracy,
        badgesEarned: badgesEarned,
        coinsEarned: coinsEarned,
        friendsAdded: friendsAdded,
        growthTrend: growthTrend,
        subjectPerformance: subjectPerformance,
        achievements: achievements,
        longestStreak: longestStreak,
        newCharactersUnlocked: newCharactersUnlocked,
        improvementRate: improvementRate,
      );

      final docId = 'monthly_${now.year}_${now.month}';
      await firestore
          .collection('analytics/users/$userId/reports')
          .doc(docId)
          .set(report.toJson(), SetOptions(merge: true));

      state = {...state, 'lastMonthlyReportDate': DateTime.now()};
    } catch (e) {
      debugPrint('Error generating monthly report: $e');
      rethrow;
    }
  }

  // ─────────────────────────────────────────────────────────────────
  // ゴール管理
  // ─────────────────────────────────────────────────────────────────

  /// 学習ゴールを作成
  Future<String> createLearningGoal({
    required String userId,
    required String goalType,
    required int targetValue,
    required DateTime? deadline,
    String? description,
    double? difficulty,
    int? rewards,
  }) async {
    try {
      final now = DateTime.now();
      final goalId = '${goalType}_${now.millisecondsSinceEpoch}';

      final goal = LearningGoal(
        userId: userId,
        goalId: goalId,
        goalType: goalType,
        targetValue: targetValue,
        startDate: now,
        deadline: deadline,
        currentProgress: 0,
        isCompleted: false,
        status: GoalStatus.active,
        description: description,
        difficulty: difficulty ?? 1.0,
        rewards: rewards,
      );

      await firestore
          .collection('analytics/users/$userId/goals')
          .doc(goalId)
          .set(goal.toJson());

      return goalId;
    } catch (e) {
      debugPrint('Error creating learning goal: $e');
      rethrow;
    }
  }

  /// 学習ゴールの進捗を更新
  Future<void> updateGoalProgress({
    required String userId,
    required String goalId,
    required int currentProgress,
  }) async {
    try {
      final docRef = firestore
          .collection('analytics/users/$userId/goals')
          .doc(goalId);

      final doc = await docRef.get();
      if (!doc.exists) {
        throw Exception('Goal not found: $goalId');
      }

      final goal = LearningGoal.fromJson(doc.data()!);

      // ゴール達成判定
      bool isCompleted = currentProgress >= goal.targetValue;
      GoalStatus status = isCompleted ? GoalStatus.completed : GoalStatus.active;

      await docRef.update({
        'currentProgress': currentProgress,
        'isCompleted': isCompleted,
        'status': status.name,
        if (isCompleted) 'completedAt': DateTime.now(),
      });

      state = {...state, 'lastGoalUpdate': DateTime.now()};
    } catch (e) {
      debugPrint('Error updating goal progress: $e');
      rethrow;
    }
  }

  /// ゴールを完了・失敗として マーク
  Future<void> markGoal({
    required String userId,
    required String goalId,
    required GoalStatus status,
  }) async {
    try {
      await firestore
          .collection('analytics/users/$userId/goals')
          .doc(goalId)
          .update({
            'status': status.name,
            'isCompleted': status == GoalStatus.completed,
            if (status == GoalStatus.completed) 'completedAt': DateTime.now(),
          });

      state = {...state, 'lastGoalUpdate': DateTime.now()};
    } catch (e) {
      debugPrint('Error marking goal: $e');
      rethrow;
    }
  }

  // ─────────────────────────────────────────────────────────────────
  // 行動パターン分析
  // ─────────────────────────────────────────────────────────────────

  /// ユーザーの行動パターン分析を更新
  Future<void> updateBehaviorAnalytics({
    required String userId,
    required Map<String, int> sessionCounts,
    required Map<String, int> preferredTopics,
    required int averageSessionDurationMinutes,
    required double weekdayVsWeekendRatio,
    required int peakActivityHour,
    String? learningPattern,
  }) async {
    try {
      final analytics = BehaviorAnalytics(
        userId: userId,
        analyzedDate: DateTime.now(),
        sessionCounts: sessionCounts,
        preferredTopics: preferredTopics,
        averageSessionDurationMinutes: averageSessionDurationMinutes,
        weekdayVsWeekendRatio: weekdayVsWeekendRatio,
        peakActivityHour: peakActivityHour,
        learningPattern: learningPattern,
      );

      await firestore
          .collection('analytics/users/$userId/behavior')
          .doc('latest')
          .set(analytics.toJson(), SetOptions(merge: true));

      state = {...state, 'lastBehaviorUpdate': DateTime.now()};
    } catch (e) {
      debugPrint('Error updating behavior analytics: $e');
      rethrow;
    }
  }

  // ─────────────────────────────────────────────────────────────────
  // グローバル統計更新
  // ─────────────────────────────────────────────────────────────────

  /// グローバル人口統計を更新（管理者用）
  Future<void> updatePopulationStats({
    required int totalUsers,
    required int activeUsersLast7Days,
    required int activeUsersLast30Days,
    required int churnedUsersLast30Days,
    required Map<String, int> segmentDistribution,
  }) async {
    try {
      final churnRate = totalUsers > 0
          ? (churnedUsersLast30Days / totalUsers * 100).clamp(0.0, 100.0)
          : 0.0;

      final stats = PopulationStats(
        totalUsers: totalUsers,
        activeUsersLast7Days: activeUsersLast7Days,
        activeUsersLast30Days: activeUsersLast30Days,
        churnedUsersLast30Days: churnedUsersLast30Days,
        churnRate: churnRate,
        sampledAt: DateTime.now(),
        segmentDistribution: segmentDistribution,
      );

      await firestore
          .collection('analytics/global')
          .doc('population_stats')
          .set(stats.toJson(), SetOptions(merge: true));

      state = {...state, 'lastPopulationUpdate': DateTime.now()};
    } catch (e) {
      debugPrint('Error updating population stats: $e');
      rethrow;
    }
  }

  // ─────────────────────────────────────────────────────────────────
  // プライベートメソッド
  // ─────────────────────────────────────────────────────────────────

  /// 内部メソッド: メトリクス集計を更新（非同期）
  void _updateAggregates(String userId) {
    firestore.runTransaction((transaction) async {
      final sevenDaysAgo = DateTime.now().subtract(Duration(days: 7));
      final snapshot = await firestore
          .collection('analytics/users/$userId/metrics')
          .where('recordedAt', isGreaterThanOrEqualTo: sevenDaysAgo)
          .get();

      int totalQuizzes = 0;
      int totalCorrect = 0;
      int totalTimeSpent = 0;

      for (final doc in snapshot.docs) {
        final metric = LearningMetric.fromJson(doc.data());
        switch (metric.type) {
          case LearningMetricType.quizCompleted:
            totalQuizzes += metric.value;
            break;
          case LearningMetricType.correctAnswers:
            totalCorrect += metric.value;
            break;
          case LearningMetricType.timeSpent:
            totalTimeSpent += metric.value;
            break;
          default:
            break;
        }
      }

      final aggregateRef = firestore
          .collection('analytics/users/$userId')
          .doc('aggregates');

      transaction.set(
        aggregateRef,
        {
          'totalQuizzesLast7Days': totalQuizzes,
          'totalCorrectLast7Days': totalCorrect,
          'totalTimeSpentLast7Days': totalTimeSpent,
          'averageAccuracyLast7Days': totalQuizzes > 0
              ? double.parse(((totalCorrect / totalQuizzes) * 100).toStringAsFixed(2))
              : 0.0,
          'updatedAt': FieldValue.serverTimestamp(),
        },
        SetOptions(merge: true),
      );
    }).then((_) {
      debugPrint('Aggregates updated for user: $userId');
    }).catchError((e) {
      debugPrint('Error updating aggregates: $e');
    });
  }
}

// ─────────────────────────────────────────────────────────────────
// Provider 登録
// ─────────────────────────────────────────────────────────────────

final analyticsNotifierProvider =
    StateNotifierProvider<AnalyticsNotifier, Map<String, dynamic>>(
  (ref) => AnalyticsNotifier(),
);
