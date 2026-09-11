import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/global_leaderboard_model.dart';
import '../providers/global_leaderboard_provider.dart';

/// 統一グローバルリーダーボード画面
class GlobalLeaderboardPage extends ConsumerStatefulWidget {
  final String userId;

  const GlobalLeaderboardPage({
    required this.userId,
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<GlobalLeaderboardPage> createState() =>
      _GlobalLeaderboardPageState();
}

class _GlobalLeaderboardPageState extends ConsumerState<GlobalLeaderboardPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  String? _selectedApp;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(_onTabChanged);

    // 初期データ取得
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(globalLeaderboardProvider.notifier)
          .fetchGlobalLeaderboard();
    });
  }

  @override
  void dispose() {
    _tabController.removeListener(_onTabChanged);
    _tabController.dispose();
    super.dispose();
  }

  void _onTabChanged() {
    final notifier = ref.read(globalLeaderboardProvider.notifier);

    switch (_tabController.index) {
      case 0:
        notifier.fetchGlobalLeaderboard();
        break;
      case 1:
        notifier.fetchWeeklyLeaderboard();
        break;
      case 2:
        notifier.fetchMonthlyLeaderboard();
        break;
      case 3:
        notifier.fetchFriendsLeaderboard();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(globalLeaderboardProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('グローバルランキング'),
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'グローバル'),
            Tab(text: '週間'),
            Tab(text: '月間'),
            Tab(text: 'フレンド'),
          ],
        ),
      ),
      body: state.isLoading && state.entries.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : TabBarView(
              controller: _tabController,
              children: [
                _buildLeaderboardTab(state, context),
                _buildLeaderboardTab(state, context),
                _buildLeaderboardTab(state, context),
                _buildLeaderboardTab(state, context),
              ],
            ),
    );
  }

  Widget _buildLeaderboardTab(
    GlobalLeaderboardState state,
    BuildContext context,
  ) {
    if (state.error != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 48, color: Colors.red),
            const SizedBox(height: 16),
            Text(state.error ?? 'エラーが発生しました'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                ref
                    .read(globalLeaderboardProvider.notifier)
                    .fetchGlobalLeaderboard();
              },
              child: const Text('再試行'),
            ),
          ],
        ),
      );
    }

    if (state.entries.isEmpty) {
      return const Center(
        child: Text('ランキングデータがありません'),
      );
    }

    return RefreshIndicator(
      onRefresh: () async {
        await ref
            .read(globalLeaderboardProvider.notifier)
            .fetchGlobalLeaderboard();
      },
      child: ListView.builder(
        itemCount: state.entries.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return _buildStatsHeader(state);
          }

          final entry = state.entries[index - 1];
          final isCurrentUser = entry.userId == widget.userId;

          return _buildLeaderboardTile(entry, index, isCurrentUser, context);
        },
      ),
    );
  }

  Widget _buildStatsHeader(GlobalLeaderboardState state) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.grey[100],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (state.stats != null) ...[
            Text(
              '統計情報',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '総ユーザー数',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Text(
                      '${state.stats!.totalUsers}',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '平均スコア',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Text(
                      '${state.stats!.averageScore}',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '最高スコア',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Text(
                      '${state.stats!.topScore}',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildLeaderboardTile(
    UnifiedLeaderboardEntry entry,
    int index,
    bool isCurrentUser,
    BuildContext context,
  ) {
    final backgroundColor =
        isCurrentUser ? Colors.blue[50] : (index.isEven ? Colors.white : Colors.grey[50]);

    return GestureDetector(
      onTap: () => _showUserDetail(entry),
      child: Container(
        color: backgroundColor,
        child: ListTile(
          leading: CircleAvatar(
            child: Text(
              '${entry.globalRank}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          title: Row(
            children: [
              Expanded(
                child: Text(
                  entry.username,
                  style: TextStyle(
                    fontWeight: isCurrentUser ? FontWeight.bold : FontWeight.normal,
                    color: isCurrentUser ? Colors.blue : Colors.black,
                  ),
                ),
              ),
              if (entry.avatarUrl != null)
                CircleAvatar(
                  radius: 12,
                  backgroundImage: NetworkImage(entry.avatarUrl!),
                ),
            ],
          ),
          subtitle: Text(
            '${entry.totalCompletedStages} ステージクリア • 星 ${entry.totalStarsAcrossApps}',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '${entry.totalScore}',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                'パーセンタイル: ${entry.percentile.toStringAsFixed(1)}%',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.grey,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showUserDetail(UnifiedLeaderboardEntry entry) {
    showModalBottomSheet(
      context: context,
      builder: (context) => _UserDetailBottomSheet(
        entry: entry,
        userId: widget.userId,
      ),
    );
  }
}

/// ユーザー詳細情報ボトムシート
class _UserDetailBottomSheet extends ConsumerWidget {
  final UnifiedLeaderboardEntry entry;
  final String userId;

  const _UserDetailBottomSheet({
    required this.entry,
    required this.userId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userDetail = ref.watch(userLeaderboardDetailProvider(entry.userId));

    return userDetail.when(
      data: (detail) {
        if (detail == null) {
          return const SizedBox(
            height: 200,
            child: Center(child: Text('ユーザー情報が見つかりません')),
          );
        }

        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ヘッダー
              Container(
                padding: const EdgeInsets.all(16),
                color: Colors.blue[50],
                child: Row(
                  children: [
                    if (entry.avatarUrl != null)
                      CircleAvatar(
                        radius: 32,
                        backgroundImage: NetworkImage(entry.avatarUrl!),
                      )
                    else
                      CircleAvatar(
                        radius: 32,
                        child: Text(entry.username[0]),
                      ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            entry.username,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '順位: ${detail.globalRank}位 / レベル: ${detail.level}',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // 各アプリのスコア
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '各アプリのスコア',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 12),
                    ...entry.appScores.map((appScore) => _buildAppScoreRow(
                          context,
                          appScore,
                        )),
                  ],
                ),
              ),
              // 統計情報
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '統計情報',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('総スコア: ${detail.totalScore}'),
                        Text('連続プレイ: ${entry.consecutiveDaysPlaying}日'),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('勝率: ${detail.winRate.toStringAsFixed(1)}%'),
                        Text('登録日: ${detail.joinedAt.toString().split(' ')[0]}'),
                      ],
                    ),
                  ],
                ),
              ),
              // フレンド追加ボタン
              if (entry.userId != userId)
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: ElevatedButton(
                    onPressed: () {
                      // TODO: フレンド追加処理
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('フレンド申請を送信しました')),
                      );
                    },
                    child: const Text('フレンドに追加'),
                  ),
                ),
              const SizedBox(height: 16),
            ],
          ),
        );
      },
      loading: () => const SizedBox(
        height: 200,
        child: Center(child: CircularProgressIndicator()),
      ),
      error: (error, stack) => SizedBox(
        height: 200,
        child: Center(child: Text('エラー: $error')),
      ),
    );
  }

  Widget _buildAppScoreRow(BuildContext context, AppScore appScore) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(appScore.appName),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '${appScore.score}',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                '${appScore.completedStages} ステージ',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.grey,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
