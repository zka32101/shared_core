// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retention_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyMissionImpl _$$DailyMissionImplFromJson(Map<String, dynamic> json) =>
    _$DailyMissionImpl(
      id: json['id'] as String,
      type: $enumDecode(_$MissionTypeEnumMap, json['type']),
      title: json['title'] as String,
      description: json['description'] as String,
      targetValue: (json['targetValue'] as num).toInt(),
      currentProgress: (json['currentProgress'] as num).toInt(),
      rewardCoins: (json['rewardCoins'] as num).toInt(),
      rewardBadgeId: json['rewardBadgeId'] as String?,
      generatedAt: DateTime.parse(json['generatedAt'] as String),
      expiresAt: DateTime.parse(json['expiresAt'] as String),
      isCompleted: json['isCompleted'] as bool,
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
    );

Map<String, dynamic> _$$DailyMissionImplToJson(_$DailyMissionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$MissionTypeEnumMap[instance.type]!,
      'title': instance.title,
      'description': instance.description,
      'targetValue': instance.targetValue,
      'currentProgress': instance.currentProgress,
      'rewardCoins': instance.rewardCoins,
      'rewardBadgeId': instance.rewardBadgeId,
      'generatedAt': instance.generatedAt.toIso8601String(),
      'expiresAt': instance.expiresAt.toIso8601String(),
      'isCompleted': instance.isCompleted,
      'completedAt': instance.completedAt?.toIso8601String(),
    };

const _$MissionTypeEnumMap = {
  MissionType.quizzes: 'quizzes',
  MissionType.timeLimit: 'timeLimit',
  MissionType.streakMaintain: 'streakMaintain',
  MissionType.friendMatch: 'friendMatch',
  MissionType.achievements: 'achievements',
};

_$StreakDataImpl _$$StreakDataImplFromJson(Map<String, dynamic> json) =>
    _$StreakDataImpl(
      userId: json['userId'] as String,
      currentStreak: (json['currentStreak'] as num).toInt(),
      longestStreak: (json['longestStreak'] as num).toInt(),
      lastActivityAt: DateTime.parse(json['lastActivityAt'] as String),
      totalStreakCoins: (json['totalStreakCoins'] as num).toInt(),
      streakBadges: (json['streakBadges'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$StreakDataImplToJson(_$StreakDataImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'currentStreak': instance.currentStreak,
      'longestStreak': instance.longestStreak,
      'lastActivityAt': instance.lastActivityAt.toIso8601String(),
      'totalStreakCoins': instance.totalStreakCoins,
      'streakBadges': instance.streakBadges,
    };

_$WeeklyBonusImpl _$$WeeklyBonusImplFromJson(Map<String, dynamic> json) =>
    _$WeeklyBonusImpl(
      dayNumber: (json['dayNumber'] as num).toInt(),
      requiredMissions: (json['requiredMissions'] as num).toInt(),
      coinReward: (json['coinReward'] as num).toInt(),
      badgeId: json['badgeId'] as String?,
      isCompleted: json['isCompleted'] as bool,
    );

Map<String, dynamic> _$$WeeklyBonusImplToJson(_$WeeklyBonusImpl instance) =>
    <String, dynamic>{
      'dayNumber': instance.dayNumber,
      'requiredMissions': instance.requiredMissions,
      'coinReward': instance.coinReward,
      'badgeId': instance.badgeId,
      'isCompleted': instance.isCompleted,
    };

_$WeeklyBonusProgressImpl _$$WeeklyBonusProgressImplFromJson(
  Map<String, dynamic> json,
) => _$WeeklyBonusProgressImpl(
  userId: json['userId'] as String,
  weekNumber: (json['weekNumber'] as num).toInt(),
  bonuses: (json['bonuses'] as List<dynamic>)
      .map((e) => WeeklyBonus.fromJson(e as Map<String, dynamic>))
      .toList(),
  completedDays: (json['completedDays'] as num).toInt(),
  startedAt: DateTime.parse(json['startedAt'] as String),
  completedAt: json['completedAt'] == null
      ? null
      : DateTime.parse(json['completedAt'] as String),
);

Map<String, dynamic> _$$WeeklyBonusProgressImplToJson(
  _$WeeklyBonusProgressImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'weekNumber': instance.weekNumber,
  'bonuses': instance.bonuses,
  'completedDays': instance.completedDays,
  'startedAt': instance.startedAt.toIso8601String(),
  'completedAt': instance.completedAt?.toIso8601String(),
};

_$RetentionConfigImpl _$$RetentionConfigImplFromJson(
  Map<String, dynamic> json,
) => _$RetentionConfigImpl(
  dailyMissionCount: (json['dailyMissionCount'] as num).toInt(),
  streakCoinMultiplier: (json['streakCoinMultiplier'] as num).toInt(),
  maxStreakBonusPerDay: (json['maxStreakBonusPerDay'] as num).toInt(),
  weeklyBonusCoins: (json['weeklyBonusCoins'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(int.parse(k), (e as num).toInt()),
  ),
  streakMilestones: (json['streakMilestones'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
);

Map<String, dynamic> _$$RetentionConfigImplToJson(
  _$RetentionConfigImpl instance,
) => <String, dynamic>{
  'dailyMissionCount': instance.dailyMissionCount,
  'streakCoinMultiplier': instance.streakCoinMultiplier,
  'maxStreakBonusPerDay': instance.maxStreakBonusPerDay,
  'weeklyBonusCoins': instance.weeklyBonusCoins.map(
    (k, e) => MapEntry(k.toString(), e),
  ),
  'streakMilestones': instance.streakMilestones,
};
