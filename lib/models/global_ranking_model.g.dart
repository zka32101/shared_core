// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_ranking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GlobalRankingEntryImpl _$$GlobalRankingEntryImplFromJson(
  Map<String, dynamic> json,
) => _$GlobalRankingEntryImpl(
  userId: json['userId'] as String,
  username: json['username'] as String,
  totalScore: (json['totalScore'] as num).toInt(),
  globalRank: (json['globalRank'] as num).toInt(),
  percentile: (json['percentile'] as num).toDouble(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
);

Map<String, dynamic> _$$GlobalRankingEntryImplToJson(
  _$GlobalRankingEntryImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'username': instance.username,
  'totalScore': instance.totalScore,
  'globalRank': instance.globalRank,
  'percentile': instance.percentile,
  'lastUpdated': instance.lastUpdated.toIso8601String(),
};

_$SubjectRankingEntryImpl _$$SubjectRankingEntryImplFromJson(
  Map<String, dynamic> json,
) => _$SubjectRankingEntryImpl(
  userId: json['userId'] as String,
  username: json['username'] as String,
  subject: json['subject'] as String,
  score: (json['score'] as num).toInt(),
  subjectRank: (json['subjectRank'] as num).toInt(),
  percentile: (json['percentile'] as num).toDouble(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
);

Map<String, dynamic> _$$SubjectRankingEntryImplToJson(
  _$SubjectRankingEntryImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'username': instance.username,
  'subject': instance.subject,
  'score': instance.score,
  'subjectRank': instance.subjectRank,
  'percentile': instance.percentile,
  'lastUpdated': instance.lastUpdated.toIso8601String(),
};

_$UserRankingStatsImpl _$$UserRankingStatsImplFromJson(
  Map<String, dynamic> json,
) => _$UserRankingStatsImpl(
  userId: json['userId'] as String,
  subjectScores: Map<String, int>.from(json['subjectScores'] as Map),
  totalScore: (json['totalScore'] as num).toInt(),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$$UserRankingStatsImplToJson(
  _$UserRankingStatsImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'subjectScores': instance.subjectScores,
  'totalScore': instance.totalScore,
  'updatedAt': instance.updatedAt.toIso8601String(),
};
