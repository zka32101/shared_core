import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/mission_model.dart';

/// デイリーミッションカード表示ウィジェット
class MissionCardWidget extends ConsumerWidget {
  final MissionListItem missionItem;
  final VoidCallback? onTap;

  const MissionCardWidget({
    Key? key,
    required this.missionItem,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mission = missionItem.mission;
    final progress = missionItem.progress;
    final progressPercentage = missionItem.progressPercentage;
    final isLocked = missionItem.isLocked;

    return GestureDetector(
      onTap: isLocked ? null : onTap,
      child: Card(
        color: isLocked ? Colors.grey[100] : Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ヘッダー（ロック状態・難易度）
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // タイトル
                        Text(
                          isLocked ? '🔒 ${mission.title}' : mission.title,
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: isLocked ? Colors.grey : Colors.black87,
                              ),
                        ),
                        const SizedBox(height: 4),
                        // 説明
                        Text(
                          mission.description,
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: isLocked ? Colors.grey : Colors.grey[600],
                              ),
                        ),
                      ],
                    ),
                  ),
                  // 難易度バッジ
                  _DifficultyBadge(difficulty: mission.difficulty),
                ],
              ),
              const SizedBox(height: 12),

              // 進捗バー
              if (!isLocked && progress != null)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // プログレスバー
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: LinearProgressIndicator(
                        value: (progressPercentage / 100).clamp(0, 1),
                        minHeight: 8,
                        backgroundColor: Colors.grey[200],
                        valueColor: AlwaysStoppedAnimation<Color>(
                          progress.completed ? Colors.green : Colors.blue,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),

                    // 進捗テキスト
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${progress.currentValue}/${mission.targetValue} ${mission.unit}',
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                        Text(
                          '${progressPercentage.toStringAsFixed(0)}%',
                          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                  ],
                ),

              const SizedBox(height: 12),

              // 報酬
              _RewardsRow(rewards: mission.rewards),

              // 完了ステータス
              if (!isLocked && progress?.completed == true)
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: Colors.green,
                        size: 20,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '達成済み！',
                        style: Theme.of(context).textTheme.labelMedium?.copyWith(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

/// 難易度バッジ
class _DifficultyBadge extends StatelessWidget {
  final MissionDifficulty difficulty;

  const _DifficultyBadge({required this.difficulty});

  @override
  Widget build(BuildContext context) {
    final (label, color) = _getDifficultyInfo();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: color,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }

  (String, Color) _getDifficultyInfo() {
    switch (difficulty) {
      case MissionDifficulty.easy:
        return ('簡単', Colors.green);
      case MissionDifficulty.normal:
        return ('普通', Colors.blue);
      case MissionDifficulty.hard:
        return ('難しい', Colors.orange);
      case MissionDifficulty.veryhard:
        return ('激難', Colors.red);
    }
  }
}

/// 報酬表示行
class _RewardsRow extends StatelessWidget {
  final List<MissionReward> rewards;

  const _RewardsRow({required this.rewards});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: rewards
          .map((reward) => _RewardChip(reward: reward))
          .toList(),
    );
  }
}

/// 報酬チップ
class _RewardChip extends StatelessWidget {
  final MissionReward reward;

  const _RewardChip({required this.reward});

  @override
  Widget build(BuildContext context) {
    final (icon, label, color) = _getRewardInfo();

    return Chip(
      avatar: CircleAvatar(
        backgroundColor: color,
        child: Text(icon, style: const TextStyle(fontSize: 16)),
      ),
      label: Text('$label ${reward.amount}'),
      backgroundColor: color.withOpacity(0.2),
    );
  }

  (String, String, Color) _getRewardInfo() {
    switch (reward.type) {
      case RewardType.coins:
        return ('💰', 'コイン', Colors.amber);
      case RewardType.badges:
        return ('🏆', 'バッジ', Colors.deepPurple);
      case RewardType.characterExp:
        return ('⭐', 'キャラ経験値', Colors.blue);
      case RewardType.items:
        return ('📦', 'アイテム', Colors.teal);
    }
  }
}
