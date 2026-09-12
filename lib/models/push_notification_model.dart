// Push Notification & User Retention Models
// Phase 4.18: Push Notification & User Retention Strategy

import 'package:flutter/foundation.dart';

/// 通知ペイロード
class NotificationPayload {
  final String notificationId;
  final String userId;
  final String title;
  final String body;
  final String type; // 'retention', 'achievement', 'reminder', 'event'
  final Map<String, dynamic>? customData;
  final DateTime createdAt;
  final DateTime? scheduledAt;
  final bool isRead;
  final DateTime? readAt;

  NotificationPayload({
    required this.notificationId,
    required this.userId,
    required this.title,
    required this.body,
    required this.type,
    this.customData,
    required this.createdAt,
    this.scheduledAt,
    this.isRead = false,
    this.readAt,
  });

  NotificationPayload copyWith({
    String? notificationId,
    String? userId,
    String? title,
    String? body,
    String? type,
    Map<String, dynamic>? customData,
    DateTime? createdAt,
    DateTime? scheduledAt,
    bool? isRead,
    DateTime? readAt,
  }) {
    return NotificationPayload(
      notificationId: notificationId ?? this.notificationId,
      userId: userId ?? this.userId,
      title: title ?? this.title,
      body: body ?? this.body,
      type: type ?? this.type,
      customData: customData ?? this.customData,
      createdAt: createdAt ?? this.createdAt,
      scheduledAt: scheduledAt ?? this.scheduledAt,
      isRead: isRead ?? this.isRead,
      readAt: readAt ?? this.readAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'notificationId': notificationId,
      'userId': userId,
      'title': title,
      'body': body,
      'type': type,
      'customData': customData,
      'createdAt': createdAt.toIso8601String(),
      'scheduledAt': scheduledAt?.toIso8601String(),
      'isRead': isRead,
      'readAt': readAt?.toIso8601String(),
    };
  }

  factory NotificationPayload.fromMap(Map<String, dynamic> map) {
    return NotificationPayload(
      notificationId: map['notificationId'] as String,
      userId: map['userId'] as String,
      title: map['title'] as String,
      body: map['body'] as String,
      type: map['type'] as String,
      customData: map['customData'] as Map<String, dynamic>?,
      createdAt: DateTime.parse(map['createdAt'] as String),
      scheduledAt: map['scheduledAt'] != null
          ? DateTime.parse(map['scheduledAt'] as String)
          : null,
      isRead: map['isRead'] as bool? ?? false,
      readAt: map['readAt'] != null
          ? DateTime.parse(map['readAt'] as String)
          : null,
    );
  }
}

/// 通知スケジュール
class NotificationSchedule {
  final String scheduleId;
  final String userId;
  final String title;
  final String body;
  final String type;
  final DateTime startDate;
  final DateTime endDate;
  final List<int> scheduledHours; // [9, 19] for 9 AM, 7 PM
  final List<int> scheduledDaysOfWeek; // [1,2,3,4,5] for Mon-Fri
  final int frequencyIntervalDays;
  final bool isActive;
  final Map<String, dynamic>? customData;

  NotificationSchedule({
    required this.scheduleId,
    required this.userId,
    required this.title,
    required this.body,
    required this.type,
    required this.startDate,
    required this.endDate,
    required this.scheduledHours,
    required this.scheduledDaysOfWeek,
    required this.frequencyIntervalDays,
    this.isActive = true,
    this.customData,
  });

  NotificationSchedule copyWith({
    String? scheduleId,
    String? userId,
    String? title,
    String? body,
    String? type,
    DateTime? startDate,
    DateTime? endDate,
    List<int>? scheduledHours,
    List<int>? scheduledDaysOfWeek,
    int? frequencyIntervalDays,
    bool? isActive,
    Map<String, dynamic>? customData,
  }) {
    return NotificationSchedule(
      scheduleId: scheduleId ?? this.scheduleId,
      userId: userId ?? this.userId,
      title: title ?? this.title,
      body: body ?? this.body,
      type: type ?? this.type,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      scheduledHours: scheduledHours ?? this.scheduledHours,
      scheduledDaysOfWeek: scheduledDaysOfWeek ?? this.scheduledDaysOfWeek,
      frequencyIntervalDays: frequencyIntervalDays ?? this.frequencyIntervalDays,
      isActive: isActive ?? this.isActive,
      customData: customData ?? this.customData,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'scheduleId': scheduleId,
      'userId': userId,
      'title': title,
      'body': body,
      'type': type,
      'startDate': startDate.toIso8601String(),
      'endDate': endDate.toIso8601String(),
      'scheduledHours': scheduledHours,
      'scheduledDaysOfWeek': scheduledDaysOfWeek,
      'frequencyIntervalDays': frequencyIntervalDays,
      'isActive': isActive,
      'customData': customData,
    };
  }

