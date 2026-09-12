import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/weekly_bonus_provider.dart';
import '../config/app_colors.dart';

/// Weekly bonus progress widget showing consecutive day streak
class WeeklyBonusWidget extends ConsumerWidget {
  /// Primary color for the widget (defaults to app primary)
  final Color? primaryColor;

  /// Callback when bonus is claimed
  final Function(int coins)? onBonusClaimed;

  const WeeklyBonusWidget({
    Key? key,
    this.primaryColor,
    this.onBonusClaimed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weeklyBonusState = ref.watch(weeklyBonusProvider);
    final emojis = ref.watch(weekCompletionEmojisProvider);
    final canClaim = ref.watch(canClaimWeeklyBonusProvider);

    if (weeklyBonusState.currentBonus == null) {
      return const SizedBox.shrink();
    }

    final bonus = weeklyBonusState.currentBonus!;
    final consecutive = bonus.consecutiveDays;
    final targetDays = WeeklyBonusNotifier.CONSECUTIVE_DAYS_TARGET;
    final color = primaryColor ?? AppColors.primaryBlue;

    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with title and streak count
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.local_fire_department, color: Colors.orange, size: 24),
                    const SizedBox(width: 8),
                    Text(
                      '連続学習ボーナス',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: color,
                          ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    '$consecutive/$targetDays 日',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: color,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Week completion visual (emoji checkmarks)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(7, (index) {
                final dayNames = ['月', '火', '水', '木', '金', '土', '日'];
                return Column(
                  children: [
                    Text(
                      emojis[index],
                      style: const TextStyle(fontSize: 24),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      dayNames[index],
                      style: Theme.of(context).textTheme.caption?.copyWith(
                            fontSize: 10,
                          ),
                    ),
                  ],
                );
              }),
            ),
            const SizedBox(height: 16),

            // Progress bar
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: LinearProgressIndicator(
                value: consecutive / targetDays,
                minHeight: 8,
                backgroundColor: color.withOpacity(0.2),
                valueColor: AlwaysStoppedAnimation<Color>(color),
              ),
            ),
            const SizedBox(height: 12),

            // Bonus info and claim button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '7日連続達成で',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Row(
                        children: [
                          Text(
                            '${WeeklyBonusNotifier.WEEKLY_BONUS_COINS}',
                            style:
                                Theme.of(context).textTheme.titleMedium?.copyWith(
                                      color: Colors.amber,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            'コインボーナス！',
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  color: Colors.amber,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                if (canClaim)
                  ElevatedButton.icon(
                    onPressed: () => _claimBonus(context, ref),
                    icon: const Icon(Icons.card_giftcard),
                    label: const Text('受け取る'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: color,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                    ),
                  )
                else
                  Text(
                    '残り ${7 - consecutive} 日',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.grey,
                          fontStyle: FontStyle.italic,
                        ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _claimBonus(BuildContext context, WidgetRef ref) async {
    final coins = await ref
        .read(weeklyBonusProvider.notifier)
        .claimWeeklyBonus();

    if (coins > 0) {
      onBonusClaimed?.call(coins);

      // Show success snackbar
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('ボーナス $coins コイン受け取りました！'),
            backgroundColor: Colors.green,
            duration: const Duration(seconds: 2),
          ),
        );
      }
    }
  }
}

/// Compact version of weekly bonus widget for minimal space
class CompactWeeklyBonusWidget extends ConsumerWidget {
  final Color? primaryColor;
  final Function(int coins)? onBonusClaimed;

  const CompactWeeklyBonusWidget({
    Key? key,
    this.primaryColor,
    this.onBonusClaimed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final consecutive = ref.watch(consecutiveDaysProvider);
    final emojis = ref.watch(weekCompletionEmojisProvider);
    final canClaim = ref.watch(canClaimWeeklyBonusProvider);

    if (consecutive == 0) {
      return const SizedBox.shrink();
    }

    final color = primaryColor ?? AppColors.primaryBlue;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: color.withOpacity(0.05),
        border: Border.all(color: color.withOpacity(0.3), width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.local_fire_department, color: Colors.orange, size: 16),
          const SizedBox(width: 4),
          Text(
            '×$consecutive',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: color,
                  fontWeight: FontWeight.bold,
                ),
          ),
          if (canClaim) ...[
            const SizedBox(width: 8),
            GestureDetector(
              onTap: () => _claimBonus(context, ref),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  '受取',
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Future<void> _claimBonus(BuildContext context, WidgetRef ref) async {
    final coins = await ref
        .read(weeklyBonusProvider.notifier)
        .claimWeeklyBonus();

    if (coins > 0) {
      onBonusClaimed?.call(coins);
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('ボーナス $coins コイン！'),
            backgroundColor: Colors.green,
            duration: const Duration(seconds: 1),
          ),
        );
      }
    }
  }
}
