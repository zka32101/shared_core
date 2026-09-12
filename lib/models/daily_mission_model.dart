import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_mission_model.freezed.dart';
part 'daily_mission_model.g.dart';

// Reward type enumeration
enum RewardType { coins, badges, characterExp, items }

// Daily mission difficulty
enum MissionDifficulty { easy, normal, hard, veryhard }

/// Individual daily mission definition
@freezed
class DailyMission with _$DailyMission {
  const factory DailyMission({
    required String missionId,
    required String title,
    required String description,
    required int targetValue,
    required String unit,
    required String subject, // 'sansu', 'kokugo', 'eigo', 'rika', 'shakai', 'programming', 'doutoku'
    required MissionReward reward,
    required DateTime resetTime, // Unix timestamp for daily reset (5:00 AM default)
    @Default(true) bool enabled,
    @Default([]) List<String> appIds, // Target apps for this mission
  }) = _DailyMission;

  factory DailyMission.fromJson(Map<String, dynamic> json) =>
      _$DailyMissionFromJson(json);
}

/// Mission reward definition
@freezed
class MissionReward with _$MissionReward {
  const factory MissionReward({
    required RewardType type, // 'coins', 'badges', 'characterExp', 'items'
    required int amount,
    String? itemId, // For badges or items
    String? badgeId,
  }) = _MissionReward;

  factory MissionReward.fromJson(Map<String, dynamic> json) =>
      _$MissionRewardFromJson(json);
}

/// User's progress toward a daily mission
@freezed
class DailyMissionProgress with _$DailyMissionProgress {
  const factory DailyMissionProgress({
    required String userId,
    required String missionId,
    required int currentValue,
    @Default(false) bool completed,
    required DateTime lastResetDate,
    required DateTime createdAt,
    DateTime? completedAt,
  }) = _DailyMissionProgress;

  factory DailyMissionProgress.fromJson(Map<String, dynamic> json) =>
      _$DailyMissionProgressFromJson(json);
}

/// Daily mission state for UI display
@freezed
class DailyMissionListItem with _$DailyMissionListItem {
  const factory DailyMissionListItem({
    required DailyMission mission,
    required DailyMissionProgress progress,
    required bool isLocked,
    required int progressPercentage,
  }) = _DailyMissionListItem;

  factory DailyMissionListItem.fromJson(Map<String, dynamic> json) =>
      _$DailyMissionListItemFromJson(json);
}

/// Weekly bonus tracking for consecutive daily completions
@freezed
class WeeklyBonus with _$WeeklyBonus {
  const factory WeeklyBonus({
    required String userId,
    required int consecutiveDays, // 0-7
    required DateTime lastCompletionDate,
    required DateTime resetDate, // Reset every Sunday
    required List<int> completionDaysOfWeek, // [0=Mon, 1=Tue, ... 6=Sun]
    @Default(false) bool bonusClaimedThisWeek, // Whether 7-day bonus already claimed
    @Default(0) int totalWeeklyBonus, // Total bonus coins/rewards this week
  }) = _WeeklyBonus;

  factory WeeklyBonus.fromJson(Map<String, dynamic> json) =>
      _$WeeklyBonusFromJson(json);
}
