import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/notification_model.dart';
import '../providers/notification_notifier.dart';

class NotificationSettingsScreen extends ConsumerStatefulWidget {
  final String userId;

  const NotificationSettingsScreen({
    Key? key,
    required this.userId,
  }) : super(key: key);

  @override
  ConsumerState<NotificationSettingsScreen> createState() =>
      _NotificationSettingsScreenState();
}

class _NotificationSettingsScreenState
    extends ConsumerState<NotificationSettingsScreen> {
  late TimeOfDay _quietStartTime;
  late TimeOfDay _quietEndTime;

  @override
  void initState() {
    super.initState();
    _quietStartTime = const TimeOfDay(hour: 21, minute: 0);
    _quietEndTime = const TimeOfDay(hour: 9, minute: 0);
  }

  @override
  Widget build(BuildContext context) {
    final prefs = ref.watch(
      notificationConfigProvider,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('通知設定'),
      ),
      body: prefs.when(
        data: (config) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildMasterToggle(config),
                  const SizedBox(height: 24),
                  _buildFrequencySettings(config),
                  const SizedBox(height: 24),
                  _buildNotificationTypeSettings(config),
                  const SizedBox(height: 24),
                  _buildQuietHoursSettings(),
                  const SizedBox(height: 24),
                  _buildSoundAndVibrationSettings(),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('エラー: $error')),
      ),
    );
  }

  Widget _buildMasterToggle(PushNotificationConfig config) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'プッシュ通知',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'すべての通知を有効/無効にする',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Switch(
                  value: config.enablePushNotifications,
                  onChanged: (value) {
                    // 実装: マスタートグル処理
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFrequencySettings(PushNotificationConfig config) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '通知頻度',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            SegmentedButton<NotificationFrequency>(
              segments: const [
                ButtonSegment(
                  value: NotificationFrequency.always,
                  label: Text('常に'),
                ),
                ButtonSegment(
                  value: NotificationFrequency.daily,
                  label: Text('毎日'),
                ),
                ButtonSegment(
                  value: NotificationFrequency.weekly,
                  label: Text('週1回'),
                ),
                ButtonSegment(
                  value: NotificationFrequency.never,
                  label: Text('なし'),
                ),
              ],
              selected: <NotificationFrequency>{
                NotificationFrequency.daily,
              },
              onSelectionChanged: (selected) {
                ref
                    .read(notificationNotifierProvider.notifier)
                    .updateNotificationFrequency(
                      userId: widget.userId,
                      frequency: selected.first,
                    );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNotificationTypeSettings(PushNotificationConfig config) {
    final types = [
      (NotificationType.dailyReminder, 'デイリーリマインダー'),
      (NotificationType.streakReminder, 'ストリークリマインダー'),
      (NotificationType.goalAchieved, 'ゴール達成'),
      (NotificationType.churnRiskWarning, 'チャーン警告'),
      (NotificationType.specialOffer, '特別オファー'),
      (NotificationType.seasonalEvent, '季節イベント'),
      (NotificationType.friendActivity, 'フレンド活動'),
      (NotificationType.achievementUnlocked, 'アチーブメント'),
    ];

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '通知タイプ',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            ...types.map((type) {
              return CheckboxListTile(
                title: Text(type.$2),
                value: config.enabledNotificationTypes[type.$1.name] ?? true,
                onChanged: (value) {
                  ref
                      .read(notificationNotifierProvider.notifier)
                      .toggleNotificationType(
                        userId: widget.userId,
                        type: type.$1,
                        enabled: value ?? false,
                      );
                },
              );
            }).toList(),
          ],
        ),
      ),
    );
  }

  Widget _buildQuietHoursSettings() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'サイレント時間',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('開始時刻'),
                      const SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () => _selectStartTime(context),
                        child: Text(_quietStartTime.format(context)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('終了時刻'),
                      const SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () => _selectEndTime(context),
                        child: Text(_quietEndTime.format(context)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              '${_quietStartTime.format(context)} - ${_quietEndTime.format(context)} の間、通知は来ません',
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSoundAndVibrationSettings() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '通知効果',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            SwitchListTile(
              title: const Text('サウンド'),
              subtitle: const Text('通知音を再生'),
              value: true,
              onChanged: (value) {
                ref
                    .read(notificationNotifierProvider.notifier)
                    .updateSoundSetting(
                      userId: widget.userId,
                      enabled: value,
                    );
              },
            ),
            SwitchListTile(
              title: const Text('振動'),
              subtitle: const Text('デバイスを振動'),
              value: true,
              onChanged: (value) {
                ref
                    .read(notificationNotifierProvider.notifier)
                    .updateVibrationSetting(
                      userId: widget.userId,
                      enabled: value,
                    );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _selectStartTime(BuildContext context) async {
    final selected = await showTimePicker(
      context: context,
      initialTime: _quietStartTime,
    );
    if (selected != null) {
      setState(() => _quietStartTime = selected);
      ref
          .read(notificationNotifierProvider.notifier)
          .setQuietHours(
            userId: widget.userId,
            startHour: selected.hour,
            endHour: _quietEndTime.hour,
          );
    }
  }

  void _selectEndTime(BuildContext context) async {
    final selected = await showTimePicker(
      context: context,
      initialTime: _quietEndTime,
    );
    if (selected != null) {
      setState(() => _quietEndTime = selected);
      ref
          .read(notificationNotifierProvider.notifier)
          .setQuietHours(
            userId: widget.userId,
            startHour: _quietStartTime.hour,
            endHour: selected.hour,
          );
    }
  }
}

// リテンション分析ダッシュボード
class RetentionAnalyticsDashboard extends ConsumerWidget {
  final String userId;

  const RetentionAnalyticsDashboard({
    Key? key,
    required this.userId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final metricsAsync = ref.watch(
      userRetentionMetricsProvider(userId),
    );

    return metricsAsync.when(
      data: (metrics) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('リテンション分析'),
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildMetricsCard(metrics),
                const SizedBox(height: 16),
                _buildRiskLevelCard(metrics),
                const SizedBox(height: 16),
                _buildRecommendedActionsCard(metrics),
              ],
            ),
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('エラー: $error')),
    );
  }

  Widget _buildMetricsCard(RetentionMetrics metrics) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '学習メトリクス',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      '${metrics.daysActive}',
                      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const Text('学習日数'),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '${metrics.consecutiveActiveStreak}',
                      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const Text('連続日数'),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '${metrics.daysSinceLastActive}',
                      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const Text('未活動日数'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRiskLevelCard(RetentionMetrics metrics) {
    final color = _getRiskLevelColor(metrics.riskLevel);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'チャーンリスク',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: color),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: color,
                    child: Text(
                      '${(metrics.churnRiskScore * 100).toInt()}%',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'リスクレベル: ${metrics.riskLevel}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '${metrics.notificationClickRate}/${metrics.totalNotificationsSent} クリック',
                        style: const TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecommendedActionsCard(RetentionMetrics metrics) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '推奨アクション',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            if (metrics.recommendedRetentionActions.isEmpty)
              const Text('推奨アクションはありません')
            else
              ...metrics.recommendedRetentionActions.map((action) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Row(
                    children: [
                      const Icon(Icons.check_circle, color: Colors.green),
                      const SizedBox(width: 8),
                      Text(action),
                    ],
                  ),
                );
              }).toList(),
          ],
        ),
      ),
    );
  }

  Color _getRiskLevelColor(String riskLevel) {
    switch (riskLevel) {
      case 'critical':
        return Colors.red;
      case 'high':
        return Colors.orange;
      case 'medium':
        return Colors.yellow;
      default:
        return Colors.green;
    }
  }
}
