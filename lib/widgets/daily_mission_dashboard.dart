import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/daily_mission_model.dart';
import '../providers/daily_mission_provider.dart';
import '../theme/app_theme.dart';

/// Phase 4.5: デイリーミッション統一ダッシュボード
/// ミッション進捗・報酬・完了状況を一元表示
class DailyMissionDashboard extends ConsumerStatefulWidget {
  /// 表示用のアプリタイトル
  final String appTitle;

  /// アプリのプライマリカラー
  final Color primaryColor;

  /// フィルタ用の教科（nullですべて表示）
  final String? filterSubject;

  const DailyMissionDashboard({
    Key? key,
    this.appTitle = '小学コレ',
    this.primaryColor = const Color(0xFF6366F1),
    this.filterSubject,
  }) : super(key: key);

  @override
  ConsumerState<DailyMissionDashboard> createState() =>
      _DailyMissionDashboardState();
}

class _DailyMissionDashboardState extends ConsumerState<DailyMissionDashboard> {
  late String _userId;
  late String _appId;

  @override
  void initState() {
    super.initState();
    _userId = 'current_user'; // TODO: Auth から取得
    _appId = 'app'; // TODO: アプリIDを設定

    // ダッシュボード初期化時にミッションを読み込み
    Future.microtask(() {
      ref.read(dailyMissionProvider.notifier)
          .initializeDailyMissions(_userId, _appId);
    });
  }

  @override
  Widget build(BuildContext context) {
    final missionState = ref.watch(dailyMissionProvider);

    if (missionState.isLoading) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('デイリーミッション'),
          backgroundColor: widget.primaryColor,
        ),
        body: const Center(child: CircularProgressIndicator()),
      );
    }

    if (missionState.error != null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('デイリーミッション'),
          backgroundColor: widget.primaryColor,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 48, color: Colors.red),
              const SizedBox(height: 16),
              Text('エラー: ${missionState.error}'),
            ],
          ),
        ),
      );
    }

    final activeMissions =
        ref.watch(dailyMissionProvider.notifier).getActiveMissions();
    final todaysCoins = missionState.totalCoinsToday;

    return Scaffold(
      appBar: AppBar(
        title: const Text('デイリーミッション'),
        backgroundColor: widget.primaryColor,
        elevation: 0,
      ),
      body: CustomScrollView(
        slivers: [
          // 本日の報酬サマリー
          SliverToBoxAdapter(
            child: _TodaysRewardCard(
              totalCoins: todaysCoins,
              completedCount: activeMissions
                  .where((m) => m.progress.completed)
                  .length,
              totalCount: activeMissions.length,
              primaryColor: widget.primaryColor,
            ),
          ),
          const SliverPadding(padding: EdgeInsets.only(top: 8)),

          // ミッションリスト
          if (activeMissions.isEmpty)
            SliverFillRemaining(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.check_circle_outline,
                        size: 64, color: Colors.grey),
                    SizedBox(height: 16),
                    Text(
                      '本日のミッションはすべて完了！',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            )
          else
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final item = activeMissions[index];
                  return _MissionCard(
                    item: item,
                    onProgressUpdate: (value) async {
                      await ref
                          .read(dailyMissionProvider.notifier)
                          .updateDailyProgress(item.mission.missionId, value);
                    },
                    onComplete: () async {
                      await ref
                          .read(dailyMissionProvider.notifier)
                          .completeDailyMission(item.mission.missionId);
                    },
                    primaryColor: widget.primaryColor,
                  );
                },
                childCount: activeMissions.length,
              ),
            ),
          const SliverPadding(padding: EdgeInsets.only(bottom: 16)),
        ],
      ),
    );
  }
}

/// 本日の報酬サマリーカード
class _TodaysRewardCard extends StatelessWidget {
  final int totalCoins;
  final int completedCount;
  final int totalCount;
  final Color primaryColor;

  const _TodaysRewardCard({
    required this.totalCoins,
    required this.completedCount,
    required this.totalCount,
    required this.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    final completionPercent = totalCount > 0
        ? ((completedCount / totalCount) * 100).toInt()
        : 0;

    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            primaryColor,
            primaryColor.withOpacity(0.7),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: primaryColor.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '本日の報酬',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // コイン表示
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$totalCoins',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'コイン獲得',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              // 進捗バー
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '$completedCount/$totalCount',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 120,
                    height: 6,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(3),
                      child: LinearProgressIndicator(
                        value: completionPercent / 100,
                        backgroundColor: Colors.white24,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Colors.white.withOpacity(0.9),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    '$completionPercent%',
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// ミッション個別カード
class _MissionCard extends StatelessWidget {
  final DailyMissionListItem item;
  final Future<void> Function(int value) onProgressUpdate;
  final Future<void> Function() onComplete;
  final Color primaryColor;

  const _MissionCard({
    required this.item,
    required this.onProgressUpdate,
    required this.onComplete,
    required this.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    final mission = item.mission;
    final progress = item.progress;
    final isCompleted = progress.completed;
    final progressPercent =
        ((progress.currentValue / mission.targetValue) * 100).toInt();

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(
          color: isCompleted ? primaryColor : Colors.grey[300]!,
          width: isCompleted ? 2 : 1,
        ),
        borderRadius: BorderRadius.circular(8),
        color: isCompleted ? primaryColor.withOpacity(0.05) : Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ミッションタイトル
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    mission.title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: isCompleted ? primaryColor : Colors.black87,
                      decoration: isCompleted
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                ),
                if (isCompleted)
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      '完了',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 8),

            // ミッション説明
            Text(
              mission.description,
              style: TextStyle(
                fontSize: 13,
                color: Colors.grey[600],
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 12),

            // 進捗バー
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '進捗',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                    Text(
                      '${progress.currentValue}/${mission.targetValue} ${mission.unit}',
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: LinearProgressIndicator(
                    value: (progress.currentValue / mission.targetValue)
                        .clamp(0.0, 1.0),
                    minHeight: 8,
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation<Color>(
                      isCompleted ? primaryColor : Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),

            // 報酬と進捗ボタン
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // 報酬表示
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.amber[50],
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.monetization_on,
                          size: 16, color: Colors.amber),
                      const SizedBox(width: 4),
                      Text(
                        '${mission.reward.amount}',
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                        ),
                      ),
                    ],
                  ),
                ),
                // 完了ボタン
                if (!isCompleted)
                  ElevatedButton.icon(
                    onPressed: progressPercent >= 100
                        ? onComplete
                        : null,
                    icon: const Icon(Icons.check, size: 16),
                    label: const Text('完了'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      disabledBackgroundColor: Colors.grey[300],
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
