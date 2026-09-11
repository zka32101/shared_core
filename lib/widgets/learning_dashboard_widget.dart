// 学習ダッシュボード UI（Phase 4.10）
//
// ホーム画面に表示する本日の学習指標のサマリーカード
// 正答率・学習時間・連続学習日数をビジュアル表示

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/learning_metrics.dart';
import '../providers/learning_metrics_provider.dart';

/// ホーム画面に表示する学習ダッシュボード
///
/// 本日の学習指標をコンパクトに表示します。
///
/// 使用例:
/// ```dart
/// Column(
///   children: [
///     LearningDashboardWidget(userId: currentUserId),
///     // ... 他のウィジェット
///   ],
/// )
/// ```
class LearningDashboardWidget extends ConsumerWidget {
  final String userId;
  final double? height;

  const LearningDashboardWidget({
    required this.userId,
    this.height = 180,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final metricsAsync = ref.watch(todayMetricsProvider(userId));
    final theme = Theme.of(context);

    return Container(
      height: height,
      padding: const EdgeInsets.all(16),
      child: metricsAsync.when(
        data: (metrics) => _buildContent(context, theme, metrics),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (err, stack) => Center(
          child: Text(
            'データ読み込みエラー',
            style: theme.textTheme.bodyMedium,
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context, ThemeData theme, LearningMetrics metrics) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [
              theme.primaryColor.withOpacity(0.8),
              theme.primaryColor.withOpacity(0.5),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // タイトル
            Text(
              '本日の学習進捗',
              style: theme.textTheme.titleMedium?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),

            // メトリクス表示行
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // 正答率
                  _buildMetricCard(
                    context: context,
                    label: '正答率',
                    value: '${(metrics.correctRate * 100).toStringAsFixed(0)}%',
                    icon: Icons.check_circle,
                    progress: metrics.correctRate,
                  ),

                  // 学習時間
                  _buildMetricCard(
                    context: context,
                    label: '学習時間',
                    value: '${metrics.studyTimeMinutes}分',
                    icon: Icons.access_time,
                    progress: (metrics.studyTimeMinutes / 60).clamp(0.0, 1.0),
                  ),

                  // 連続学習日数
                  _buildMetricCard(
                    context: context,
                    label: '連続学習',
                    value: '${metrics.streakDays}日',
                    icon: Icons.flame,
                    progress: (metrics.streakDays / 30).clamp(0.0, 1.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMetricCard({
    required BuildContext context,
    required String label,
    required String value,
    required IconData icon,
    required double progress,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // アイコン
        Icon(
          icon,
          color: Colors.white,
          size: 28,
        ),
        const SizedBox(height: 8),

        // 値
        Text(
          value,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),

        // ラベル
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: Colors.white70,
          ),
        ),
        const SizedBox(height: 8),

        // プログレスバー
        SizedBox(
          width: 40,
          height: 4,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(2),
            child: LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.white30,
              valueColor: AlwaysStoppedAnimation<Color>(
                Colors.white.withOpacity(0.8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

/// ミニダッシュボード版（コンパクトな表示）
///
/// ウィジェットツリーが複雑な場合は、この縮小版を使用
class CompactLearningDashboard extends ConsumerWidget {
  final String userId;

  const CompactLearningDashboard({
    required this.userId,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final metricsAsync = ref.watch(todayMetricsProvider(userId));

    return metricsAsync.when(
      data: (metrics) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildCompactStat(
              label: '正答率',
              value: '${(metrics.correctRate * 100).toStringAsFixed(0)}%',
              icon: Icons.check_circle_outline,
            ),
            _buildCompactStat(
              label: '時間',
              value: '${metrics.studyTimeMinutes}分',
              icon: Icons.timer_outlined,
            ),
            _buildCompactStat(
              label: '連続',
              value: '${metrics.streakDays}日',
              icon: Icons.local_fire_department_outlined,
            ),
          ],
        ),
      ),
      loading: () => const SizedBox(
        height: 40,
        child: Center(
          child: SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(strokeWidth: 2),
          ),
        ),
      ),
      error: (_, __) => const SizedBox.shrink(),
    );
  }

  Widget _buildCompactStat({
    required String label,
    required String value,
    required IconData icon,
  }) {
    return Column(
      children: [
        Icon(icon, size: 20),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: const TextStyle(fontSize: 10, color: Colors.grey),
        ),
      ],
    );
  }
}
