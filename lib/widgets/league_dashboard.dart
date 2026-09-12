import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fl_chart/fl_chart.dart';
import '../models/league_model.dart';
import '../providers/multiplayer_league_provider.dart';

class LeagueDashboard extends ConsumerWidget {
  final String userId;
  final Color? primaryColor;
  
  const LeagueDashboard({
    required this.userId,
    this.primaryColor,
    Key? key,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userLeagueAsync = ref.watch(userLeagueProvider(userId));
    final primaryColor = this.primaryColor ?? Theme.of(context).primaryColor;
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('リーグ'),
        centerTitle: true,
        elevation: 0,
      ),
      body: userLeagueAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.error_outline, size: 64, color: Colors.grey[400]),
              const SizedBox(height: 16),
              const Text('リーグ情報の読み込みに失敗しました'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  ref.refresh(userLeagueProvider(userId));
                },
                child: const Text('再試行'),
              ),
            ],
          ),
        ),
        data: (userLeague) {
          if (userLeague == null) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.info_outline, size: 64, color: Colors.grey[400]),
                  const SizedBox(height: 16),
                  const Text('リーグに参加していません'),
                ],
              ),
            );
          }
          
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ティア＆ランク表示
                _TierBadgeCard(
                  userLeague: userLeague,
                  primaryColor: primaryColor,
                ),
                const SizedBox(height: 24),
                
                // リーグポイント進捗
                _LeaguePointsCard(
                  userLeague: userLeague,
                  primaryColor: primaryColor,
                ),
                const SizedBox(height: 24),
                
                // 昇格状況（昇格中の場合のみ表示）
                if (userLeague.isPromo)
                  _PromotionProgressCard(
                    userLeague: userLeague,
                    primaryColor: primaryColor,
                  ),
                
                if (userLeague.isPromo)
                  const SizedBox(height: 24),
                
                // ティアランキング
                _LeagueRankingCard(
                  tier: _tierToString(userLeague.tier),
                  primaryColor: primaryColor,
                ),
                const SizedBox(height: 24),
                
                // 統計情報
                _StatsCard(
                  userLeague: userLeague,
                  primaryColor: primaryColor,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
  
  String _tierToString(LeagueTier tier) {
    switch (tier) {
      case LeagueTier.bronze:
        return 'bronze';
      case LeagueTier.silver:
        return 'silver';
      case LeagueTier.gold:
        return 'gold';
      case LeagueTier.platinum:
        return 'platinum';
      case LeagueTier.diamond:
        return 'diamond';
      case LeagueTier.master:
        return 'master';
    }
  }
}

class _TierBadgeCard extends StatelessWidget {
  final UserLeague userLeague;
  final Color primaryColor;
  
