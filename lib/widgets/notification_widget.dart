import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/notification_model.dart';
import '../providers/notification_provider.dart';

/// 通知バッジ（未読数表示）
class NotificationBadge extends ConsumerWidget {
  final Color? badgeColor;
  final TextStyle? textStyle;

  const NotificationBadge({
    this.badgeColor,
    this.textStyle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final unreadCount = ref.watch(unreadNotificationCountProvider);

    if (unreadCount == 0) {
      return const SizedBox.shrink();
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: badgeColor ?? Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        unreadCount > 99 ? '99+' : unreadCount.toString(),
        style: textStyle ??
            const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}

/// 通知リスト画面
class NotificationListPage extends ConsumerWidget {
  final Color? primaryColor;
  final Color? accentColor;

  const NotificationListPage({
    this.primaryColor,
    this.accentColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifications = ref.watch(notificationProvider);
    final stats = ref.watch(notificationStatsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('通知'),
        backgroundColor: primaryColor ?? Colors.blue,
        actions: [
          if (stats.unreadCount > 0)
            TextButton(
              onPressed: () {
                ref.read(notificationProvider.notifier).markAllAsRead();
              },
              child: const Text(
                'すべて既読',
                style: TextStyle(color: Colors.white),
              ),
            ),
        ],
      ),
      body: notifications.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.notifications_off,
                    size: 64,
                    color: Colors.grey[300],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '通知はまだありません',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            )
          : ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                final notification = notifications[index];
                return _NotificationTile(
                  notification: notification,
                  primaryColor: primaryColor,
                  accentColor: accentColor,
                );
              },
            ),
    );
  }
}

/// 通知タイル（個別通知表示）
class _NotificationTile extends ConsumerWidget {
  final AppNotification notification;
  final Color? primaryColor;
  final Color? accentColor;

  const _NotificationTile({
    required this.notification,
    this.primaryColor,
    this.accentColor,
    Key? key,
  }) : super(key: key);

  IconData _getIconForType(String type) {
    switch (type) {
      case 'daily_reminder':
        return Icons.schedule;
      case 'achievement':
        return Icons.emoji_events;
      case 'friend_request':
        return Icons.people;
      case 'weekly_summary':
        return Icons.assessment;
      case 'engagement':
        return Icons.notifications_active;
      default:
        return Icons.notifications;
    }
  }

  Color _getColorForType(String type) {
    switch (type) {
      case 'daily_reminder':
        return Colors.blue;
      case 'achievement':
        return Colors.amber;
      case 'friend_request':
        return Colors.purple;
      case 'weekly_summary':
        return Colors.green;
      case 'engagement':
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        if (!notification.isRead) {
          ref.read(notificationProvider.notifier).markAsRead(notification.id);
        }
      },
      child: Container(
        color: notification.isRead ? Colors.transparent : Colors.blue[50],
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // アイコン
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: _getColorForType(notification.type).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  _getIconForType(notification.type),
                  color: _getColorForType(notification.type),
                  size: 24,
                ),
              ),
              const SizedBox(width: 12),

              // テキスト
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      notification.title,
                      style: TextStyle(
                        fontWeight: notification.isRead
                            ? FontWeight.normal
                            : FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      notification.body,
                      style: Theme.of(context).textTheme.bodySmall,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      _formatTime(notification.createdAt),
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),

              // 削除ボタン
              PopupMenuButton<String>(
                onSelected: (value) {
                  if (value == 'delete') {
                    ref
                        .read(notificationProvider.notifier)
                        .removeNotification(notification.id);
                  }
                },
                itemBuilder: (BuildContext context) => [
                  const PopupMenuItem<String>(
                    value: 'delete',
                    child: Row(
                      children: [
                        Icon(Icons.delete, size: 18),
                        SizedBox(width: 8),
                        Text('削除'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _formatTime(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inMinutes < 1) {
      return '今';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes}分前';
    } else if (difference.inHours < 24) {
      return '${difference.inHours}時間前';
    } else if (difference.inDays < 7) {
      return '${difference.inDays}日前';
    } else {
      return '${dateTime.month}月${dateTime.day}日';
    }
  }
}

/// 通知設定画面
class NotificationSettingsPage extends ConsumerWidget {
  final Color? primaryColor;
  final Color? accentColor;

  const NotificationSettingsPage({
    this.primaryColor,
    this.accentColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final config = ref.watch(reminderConfigProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('通知設定'),
        backgroundColor: primaryColor ?? Colors.blue,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // 日次リマインダー
          Card(
            child: Column(
              children: [
                SwitchListTile(
                  title: const Text('日次リマインダー'),
                  subtitle: const Text('毎日同じ時刻にリマインダーを受け取る'),
                  value: config.enableDailyReminder,
                  onChanged: (value) {
                    ref
                        .read(reminderConfigProvider.notifier)
                        .setDailyReminderEnabled(value);
                  },
                ),
                if (config.enableDailyReminder)
                  ListTile(
                    title: const Text('リマインダー時刻'),
                    subtitle: Text(
                      config.dailyReminderTime.toIso8601String(),
                    ),
                    trailing: const Icon(Icons.access_time),
                    onTap: () async {
                      final time = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay(
                          hour: config.dailyReminderTime.hour,
                          minute: config.dailyReminderTime.minute,
                        ),
                      );
                      if (time != null) {
                        ref.read(reminderConfigProvider.notifier)
                            .setDailyReminderTime(
                          TimeOfDay(hour: time.hour, minute: time.minute),
                        );
                      }
                    },
                  ),
              ],
            ),
          ),
          const SizedBox(height: 16),

          // アチーブメント通知
          Card(
            child: SwitchListTile(
              title: const Text('アチーブメント通知'),
              subtitle: const Text('バッジ獲得時に通知を受け取る'),
              value: config.enableAchievementNotification,
              onChanged: (value) {
                ref
                    .read(reminderConfigProvider.notifier)
                    .setAchievementNotificationEnabled(value);
              },
            ),
          ),
          const SizedBox(height: 16),

          // フレンド通知
          Card(
            child: SwitchListTile(
              title: const Text('フレンド通知'),
              subtitle: const Text('フレンドリクエスト時に通知を受け取る'),
              value: config.enableFriendNotification,
              onChanged: (value) {
                ref
                    .read(reminderConfigProvider.notifier)
                    .setFriendNotificationEnabled(value);
              },
            ),
          ),
          const SizedBox(height: 16),

          // 週次レポート
          Card(
            child: Column(
              children: [
                SwitchListTile(
                  title: const Text('週次レポート通知'),
                  subtitle: const Text('毎週同じ曜日にレポートを受け取る'),
                  value: config.enableWeeklyReport,
                  onChanged: (value) {
                    // TODO: Implement toggle
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
