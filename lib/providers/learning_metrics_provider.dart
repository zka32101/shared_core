// 学習指標の取得・計算ロジック（Phase 4.10）
//
// 本日・週間・月間の学習指標をFirestoreから非同期取得し、
// UI層で observable にするための FutureProvider 群。

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/learning_metrics.dart';

// ─────────────────────────────────────────────────────────────────
// 本日の学習指標を取得
// ─────────────────────────────────────────────────────────────────

/// 指定ユーザーの本日の学習指標を取得する FutureProvider
///
/// 使用例:
/// ```dart
/// final todayAsync = ref.watch(todayMetricsProvider(userId));
/// todayAsync.when(
///   data: (metrics) => Text('正答率: ${(metrics.correctRate * 100)}%'),
///   loading: () => CircularProgressIndicator(),
///   error: (err, st) => Text('Error: $err'),
/// );
/// ```
final todayMetricsProvider = FutureProvider.autoDispose
    .family<LearningMetrics, String>((ref, userId) async {
  final firestore = FirebaseFirestore.instance;
  final now = DateTime.now();
  final dateKey = '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}';

  try {
    final doc = await firestore
        .collection('users/$userId/metrics')
        .doc(dateKey)
        .get();

    if (!doc.exists) {
      // 今日のデータがない場合は空のメトリクスを返す
      return LearningMetrics(
        userId: userId,
        date: DateTime(now.year, now.month, now.day),
        studyTimeMinutes: 0,
        questionsAnswered: 0,
        correctAnswers: 0,
        correctRate: 0.0,
        averageSpeed: 0.0,
        streakDays: 0,
        subject: '',
        createdAt: DateTime.now(),
      );
    }

    return LearningMetrics.fromJson(doc.data() as Map<String, dynamic>);
  } catch (e) {
    throw Exception('Failed to fetch today metrics: $e');
  }
});

// ─────────────────────────────────────────────────────────────────
// 週間統計を取得
// ─────────────────────────────────────────────────────────────────

/// 指定ユーザーの週間統計を取得する FutureProvider
///
/// 月曜日から始まる1週間（7日間）のデータを集約します。
final weeklyMetricsProvider = FutureProvider.autoDispose
    .family<WeeklyMetrics, String>((ref, userId) async {
  final firestore = FirebaseFirestore.instance;
  final now = DateTime.now();

  // 今週の月曜日を計算
  final weekStart = now.subtract(Duration(days: now.weekday - 1));
  final weekEnd = weekStart.add(const Duration(days: 6));

  try {
    // 7日間のデータをすべて取得
    final snapshots = await firestore
        .collection('users/$userId/metrics')
        .where('date',
            isGreaterThanOrEqualTo: DateTime(weekStart.year, weekStart.month, weekStart.day),
            isLessThanOrEqualTo: DateTime(weekEnd.year, weekEnd.month, weekEnd.day))
        .orderBy('date')
        .get();

    final dailyData = snapshots.docs
        .map((doc) => LearningMetrics.fromJson(doc.data()))
        .toList();

    // 正答率の平均を計算
    final averageCorrectRate = dailyData.isEmpty
        ? 0.0
        : dailyData.fold(0.0, (sum, m) => sum + m.correctRate) / dailyData.length;

    // 学習時間の合計を計算
    final totalStudyTime = dailyData.fold(0, (sum, m) => sum + m.studyTimeMinutes);

    // 成長スコアを計算
    final growthScore = _calculateGrowthScore(averageCorrectRate, totalStudyTime);

    return WeeklyMetrics(
      weekStart: DateTime(weekStart.year, weekStart.month, weekStart.day),
      weekEnd: DateTime(weekEnd.year, weekEnd.month, weekEnd.day),
      dailyData: dailyData,
      averageCorrectRate: averageCorrectRate,
      totalStudyTimeMinutes: totalStudyTime,
      growthScore: growthScore,
    );
  } catch (e) {
    throw Exception('Failed to fetch weekly metrics: $e');
  }
});

// ─────────────────────────────────────────────────────────────────
// 月間統計を取得
// ─────────────────────────────────────────────────────────────────

