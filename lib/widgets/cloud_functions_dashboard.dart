import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_core/models/cloud_functions_model.dart';
import 'package:shared_core/providers/cloud_functions_provider.dart';
import 'package:shared_core/providers/cloud_functions_notifier.dart';

class CloudFunctionsDashboard extends ConsumerWidget {
  const CloudFunctionsDashboard();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final segmentationResults = ref.watch(latestSegmentationResultsProvider);
    final churnPredictions = ref.watch(churnPredictionsProvider);
    final functionLogs = ref.watch(functionExecutionLogsProvider);
    final config = ref.watch(cloudFunctionsConfigProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Cloud Functions ダッシュボード'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 関数実行ボタン
            _FunctionExecutionButtons(ref: ref),
            SizedBox(height: 24),

            // セグメンテーション結果
            segmentationResults.when(
              data: (results) => _SegmentationResultsCard(results: results),
              loading: () => _LoadingCard(),
              error: (err, st) => Text('Error loading segmentation results'),
            ),
            SizedBox(height: 16),

            // チャーン予測
            churnPredictions.when(
              data: (predictions) =>
                  _ChurnPredictionsCard(predictions: predictions),
              loading: () => _LoadingCard(),
              error: (err, st) => Text('Error loading churn predictions'),
            ),
            SizedBox(height: 16),

            // 関数実行ログ
            functionLogs.when(
              data: (logs) => _FunctionExecutionLogsCard(logs: logs),
              loading: () => _LoadingCard(),
              error: (err, st) => Text('Error loading function logs'),
            ),
          ],
        ),
      ),
    );
  }
}

class _FunctionExecutionButtons extends ConsumerWidget {
  final WidgetRef ref;

  const _FunctionExecutionButtons({required this.ref});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('手動実行', style: Theme.of(context).textTheme.titleMedium),
        SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            ElevatedButton(
              onPressed: () {
                ref
                    .read(cloudFunctionsNotifier.notifier)
                    .executeWeeklyReportGeneration();
              },
              child: Text('週次レポート生成'),
            ),
            ElevatedButton(
              onPressed: () {
                ref
                    .read(cloudFunctionsNotifier.notifier)
                    .executeMonthlyReportGeneration();
              },
              child: Text('月次レポート生成'),
            ),
            ElevatedButton(
              onPressed: () {
                ref
                    .read(cloudFunctionsNotifier.notifier)
                    .executeUserSegmentation();
              },
              child: Text('セグメンテーション'),
            ),
            ElevatedButton(
              onPressed: () {
                ref
                    .read(cloudFunctionsNotifier.notifier)
                    .executeCohortAnalysis();
              },
              child: Text('コホート分析'),
            ),
            ElevatedButton(
              onPressed: () {
                ref
                    .read(cloudFunctionsNotifier.notifier)
                    .executeChurnPrediction();
              },
              child: Text('チャーン予測'),
            ),
          ],
        ),
      ],
    );
  }
}

class _SegmentationResultsCard extends StatelessWidget {
  final List<SegmentationResult> results;

  const _SegmentationResultsCard({required this.results});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('セグメンテーション結果',
                style: Theme.of(context).textTheme.titleMedium),
            SizedBox(height: 12),
            if (results.isEmpty)
              Text('セグメンテーション結果がありません')
            else
              ...results.take(10).map((result) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('${result.previousSegment} → ${result.newSegment}',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('スコア: ${result.engagementScore}'),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('チャーンリスク: ${(result.churnRiskScore * 100).toStringAsFixed(1)}%'),
                          Text(result.analyzedAt.toString().split('.')[0]),
                        ],
                      ),
                      Divider(),
                    ],
                  ),
                );
              }).toList(),
          ],
        ),
      ),
    );
  }
}

class _ChurnPredictionsCard extends StatelessWidget {
  final List<ChurnPrediction> predictions;

  const _ChurnPredictionsCard({required this.predictions});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('チャーン予測',
                style: Theme.of(context).textTheme.titleMedium),
            SizedBox(height: 12),
            if (predictions.isEmpty)
              Text('チャーン予測データがありません')
            else
              ...predictions.take(10).map((prediction) {
                final riskColor = prediction.riskLevel == 'critical'
                    ? Colors.red
                    : prediction.riskLevel == 'high'
                        ? Colors.orange
                        : Colors.yellow;

                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('ユーザーID: ${prediction.userId.substring(0, 8)}...'),
                          Chip(
                            label: Text(prediction.riskLevel.toUpperCase()),
                            backgroundColor:
                                riskColor.withOpacity(0.3),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Text(
                        'リスク: ${(prediction.churnRiskScore * 100).toStringAsFixed(1)}%',
                      ),
                      SizedBox(height: 4),
                      Text(
                        '予測チャーン日: ${prediction.predictedChurnDate.toString().split(' ')[0]}',
                        style: TextStyle(fontSize: 12),
                      ),
                      Divider(),
                    ],
                  ),
                );
              }).toList(),
          ],
        ),
      ),
    );
  }
}

class _FunctionExecutionLogsCard extends StatelessWidget {
  final List<FunctionExecutionLog> logs;

  const _FunctionExecutionLogsCard({required this.logs});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('関数実行ログ',
                style: Theme.of(context).textTheme.titleMedium),
            SizedBox(height: 12),
            if (logs.isEmpty)
              Text('実行ログがありません')
            else
              ...logs.take(10).map((log) {
                final statusColor = log.status == 'success'
                    ? Colors.green
                    : log.status == 'partial'
                        ? Colors.orange
                        : Colors.red;

                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(log.functionType.toString().split('.').last),
                          Chip(
                            label: Text(log.status.toUpperCase()),
                            backgroundColor:
                                statusColor.withOpacity(0.3),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '処理: ${log.processedUsers}, 失敗: ${log.failedUsers}',
                          ),
                          Text(
                            '${log.durationSeconds}秒',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      Divider(),
                    ],
                  ),
                );
              }).toList(),
          ],
        ),
      ),
    );
  }
}

class _LoadingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
