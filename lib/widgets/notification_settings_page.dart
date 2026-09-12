// Notification Settings Page
// Phase 4.18: Push Notification & User Retention Strategy

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_core/models/push_notification_model.dart';
import 'package:shared_core/providers/push_notification_provider.dart';

class NotificationSettingsPage extends ConsumerStatefulWidget {
  final String userId;

  const NotificationSettingsPage({
    Key? key,
    required this.userId,
  }) : super(key: key);

  @override
  ConsumerState<NotificationSettingsPage> createState() =>
      _NotificationSettingsPageState();
}

class _NotificationSettingsPageState
    extends ConsumerState<NotificationSettingsPage> {
  @override
  void initState() {
    super.initState();
    // 通知設定を読み込み
    Future.microtask(() {
      ref
          .read(notificationSettingsProvider.notifier)
          .loadSettings(widget.userId);
    });
  }

  @override
  Widget build(BuildContext context) {
    final settings = ref.watch(notificationSettingsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('通知設定'),
        elevation: 0,
      ),
      body: settings == null
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.symmetric(vertical: 8),
              children: [
                // プッシュ通知の有効化
                _SwitchSettingTile(
                  title: 'プッシュ通知',
                  subtitle: 'アプリの重要な通知を受け取る',
                  value: settings.enablePushNotifications,
                  onChanged: (value) {
                    if (value) {
                      ref
                          .read(notificationSettingsProvider.notifier)
                          .enablePushNotifications();
                    } else {
                      ref
                          .read(notificationSettingsProvider.notifier)
                          .disablePushNotifications();
                    }
                  },
                ),

                // リテンション通知
                _SwitchSettingTile(
                  title: 'リテンション通知',
                  subtitle: '利用されていない場合にお知らせを送信',
                  value: settings.enableRetentionNotifications,
                  onChanged: (value) {
                    ref
                        .read(notificationSettingsProvider.notifier)
                        .setRetentionNotifications(value);
                  },
                ),

                // 達成通知
                _SwitchSettingTile(
                  title: '達成通知',
                  subtitle: 'バッジやマイルストーン達成時に通知',
                  value: settings.enableAchievementNotifications,
                  onChanged: (value) {
                    // 将来の実装向け
                  },
                ),

                // リマインダー通知
                _SwitchSettingTile(
                  title: 'リマインダー通知',
                  subtitle: '学習リマインダーを受け取る',
                  value: settings.enableReminderNotifications,
                  onChanged: (value) {
                    // 将来の実装向け
                  },
                ),

                // イベント通知
                _SwitchSettingTile(
                  title: 'イベント通知',
                  subtitle: 'キャンペーンやイベントのお知らせ',
                  value: settings.enableEventNotifications,
                  onChanged: (value) {
                    // 将来の実装向け
                  },
                ),

                const Divider(height: 32),

                // サウンド設定
                _SwitchSettingTile(
                  title: '通知音',
                  subtitle: '通知時に音声を再生',
                  value: settings.enableSound,
                  onChanged: (value) {
                    // 将来の実装向け
                  },
                ),

                // バイブレーション設定
                _SwitchSettingTile(
                  title: 'バイブレーション',
                  subtitle: '通知時に振動する',
                  value: settings.enableVibration,
                  onChanged: (value) {
                    // 将来の実装向け
                  },
                ),

                const Divider(height: 32),

                // サイレント時間設定
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'サイレント時間',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '${settings.quietHours[1]}:00 〜 ${settings.quietHours[0]}:00 の間は通知をオフ',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Colors.grey[600],
                            ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Expanded(
                            child: _TimePickerButton(
                              label: '開始時間',
                              time: settings.quietHours[1],
                              onChanged: (hour) {
                                ref
                                    .read(notificationSettingsProvider.notifier)
                                    .setQuietHours([
                                  settings.quietHours[0],
                                  hour,
                                ]);
                              },
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: _TimePickerButton(
                              label: '終了時間',
                              time: settings.quietHours[0],
                              onChanged: (hour) {
                                ref
                                    .read(notificationSettingsProvider.notifier)
                                    .setQuietHours([
                                  hour,
                                  settings.quietHours[1],
                                ]);
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 32),
              ],
            ),
    );
  }
}

class _SwitchSettingTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool value;
  final ValueChanged<bool> onChanged;

  const _SwitchSettingTile({
    required this.title,
    required this.subtitle,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      value: value,
      onChanged: onChanged,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    );
  }
}

class _TimePickerButton extends StatelessWidget {
  final String label;
  final int time;
  final ValueChanged<int> onChanged;

  const _TimePickerButton({
    required this.label,
    required this.time,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () async {
        final TimeOfDay? picked = await showTimePicker(
          context: context,
          initialTime: TimeOfDay(hour: time, minute: 0),
        );
        if (picked != null) {
          onChanged(picked.hour);
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.labelSmall,
          ),
          const SizedBox(height: 4),
          Text(
            '${time.toString().padLeft(2, '0')}:00',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}