/// 指定ユーザーの月間統計を取得する FutureProvider
///
/// 当月1日から月末までのデータを集約し、週ごとに分割します。
final monthlyMetricsProvider = FutureProvider.autoDispose
    .family<MonthlyMetrics, String>((ref, userId) async {
  final firestore = FirebaseFirestore.instance;
  final now = DateTime.now();

  // 月の開始日と終了日を計算
  final monthStart = DateTime(now.year, now.month, 1);
  final monthEnd = DateTime(now.year, now.month + 1, 0); // 月の最後の日

  try {
    // 月全体のデータを取得
    final snapshots = await firestore
        .collection('users/$userId/metrics')
        .where('date',
            isGreaterThanOrEqualTo: monthStart,
            isLessThanOrEqualTo: monthEnd)
        .orderBy('date')
        .get();

    final allDailyData = snapshots.docs
        .map((doc) => LearningMetrics.fromJson(doc.data()))
        .toList();

    // 週単位で分割
    final weeklyList = <WeeklyMetrics>[];
    for (int weekNum = 0; weekNum < 5; weekNum++) {
      final weekStart = monthStart.add(Duration(days: weekNum * 7));
      if (weekStart.month != monthStart.month) break; // 翌月になったら終了

      final weekEnd = weekStart.add(const Duration(days: 6));

      // この週に属するデータをフィルタ
      final weekData = allDailyData.where((m) {
        return m.date.isAfter(DateTime(weekStart.year, weekStart.month, weekStart.day)) ||
            m.date.isAtSameMomentAs(DateTime(weekStart.year, weekStart.month, weekStart.day));
      }).where((m) {
        return m.date.isBefore(DateTime(weekEnd.year, weekEnd.month, weekEnd.day + 1));
      }).toList();

      if (weekData.isNotEmpty) {
        final weekAverageRate = weekData.fold(0.0, (sum, m) => sum + m.correctRate) / weekData.length;
        final weekTotalTime = weekData.fold(0, (sum, m) => sum + m.studyTimeMinutes);

        weeklyList.add(WeeklyMetrics(
          weekStart: weekStart,
          weekEnd: weekEnd,
          dailyData: weekData,
          averageCorrectRate: weekAverageRate,
          totalStudyTimeMinutes: weekTotalTime,
          growthScore: _calculateGrowthScore(weekAverageRate, weekTotalTime),
        ));
      }
    }

    // 月間の統計を計算
    final monthAverageRate = allDailyData.isEmpty
        ? 0.0
        : allDailyData.fold(0.0, (sum, m) => sum + m.correctRate) / allDailyData.length;

    final monthTotalTime = allDailyData.fold(0, (sum, m) => sum + m.studyTimeMinutes);
    final monthGrowthScore = _calculateGrowthScore(monthAverageRate, monthTotalTime);

    return MonthlyMetrics(
      monthStart: monthStart,
      monthEnd: monthEnd,
      weeklyData: weeklyList,
      averageCorrectRate: monthAverageRate,
      totalStudyTimeMinutes: monthTotalTime,
      growthScore: monthGrowthScore,
      createdAt: DateTime.now(),
    );
  } catch (e) {
    throw Exception('Failed to fetch monthly metrics: $e');
  }
});

// ─────────────────────────────────────────────────────────────────
// ヘルパー関数
// ─────────────────────────────────────────────────────────────────

/// 正答率と学習時間から成長スコアを計算（0-100）
///
/// 計算ロジック:
/// - 正答率 0% → 0点、100% → 50点
/// - 学習時間 0分 → 0点、30分以上 → 50点（週間基準）
/// - 合計 0-100点
int _calculateGrowthScore(double correctRate, int studyTimeMinutes) {
  int score = 0;

  // 正答率による加点（0-50点）
  score += (correctRate * 50).toInt();

  // 学習時間による加点（0-50点）
  // 週間30分以上で満点、月間は120分以上で満点
  score += ((studyTimeMinutes / 30.0) * 50).toInt().clamp(0, 50);

  return score.clamp(0, 100);
}
