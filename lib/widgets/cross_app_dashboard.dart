import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fl_chart/fl_chart.dart';
import '../models/cross_app_report_model.dart';
import '../providers/cross_app_report_provider.dart';

class CrossAppDashboard extends ConsumerWidget {
  final String userId;
  final Color? primaryColor;

  const CrossAppDashboard({
    required this.userId,
    this.primaryColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reportAsync = ref.watch(crossAppReportProvider(userId));
    final primaryColor = this.primaryColor ?? Theme.of(context).primaryColor;

    return Scaffold(
      appBar: AppBar(
        title: const Text('全科目レポート'),
        centerTitle: true,
        elevation: 0,
      ),
      body: reportAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.error_outline, size: 64, color: Colors.grey[400]),
              const SizedBox(height: 16),
              Text('レポートの読み込みに失敗しました'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  ref.refresh(crossAppReportProvider(userId));
                },
                child: const Text('再試行'),
              ),
            ],
          ),
        ),
        data: (report) => SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 総合統計
              _TotalStatsCard(
                stats: report.totalStats,
                primaryColor: primaryColor,
              ),
              const SizedBox(height: 24),

              // 学習時間チャート（アプリ別）
              _AppLearningTimeChart(
                appReports: report.appReports,
                primaryColor: primaryColor,
              ),
              const SizedBox(height: 24),

              // 正答率チャート（アプリ別）
              _AppAccuracyChart(
                appReports: report.appReports,
                primaryColor: primaryColor,
              ),
              const SizedBox(height: 24),

              // アプリ別詳細
              _AppDetailsSection(
                appReports: report.appReports,
                primaryColor: primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TotalStatsCard extends StatelessWidget {
  final CrossAppStats stats;
  final Color primaryColor;

  const _TotalStatsCard({
    required this.stats,
    required this.primaryColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '全科目の成績',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                _StatTile(
                  label: '総学習時間',
                  value: '${stats.totalLearningMinutes}分',
                  icon: Icons.timer,
                  color: primaryColor,
                ),
                const SizedBox(width: 16),
                _StatTile(
                  label: '平均正答率',
                  value: '${stats.overallAverageAccuracy.toStringAsFixed(1)}%',
                  icon: Icons.check_circle,
                  color: Colors.green,
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                _StatTile(
                  label: '科目数',
                  value: '${stats.appsActive}個',
                  icon: Icons.apps,
                  color: Colors.blue,
                ),
                const SizedBox(width: 16),
                _StatTile(
                  label: '連続学習日数',
                  value: '${stats.consecutiveDaysLearning}日',
                  icon: Icons.local_fire_department,
                  color: Colors.orange,
                ),
              ],
            ),
            const SizedBox(height: 16),
            LinearProgressIndicator(
              value: stats.consistencyScore / 100,
              minHeight: 8,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation(primaryColor),
            ),
            const SizedBox(height: 8),
            Text(
              '継続度: ${stats.consistencyScore.toStringAsFixed(1)}/100',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}

class _StatTile extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  final Color color;

  const _StatTile({
    required this.label,
    required this.value,
    required this.icon,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Icon(icon, color: color, size: 28),
          const SizedBox(height: 8),
          Text(
            value,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.bold, color: color),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _AppLearningTimeChart extends StatelessWidget {
  final Map<String, AppReportSummary> appReports;
  final Color primaryColor;

  const _AppLearningTimeChart({
    required this.appReports,
    required this.primaryColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final entries = appReports.entries.toList();

    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '科目別学習時間',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 24),
            SizedBox(
              height: 300,
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  maxY:
                      entries.fold<int>(0, (prev, e) => prev > e.value.totalLearningMinutes ? prev : e.value.totalLearningMinutes).toDouble() + 10,
                  barTouchData: BarTouchData(enabled: true),
                  titlesData: FlTitlesData(
                    show: true,
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          final index = value.toInt();
                          if (index >= entries.length) {
                            return const SizedBox.shrink();
                          }
                          return Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              entries[index].value.appName,
                              style: const TextStyle(fontSize: 12),
                            ),
                          );
                        },
                      ),
                    ),
                    leftTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: true),
                    ),
                  ),
                  barGroups: List.generate(
                    entries.length,
                    (index) => BarChartGroupData(
                      x: index,
                      barRods: [
                        BarChartRodData(
                          toY: entries[index].value.totalLearningMinutes.toDouble(),
                          color: primaryColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AppAccuracyChart extends StatelessWidget {
  final Map<String, AppReportSummary> appReports;
  final Color primaryColor;

  const _AppAccuracyChart({
    required this.appReports,
    required this.primaryColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final entries = appReports.entries.toList();

    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '科目別正答率',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 24),
            SizedBox(
              height: 300,
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  maxY: 100,
                  barTouchData: BarTouchData(enabled: true),
                  titlesData: FlTitlesData(
                    show: true,
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          final index = value.toInt();
                          if (index >= entries.length) {
                            return const SizedBox.shrink();
                          }
                          return Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              entries[index].value.appName,
                              style: const TextStyle(fontSize: 12),
                            ),
                          );
                        },
                      ),
                    ),
                    leftTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: true),
                    ),
                  ),
                  barGroups: List.generate(
                    entries.length,
                    (index) => BarChartGroupData(
                      x: index,
                      barRods: [
                        BarChartRodData(
                          toY: entries[index].value.averageAccuracy,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AppDetailsSection extends StatelessWidget {
  final Map<String, AppReportSummary> appReports;
  final Color primaryColor;

  const _AppDetailsSection({
    required this.appReports,
    required this.primaryColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final entries = appReports.entries.toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '科目別詳細',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 16),
        ...entries.map((entry) {
          final summary = entry.value;
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        summary.appName,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Chip(
                        label: Text(
                          summary.performanceLevel == 'excellent'
                              ? '優秀'
                              : summary.performanceLevel == 'good'
                                  ? '良好'
                                  : summary.performanceLevel == 'average'
                                      ? '平均'
                                      : '要改善',
                        ),
                        backgroundColor: _getPerformanceColor(
                            summary.performanceLevel, primaryColor),
                        labelStyle: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: _DetailItem(
                          label: '学習時間',
                          value: '${summary.totalLearningMinutes}分',
                        ),
                      ),
                      Expanded(
                        child: _DetailItem(
                          label: '正答率',
                          value: '${summary.averageAccuracy.toStringAsFixed(1)}%',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: _DetailItem(
                          label: 'クイズ数',
                          value: '${summary.quizzesCompleted}問',
                        ),
                      ),
                      Expanded(
                        child: _DetailItem(
                          label: 'バッジ',
                          value: '${summary.badgesEarned}個',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ],
    );
  }

  Color _getPerformanceColor(String level, Color primaryColor) {
    switch (level) {
      case 'excellent':
        return Colors.green;
      case 'good':
        return Colors.blue;
      case 'average':
        return Colors.orange;
      default:
        return Colors.red;
    }
  }
}

class _DetailItem extends StatelessWidget {
  final String label;
  final String value;

  const _DetailItem({
    required this.label,
    required this.value,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Colors.grey[600],
              ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}
