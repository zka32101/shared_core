import 'package:freezed_annotation/freezed_annotation.dart';

part 'seasonal_event_model.freezed.dart';
part 'seasonal_event_model.g.dart';

/// シーズナルイベント（7アプリ共通の期間限定イベント）
@freezed
class SeasonalEvent with _$SeasonalEvent {
  const factory SeasonalEvent({
    required String eventId,
    required String eventName,
    required String eventDescription,
    required String? eventImageUrl,       // イベント画像
    required EventType eventType,         // 季節 / 祝日 / 記念日
    required DateTime startDate,
    required DateTime endDate,
    required bool isActive,               // 現在進行中か
    required List<String> participatingApps, // 対象アプリ: ['kokugo', 'sansu', ...]
    required EventRewards rewards,
    required int maxParticipants,         // 参加上限（-1で無制限）
    required int currentParticipants,     // 現在の参加者数
    required bool requiresRegistration,   // 登録が必要か
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _SeasonalEvent;

  factory SeasonalEvent.fromJson(Map<String, dynamic> json) =>
      _$SeasonalEventFromJson(json);
}

enum EventType {
  spring,        // 春のイベント
  summer,        // 夏のイベント
  autumn,        // 秋のイベント
  winter,        // 冬のイベント
  goldenWeek,    // ゴールデンウィーク
  obon,          // お盆
  newYear,       // 正月
  valentine,     // バレンタイン
  halloween,     // ハロウィン
  christmas,     // クリスマス
  custom,        // カスタムイベント
}

/// イベント報酬
@freezed
class EventRewards with _$EventRewards {
  const factory EventRewards({
    required int coinReward,               // 獲得コイン
    required int xpReward,                 // 獲得経験値
    required List<String> badgeIds,        // 獲得可能なバッジ
    required List<String> characterIds,    // 獲得可能なキャラ
    required String? exclusiveItemId,      // 限定アイテム
    required bool doubleXpMultiplier,      // XP倍率の有効化
  }) = _EventRewards;

  factory EventRewards.fromJson(Map<String, dynamic> json) =>
      _$EventRewardsFromJson(json);
}

/// イベント参加ユーザーの進捗
@freezed
class UserEventProgress with _$UserEventProgress {
  const factory UserEventProgress({
    required String eventId,
    required String userId,
    required DateTime joinedAt,
    required int pointsEarned,             // イベント内で獲得したポイント
    required int tasksCompleted,           // 完了したタスク数
    required List<String> rewardsCollected, // 獲得した報酬ID
    required bool hasCompletedEvent,       // イベント完了判定
    required DateTime? completedAt,
    required double progressPercentage,    // 完了度（0-100）
  }) = _UserEventProgress;

  factory UserEventProgress.fromJson(Map<String, dynamic> json) =>
      _$UserEventProgressFromJson(json);
}

/// イベントタスク（イベント内で達成すべき小目標）
@freezed
class EventTask with _$EventTask {
  const factory EventTask({
    required String taskId,
    required String eventId,
    required String taskName,
    required String taskDescription,
    required TaskType taskType,            // quiz / mission / challenge / social
    required int requiredCount,            // 達成に必要な数（例：10問正解）
    required int rewardPoints,             // タスク達成時のポイント
    required int rewardCoins,              // タスク達成時のコイン
    required bool isRequired,              // イベント完了に必須か
    required DateTime createdAt,
  }) = _EventTask;

  factory EventTask.fromJson(Map<String, dynamic> json) =>
      _$EventTaskFromJson(json);
}

enum TaskType {
  quiz,          // クイズ
  mission,       // ミッション
  challenge,     // チャレンジ
  social,        // ソーシャル（フレンド絡み）
  achievement,   // 実績解除
}

/// イベントリーダーボード（イベント内での競争スコア）
@freezed
class EventLeaderboardEntry with _$EventLeaderboardEntry {
  const factory EventLeaderboardEntry({
    required String eventId,
    required String userId,
    required String displayName,
    required String? avatarUrl,
    required int eventScore,               // イベント内でのスコア
    required int eventRank,                // イベント内での順位
    required int pointsEarned,
    required List<String> tasksCompleted,
    required DateTime lastActivityAt,
  }) = _EventLeaderboardEntry;

  factory EventLeaderboardEntry.fromJson(Map<String, dynamic> json) =>
      _$EventLeaderboardEntryFromJson(json);
}

/// イベント統計情報
@freezed
class EventStats with _$EventStats {
  const factory EventStats({
    required String eventId,
    required int totalParticipants,
    required int totalPointsDistributed,
    required int averagePointsPerUser,
    required double completionRate,       // 完了率（パーセンテージ）
    required int mostEarnedRewardCount,
    required DateTime calculatedAt,
  }) = _EventStats;

  factory EventStats.fromJson(Map<String, dynamic> json) =>
      _$EventStatsFromJson(json);
}

/// イベント通知
@freezed
class EventNotification with _$EventNotification {
  const factory EventNotification({
    required String notificationId,
    required String eventId,
    required String title,
    required String message,
    required NotificationType notificationType,
    required DateTime scheduledAt,
    required bool isSent,
    required DateTime? sentAt,
  }) = _EventNotification;

  factory EventNotification.fromJson(Map<String, dynamic> json) =>
      _$EventNotificationFromJson(json);
}

enum NotificationType {
  eventStart,      // イベント開始通知
  eventEnding,     // イベント終了予告
  taskUnlocked,    // タスクアンロック
  rewardEarned,    // 報酬獲得
  leaderboardUpdate, // リーダーボード更新
}
