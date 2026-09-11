import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_core/models/push_notification_model.dart';
import 'package:shared_core/providers/push_notification_provider.dart';

/// ユーザーの通知設定を管理するウィジェット
class PushNotificationSettingsWidget extends ConsumerStatefulWidget {
  const PushNotificationSettingsWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<PushNotificationSettingsWidget> createState() =>
      _PushNotificationSettingsWidgetState();
}

class _PushNotificationSettingsWidgetState
    extends ConsumerState<PushNotificationSettingsWidget> {
  late bool _isEnabled;
  late Map<NotificationType, bool> _typeSettings;
  late bool _soundEnabled;
  late bool _vibrationEnabled;

  @override
  void initState() {
    super.initState();
    _initializeSettings();
  }

  void _initializeSettings() {
    final config = ref.read(notificationConfigProvider);
    if (config != null) {
      _isEnabled = config.isEnabled;
      _soundEnabled = config.soundEnabled;
      _vibrationEnabled = config.vibrationEnabled;
      _typeSettings = {
        for (final type in NotificationType.values)
          type: !(config.disabledTypes?.contains(type) ?? false),
      };
    } else {
      _isEnabled = true;
      _soundEnabled = true;
      _vibrationEnabled = true;
      _typeSettings = {for (final type in NotificationType.values) type: true};
    }
  }

  Future<void> _updateConfig() async {
    final disabledTypes = _typeSettings.entries
        .where((e) => !e.value)
        .map((e) => e.key)
        .toList();

    final newConfig = PushNotificationConfig(
      userId: '', // 実際の実装ではユーザーIDが設定される
      isEnabled: _isEnabled,
      eventNotificationsEnabled: _typeSettings[NotificationType.eventStart] ?? true,
      friendNotificationsEnabled:
          _typeSettings[NotificationType.friendRequest] ?? true,
      leaderboardNotificationsEnabled:
          _typeSettings[NotificationType.leaderboardUpdate] ?? true,
      dailyReminderEnabled:
          _typeSettings[NotificationType.dailyReminder] ?? true,
      streakReminderEnabled:
          _typeSettings[NotificationType.streakReminder] ?? true,
      reengagementEnabled:
          _typeSettings[NotificationType.reengagement] ?? true,
      soundEnabled: _soundEnabled,
      vibrationEnabled: _vibrationEnabled,
      disabledTypes: disabledTypes.isEmpty ? null : disabledTypes,
      updatedAt: DateTime.now(),
    );

    await ref
        .read(pushNotificationProvider.notifier)
        .updateNotificationConfig(newConfig);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildMainToggle(context),
          const SizedBox(height: 24),
          _buildNotificationTypeSettings(context),
          const SizedBox(height: 24),
          _buildAudioSettings(context),
          const SizedBox(height: 24),
          _buildActionButtons(context),
          const SizedBox(height: 24),
        ],
      ),
    );
  }

  Widget _buildMainToggle(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '通知を有効にする',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 4),
                Text(
                  'すべての通知を受け取ります',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            Switch(
              value: _isEnabled,
              onChanged: (value) {
                setState(() => _isEnabled = value);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNotificationTypeSettings(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            '通知の種類',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const SizedBox(height: 12),
        Card(
          child: Column(
            children: [
              _buildTypeSwitch(
                context,
                NotificationType.eventStart,
                'イベント開始',
                'イベント開始時の通知',
              ),
              _buildDivider(),
              _buildTypeSwitch(
                context,
                NotificationType.eventEnding,
                'イベント終了',
                'イベント終了間近の通知',
              ),
              _buildDivider(),
              _buildTypeSwitch(
                context,
                NotificationType.friendRequest,
                'フレンドリクエスト',
                '友達からのリクエスト通知',
              ),
              _buildDivider(),
              _buildTypeSwitch(
                context,
                NotificationType.leaderboardUpdate,
                'ランキング更新',
                'ランキング変動の通知',
              ),
              _buildDivider(),
              _buildTypeSwitch(
                context,
                NotificationType.dailyReminder,
                'デイリーリマインダー',
                '毎日の学習リマインダー',
              ),
              _buildDivider(),
              _buildTypeSwitch(
                context,
                NotificationType.streakReminder,
                '連続学習リマインダー',
                'ストリーク継続の励まし',
              ),
              _buildDivider(),
              _buildTypeSwitch(
                context,
                NotificationType.reward,
                '報酬獲得',
                'コインやバッジ獲得通知',
              ),
              _buildDivider(),
              _buildTypeSwitch(
                context,
                NotificationType.achievement,
                '達成通知',
                'マイルストーン達成通知',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTypeSwitch(
    BuildContext context,
    NotificationType type,
    String title,
    String subtitle,
  ) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.bodySmall,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Switch(
            value: _typeSettings[type] ?? true,
            onChanged: (value) {
              setState(() => _typeSettings[type] = value);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildAudioSettings(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            '音と振動',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const SizedBox(height: 12),
        Card(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '音を有効にする',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '通知時に音が再生されます',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                    Switch(
                      value: _soundEnabled,
                      onChanged: (value) {
                        setState(() => _soundEnabled = value);
                      },
                    ),
                  ],
                ),
              ),
              _buildDivider(),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '振動を有効にする',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '通知時に振動が鳴ります',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                    Switch(
                      value: _vibrationEnabled,
                      onChanged: (value) {
                        setState(() => _vibrationEnabled = value);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('キャンセル'),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: ElevatedButton(
              onPressed: () async {
                await _updateConfig();
                if (mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('設定を保存しました')),
                  );
                  Navigator.pop(context);
                }
              },
              child: const Text('保存'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Divider(height: 1, indent: 16, endIndent: 16);
  }
}

/// 通知設定画面（フルスクリーン）
class PushNotificationSettingsScreen extends StatelessWidget {
  const PushNotificationSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('通知設定'),
      ),
      body: const PushNotificationSettingsWidget(),
    );
  }
}