  factory NotificationSchedule.fromMap(Map<String, dynamic> map) {
    return NotificationSchedule(
      scheduleId: map['scheduleId'] as String,
      userId: map['userId'] as String,
      title: map['title'] as String,
      body: map['body'] as String,
      type: map['type'] as String,
      startDate: DateTime.parse(map['startDate'] as String),
      endDate: DateTime.parse(map['endDate'] as String),
      scheduledHours: List<int>.from(map['scheduledHours'] as List),
      scheduledDaysOfWeek:
          List<int>.from(map['scheduledDaysOfWeek'] as List),
      frequencyIntervalDays: map['frequencyIntervalDays'] as int,
      isActive: map['isActive'] as bool? ?? true,
      customData: map['customData'] as Map<String, dynamic>?,
    );
  }
}

/// ユーザーリテンション指標
class RetentionMetrics {
  final String userId;
  final int consecutiveActiveDays; // 連続アクティブ日数
  final int totalActiveDays; // 累計アクティブ日数
  final int daysWithoutActivity; // 休止日数
  final double dailyActiveRate; // 日次アクティブ率 (0-1)
  final double weeklyRetentionRate; // 週次リテンション率
  final double monthlyRetentionRate; // 月次リテンション率
  final String riskLevel; // 'low', 'medium', 'high', 'critical'
  final int sessionCount; // セッション数
  final double averageSessionDurationMinutes; // 平均セッション時間
  final DateTime lastActiveAt;
  final DateTime analyzedAt;
  final List<String> churnIndicators; // チャーン予測指標
  final List<String> recommendedActions; // 推奨アクション

  RetentionMetrics({
    required this.userId,
    required this.consecutiveActiveDays,
    required this.totalActiveDays,
    required this.daysWithoutActivity,
    required this.dailyActiveRate,
    required this.weeklyRetentionRate,
    required this.monthlyRetentionRate,
    required this.riskLevel,
    required this.sessionCount,
    required this.averageSessionDurationMinutes,
    required this.lastActiveAt,
    required this.analyzedAt,
    required this.churnIndicators,
    required this.recommendedActions,
  });

  RetentionMetrics copyWith({
    String? userId,
    int? consecutiveActiveDays,
    int? totalActiveDays,
    int? daysWithoutActivity,
    double? dailyActiveRate,
    double? weeklyRetentionRate,
    double? monthlyRetentionRate,
    String? riskLevel,
    int? sessionCount,
    double? averageSessionDurationMinutes,
    DateTime? lastActiveAt,
    DateTime? analyzedAt,
    List<String>? churnIndicators,
    List<String>? recommendedActions,
  }) {
    return RetentionMetrics(
      userId: userId ?? this.userId,
      consecutiveActiveDays:
          consecutiveActiveDays ?? this.consecutiveActiveDays,
      totalActiveDays: totalActiveDays ?? this.totalActiveDays,
      daysWithoutActivity: daysWithoutActivity ?? this.daysWithoutActivity,
      dailyActiveRate: dailyActiveRate ?? this.dailyActiveRate,
      weeklyRetentionRate: weeklyRetentionRate ?? this.weeklyRetentionRate,
      monthlyRetentionRate:
          monthlyRetentionRate ?? this.monthlyRetentionRate,
      riskLevel: riskLevel ?? this.riskLevel,
      sessionCount: sessionCount ?? this.sessionCount,
      averageSessionDurationMinutes: averageSessionDurationMinutes ??
          this.averageSessionDurationMinutes,
      lastActiveAt: lastActiveAt ?? this.lastActiveAt,
      analyzedAt: analyzedAt ?? this.analyzedAt,
      churnIndicators: churnIndicators ?? this.churnIndicators,
      recommendedActions: recommendedActions ?? this.recommendedActions,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'consecutiveActiveDays': consecutiveActiveDays,
      'totalActiveDays': totalActiveDays,
      'daysWithoutActivity': daysWithoutActivity,
      'dailyActiveRate': dailyActiveRate,
      'weeklyRetentionRate': weeklyRetentionRate,
      'monthlyRetentionRate': monthlyRetentionRate,
      'riskLevel': riskLevel,
      'sessionCount': sessionCount,
      'averageSessionDurationMinutes': averageSessionDurationMinutes,
      'lastActiveAt': lastActiveAt.toIso8601String(),
      'analyzedAt': analyzedAt.toIso8601String(),
      'churnIndicators': churnIndicators,
      'recommendedActions': recommendedActions,
    };
  }

