// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_mission_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyMissionImpl _$$DailyMissionImplFromJson(Map<String, dynamic> json) =>
    _$DailyMissionImpl(
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

Map<String, dynamic> _$$DailyMissionImplToJson(_$DailyMissionImpl instance) =>
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

_$MissionRewardImpl _$$MissionRewardImplFromJson(Map<String, dynamic> json) =>
    _$MissionRewardImpl(
      type: $enumDecode(_$RewardTypeEnumMap, json['type']),
      amount: (json['amount'] as num).toInt(),
      itemId: json['itemId'] as String?,
      badgeId: json['badgeId'] as String?,
    );

Map<String, dynamic> _$$MissionRewardImplToJson(_$MissionRewardImpl instance) =>
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

_$DailyMissionProgressImpl _$$DailyMissionProgressImplFromJson(
  Map<String, dynamic> json,
) => _$DailyMissionProgressImpl(
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

Map<String, dynamic> _$$DailyMissionProgressImplToJson(
  _$DailyMissionProgressImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'missionId': instance.missionId,
  'currentValue': instance.currentValue,
  'completed': instance.completed,
  'lastResetDate': instance.lastResetDate.toIso8601String(),
  'createdAt': instance.createdAt.toIso8601String(),
  'completedAt': instance.completedAt?.toIso8601String(),
};

_$DailyMissionListItemImpl _$$DailyMissionListItemImplFromJson(
  Map<String, dynamic> json,
) => _$DailyMissionListItemImpl(
  mission: DailyMission.fromJson(json['mission'] as Map<String, dynamic>),
  progress: DailyMissionProgress.fromJson(
    json['progress'] as Map<String, dynamic>,
  ),
  isLocked: json['isLocked'] as bool,
  progressPercentage: (json['progressPercentage'] as num).toInt(),
);

Map<String, dynamic> _$$DailyMissionListItemImplToJson(
  _$DailyMissionListItemImpl instance,
) => <String, dynamic>{
  'mission': instance.mission,
  'progress': instance.progress,
  'isLocked': instance.isLocked,
  'progressPercentage': instance.progressPercentage,
};

_$WeeklyBonusImpl _$$WeeklyBonusImplFromJson(Map<String, dynamic> json) =>
    _$WeeklyBonusImpl(
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

Map<String, dynamic> _$$WeeklyBonusImplToJson(_$WeeklyBonusImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'consecutiveDays': instance.consecutiveDays,
      'lastCompletionDate': instance.lastCompletionDate.toIso8601String(),
      'resetDate': instance.resetDate.toIso8601String(),
      'completionDaysOfWeek': instance.completionDaysOfWeek,
      'bonusClaimedThisWeek': instance.bonusClaimedThisWeek,
      'totalWeeklyBonus': instance.totalWeeklyBonus,
    };
