// Retention Metrics Dashboard
// Phase 4.18: Push Notification & User Retention Strategy

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_core/models/push_notification_model.dart';
import 'package:shared_core/providers/push_notification_provider.dart';

class RetentionDashboard extends ConsumerWidget {
  final String userId;

  const RetentionDashboard({
    Key? key,
    required this.userId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final metrics = ref.watch(userRetentionMetricsProvider);
    final userMetrics = metrics[userId];

    return Scaffold(
      appBar: AppBar(
        title: const Text('ユーザーリテンション分析'),
        elevation: 0,
      ),
      body: userMetrics == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                // リスクレベルインジケーター
                _RiskLevelCard(metrics: userMetrics),

                const SizedBox(height: 16),

                // 進行状況メトリクス
                _ProgressMetricsCard(metrics: userMetrics),

                const SizedBox(height: 16),

                // リテンション率
                _RetentionRatesCard(metrics: userMetrics),

                const SizedBox(height: 16),

                // セッション統計
                _SessionStatsCard(metrics: userMetrics),

                const SizedBox(height: 16),

                // チャーン予測指標
                _ChurnIndicatorsCard(metrics: userMetrics),

                const SizedBox(height: 16),

                // 推奨アクション
                _RecommendedActionsCard(metrics: userMetrics),

                const SizedBox(height: 32),
              ],
            ),
    );
  }
}

class _RiskLevelCard extends StatelessWidget {
  final RetentionMetrics metrics;

  const _RiskLevelCard({required this.metrics});

  @override
  Widget build(BuildContext context) {
    final riskColor = _getRiskColor(metrics.riskLevel);
    final riskLabel = _getRiskLabel(metrics.riskLevel);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'リスクレベル',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              decoration: BoxDecoration(
                color: riskColor.withOpacity(0.1),
                border: Border.all(color: riskColor),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                riskLabel,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: riskColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'リスクスコア: ${(metrics.consecutiveActiveDays / 30 * 100).toStringAsFixed(1)}%',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }

  Color _getRiskColor(String riskLevel) {
    switch (riskLevel) {
      case 'low':
        return Colors.green;
      case 'medium':
        return Colors.orange;
      case 'high':
        return Colors.red;
      case 'critical':
        return Colors.deepOrange;
      default:
        return Colors.grey;
    }
  }

  String _getRiskLabel(String riskLevel) {
    switch (riskLevel) {
      case 'low':
        return '低リスク 👍';
      case 'medium':
        return '中リスク ⚠️';
      case 'high':
        return '高リスク ❌';
      case 'critical':
        return 'クリティカル 🚨';
      default:
        return '不明';
    }
  }
}

class _ProgressMetricsCard extends StatelessWidget {
  final RetentionMetrics metrics;

  const _ProgressMetricsCard({required this.metrics});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '進行状況メトリクス',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            _MetricRow(
              label: '連続アクティブ日数',
              value: '${metrics.consecutiveActiveDays} 日',
            ),
            const SizedBox(height: 8),
            _MetricRow(
              label: '累計アクティブ日数',
              value: '${metrics.totalActiveDays} 日',
            ),
            const SizedBox(height: 8),
            _MetricRow(
              label: '休止日数',
              value: '${metrics.daysWithoutActivity} 日',
            ),
            const SizedBox(height: 8),
            _MetricRow(
              label: '現在のレベル',
              value: 'Lv. ${(metrics.sessionCount / 10).toStringAsFixed(0)}',
            ),
          ],
        ),
      ),
    );
  }
}

class _RetentionRatesCard extends StatelessWidget {
  final RetentionMetrics metrics;

  const _RetentionRatesCard({required this.metrics});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'リテンション率',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            _ProgressIndicatorMetric(
              label: '日次リテンション率',
              percentage: metrics.dailyActiveRate,
            ),
            const SizedBox(height: 12),
            _ProgressIndicatorMetric(
              label: '週次リテンション率',
              percentage: metrics.weeklyRetentionRate,
            ),
            const SizedBox(height: 12),
            _ProgressIndicatorMetric(
              label: '月次リテンション率',
              percentage: metrics.monthlyRetentionRate,
            ),
          ],
        ),
      ),
    );
  }
}

class _SessionStatsCard extends StatelessWidget {
  final RetentionMetrics metrics;

  const _SessionStatsCard({required this.metrics});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'セッション統計',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            _MetricRow(
              label: 'セッション数',
              value: '${metrics.sessionCount} 回',
            ),
            const SizedBox(height: 8),
            _MetricRow(
              label: '平均セッション時間',
              value: '${metrics.averageSessionDurationMinutes.toStringAsFixed(1)} 分',
            ),
            const SizedBox(height: 8),
            _MetricRow(
              label: '最後のアクティブ',
              value: _formatDateTime(metrics.lastActiveAt),
            ),
          ],
        ),
      ),
    );
  }

  String _formatDateTime(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inDays == 0) {
      return '本日';
    } else if (difference.inDays == 1) {
      return '昨日';
    } else if (difference.inDays < 7) {
      return '${difference.inDays} 日前';
    } else {
      return '${(difference.inDays / 7).floor()} 週前';
    }
  }
}

class _ChurnIndicatorsCard extends StatelessWidget {
  final RetentionMetrics metrics;

  const _ChurnIndicatorsCard({required this.metrics});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'チャーン予測指標',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 12),
            if (metrics.churnIndicators.isEmpty)
              Text(
                'チャーンリスク指標なし ✅',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.green,
                      fontWeight: FontWeight.w500,
                    ),
              )
            else
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: metrics.churnIndicators
                    .map(
                      (indicator) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Row(
                          children: [
                            const Text('⚠️ ', style: TextStyle(fontSize: 16)),
                            Expanded(
                              child: Text(
                                indicator,
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
          ],
        ),
      ),
    );
  }
}

class _RecommendedActionsCard extends StatelessWidget {
  final RetentionMetrics metrics;

  const _RecommendedActionsCard({required this.metrics});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '推奨アクション',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 12),
            if (metrics.recommendedActions.isEmpty)
              Text(
                'アクション不要',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.green,
                    ),
              )
            else
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: metrics.recommendedActions
                    .map(
                      (action) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                              color: Colors.blue.withOpacity(0.3),
                            ),
                          ),
                          child: Row(
                            children: [
                              const Text('💡', style: TextStyle(fontSize: 14)),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  action,
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
          ],
        ),
      ),
    );
  }
}

class _MetricRow extends StatelessWidget {
  final String label;
  final String value;

  const _MetricRow({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
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

class _ProgressIndicatorMetric extends StatelessWidget {
  final String label;
  final double percentage;

  const _ProgressIndicatorMetric({
    required this.label,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '${(percentage * 100).toStringAsFixed(1)}%',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
        const SizedBox(height: 6),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: LinearProgressIndicator(
            value: percentage,
            minHeight: 8,
            backgroundColor: Colors.grey[300],
            valueColor: AlwaysStoppedAnimation<Color>(
              percentage > 0.7
                  ? Colors.green
                  : percentage > 0.4
                      ? Colors.orange
                      : Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}
