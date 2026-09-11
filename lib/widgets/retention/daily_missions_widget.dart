import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/retention_model.dart';
import '../../providers/retention_providers.dart';

/// デイリーミッション表示ウィジェット
class DailyMissionsWidget extends ConsumerWidget {
  const DailyMissionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final missions = ref.watch(todayMissionsProvider);

    return missions.when(
      data: (missionsList) {
        if (missionsList.isEmpty) {
          return const SizedBox.shrink();
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'デイリーミッション',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            const SizedBox(height: 12),
            ...missionsList
                .map((mission) => _MissionCard(mission: mission))
                .toList(),
          ],
        );
      },
      loading: () => const Padding(
        padding: EdgeInsets.all(16),
        child: CircularProgressIndicator(),
      ),
      error: (err, stack) => Padding(
        padding: const EdgeInsets.all(16),
        child: Text('エラー: $err'),
      ),
    );
  }
}

/// デイリーミッションカード
class _MissionCard extends StatelessWidget {
  final DailyMission mission;

  const _MissionCard({required this.mission});

  @override
  Widget build(BuildContext context) {
    final progress =
        (mission.currentProgress / mission.targetValue).clamp(0.0, 1.0);
    final isCompleted = mission.isCompleted;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Card(
        elevation: isCompleted ? 0 : 2,
        color: isCompleted ? Colors.grey.shade100 : Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          mission.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: isCompleted
                                ? TextDecoration.lineThrough
                                : null,
                            color:
                                isCompleted ? Colors.grey : Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          mission.description,
                          style: TextStyle(
                            fontSize: 12,
                            color: isCompleted ? Colors.grey : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (!isCompleted)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.yellow.shade100,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        '+${mission.rewardCoins} 💰',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    )
                  else
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green.shade100,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Text(
                        '✓ 完了',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.green,
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 12),
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: LinearProgressIndicator(
                  value: progress,
                  minHeight: 8,
                  backgroundColor: Colors.grey.shade300,
                  valueColor:
                      AlwaysStoppedAnimation<Color>(
                        isCompleted ? Colors.green : Colors.blue,
                      ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '${mission.currentProgress}/${mission.targetValue}',
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
