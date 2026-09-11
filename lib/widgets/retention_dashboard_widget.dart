import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_core/models/retention_model.dart';
import 'package:shared_core/providers/retention_provider.dart';

/// ユーザーリテンション分析ダッシュボード
class RetentionDashboardWidget extends ConsumerWidget {
  const RetentionDashboardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final highRiskUsers = ref.watch(highRiskUsersProvider);
    final populationStats = ref.watch(populationStatsProvider);
    final dormantUsers = ref.watch(dormantUsersProvider);

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPopulationStatsCard(context, populationStats),
          const SizedBox(height: 16),
          _buildChurnRiskCard(context, highRiskUsers),
          const SizedBox(height: 16),
          _buildActivityDistributionCard(context, populationStats),
          const SizedBox(height: 16),
          _buildDormantUsersCard(context, dormantUsers),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildPopulationStatsCard(
    BuildContext context,
    AsyncValue<PopulationStats?> statsAsync,
  ) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ユーザー統計',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            statsAsync.when(
              data: (stats) {
                if (stats == null) {
                  return const Center(child: Text('データなし'));
                }
                return Column(
                  children: [
                    _buildStatRow(
                      context,
                      '総ユーザー数',
                      stats.totalUsers.toString(),
                      Icons.people,
                      Colors.blue,
                    ),
                    const SizedBox(height: 12),
                    _buildStatRow(
                      context,
                      'アクティブユーザー（7日）',
                      stats.activeUsersLast7Days.toString(),
                      Icons.trending_up,
                      Colors.green,
                    ),
                    const SizedBox(height: 12),
                    _buildStatRow(
                      context,
                      'アクティブユーザー（30日）',
                      stats.activeUsersLast30Days.toString(),
                      Icons.show_chart,
                      Colors.orange,
                    ),
                    const SizedBox(height: 12),
                    _buildStatRow(
                      context,
                      'チャーンレート',
                      '${(stats.churnRate * 100).toStringAsFixed(1)}%',
                      Icons.trending_down,
                      Colors.red,
                    ),
                  ],
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (err, stack) => Center(child: Text('エラー: $err')),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChurnRiskCard(
    BuildContext context,
    AsyncValue<List<ChurnPrediction>> predictionsAsync,
  ) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'リスク高ユーザー',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                predictionsAsync.whenData((predictions) {
                  return Chip(
                    label: Text('${predictions.length}人'),
                    backgroundColor: Colors.red.shade100,
                  );
                }).value ?? const SizedBox.shrink(),
              ],
            ),
            const SizedBox(height: 16),
            predictionsAsync.when(
              data: (predictions) {
                if (predictions.isEmpty) {
                  return Center(
                    child: Text(
                      'リスク高ユーザーはいません',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  );
                }
                return Column(
                  children: predictions.take(5).map((pred) {
                    return Column(
                      children: [
                        _buildChurnPredictionRow(context, pred),
                        if (pred != predictions.last)
                          const Divider(height: 16),
                      ],
                    );
                  }).toList(),
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (err, stack) => Center(child: Text('エラー: $err')),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChurnPredictionRow(
    BuildContext context,
    ChurnPrediction prediction,
  ) {
    final color = _getRiskColor(prediction.riskLevel);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ユーザー: ${prediction.userId.substring(0, 8)}...',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 4),
                Text(
                  '${prediction.consecutiveAbsenceDays}日未実施',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  prediction.riskLevel.name,
                  style: TextStyle(
                    color: color,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                '${(prediction.churnRiskScore * 100).toStringAsFixed(0)}%',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: color,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActivityDistributionCard(
    BuildContext context,
    AsyncValue<PopulationStats?> statsAsync,
  ) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'アクティビティ分布',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            statsAsync.when(
              data: (stats) {
                if (stats == null || stats.activityLevelDistribution.isEmpty) {
                  return const Center(child: Text('データなし'));
                }
                return Column(
                  children: stats.activityLevelDistribution.entries
                      .map((entry) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: _buildActivityBar(context, entry.key, entry.value),
                    );
                  }).toList(),
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (err, stack) => Center(child: Text('エラー: $err')),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActivityBar(
    BuildContext context,
    String level,
    int count,
  ) {
    final maxCount = 1000.0; // スケール用の最大値
    final percentage = (count / maxCount).clamp(0.0, 1.0);
    final color = _getActivityColor(level);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              level,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '$count人',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        const SizedBox(height: 4),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: LinearProgressIndicator(
            value: percentage,
            minHeight: 8,
            backgroundColor: Colors.grey.shade300,
            valueColor: AlwaysStoppedAnimation(color),
          ),
        ),
      ],
    );
  }

  Widget _buildDormantUsersCard(
    BuildContext context,
    AsyncValue<List<UserRetentionAnalytics>> dormantAsync,
  ) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '休止中ユーザー',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                dormantAsync.whenData((dormant) {
                  return Chip(
                    label: Text('${dormant.length}人'),
                    backgroundColor: Colors.grey.shade300,
                  );
                }).value ?? const SizedBox.shrink(),
              ],
            ),
            const SizedBox(height: 16),
            dormantAsync.when(
              data: (dormant) {
                if (dormant.isEmpty) {
                  return Center(
                    child: Text(
                      '休止中のユーザーはいません',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  );
                }
                return Column(
                  children: dormant.take(3).map((user) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  user.userId.substring(0, 12) + '...',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  '最後のアクティブ: ${_formatDaysAgo(user.lastActiveDate)}日前',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // リエンゲージメントキャンペーン開始
                            },
                            child: const Text('キャンペーン'),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (err, stack) => Center(child: Text('エラー: $err')),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatRow(
    BuildContext context,
    String label,
    String value,
    IconData icon,
    Color color,
  ) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: color.withOpacity(0.2),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: color, size: 20),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: 2),
              Text(
                value,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Color _getRiskColor(ChurnRiskLevel level) {
    switch (level) {
      case ChurnRiskLevel.critical:
        return Colors.red.shade700;
      case ChurnRiskLevel.high:
        return Colors.red.shade500;
      case ChurnRiskLevel.medium:
        return Colors.orange.shade500;
      case ChurnRiskLevel.low:
        return Colors.yellow.shade700;
    }
  }

  Color _getActivityColor(String level) {
    switch (level.toLowerCase()) {
      case 'veryactive':
        return Colors.green.shade500;
      case 'active':
        return Colors.lightGreen.shade500;
      case 'moderate':
        return Colors.blue.shade500;
      case 'inactive':
        return Colors.orange.shade500;
      case 'dormant':
        return Colors.red.shade500;
      default:
        return Colors.grey.shade500;
    }
  }

  String _formatDaysAgo(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date).inDays;
    return difference.toString();
  }
}

/// リテンション分析画面（フルスクリーン）
class RetentionDashboardScreen extends StatelessWidget {
  const RetentionDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('リテンション分析'),
      ),
      body: const RetentionDashboardWidget(),
    );
  }
}
