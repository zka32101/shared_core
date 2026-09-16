// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_mission_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DailyMission _$DailyMissionFromJson(Map<String, dynamic> json) =>
    _DailyMission(
      missionId: json['missionId'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      targetValue: (json['targetValue'] as num).toInt(),
      unit: json['unit'] as String,
      subject: json['subject'] as String,
      reward: MissionReward.fromJson(json['reward'] as Map<String, dynamic>),
      resetTime: DateTime.parse(json['resetTime'] as String),
      enabled: json['enabled'] as bool? ?? true,
      appIds:
          (json['appIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$DailyMissionToJson(_DailyMission instance) =>
    <String, dynamic>{
      'missionId': instance.missionId,
      'title': instance.title,
      'description': instance.description,
      'targetValue': instance.targetValue,
      'unit': instance.unit,
      'subject': instance.subject,
      'reward': instance.reward,
      'resetTime': instance.resetTime.toIso8601String(),
      'enabled': instance.enabled,
      'appIds': instance.appIds,
    };

_MissionReward _$MissionRewardFromJson(Map<String, dynamic> json) =>
    _MissionReward(
      type: $enumDecode(_$RewardTypeEnumMap, json['type']),
      amount: (json['amount'] as num).toInt(),
      itemId: json['itemId'] as String?,
      badgeId: json['badgeId'] as String?,
    );

Map<String, dynamic> _$MissionRewardToJson(_MissionReward instance) =>
    <String, dynamic>{
      'type': _$RewardTypeEnumMap[instance.type]!,
      'amount': instance.amount,
      'itemId': instance.itemId,
      'badgeId': instance.badgeId,
    };

const _$RewardTypeEnumMap = {
  RewardType.coins: 'coins',
  RewardType.badges: 'badges',
  RewardType.characterExp: 'characterExp',
  RewardType.items: 'items',
};

_DailyMissionProgress _$DailyMissionProgressFromJson(
  Map<String, dynamic> json,
) => _DailyMissionProgress(
  userId: json['userId'] as String,
  missionId: json['missionId'] as String,
  currentValue: (json['currentValue'] as num).toInt(),
  completed: json['completed'] as bool? ?? false,
  lastResetDate: DateTime.parse(json['lastResetDate'] as String),
  createdAt: DateTime.parse(json['createdAt'] as String),
  completedAt: json['completedAt'] == null
      ? null
      : DateTime.parse(json['completedAt'] as String),
);

Map<String, dynamic> _$DailyMissionProgressToJson(
  _DailyMissionProgress instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'missionId': instance.missionId,
  'currentValue': instance.currentValue,
  'completed': instance.completed,
  'lastResetDate': instance.lastResetDate.toIso8601String(),
  'createdAt': instance.createdAt.toIso8601String(),
  'completedAt': instance.completedAt?.toIso8601String(),
};

_DailyMissionListItem _$DailyMissionListItemFromJson(
  Map<String, dynamic> json,
) => _DailyMissionListItem(
  mission: DailyMission.fromJson(json['mission'] as Map<String, dynamic>),
  progress: DailyMissionProgress.fromJson(
    json['progress'] as Map<String, dynamic>,
  ),
  isLocked: json['isLocked'] as bool,
  progressPercentage: (json['progressPercentage'] as num).toInt(),
);

Map<String, dynamic> _$DailyMissionListItemToJson(
  _DailyMissionListItem instance,
) => <String, dynamic>{
  'mission': instance.mission,
  'progress': instance.progress,
  'isLocked': instance.isLocked,
  'progressPercentage': instance.progressPercentage,
};

_WeeklyBonus _$WeeklyBonusFromJson(Map<String, dynamic> json) => _WeeklyBonus(
  userId: json['userId'] as String,
  consecutiveDays: (json['consecutiveDays'] as num).toInt(),
  lastCompletionDate: DateTime.parse(json['lastCompletionDate'] as String),
  resetDate: DateTime.parse(json['resetDate'] as String),
  completionDaysOfWeek: (json['completionDaysOfWeek'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  bonusClaimedThisWeek: json['bonusClaimedThisWeek'] as bool? ?? false,
  totalWeeklyBonus: (json['totalWeeklyBonus'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$WeeklyBonusToJson(_WeeklyBonus instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'consecutiveDays': instance.consecutiveDays,
      'lastCompletionDate': instance.lastCompletionDate.toIso8601String(),
      'resetDate': instance.resetDate.toIso8601String(),
      'completionDaysOfWeek': instance.completionDaysOfWeek,
      'bonusClaimedThisWeek': instance.bonusClaimedThisWeek,
      'totalWeeklyBonus': instance.totalWeeklyBonus,
    };
