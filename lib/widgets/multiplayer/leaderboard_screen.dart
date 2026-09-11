import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/multiplayer_model.dart';
import '../../providers/battle_session_provider.dart';

/// グローバル・教科別ランキング画面。
///
/// タブで複数のランキング（グローバル、教科別等）を切り替え表示できる。
class LeaderboardScreen extends ConsumerStatefulWidget {
  /// 初期表示タブ（0=グローバル, 1以降=教科別）
  final int initialTabIndex;

  /// 教科リスト（例: ['sansu', 'kokugo', 'eigo']）
  final List<String> subjects;

  /// ユーザープロフィールタップ時のコールバック
  final ValueChanged<String>? onUserTap;

  const LeaderboardScreen({
    this.initialTabIndex = 0,
    this.subjects = const ['sansu', 'kokugo', 'eigo', 'rika', 'shakai', 'programming', 'doutoku'],
    this.onUserTap,
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends ConsumerState<LeaderboardScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: widget.subjects.length + 1, // +1 for global tab
      initialIndex: widget.initialTabIndex,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('グローバルランキング'),
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: [
            const Tab(text: 'グローバル', icon: Icon(Icons.public)),
            for (final subject in widget.subjects)
              Tab(text: _subjectLabel(subject), icon: Icon(Icons.school)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _GlobalLeaderboardList(onUserTap: widget.onUserTap),
          for (final subject in widget.subjects)
            _SubjectLeaderboardList(
              subject: subject,
              onUserTap: widget.onUserTap,
            ),
        ],
      ),
    );
  }

  String _subjectLabel(String subject) {
    const labels = {
      'sansu': '算数',
      'kokugo': '国語',
      'eigo': '英語',
      'rika': '理科',
      'shakai': '社会',
      'programming': 'プログラミング',
      'doutoku': '道徳',
    };
    return labels[subject] ?? subject;
  }
}

/// グローバルランキング表示ウィジェット。
class _GlobalLeaderboardList extends ConsumerWidget {
  final ValueChanged<String>? onUserTap;

  const _GlobalLeaderboardList({this.onUserTap});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final leaderboardAsync = ref.watch(globalLeaderboardProvider);

    return leaderboardAsync.when(
      data: (entries) => _LeaderboardListView(
        entries: entries,
        onUserTap: onUserTap,
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, stack) => Center(
        child: Text('ランキング読み込みエラー: $err'),
      ),
    );
  }
}

/// 教科別ランキング表示ウィジェット。
class _SubjectLeaderboardList extends ConsumerWidget {
  final String subject;
  final ValueChanged<String>? onUserTap;

  const _SubjectLeaderboardList({
    required this.subject,
    this.onUserTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final leaderboardAsync = ref.watch(subjectLeaderboardProvider(subject));

    return leaderboardAsync.when(
      data: (entries) => _LeaderboardListView(
        entries: entries,
        onUserTap: onUserTap,
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, stack) => Center(
        child: Text('ランキング読み込みエラー: $err'),
      ),
    );
  }
}

/// ランキング一覧表示（共通ウィジェット）。
class _LeaderboardListView extends StatelessWidget {
  final List<LeaderboardEntry> entries;
  final ValueChanged<String>? onUserTap;

  const _LeaderboardListView({
    required this.entries,
    this.onUserTap,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        // アプリ側で実装（キャッシュの無効化等）
      },
      child: ListView.separated(
        itemCount: entries.length,
        separatorBuilder: (context, index) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final entry = entries[index];
          return _LeaderboardEntryTile(
            entry: entry,
            onTap: () => onUserTap?.call(entry.userId),
          );
        },
      ),
    );
  }
}

/// ランキング1行分のエントリ。
class _LeaderboardEntryTile extends StatelessWidget {
  final LeaderboardEntry entry;
  final VoidCallback? onTap;

  const _LeaderboardEntryTile({
    required this.entry,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: _RankBadge(rank: entry.rank),
      title: Text(
        entry.userName,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        '勝率: ${(entry.winRate * 100).toStringAsFixed(1)}% (${entry.wins}勝/${entry.totalMatches})',
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            '${entry.rating}',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: _getRatingColor(entry.rating),
                ),
          ),
          Text(
            'レート',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.grey[600],
                ),
          ),
        ],
      ),
      onTap: onTap,
    );
  }

  Color _getRatingColor(int rating) {
    if (rating >= 2000) return Colors.red[700]!;
    if (rating >= 1800) return Colors.orange;
    if (rating >= 1600) return Colors.green;
    if (rating >= 1400) return Colors.blue;
    return Colors.grey;
  }
}

/// 順位を表示するバッジ。
class _RankBadge extends StatelessWidget {
  final int rank;

  const _RankBadge({required this.rank});

  @override
  Widget build(BuildContext context) {
    Color badgeColor;
    String medalEmoji;

    if (rank == 1) {
      badgeColor = Colors.amber;
      medalEmoji = '🥇';
    } else if (rank == 2) {
      badgeColor = Colors.grey[400]!;
      medalEmoji = '🥈';
    } else if (rank == 3) {
      badgeColor = Colors.orange[300]!;
      medalEmoji = '🥉';
    } else if (rank <= 10) {
      badgeColor = Colors.lightBlue[300]!;
      medalEmoji = '#';
    } else {
      badgeColor = Colors.grey[300]!;
      medalEmoji = '#';
    }

    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: badgeColor,
      ),
      child: Center(
        child: rank <= 3
            ? Text(
                medalEmoji,
                style: const TextStyle(fontSize: 24),
              )
            : Text(
                '$rank',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
      ),
    );
  }
}

/// ユーザー詳細情報画面（オプション）。
class UserRankingDetailScreen extends ConsumerWidget {
  final String userId;

  const UserRankingDetailScreen({required this.userId, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userRatingAsync = ref.watch(userRatingProvider(userId));

    return Scaffold(
      appBar: AppBar(title: const Text('ユーザー詳細')),
      body: userRatingAsync.when(
        data: (rating) => SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // プロフィールセクション
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        rating.userId,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'レート: ${rating.rating.toStringAsFixed(1)}',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '信頼度 (RD): ${rating.ratingDeviation.toStringAsFixed(1)}',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.grey[600],
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // 統計情報セクション
              Text(
                '成績統計',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 12),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      _StatRow(
                        label: '総試合数',
                        value: '${rating.totalMatches}',
                      ),
                      const Divider(),
                      _StatRow(
                        label: '勝利数',
                        value: '${rating.winCount}',
                      ),
                      const Divider(),
                      _StatRow(
                        label: '敗北数',
                        value: '${rating.lossCount}',
                      ),
                      const Divider(),
                      _StatRow(
                        label: '勝率',
                        value: '${(rating.winRate * 100).toStringAsFixed(1)}%',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // メタ情報
              Text(
                '情報',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 12),
              Text(
                '最終更新: ${rating.lastUpdatedAt.toLocal().toString().substring(0, 16)}',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.grey[600],
                    ),
              ),
              const SizedBox(height: 8),
              Text(
                'レーティング方式: ${rating.system.name.toUpperCase()}',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.grey[600],
                    ),
              ),
            ],
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('エラー: $err')),
      ),
    );
  }
}

/// 統計情報行。
class _StatRow extends StatelessWidget {
  final String label;
  final String value;

  const _StatRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label),
        Text(
          value,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ],
    );
  }
}