  const _TierBadgeCard({
    required this.userLeague,
    required this.primaryColor,
    Key? key,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            _TierBadge(tier: userLeague.tier, size: 80),
            const SizedBox(height: 16),
            Text(
              '${_getTierName(userLeague.tier)} ${_getRankName(userLeague.rank)}',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              '総ランクポイント: ${userLeague.totalRankPoints}',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
  
  String _getTierName(LeagueTier tier) {
    switch (tier) {
      case LeagueTier.bronze:
        return 'ブロンズ';
      case LeagueTier.silver:
        return 'シルバー';
      case LeagueTier.gold:
        return 'ゴールド';
      case LeagueTier.platinum:
        return 'プラチナ';
      case LeagueTier.diamond:
        return 'ダイヤモンド';
      case LeagueTier.master:
        return 'マスター';
    }
  }
  
  String _getRankName(LeagueRank rank) {
    switch (rank) {
      case LeagueRank.iv:
        return 'Ⅳ';
      case LeagueRank.iii:
        return 'Ⅲ';
      case LeagueRank.ii:
        return 'Ⅱ';
      case LeagueRank.i:
        return 'Ⅰ';
    }
  }
}

class _TierBadge extends StatelessWidget {
  final LeagueTier tier;
  final double size;
  
  const _TierBadge({
    required this.tier,
    this.size = 60,
    Key? key,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _getTierColor(),
      ),
      child: Center(
        child: Text(
          _getTierEmoji(),
          style: TextStyle(fontSize: size * 0.4),
        ),
      ),
    );
  }
  
  Color _getTierColor() {
    switch (tier) {
      case LeagueTier.bronze:
        return const Color(0xFFCD7F32);
      case LeagueTier.silver:
        return const Color(0xFFC0C0C0);
      case LeagueTier.gold:
        return const Color(0xFFFFD700);
      case LeagueTier.platinum:
        return const Color(0xFFE5E4E2);
      case LeagueTier.diamond:
        return const Color(0xFF0EBFE9);
      case LeagueTier.master:
        return const Color(0xFF9400D3);
    }
  }
  
  String _getTierEmoji() {
    switch (tier) {
      case LeagueTier.bronze:
        return '🥉';
      case LeagueTier.silver:
        return '🥈';
      case LeagueTier.gold:
        return '🥇';
      case LeagueTier.platinum:
        return '💎';
      case LeagueTier.diamond:
        return '💠';
      case LeagueTier.master:
        return '👑';
    }
  }
}

class _LeaguePointsCard extends StatelessWidget {
  final UserLeague userLeague;
  final Color primaryColor;
  
  const _LeaguePointsCard({
    required this.userLeague,
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
              'リーグポイント',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 12),
            LinearProgressIndicator(
              value: userLeague.leaguePoints / 100,
              minHeight: 12,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation(primaryColor),
            ),
            const SizedBox(height: 8),
            Text(
              '${userLeague.leaguePoints}/100',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}

class _PromotionProgressCard extends StatelessWidget {
  final UserLeague userLeague;
  final Color primaryColor;
  
  const _PromotionProgressCard({
    required this.userLeague,
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
                Icon(Icons.trending_up, color: primaryColor),
                const SizedBox(width: 8),
                Text(
                  '昇格シリーズ進行中',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                3,
                (index) => Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: index < userLeague.promoProgress
                        ? primaryColor
                        : Colors.grey[300],
                  ),
                  child: Center(
                    child: Text(
                      '${index + 1}',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: index < userLeague.promoProgress
                            ? Colors.white
                            : Colors.grey[600],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'あと ${3 - userLeague.promoProgress} 勝で昇格',
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class _LeagueRankingCard extends ConsumerWidget {
  final String tier;
  final Color primaryColor;
  
  const _LeagueRankingCard({
    required this.tier,
    required this.primaryColor,
    Key? key,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rankingAsync = ref.watch(leagueRankingProvider(tier));
    
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ティアランキング',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            rankingAsync.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) => Text('ランキング読み込み失敗'),
              data: (ranking) {
                if (ranking.rankings.isEmpty) {
                  return Center(
                    child: Text(
                      'ランキングデータなし',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  );
                }
                
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: (ranking.rankings.length > 10 ? 10 : ranking.rankings.length),
                  itemBuilder: (context, index) {
                    final entry = ranking.rankings[index];
                    return _RankingTile(entry: entry);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _RankingTile extends StatelessWidget {
  final LeagueRankingEntry entry;
  
  const _RankingTile({required this.entry, Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          SizedBox(
            width: 40,
            child: Text(
              '${entry.position}',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  entry.userName,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  '勝率: ${(entry.winRate * 100).toStringAsFixed(1)}% (${entry.wins}勝)',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Text(
            '${entry.leaguePoints}pt',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}

class _StatsCard extends StatelessWidget {
  final UserLeague userLeague;
  final Color primaryColor;
  
  const _StatsCard({
    required this.userLeague,
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
              '統計情報',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            _StatRow(
              label: '総試合数',
              value: '${userLeague.wins + userLeague.losses}',
              context: context,
            ),
            _StatRow(
              label: '勝利数',
              value: '${userLeague.wins}',
              context: context,
              color: Colors.green,
            ),
            _StatRow(
              label: '敗北数',
              value: '${userLeague.losses}',
              context: context,
              color: Colors.red,
            ),
            _StatRow(
              label: '勝率',
              value: '${(userLeague.winRate * 100).toStringAsFixed(1)}%',
              context: context,
            ),
            _StatRow(
              label: '連勝中',
              value: '${userLeague.consecutiveWins}',
              context: context,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}

class _StatRow extends StatelessWidget {
  final String label;
  final String value;
  final BuildContext context;
  final Color? color;
  
  const _StatRow({
    required this.label,
    required this.value,
    required this.context,
    this.color,
    Key? key,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
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
                  color: color,
                ),
          ),
        ],
      ),
    );
  }
}
