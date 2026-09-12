import 'dart:async';

import '../models/notification_model.dart';

typedef NotificationCallback = Future<void> Function(AppNotification);

/// リマインダーサービス - スケジュール通知を管理
class ReminderService {
  static final ReminderService _instance = ReminderService._internal();

  factory ReminderService() {
    return _instance;
  }

  ReminderService._internal() {
    _timers = <Timer>[];
  }

  late List<Timer> _timers;
  NotificationCallback? _onNotificationCallback;

  /// 通知コールバックを登録
  void setNotificationCallback(NotificationCallback callback) {
    _onNotificationCallback = callback;
  }

  /// 日次リマインダーをスケジュール
  Future<void> scheduleDailyReminder(
    TimeOfDay time,
    String userId,
  ) async {
    // 指定時刻の次の実行時間を計算
    final now = DateTime.now();
    var scheduledTime = DateTime(now.year, now.month, now.day, time.hour, time.minute);

    // 既に過ぎている場合は翌日に設定
    if (scheduledTime.isBefore(now)) {
      scheduledTime = scheduledTime.add(const Duration(days: 1));
    }

    final duration = scheduledTime.difference(now);

    _timers.add(
      Timer(duration, () async {
        final notification = AppNotification(
          id: 'daily_${DateTime.now().millisecondsSinceEpoch}',
          title: '学習リマインダー',
          body: '今日も頑張ろう！学習を開始しましょう。',
          type: 'daily_reminder',
          createdAt: DateTime.now(),
          isRead: false,
          data: {'userId': userId, 'type': 'daily_reminder'},
        );

        await _onNotificationCallback?.call(notification);

        // 次の日次リマインダーをスケジュール
        await scheduleDailyReminder(time, userId);
      }),
    );
  }

  /// 週次レポート通知をスケジュール
  Future<void> scheduleWeeklyReport(
    int dayOfWeek, // 0 = Sunday, 6 = Saturday
    TimeOfDay time,
    String userId,
  ) async {
    final now = DateTime.now();
    var scheduledTime = _getNextOccurrenceOfDayAndTime(now, dayOfWeek, time);

    final duration = scheduledTime.difference(now);

    _timers.add(
      Timer(duration, () async {
        final notification = AppNotification(
          id: 'weekly_report_${DateTime.now().millisecondsSinceEpoch}',
          title: '週次レポート準備完了',
          body: 'あなたの1週間の学習成果をチェックしましょう',
          type: 'weekly_summary',
          createdAt: DateTime.now(),
          isRead: false,
          data: {'userId': userId, 'type': 'weekly_summary'},
        );

        await _onNotificationCallback?.call(notification);

        // 次週のレポート通知をスケジュール
        await scheduleWeeklyReport(dayOfWeek, time, userId);
      }),
    );
  }

  /// アチーブメント通知（即座）
  Future<void> sendAchievementNotification(
    String userId,
    String badgeName,
  ) async {
    final notification = AppNotification(
      id: 'achievement_${DateTime.now().millisecondsSinceEpoch}',
      title: 'バッジ獲得！',
      body: '$badgeName バッジを獲得しました！',
      type: 'achievement',
      createdAt: DateTime.now(),
      isRead: false,
      data: {'userId': userId, 'badgeName': badgeName},
    );

    await _onNotificationCallback?.call(notification);
  }

  /// フレンドリクエスト通知（即座）
  Future<void> sendFriendRequestNotification(
    String userId,
    String friendName,
  ) async {
    final notification = AppNotification(
      id: 'friend_request_${DateTime.now().millisecondsSinceEpoch}',
      title: 'フレンドリクエスト',
      body: '$friendName があなたにフレンドリクエストを送りました',
      type: 'friend_request',
      createdAt: DateTime.now(),
      isRead: false,
      data: {'userId': userId, 'friendName': friendName},
    );

    await _onNotificationCallback?.call(notification);
  }

  /// エンゲージメントリマインダー（N日ぶりのログイン検出時）
  Future<void> sendEngagementReminder(
    String userId,
    int daysSinceLastLogin,
  ) async {
    final notification = AppNotification(
      id: 'engagement_${DateTime.now().millisecondsSinceEpoch}',
      title: 'お久しぶりです！',
      body: '$daysSinceLastLogin日ぶりのログインです。今日も一緒に学習しましょう。',
      type: 'engagement',
      createdAt: DateTime.now(),
      isRead: false,
      data: {
        'userId': userId,
        'daysSinceLastLogin': daysSinceLastLogin,
      },
    );

    await _onNotificationCallback?.call(notification);
  }

  /// すべてのタイマーをキャンセル
  void cancelAll() {
    for (final timer in _timers) {
      timer.cancel();
    }
    _timers.clear();
  }

  /// 特定のタイマーをキャンセル
  void cancelTimer(Timer timer) {
    if (_timers.contains(timer)) {
      timer.cancel();
      _timers.remove(timer);
    }
  }

  /// 指定された曜日と時刻の次の出現時間を計算
  DateTime _getNextOccurrenceOfDayAndTime(
    DateTime now,
    int dayOfWeek,
    TimeOfDay time,
  ) {
    var date = now;
    while (date.weekday % 7 != dayOfWeek) {
      date = date.add(const Duration(days: 1));
    }

    var scheduledTime = DateTime(
      date.year,
      date.month,
      date.day,
      time.hour,
      time.minute,
    );

    if (scheduledTime.isBefore(now)) {
      scheduledTime = scheduledTime.add(const Duration(days: 7));
    }

    return scheduledTime;
  }
}
