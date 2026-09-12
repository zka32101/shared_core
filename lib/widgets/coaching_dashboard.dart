import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fl_chart/fl_chart.dart';
import '../models/coaching_model.dart';
import '../providers/coaching_provider.dart';

class CoachingDashboard extends ConsumerWidget {
  final String userId,
  final Color? primaryColor;
  
  const CoachingDashboard({
    required this.userId,
    this.primaryColor,
    Key? key,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final insightAsync = ref.watch(learningInsightProvider(userId));
    final advicesAsync = ref.watch(coachingAdvicesProvider(userId));
    final primaryColor = this.primaryColor ?? Theme.of(context).primaryColor;
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('AI コーチング'),
        centerTitle: true,
        elevation: 0,
      ),
      body: insightAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.error_outline, size: 64, color: Colors.grey[400]),
              const SizedBox(height: 16),
              const Text('データ読み込み失敗'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  ref.refresh(learningInsightProvider(userId));
                },
                child: const Text('再試行'),
              ),
            ],
          ),
        ),
        data: (insight) {
          if (insight == null) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.info_outline, size: 64, color: Colors.grey[400]),
                  const SizedBox(height: 16),
                  const Text('分析データがありません'),
                ],
              ),
            );
          }
          
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // コーチメッセージ
                _CoachGreetingCard(
                  insight: insight,
                  primaryColor: primaryColor,
                ),
                const SizedBox(height: 24),
                
                // 学習パターン
                _LearningPatternCard(
                  insight: insight,
                  primaryColor: primaryColor,
                ),
                const SizedBox(height: 24),
                
                // 得意・不得意分野
                _StrengthWeaknessCard(
                  insight: insight,
                  primaryColor: primaryColor,
                ),
                const SizedBox(height: 24),
                
                // AI アドバイス
                advicesAsync.when(
                  loading: () => const Center(child: CircularProgressIndicator()),
                  error: (error, stack) => const SizedBox.shrink(),
                  data: (advices) => _CoachingAdvicesCard(
                    advices: advices,
                    userId: userId,
                    primaryColor: primaryColor,
                  ),
                ),
                const SizedBox(height: 24),
                
                // トレンド分析
                _TrendAnalysisCard(
                  insight: insight,
                  primaryColor: primaryColor,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _CoachGreetingCard extends StatelessWidget {
  final LearningInsight insight;
  final Color primaryColor;
  
  const _CoachGreetingCard({
    required this.insight,
    required this.primaryColor,
    Key? key,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: primaryColor.withOpacity(0.1),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  '🤖',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'AI コーチより',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                        ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              _generateGreeting(insight),
              style: Theme.of(context).textTheme.bodyMedium,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
  
  String _generateGreeting(LearningInsight insight) {
    if (insight.overallLearningPattern == 'consistent') {
      return '継続的な学習、素晴らしいです！このペースを保つことが重要です。';
    } else if (insight.overallLearningPattern == 'bursty') {
      return '時々集中的に学んでいますね。もう少し定期的に学習してみてはいかがでしょう？';
    } else {
      return 'あなたのペースで少しずつ進めてください。毎日の積み重ねが大切です。';
    }
  }
}

class _LearningPatternCard extends StatelessWidget {
  final LearningInsight insight;
  final Color primaryColor;
  
  const _LearningPatternCard({
    required this.insight,
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
              '学習パターン',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _PatternScore(
                  label: '継続度',
                  score: ((insight.consistencyTrendScore + 1) / 2 * 100).toInt(),
                  emoji: '📅',
                ),
                _PatternScore(
                  label: 'エンゲージメント',
                  score: ((insight.engagementTrendScore + 1) / 2 * 100).toInt(),
                  emoji: '⚡',
                ),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'パターン: ${_getPatternName(insight.overallLearningPattern)}',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  String _getPatternName(String pattern) {
    switch (pattern) {
      case 'consistent':
        return '継続的学習 🟢';
      case 'bursty':
        return '集中的学習 🟡';
      default:
        return '不規則学習 🔴';
    }
  }
}

class _PatternScore extends StatelessWidget {
  final String label;
  final int score;
  final String emoji;
  
  const _PatternScore({
    required this.label,
    required this.score,
    required this.emoji,
    Key? key,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(emoji, style: const TextStyle(fontSize: 24)),
        const SizedBox(height: 8),
        Text(
          '$score%',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: Theme.of(context).textTheme.labelSmall,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class _StrengthWeaknessCard extends StatelessWidget {
  final LearningInsight insight;
  final Color primaryColor;
  
  const _StrengthWeaknessCard({
    required this.insight,
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
              '得意・不得意分野',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            _AreaList(
              title: '✅ 得意分野',
              items: insight.strengthAreas,
              color: Colors.green,
            ),
            const SizedBox(height: 12),
            _AreaList(
              title: '⚠️ 不得意分野',
              items: insight.weaknessAreas,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}

class _AreaList extends StatelessWidget {
  final String title;
  final List<String> items;
  final Color color;
  
  const _AreaList({
    required this.title,
    required this.items,
    required this.color,
    Key? key,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: items.isEmpty
              ? [
                  Chip(
                    label: Text('なし'),
                    backgroundColor: Colors.grey[200],
                  ),
                ]
              : items
                  .take(5)
                  .map((item) => Chip(
                        label: Text(item, style: const TextStyle(fontSize: 12)),
                        backgroundColor: color.withOpacity(0.2),
                        labelStyle: TextStyle(color: color),
                      ))
                  .toList(),
        ),
      ],
    );
  }
}

class _CoachingAdvicesCard extends ConsumerWidget {
  final List<CoachingAdvice> advices;
  final String userId;
  final Color primaryColor;
  
  const _CoachingAdvicesCard({
    required this.advices,
    required this.userId,
    required this.primaryColor,
    Key? key,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'AI からのアドバイス',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 16),
        if (advices.isEmpty)
          Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'アドバイスはありません',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          )
        else
          ...advices.take(3).map((advice) {
            final categoryEmoji = _getCategoryEmoji(advice.category);
            return GestureDetector(
              onTap: () {
                ref.read(coachingNotifierProvider.notifier).recordAdviceAction(
                      userId,
                      advice.adviceId,
                    );
              },
              child: Card(
                elevation: 2,
                margin: const EdgeInsets.only(bottom: 12),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(categoryEmoji, style: const TextStyle(fontSize: 20)),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              advice.title,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                          ),
                          if (advice.isActedUpon)
                            Icon(Icons.check_circle, color: Colors.green),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        advice.description,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: primaryColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          '💡 ${advice.actionableHint}',
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
      ],
    );
  }
  
  String _getCategoryEmoji(String category) {
    switch (category) {
      case 'weakness':
        return '🎯';
      case 'strength':
        return '⭐';
      case 'motivation':
        return '💪';
      case 'strategy':
        return '🎲';
      default:
        return '💡';
    }
  }
}

class _TrendAnalysisCard extends StatelessWidget {
  final LearningInsight insight;
  final Color primaryColor;
  
  const _TrendAnalysisCard({
    required this.insight,
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
               'トレンド分析',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 200,
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(show: true),
                  titlesData: FlTitlesData(
                    leftTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: true),
                    ),
                    bottomTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                  ),
                  borderData: FlBorderData(show: true),
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        FlSpot(0, (insight.consistencyTrendScore + 1) / 2 * 100),
                        FlSpot(1, (insight.engagementTrendScore + 1) / 2 * 100),
                      ],
                      isCurved: true,
                      color: primaryColor,
                      barWidth: 2,
                      dotData: const FlDotData(show: true),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              '推奨: ${insight.recommendedFocusArea}',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '改善予想日数: ${insight.estimatedDaysToImprovement}日',
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        ),
      ),
    );
  }
}
