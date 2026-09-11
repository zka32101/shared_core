import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/mission_model.dart';
import '../providers/mission_provider.dart';
import '../config/app_colors.dart';

/// デイリーミッション統一表示ページ
/// 7つのアプリで統一されたミッション画面を提供
class DailyMissionPage extends ConsumerStatefulWidget {
  /// アプリの主要カラー（AppBar背景色など）
  final Color primaryColor;

  /// アプリ名（ヘッダー表示用）
  final String appTitle;

  /// フィルタリング用の教科（null の場合はすべて表示）
  final String? filterSubject;

  /// ミッション達成時のコールバック
  final Function(String missionId)? onMissionCompleted;

  const DailyMissionPage({
    Key? key,
    this.primaryColor = const Color(0xFF6366F1),
    this.appTitle = '小学コレ',
    this.filterSubject,
    this.onMissionCompleted,
  }) : super(key: key);

  @override
  ConsumerState<DailyMissionPage> createState() => _DailyMissionPageState();
}

class _DailyMissionPageState extends ConsumerState<DailyMissionPage> {
  late String _userId;

  @override
  void initState() {
    super.initState();
    _userId = 'current_user'; // TODO: 実装時に Auth から取得

    // ページ初期化時にミッションを読み込み
    Future.microtask(() {
      ref.read(missionProvider.notifier).initializeMissions(_userId);
    });
  }

  @override
  Widget build(BuildContext context) {
    final missionState = ref.watch(missionProvider);

    if (missionState.isLoading) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('デイリーミッション'),
          backgroundColor: widget.primaryColor,
          foregroundColor: Colors.white,
        ),
        body: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    if (missionState.error != null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('デイリーミッション'),
          backgroundColor: widget.primaryColor,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Text('エラーが発生しました: ${missionState.error}'),
        ),
      );
    }

    // フィルタリング
    final filteredMissions = missionState.missions
        .where((item) {
          if (widget.filterSubject == null) return true;
          return item.mission.subject == null ||
              item.mission.subject == widget.filterSubject;
        })
        .toList()
      ..sort((a, b) {
        // ロック状態でソート（ロック外れたものが先）
        if (a.isLocked != b.isLocked) {
          return a.isLocked ? 1 : -1;
        }
        // 難易度でソート
        return a.mission.difficulty.index
            .compareTo(b.mission.difficulty.index);
      });

    return Scaffold(
      appBar: AppBar(
        title: const Text('デイリーミッション'),
        backgroundColor: widget.primaryColor,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ヘッダー：本日の報酬サマリー
            Container(
              color: widget.primaryColor.withOpacity(0.1),
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '本日のミッション',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '達成でコインをゲット！',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            const Text('🪙 ', style: TextStyle(fontSize: 16)),
                            Text(
                              '${missionState.totalCoinsToday}',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  _buildProgressIndicator(missionState),
                ],
              ),
            ),
            const SizedBox(height: 8),

            // ミッションリスト
            if (filteredMissions.isEmpty)
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: Column(
                    children: [
                      const Text(
                        '😊',
                        style: TextStyle(fontSize: 48),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'ミッションがありません',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
              )
            else
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: filteredMissions.length,
                separatorBuilder: (_, __) =>
                    const Divider(height: 1, indent: 16, endIndent: 16),
                itemBuilder: (context, index) {
                  final item = filteredMissions[index];
                  return _MissionTile(
                    item: item,
                    primaryColor: widget.primaryColor,
                    onCompleted: () {
                      widget.onMissionCompleted?.call(item.mission.missionId);
                      // ミッション報酬を付与
                      ref
                          .read(missionProvider.notifier)
                          .awardMissionRewards(
                            userId: _userId,
                            missionId: item.mission.missionId,
                          )
                          .then((_) {
                        // 状態を再読込
                        ref
                            .read(missionProvider.notifier)
                            .initializeMissions(_userId);
                      });
                    },
                  );
                },
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressIndicator(MissionState state) {
    final completed = state.missions
        .where((m) => m.progress != null && m.progress!.completed)
        .length;
    final total = state.missions.where((m) => m.mission.enabled).length;

    if (total == 0) {
      return const SizedBox.shrink();
    }

    final progress = completed / total;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '進捗: $completed/$total',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Text(
              '${(progress * 100).toStringAsFixed(0)}%',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: LinearProgressIndicator(
            value: progress,
            minHeight: 8,
            backgroundColor: Colors.grey[300],
            valueColor:
                AlwaysStoppedAnimation<Color>(widget.primaryColor),
          ),
        ),
      ],
    );
  }
}

/// ミッション表示用タイル
class _MissionTile extends StatelessWidget {
  final MissionListItem item;
  final Color primaryColor;
  final VoidCallback? onCompleted;

  const _MissionTile({
    required this.item,
    required this.primaryColor,
    this.onCompleted,
  });

  @override
  Widget build(BuildContext context) {
    final mission = item.mission;
    final isCompleted = item.progress?.completed ?? false;
    final isLocked = item.isLocked;

    return Container(
      color: isCompleted
          ? primaryColor.withOpacity(0.05)
          : isLocked
              ? Colors.grey[100]
              : Colors.white,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        enabled: !isLocked,
        leading: _buildDifficultyIcon(mission.difficulty),
        title: Text(
          mission.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            decoration: isCompleted ? TextDecoration.lineThrough : null,
            color: isLocked ? Colors.grey : Colors.black,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Text(
              mission.description,
              style: TextStyle(
                color: isLocked ? Colors.grey : Colors.grey[600],
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 8),
            _buildProgressBar(mission, item.progress),
            const SizedBox(height: 8),
            _buildRewardChips(mission),
          ],
        ),
        trailing: isLocked
            ? Tooltip(
                message: '前提ミッションを完了してください',
                child: Icon(
                  Icons.lock,
                  color: Colors.grey[400],
                  size: 24,
                ),
              )
            : isCompleted
                ? Icon(
                    Icons.check_circle,
                    color: primaryColor,
                    size: 24,
                  )
                : ElevatedButton(
                    onPressed: onCompleted,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text('達成'),
                  ),
      ),
    );
  }

  Widget _buildDifficultyIcon(MissionDifficulty difficulty) {
    final emoji = {
      MissionDifficulty.easy: '🟢',
      MissionDifficulty.normal: '🟡',
      MissionDifficulty.hard: '🔴',
      MissionDifficulty.veryhard: '🟣',
    }[difficulty] ?? '⭕';

    return Text(
      emoji,
      style: const TextStyle(fontSize: 20),
    );
  }

  Widget _buildProgressBar(Mission mission, UserMissionProgress? progress) {
    if (progress == null) {
      return const SizedBox.shrink();
    }

    final percentage =
        (progress.currentValue / mission.targetValue).clamp(0, 1);

    return Row(
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: percentage,
              minHeight: 6,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(primaryColor),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Text(
          '${progress.currentValue}/${mission.targetValue}',
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildRewardChips(Mission mission) {
    return Wrap(
      spacing: 6,
      children: mission.rewards
          .map((reward) {
            final emoji = {
              RewardType.coins: '🪙',
              RewardType.badges: '🏆',
              RewardType.characterExp: '⭐',
              RewardType.items: '🎁',
            }[reward.type] ?? '✨';

            return Chip(
              label: Text(
                '$emoji ${reward.amount}',
                style: const TextStyle(fontSize: 11),
              ),
              backgroundColor: primaryColor.withOpacity(0.1),
              side: BorderSide.none,
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            );
          })
          .toList(),
    );
  }
}
