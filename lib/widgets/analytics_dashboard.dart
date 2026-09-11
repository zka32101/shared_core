// Analytics ダッシュボード UI
//
// Phase 4.16: Analytics・レポート強化統一化
// ユーザーの学習分析データを表示するダッシュボードウィジェット

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fl_chart/fl_chart.dart';
import '../models/analytics_model.dart';
import '../providers/analytics_provider.dart';

class AnalyticsDashboard extends ConsumerWidget {
  final String userId;
  final Color? primaryColor;

  const AnalyticsDashboard({
    required this.userId,
    this.primaryColor,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final segmentAnalytics = ref.watch(userSegmentAnalyticsProvider(userId));
    final weeklyReport = ref.watch(weeklyReportProvider(userId));
    final monthlyReport = ref.watch(monthlyReportProvider(userId));
    final learningGoals = ref.watch(userLearningGoalsProvider(userId));
    final behaviorAnalytics = ref.watch(behaviorAnalyticsProvider(userId));

    return Scaffold(
      appBar: AppBar(
        title: const Text('学習分析'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // セグメント分析カード
            segmentAnalytics.when(
              data: (analytics) => _SegmentAnalyticsCard(
                analytics: analytics,
                primaryColor: primaryColor,
              ),
              loading: () => const _LoadingCard(),
              error: (err, st) => _ErrorCard(error: err.toString()),
            ),
            const SizedBox(height: 16),

            // 週次レポートカード
            weeklyReport.when(
              data: (report) => report != null
                  ? _WeeklyReportCard(
                      report: report,
                      primaryColor: primaryColor,
                    )
                  : const _EmptyCard(title: '週次レポート'),
              loading: () => const _LoadingCard(),
              error: (err, st) => _ErrorCard(error: err.toString()),
            ),
            const SizedBox(height: 16),

            // 月次レポートカード
            monthlyReport.when(
              data: (report) => report != null
                  ? _MonthlyReportCard(
                      report: report,
                      primaryColor: primaryColor,
                    )
                  : const _EmptyCard(title: '月次レポート'),
              loading: () => const _LoadingCard(),
              error: (err, st) => _ErrorCard(error: err.toString()),
            ),
            const SizedBox(height: 16),

            // 行動パターン分析
            behaviorAnalytics.when(
              data: (behavior) => behavior != null
                  ? _BehaviorAnalyticsCard(
                      analytics: behavior,
                      primaryColor: primaryColor,
                    )
                  : const SizedBox.shrink(),
              loading: () => const SizedBox.shrink(),
              error: (err, st) => const SizedBox.shrink(),
            ),
            const SizedBox(height: 16),

            // 学習ゴール表示
            learningGoals.when(
              data: (goals) => _LearningGoalsCard(
                goals: goals,
                primaryColor: primaryColor,
              ),
              loading: () => const _LoadingCard(),
              error: (err, st) => _ErrorCard(error: err.toString()),
            ),
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────
// UI コンポーネント
// ─────────────────────────────────────────────────────────────────

class _SegmentAnalyticsCard extends StatelessWidget {
  final UserSegmentAnalytics analytics;
  final Color? primaryColor;

  const _SegmentAnalyticsCard({
    required this.analytics,
    this.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    final color = primaryColor ?? Theme.of(context).primaryColor;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ユーザーセグメント分析',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 12),
            _SegmentScore(
              label: 'エンゲージメント',
              score: analytics.engagementScore,
              color: Colors.blue,
            ),
            const SizedBox(height: 8),
            _SegmentScore(
              label: 'リテンション',
              score: analytics.retentionScore,
              color: Colors.green,
            ),
            const SizedBox(height: 12),
            if (analytics.subjectScores.isNotEmpty)
              Wrap(
                spacing: 8,
                children: analytics.subjectScores.entries.map((e) {
                  return Chip(
                    label: Text('${e.key}: ${e.value}'),
                    backgroundColor: color.withOpacity(0.2),
                  );
                }).toList(),
              ),
            if (analytics.churnRiskLevel != null) ...[
              const SizedBox(height: 12),
              Chip(
                label: Text('離脱リスク: ${analytics.churnRiskLevel}'),
                backgroundColor: analytics.churnRiskLevel == 'high'
                    ? Colors.red.withOpacity(0.2)
                    : Colors.orange.withOpacity(0.2),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _SegmentScore extends StatelessWidget {
  final String label;
  final int score;
  final Color color;

  const _SegmentScore({
    required this.label,
    required this.score,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                value: score / 100,
                minHeight: 8,
                backgroundColor: Colors.grey.withOpacity(0.2),
                valueColor: AlwaysStoppedAnimation(color),
              ),
            ),
          ),
        ),
        Text(
          '$score/100',
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class _WeeklyReportCard extends StatelessWidget {
  final WeeklyReport report;
  final Color? primaryColor;

  const _WeeklyReportCard({
    required this.report,
    this.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '週次レポート',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 12),
            _ReportRow('学習時間', '${report.totalMinutes}分'),
            _ReportRow('クイズ完了', '${report.totalQuizzesCompleted}問'),
            _ReportRow('正答率', '${report.averageAccuracy.toStringAsFixed(1)}%'),
            _ReportRow('獲得コイン', '${report.coinsEarned}'),
            _ReportRow('新規バッジ', '${report.newBadgesEarned}個'),
            const SizedBox(height: 12),
            if (report.weeklyGoalStatus != null)
              Chip(
                label: Text(report.weeklyGoalStatus!),
                backgroundColor: report.weeklyGoalStatus == 'completed'
                    ? Colors.green.withOpacity(0.2)
                    : report.weeklyGoalStatus == 'partial'
                        ? Colors.orange.withOpacity(0.2)
                        : Colors.red.withOpacity(0.2),
              ),
          ],
        ),
      ),
    );
  }
}

class _MonthlyReportCard extends StatelessWidget {
  final MonthlyReport report;
  final Color? primaryColor;

  const _MonthlyReportCard({
    required this.report,
    this.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '月次レポート',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 12),
            _ReportRow('学習時間', '${report.totalMinutes}分'),
            _ReportRow('クイズ完了', '${report.totalQuizzesCompleted}問'),
            _ReportRow('正答率', '${report.averageAccuracy.toStringAsFixed(1)}%'),
            _ReportRow('獲得バッジ', '${report.badgesEarned}個'),
            _ReportRow('獲得コイン', '${report.coinsEarned}'),
            if (report.improvementRate != null)
              _ReportRow('前月比改善', '${report.improvementRate!.toStringAsFixed(1)}%'),
            const SizedBox(height: 12),
            Chip(
              label: Text(report.growthTrend),
              backgroundColor: report.growthTrend == 'improving'
                  ? Colors.green.withOpacity(0.2)
                  : report.growthTrend == 'declining'
                      ? Colors.red.withOpacity(0.2)
                      : Colors.grey.withOpacity(0.2),
            ),
          ],
        ),
      ),
    );
  }
}

class _BehaviorAnalyticsCard extends StatelessWidget {
  final BehaviorAnalytics analytics;
  final Color? primaryColor;

  const _BehaviorAnalyticsCard({
    required this.analytics,
    this.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '学習パターン分析',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 12),
            _ReportRow('平均セッション時間',
                '${analytics.averageSessionDurationMinutes}分'),
            _ReportRow('ピーク活動時間',
                '${analytics.peakActivityHour.toString().padLeft(2, "0")}:00'),
            _ReportRow('平日 vs 週末比',
                '${analytics.weekdayVsWeekendRatio.toStringAsFixed(2)}'),
            if (analytics.learningPattern != null) ...[
              const SizedBox(height: 12),
              Chip(
                label: Text('学習パターン: ${analytics.learningPattern}'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _LearningGoalsCard extends StatelessWidget {
  final List<LearningGoal> goals;
  final Color? primaryColor;

  const _LearningGoalsCard({
    required this.goals,
    this.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    final activeGoals = goals.where((g) => !g.isCompleted).toList();
    final completedGoals = goals.where((g) => g.isCompleted).toList();

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '学習ゴール',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 12),
            if (activeGoals.isEmpty && completedGoals.isEmpty)
              const Text('ゴールがまだ設定されていません')
            else ...[
              if (activeGoals.isNotEmpty) ...[
                Text(
                  '進行中 (${activeGoals.length})',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                ...activeGoals
                    .map((goal) => _GoalItem(goal: goal, primaryColor: primaryColor))
                    .toList(),
                const SizedBox(height: 12),
              ],
              if (completedGoals.isNotEmpty) ...[
                Text(
                  '完了 (${completedGoals.length})',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                ...completedGoals
                    .map((goal) => _GoalItem(goal: goal, primaryColor: primaryColor))
                    .toList(),
              ],
            ],
          ],
        ),
      ),
    );
  }
}

class _GoalItem extends StatelessWidget {
  final LearningGoal goal;
  final Color? primaryColor;

  const _GoalItem({
    required this.goal,
    this.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    final progress = (goal.currentProgress / goal.targetValue * 100).clamp(0, 100);
    final color = primaryColor ?? Theme.of(context).primaryColor;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(goal.goalType),
              Text('${goal.currentProgress}/${goal.targetValue}'),
            ],
          ),
          const SizedBox(height: 4),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: progress / 100,
              minHeight: 8,
              backgroundColor: Colors.grey.withOpacity(0.2),
              valueColor: AlwaysStoppedAnimation(
                goal.isCompleted ? Colors.green : color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ReportRow extends StatelessWidget {
  final String label;
  final String value;

  const _ReportRow(this.label, this.value);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class _LoadingCard extends StatelessWidget {
  const _LoadingCard();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          height: 50,
          child: Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          ),
        ),
      ),
    );
  }
}

class _EmptyCard extends StatelessWidget {
  final String title;

  const _EmptyCard({required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text('$title: データなし'),
      ),
    );
  }
}

class _ErrorCard extends StatelessWidget {
  final String error;

  const _ErrorCard({required this.error});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red.withOpacity(0.1),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'エラーが発生しました',
              style: TextStyle(
                color: Colors.red[800],
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(error, style: const TextStyle(fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