  factory RetentionMetrics.fromMap(Map<String, dynamic> map) {
    return RetentionMetrics(
      userId: map['userId'] as String,
      consecutiveActiveDays: map['consecutiveActiveDays'] as int,
      totalActiveDays: map['totalActiveDays'] as int,
      daysWithoutActivity: map['daysWithoutActivity'] as int,
      dailyActiveRate: (map['dailyActiveRate'] as num).toDouble(),
      weeklyRetentionRate: (map['weeklyRetentionRate'] as num).toDouble(),
      monthlyRetentionRate: (map['monthlyRetentionRate'] as num).toDouble(),
      riskLevel: map['riskLevel'] as String,
      sessionCount: map['sessionCount'] as int,
      averageSessionDurationMinutes:
          (map['averageSessionDurationMinutes'] as num).toDouble(),
      lastActiveAt: DateTime.parse(map['lastActiveAt'] as String),
      analyzedAt: DateTime.parse(map['analyzedAt'] as String),
      churnIndicators: List<String>.from(map['churnIndicators'] as List),
      recommendedActions: List<String>.from(map['recommendedActions'] as List),
    );
  }
}

/// 通知設定
class NotificationSettings {
  final String userId;
  final bool enablePushNotifications;
  final bool enableRetentionNotifications;
  final bool enableAchievementNotifications;
  final bool enableReminderNotifications;
  final bool enableEventNotifications;
  final List<int> quietHours; // [22, 8] for 10 PM - 8 AM
  final bool enableVibration;
  final bool enableSound;
  final DateTime updatedAt;

  NotificationSettings({
    required this.userId,
    this.enablePushNotifications = true,
    this.enableRetentionNotifications = true,
    this.enableAchievementNotifications = true,
    this.enableReminderNotifications = true,
    this.enableEventNotifications = true,
    required this.quietHours,
    this.enableVibration = true,
    this.enableSound = true,
    required this.updatedAt,
  });

  NotificationSettings copyWith({
    String? userId,
    bool? enablePushNotifications,
    bool? enableRetentionNotifications,
    bool? enableAchievementNotifications,
    bool? enableReminderNotifications,
    bool? enableEventNotifications,
    List<int>? quietHours,
    bool? enableVibration,
    bool? enableSound,
    DateTime? updatedAt,
  }) {
    return NotificationSettings(
      userId: userId ?? this.userId,
      enablePushNotifications:
          enablePushNotifications ?? this.enablePushNotifications,
      enableRetentionNotifications: enableRetentionNotifications ??
          this.enableRetentionNotifications,
      enableAchievementNotifications: enableAchievementNotifications ??
          this.enableAchievementNotifications,
      enableReminderNotifications:
          enableReminderNotifications ?? this.enableReminderNotifications,
      enableEventNotifications:
          enableEventNotifications ?? this.enableEventNotifications,
      quietHours: quietHours ?? this.quietHours,
      enableVibration: enableVibration ?? this.enableVibration,
      enableSound: enableSound ?? this.enableSound,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'enablePushNotifications': enablePushNotifications,
      'enableRetentionNotifications': enableRetentionNotifications,
      'enableAchievementNotifications': enableAchievementNotifications,
      'enableReminderNotifications': enableReminderNotifications,
      'enableEventNotifications': enableEventNotifications,
      'quietHours': quietHours,
      'enableVibration': enableVibration,
      'enableSound': enableSound,
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  factory NotificationSettings.fromMap(Map<String, dynamic> map) {
    return NotificationSettings(
      userId: map['userId'] as String,
      enablePushNotifications: map['enablePushNotifications'] as bool? ?? true,
      enableRetentionNotifications:
          map['enableRetentionNotifications'] as bool? ?? true,
      enableAchievementNotifications:
          map['enableAchievementNotifications'] as bool? ?? true,
      enableReminderNotifications:
          map['enableReminderNotifications'] as bool? ?? true,
      enableEventNotifications:
          map['enableEventNotifications'] as bool? ?? true,
      quietHours: List<int>.from(map['quietHours'] as List? ?? [22, 8]),
      enableVibration: map['enableVibration'] as bool? ?? true,
      enableSound: map['enableSound'] as bool? ?? true,
      updatedAt: DateTime.parse(map['updatedAt'] as String),
    );
  }
}
