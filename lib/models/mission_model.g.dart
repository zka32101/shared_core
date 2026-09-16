// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Mission _$MissionFromJson(Map<String, dynamic> json) => _Mission(
  missionId: json['missionId'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  difficulty: $enumDecode(_$MissionDifficultyEnumMap, json['difficulty']),
  targetValue: (json['targetValue'] as num).toInt(),
  unit: json['unit'] as String,
  subject: json['subject'] as String?,
  requiredBadges: (json['requiredBadges'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  rewards: (json['rewards'] as List<dynamic>)
      .map((e) => MissionReward.fromJson(e as Map<String, dynamic>))
      .toList(),
  repeatable: json['repeatable'] as bool,
  enabled: json['enabled'] as bool? ?? false,
);

Map<String, dynamic> _$MissionToJson(_Mission instance) => <String, dynamic>{
  'missionId': instance.missionId,
  'title': instance.title,
  'description': instance.description,
  'difficulty': _$MissionDifficultyEnumMap[instance.difficulty]!,
  'targetValue': instance.targetValue,
  'unit': instance.unit,
  'subject': instance.subject,
  'requiredBadges': instance.requiredBadges,
  'rewards': instance.rewards,
  'repeatable': instance.repeatable,
  'enabled': instance.enabled,
};

const _$MissionDifficultyEnumMap = {
  MissionDifficulty.easy: 'easy',
  MissionDifficulty.normal: 'normal',
  MissionDifficulty.hard: 'hard',
  MissionDifficulty.veryhard: 'veryhard',
};

_MissionReward _$MissionRewardFromJson(Map<String, dynamic> json) =>
    _MissionReward(
      type: $enumDecode(_$RewardTypeEnumMap, json['type']),
      amount: (json['amount'] as num).toInt(),
      itemId: json['itemId'] as String?,
    );

Map<String, dynamic> _$MissionRewardToJson(_MissionReward instance) =>
    <String, dynamic>{
      'type': _$RewardTypeEnumMap[instance.type]!,
      'amount': instance.amount,
      'itemId': instance.itemId,
    };

const _$RewardTypeEnumMap = {
  RewardType.coins: 'coins',
  RewardType.badges: 'badges',
  RewardType.characterExp: 'characterExp',
  RewardType.items: 'items',
};

_UserMissionProgress _$UserMissionProgressFromJson(Map<String, dynamic> json) =>
    _UserMissionProgress(
      userId: json['userId'] as String,
      missionId: json['missionId'] as String,
      currentValue: (json['currentValue'] as num).toInt(),
      completed: json['completed'] as bool,
      lastResetDate: DateTime.parse(json['lastResetDate'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
    );

Map<String, dynamic> _$UserMissionProgressToJson(
  _UserMissionProgress instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'missionId': instance.missionId,
  'currentValue': instance.currentValue,
  'completed': instance.completed,
  'lastResetDate': instance.lastResetDate.toIso8601String(),
  'createdAt': instance.createdAt.toIso8601String(),
  'completedAt': instance.completedAt?.toIso8601String(),
};

_MissionListItem _$MissionListItemFromJson(Map<String, dynamic> json) =>
    _MissionListItem(
      mission: Mission.fromJson(json['mission'] as Map<String, dynamic>),
      progress: json['progress'] == null
          ? null
          : UserMissionProgress.fromJson(
              json['progress'] as Map<String, dynamic>,
            ),
      isLocked: json['isLocked'] as bool,
      progressPercentage: (json['progressPercentage'] as num).toDouble(),
    );

Map<String, dynamic> _$MissionListItemToJson(_MissionListItem instance) =>
    <String, dynamic>{
      'mission': instance.mission,
      'progress': instance.progress,
      'isLocked': instance.isLocked,
      'progressPercentage': instance.progressPercentage,
    };
