// 週間学習レポート UI（Phase 4.10）
//
// 週間の学習指標を折れ線グラフとカード形式で表示
// fl_chart を使用した可視化

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../models/learning_metrics.dart';
import '../../providers/learning_metrics_provider.dart';

/// 週間学習レポート表示ウィジェット
///
/// 週間の正答率・学習時間・成長スコアをグラフとテキストで表示します。
///
/// 使用例:
/// ```dart
/// WeeklyMetricsWidget(userId: currentUserId)
/// ```
class WeeklyMetricsWidget extends ConsumerWidget {
  final String userId;

  const WeeklyMetricsWidget({
    required this.userId,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weeklyAsync = ref.watch(weeklyMetricsProvider(userId));
    final theme = Theme.of(context);

    return weeklyAsync.when(
      data: (weekly) => SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // グラフセクション
            Padding(
              padding: const EdgeInsets.all(16),
              child: _buildChart(context, weekly),
            ),

            // 統計情報セクション
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: _buildStatisticsCards(context, weekly),
            ),

            // 詳細データセクション
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: _buildDailyBreakdown(context, weekly),
            ),
          ],
        ),
      ),
      loading: () => const Center(
        child: Padding(
          padding: EdgeInsets.all(32),
          child: CircularProgressIndicator(),
        ),
      ),
      error: (err, stack) => Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            'データ読み込みエラー: $err',
            style: theme.textTheme.bodyMedium,
          ),
        ),
      ),
    );
  }

  /// 折れ線グラフの構築
  Widget _buildChart(BuildContext context, WeeklyMetrics weekly) {
    final theme = Theme.of(context);

    // グラフデータの準備
    final correctRateSpots = weekly.dailyData.asMap().entries.map((e) {
      return FlSpot(e.key.toDouble(), e.value.correctRate * 100);
    }).toList();

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '週間正答率推移',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 250,
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(
                    show: true,
                    drawVerticalLine: true,
                    horizontalInterval: 20,
                    verticalInterval: 1,
                    getDrawingHorizontalLine: (value) {
                      return FlLine(
                        color: Colors.grey.withOpacity(0.3),
                        strokeWidth: 1,
                      );
                    },
                  ),
                  titlesData: FlTitlesData(
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          const days = ['月', '火', '水', '木', '金', '土', '日'];
                          final index = value.toInt();
                          if (index >= 0 && index < days.length) {
                            return Text(days[index], style: const TextStyle(fontSize: 12));
                          }
                          return const Text('');
                        },
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          return Text(
                            '${value.toInt()}%',
                            style: const TextStyle(fontSize: 10),
                          );
                        },
                        interval: 20,
                      ),
                    ),
                  ),
                  borderData: FlBorderData(
                    show: true,
                    border: Border.all(color: Colors.grey.withOpacity(0.2)),
                  ),
                  lineBarsData: [
                    LineChartBarData(
                      spots: correctRateSpots,
                      isCurved: true,
                      color: theme.primaryColor,
                      barWidth: 2,
                      isStrokeCapRound: true,
                      dotData: FlDotData(
                        show: true,
                        getDotPainter: (spot, percent, barData, index) {
                          return FlDotCirclePainter(
                            radius: 4,
                            color: theme.primaryColor,
                            strokeWidth: 2,
                            strokeColor: Colors.white,
                          );
                        },
                      ),
                      belowBarData: BarAreaData(
                        show: true,
                        color: theme.primaryColor.withOpacity(0.1),
                      ),
                    ),
                  ],
                  minX: 0,
                  maxX: 6,
                  minY: 0,
                  maxY: 100,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// 統計情報カードの構築
  Widget _buildStatisticsCards(BuildContext context, WeeklyMetrics weekly) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: _buildStatCard(
                context: context,
                title: '平均正答率',
                value: '${(weekly.averageCorrectRate * 100).toStringAsFixed(1)}%',
                icon: Icons.trending_up,
                color: Colors.green,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _buildStatCard(
                context: context,
                title: '総学習時間',
                value: '${weekly.totalStudyTimeMinutes}分',
                icon: Icons.schedule,
                color: Colors.blue,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: _buildStatCard(
                context: context,
                title: '成長スコア',
                value: '${weekly.growthScore}/100',
                icon: Icons.star,
                color: Colors.amber,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _buildStatCard(
                context: context,
                title: '学習日数',
                value: '${weekly.dailyData.length}日',
                icon: Icons.calendar_today,
                color: Colors.purple,
              ),
            ),
          ],
        ),
      ],
    );
  }

  /// 統計カード
  Widget _buildStatCard({
    required BuildContext context,
    required String title,
    required String value,
    required IconData icon,
    required Color color,
  }) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Icon(icon, color: color, size: 24),
            const SizedBox(height: 8),
            Text(
              value,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            Text(
              title,
              style: Theme.of(context).textTheme.labelSmall,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  /// 日次データの詳細表示
  Widget _buildDailyBreakdown(BuildContext context, WeeklyMetrics weekly) {
    final theme = Theme.of(context);
    final days = ['月', '火', '水', '木', '金', '土', '日'];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '日別成績',
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: weekly.dailyData.length,
          separatorBuilder: (_, __) => const SizedBox(height: 8),
          itemBuilder: (context, index) {
            final metric = weekly.dailyData[index];
            final dayName = index < days.length ? days[index] : '？';

            return Card(
              elevation: 0,
              color: Colors.grey.withOpacity(0.05),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    // 曜日
                    SizedBox(
                      width: 40,
                      child: Text(
                        dayName,
                        style: theme.textTheme.labelMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),

                    // 正答率
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '正答率: ${(metric.correctRate * 100).toStringAsFixed(0)}%',
                            style: theme.textTheme.bodySmall,
                          ),
                          Text(
                            '時間: ${metric.studyTimeMinutes}分',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // プログレスバー
                    SizedBox(
                      width: 60,
                      height: 6,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(3),
                        child: LinearProgressIndicator(
                          value: metric.correctRate,
                          backgroundColor: Colors.grey.withOpacity(0.3),
                          valueColor: AlwaysStoppedAnimation<Color>(
                            metric.correctRate >= 0.8
                                ? Colors.green
                                : metric.correctRate >= 0.6
                                    ? Colors.amber
                                    : Colors.red,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
