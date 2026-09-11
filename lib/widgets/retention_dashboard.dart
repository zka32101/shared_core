import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/adaptive_difficulty_model.dart';
import '../models/retention_model.dart';
import '../providers/adaptive_difficulty_provider.dart';
import '../providers/retention_providers.dart';

/// 適応学習・リテンション統合ダッシュボード（Phase 4.19）
class RetentionOptimizationDashboard extends ConsumerWidget {
  final String userId;
  final String appId;

  const RetentionOptimizationDashboard({
    Key? key,
    required this.userId,
    required this.appId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final adaptiveDifficulty = ref.watch(
      adaptiveDifficultyNotifierProvider.select((n) => n),
    );

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('学習最適化ダッシュボード'),
          elevation: 0,
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.trending_up), text: '難易度'),
              Tab(icon: Icon(Icons.calendar_today), text: 'デイリー'),
              Tab(icon: Icon(Icons.analytics), text: '分析'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // タブ1: 適応難易度
            _AdaptiveDifficultyTab(
              userId: userId,
              appId: appId,
            ),
            // タブ2: デイリーミッション・ストリーク
            _DailyMissionTab(userId: userId),
            // タブ3: 分析・メトリクス
            _AnalyticsTab(userId: userId, appId: appId),
          ],
        ),
      ),
    );
  }
}

/// 適応難易度タブ
class _AdaptiveDifficultyTab extends ConsumerWidget {
  final String userId;
  final String appId;

  const _AdaptiveDifficultyTab({
    required this.userId,
    required this.appId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 難易度レベル表示
          Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '現在の難易度',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          '標準 (Normal)',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Text(
                        '推奨: やや難しい (Hard)',
                        style: TextStyle(color: Colors.orange),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          // 調整履歴
          Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '学習パフォーマンス',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  _PerformanceMetricRow(
                    label: '正答率',
                    value: '87.5%',
                    color: Colors.green,
                  ),
                  const SizedBox(height: 8),
                  _PerformanceMetricRow(
                    label: '問題完了数',
                    value: '42問',
                    color: Colors.blue,
                  ),
                  const SizedBox(height: 8),
                  _PerformanceMetricRow(
                    label: '平均回答時間',
                    value: '18秒/問',
                    color: Colors.purple,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// デイリーミッション・ストリークタブ
class _DailyMissionTab extends ConsumerWidget {
  final String userId;

  const _DailyMissionTab({required this.userId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todayMissionsAsync = ref.watch(todayMissionsProvider(userId));
    final streakDataAsync = ref.watch(streakDataProvider(userId));

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ストリーク表示
          streakDataAsync.when(
            data: (streak) => Card(
              elevation: 2,
              color: Colors.orange.shade50,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '学習ストリーク 🔥',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('現在: ${7}日連続'),
                            Text(
                              '最長: ${30}日',
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Text(
                            '+100 コイン/日',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            loading: () => const CircularProgressIndicator(),
            error: (_, __) => const Text('ストリークデータ取得エラー'),
          ),
          const SizedBox(height: 16),
          // デイリーミッション表示
          const Text(
            '今日のミッション',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          todayMissionsAsync.when(
            data: (missions) => Column(
              children: missions
                  .map((mission) => _MissionCard(mission: mission))
                  .toList(),
            ),
            loading: () => const CircularProgressIndicator(),
            error: (_, __) => const Text('ミッション取得エラー'),
          ),
        ],
      ),
    );
  }
}

/// 分析タブ
class _AnalyticsTab extends ConsumerWidget {
  final String userId;
  final String appId;

  const _AnalyticsTab({
    required this.userId,
    required this.appId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '学習分析',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  _AnalyticsItemRow(
                    icon: Icons.speed,
                    label: '学習速度',
                    value: '1.2x（標準比）',
                  ),
                  const SizedBox(height: 12),
                  _AnalyticsItemRow(
                    icon: Icons.trending_up,
                    label: '成長率',
                    value: '+5.3%/週',
                  ),
                  const SizedBox(height: 12),
                  _AnalyticsItemRow(
                    icon: Icons.star,
                    label: 'セッション数',
                    value: '24回/月',
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          // 推奨事項
          Card(
            elevation: 2,
            color: Colors.blue.shade50,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '💡 あなたへの推奨',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    '正答率が高いため、難易度を上げることをお勧めします。より挑戦的な問題に取り組むことで、スキル向上が期待できます。',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// パフォーマンスメトリック行
class _PerformanceMetricRow extends StatelessWidget {
  final String label;
  final String value;
  final Color color;

  const _PerformanceMetricRow({
    required this.label,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 4,
          ),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(
            value,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

/// ミッションカード
class _MissionCard extends StatelessWidget {
  final DailyMission mission;

  const _MissionCard({required this.mission});

  @override
  Widget build(BuildContext context) {
    final progress =
        (mission.currentProgress / mission.targetValue * 100).toInt();

    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  mission.title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    '+${mission.rewardCoins}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            LinearProgressIndicator(
              value: mission.currentProgress / mission.targetValue,
              minHeight: 6,
            ),
            const SizedBox(height: 4),
            Text(
              '${mission.currentProgress}/${mission.targetValue} ($progress%)',
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}

/// 分析アイテム行
class _AnalyticsItemRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _AnalyticsItemRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.blue),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label),
            Text(
              value,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
