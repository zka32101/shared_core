import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/seasonal_event_model.dart';
import '../providers/seasonal_event_provider.dart';

/// シーズナルイベント表示ウィジェット
class SeasonalEventWidget extends ConsumerStatefulWidget {
  final String userId;
  final VoidCallback? onEventTapped;

  const SeasonalEventWidget({
    required this.userId,
    this.onEventTapped,
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<SeasonalEventWidget> createState() =>
      _SeasonalEventWidgetState();
}

class _SeasonalEventWidgetState extends ConsumerState<SeasonalEventWidget> {
  @override
  void initState() {
    super.initState();

    // 初期データ取得
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(seasonalEventProvider.notifier).fetchActiveEvents();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(seasonalEventProvider);
    final activeEvents = ref.watch(activeEventsProvider);

    if (state.isLoading && activeEvents.isEmpty) {
      return const _EventLoadingWidget();
    }

    if (activeEvents.isEmpty) {
      return const _NoEventWidget();
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...activeEvents.map((event) => _EventCard(
                event: event,
                userId: widget.userId,
                onTap: () {
                  ref.read(seasonalEventProvider.notifier).selectEvent(event.eventId);
                  widget.onEventTapped?.call();
                  _showEventDetail(context, event);
                },
              )),
          const SizedBox(width: 16),
        ],
      ),
    );
  }

  void _showEventDetail(BuildContext context, SeasonalEvent event) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => _EventDetailBottomSheet(
        event: event,
        userId: widget.userId,
      ),
    );
  }
}

/// イベントカード
class _EventCard extends ConsumerWidget {
  final SeasonalEvent event;
  final String userId;
  final VoidCallback onTap;

  const _EventCard({
    required this.event,
    required this.userId,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userProgress = ref.watch(eventProgressProvider(event.eventId));
    final isJoined = userProgress != null;

    return Container(
      width: 280,
      margin: const EdgeInsets.only(left: 16),
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          elevation: 4,
          child: Stack(
            children: [
              // イベント画像
              if (event.eventImageUrl != null)
                Container(
                  height: 140,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(12)),
                    image: DecorationImage(
                      image: NetworkImage(event.eventImageUrl!),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              else
                Container(
                  height: 140,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(12)),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.blue[400]!, Colors.purple[400]!],
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.celebration,
                      size: 48,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                ),

              // イベント情報
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        const BorderRadius.vertical(bottom: Radius.circular(12)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        event.eventName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        event.eventDescription,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '参加: ${event.currentParticipants}',
                            style: const TextStyle(fontSize: 12),
                          ),
                          if (isJoined)
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.green[100],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Text(
                                '参加中',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
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
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Text(
                                '参加可能',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // 終了間近バッジ
              if (_isEventEnding(event))
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      '終了間近',
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  bool _isEventEnding(SeasonalEvent event) {
    final now = DateTime.now();
    final daysUntilEnd = event.endDate.difference(now).inDays;
    return daysUntilEnd <= 3 && daysUntilEnd >= 0;
  }
}

/// イベント詳細ボトムシート
class _EventDetailBottomSheet extends ConsumerWidget {
  final SeasonalEvent event;
  final String userId;

  const _EventDetailBottomSheet({
    required this.event,
    required this.userId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userProgress = ref.watch(eventProgressProvider(event.eventId));
    final leaderboard = ref.watch(eventLeaderboardTop10Provider(event.eventId));
    final isJoined = userProgress != null;

    return DraggableScrollableSheet(
      expand: false,
      builder: (context, scrollController) => SingleChildScrollView(
        controller: scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // イベントヘッダー
            _EventHeader(event: event),

            // 参加ボタン
            if (!isJoined)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      ref
                          .read(seasonalEventProvider.notifier)
                          .joinEvent(userId, event.eventId);
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('イベントに参加しました')),
                      );
                    },
                    child: const Text('イベントに参加'),
                  ),
                ),
              ),

            // 報酬情報
            Padding(
              padding: const EdgeInsets.all(16),
              child: _RewardSection(rewards: event.rewards),
            ),

            // ユーザーの進捗（参加している場合）
            if (isJoined && userProgress != null)
              Padding(
                padding: const EdgeInsets.all(16),
                child: _ProgressSection(progress: userProgress),
              ),

            // イベントリーダーボード
            Padding(
              padding: const EdgeInsets.all(16),
              child: _LeaderboardSection(
                eventId: event.eventId,
                leaderboard: leaderboard,
              ),
            ),

            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class _EventHeader extends StatelessWidget {
  final SeasonalEvent event;

  const _EventHeader({required this.event});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: event.eventImageUrl != null
              ? Image.network(
                  event.eventImageUrl!,
                  fit: BoxFit.cover,
                )
              : Container(
                  color: Colors.blue[100],
                  child: const Center(
                    child: Icon(Icons.celebration, size: 64),
                  ),
                ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                event.eventName,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                event.eventDescription,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${event.startDate.toString().split(' ')[0]} 〜 ${event.endDate.toString().split(' ')[0]}',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Text(
                    '参加: ${event.currentParticipants}人',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _RewardSection extends StatelessWidget {
  final EventRewards rewards;

  const _RewardSection({required this.rewards});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'イベント報酬',
          style: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                const Icon(Icons.monetization_on, color: Colors.amber),
                const SizedBox(height: 4),
                Text(
                  '${rewards.coinReward}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'コイン',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            Column(
              children: [
                const Icon(Icons.trending_up, color: Colors.green),
                const SizedBox(height: 4),
                Text(
                  '${rewards.xpReward}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'XP',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            Column(
              children: [
                const Icon(Icons.card_giftcard, color: Colors.purple),
                const SizedBox(height: 4),
                Text(
                  '${rewards.badgeIds.length}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'バッジ',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class _ProgressSection extends StatelessWidget {
  final UserEventProgress progress;

  const _ProgressSection({required this.progress});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '進捗',
          style: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        LinearProgressIndicator(
          value: progress.progressPercentage / 100,
          minHeight: 8,
        ),
        const SizedBox(height: 8),
        Text(
          '${progress.progressPercentage.toStringAsFixed(1)}% 完了',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(height: 12),
        Text(
          'タスク: ${progress.tasksCompleted} 完了',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}

class _LeaderboardSection extends StatelessWidget {
  final String eventId;
  final List<EventLeaderboardEntry> leaderboard;

  const _LeaderboardSection({
    required this.eventId,
    required this.leaderboard,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'イベントランキング',
          style: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        if (leaderboard.isEmpty)
          Text(
            'ランキングデータはまだありません',
            style: Theme.of(context).textTheme.bodySmall,
          )
        else
          ...leaderboard.map((entry) => ListTile(
                leading: CircleAvatar(
                  child: Text('${entry.eventRank}'),
                ),
                title: Text(entry.displayName),
                trailing: Text(
                  '${entry.eventScore}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              )),
      ],
    );
  }
}

class _EventLoadingWidget extends StatelessWidget {
  const _EventLoadingWidget();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        height: 200,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

class _NoEventWidget extends StatelessWidget {
  const _NoEventWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        height: 120,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.event_note, size: 48, color: Colors.grey[400]),
              const SizedBox(height: 8),
              Text(
                '現在、実施中のイベントはありません',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
