import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/ab_test_model.dart';
import '../providers/ab_test_providers.dart';
import '../providers/ab_test_notifier.dart';

class ABTestDashboard extends ConsumerWidget {
  const ABTestDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final testResults = ref.watch(abTestResultsProvider);
    final populationStats = ref.watch(populationStatsProvider);

    return testResults.when(
      data: (results) => SingleChildScrollView(
        child: Column(
          children: [
            // 母集団統計
            populationStats.when(
              data: (stats) => _PopulationStatsCard(stats: stats),
              loading: () => const SizedBox.shrink(),
              error: (err, stack) => const SizedBox.shrink(),
            ),
            SizedBox(height: 24),

            // テスト結果カード
            if (results.isEmpty)
              Padding(
                padding: EdgeInsets.all(24),
                child: Text('No active tests'),
              )
            else
              ...results.entries.map((entry) => _TestResultCard(result: entry.value)).toList(),

            SizedBox(height: 24),
          ],
        ),
      ),
      loading: () => Center(child: CircularProgressIndicator()),
      error: (err, stack) => Center(child: Text('Error: $err')),
    );
  }
}

class _PopulationStatsCard extends StatelessWidget {
  final PopulationStats stats;

  const _PopulationStatsCard({required this.stats});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ユーザー母集団統計',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    )),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _StatTile('総ユーザー', '${stats.totalUsers}'),
                _StatTile('アクティブ', '${stats.activeUsers}'),
                _StatTile('チャーン率',
                    '${(stats.churnRate * 100).toStringAsFixed(1)}%'),
              ],
            ),
            SizedBox(height: 16),
            Text('セグメント分布:',
                style: TextStyle(fontWeight: FontWeight.bold)),
            ...stats.segmentDistribution.entries
                .map((e) => Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(e.key),
                      Text('${e.value}',
                          style: TextStyle(fontWeight: FontWeight.w600)),
                    ],
                  ),
                ))
                .toList(),
          ],
        ),
      ),
    );
  }
}

class _StatTile extends StatelessWidget {
  final String label;
  final String value;

  const _StatTile(this.label, this.value);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(label,
            style: TextStyle(fontSize: 12, color: Colors.grey)),
        SizedBox(height: 8),
        Text(value,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ],
    );
  }
}

class _TestResultCard extends StatelessWidget {
  final ABTestResult result;

  const _TestResultCard({required this.result});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${result.testId} - ${result.variant.name}',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _MetricTile('表示', '${result.impressions}'),
                _MetricTile('変換', '${result.conversions}'),
                _MetricTile('CVR',
                    '${(result.conversionRate * 100).toStringAsFixed(2)}%'),
                _MetricTile('売上', '¥${result.totalRevenue}'),
              ],
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _MetricTile('AOV',
                    '¥${result.averageOrderValue.toStringAsFixed(0)}'),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '更新: ${_formatTime(result.updatedAt)}',
                      style: TextStyle(fontSize: 11, color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _formatTime(DateTime dateTime) {
    final now = DateTime.now();
    final diff = now.difference(dateTime);

    if (diff.inMinutes < 1) {
      return 'just now';
    } else if (diff.inHours < 1) {
      return '${diff.inMinutes}m ago';
    } else if (diff.inDays < 1) {
      return '${diff.inHours}h ago';
    } else {
      return '${diff.inDays}d ago';
    }
  }
}

class _MetricTile extends StatelessWidget {
  final String label;
  final String value;

  const _MetricTile(this.label, this.value);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(label,
              style: TextStyle(fontSize: 11, color: Colors.grey)),
          SizedBox(height: 4),
          Text(value,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

// AB テスト実装例用のヘルパー
class ABTestEventRecorder {
  static Future<void> recordImpressionEvent(
    WidgetRef ref, {
    required String testId,
    required TestVariant variant,
  }) async {
    await ref.read(abTestNotifierProvider.notifier).recordTestEvent(
      testId: testId,
      variant: variant,
      metric: TestMetric.impression,
      value: 1,
    );
  }

  static Future<void> recordConversionEvent(
    WidgetRef ref, {
    required String testId,
    required TestVariant variant,
    required int revenue,
  }) async {
    await ref.read(abTestNotifierProvider.notifier).recordTestEvent(
      testId: testId,
      variant: variant,
      metric: TestMetric.conversion,
      value: revenue,
    );
  }
}
