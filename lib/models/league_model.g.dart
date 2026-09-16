// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserLeague _$UserLeagueFromJson(Map<String, dynamic> json) => _UserLeague(
  userId: json['userId'] as String,
  tier: $enumDecode(_$LeagueTierEnumMap, json['tier']),
  rank: $enumDecode(_$LeagueRankEnumMap, json['rank']),
  leaguePoints: (json['leaguePoints'] as num).toInt(),
  totalRankPoints: (json['totalRankPoints'] as num).toInt(),
  wins: (json['wins'] as num).toInt(),
  losses: (json['losses'] as num).toInt(),
  winRate: (json['winRate'] as num).toDouble(),
  promotedAt: DateTime.parse(json['promotedAt'] as String),
  demotedAt: json['demotedAt'] == null
      ? null
      : DateTime.parse(json['demotedAt'] as String),
  isPromo: json['isPromo'] as bool,
  promoProgress: (json['promoProgress'] as num).toInt(),
  consecutiveWins: (json['consecutiveWins'] as num).toInt(),
  lastMatchAt: DateTime.parse(json['lastMatchAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$UserLeagueToJson(_UserLeague instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'tier': _$LeagueTierEnumMap[instance.tier]!,
      'rank': _$LeagueRankEnumMap[instance.rank]!,
      'leaguePoints': instance.leaguePoints,
      'totalRankPoints': instance.totalRankPoints,
      'wins': instance.wins,
      'losses': instance.losses,
      'winRate': instance.winRate,
      'promotedAt': instance.promotedAt.toIso8601String(),
      'demotedAt': instance.demotedAt?.toIso8601String(),
      'isPromo': instance.isPromo,
      'promoProgress': instance.promoProgress,
      'consecutiveWins': instance.consecutiveWins,
      'lastMatchAt': instance.lastMatchAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$LeagueTierEnumMap = {
  LeagueTier.bronze: 'bronze',
  LeagueTier.silver: 'silver',
  LeagueTier.gold: 'gold',
  LeagueTier.platinum: 'platinum',
  LeagueTier.diamond: 'diamond',
  LeagueTier.master: 'master',
};

const _$LeagueRankEnumMap = {
  LeagueRank.iv: 'iv',
  LeagueRank.iii: 'iii',
  LeagueRank.ii: 'ii',
  LeagueRank.i: 'i',
};

_LeagueMatch _$LeagueMatchFromJson(Map<String, dynamic> json) => _LeagueMatch(
  matchId: json['matchId'] as String,
  player1Id: json['player1Id'] as String,
  player2Id: json['player2Id'] as String,
  winnerId: json['winnerId'] as String,
  pointsAwarded: (json['pointsAwarded'] as num).toInt(),
  player1PointsChange: (json['player1PointsChange'] as num).toInt(),
  player2PointsChange: (json['player2PointsChange'] as num).toInt(),
  createdAt: DateTime.parse(json['createdAt'] as String),
  appId: json['appId'] as String?,
);

Map<String, dynamic> _$LeagueMatchToJson(_LeagueMatch instance) =>
    <String, dynamic>{
      'matchId': instance.matchId,
      'player1Id': instance.player1Id,
      'player2Id': instance.player2Id,
      'winnerId': instance.winnerId,
      'pointsAwarded': instance.pointsAwarded,
      'player1PointsChange': instance.player1PointsChange,
      'player2PointsChange': instance.player2PointsChange,
      'createdAt': instance.createdAt.toIso8601String(),
      'appId': instance.appId,
    };

_LeagueRanking _$LeagueRankingFromJson(Map<String, dynamic> json) =>
    _LeagueRanking(
      tier: $enumDecode(_$LeagueTierEnumMap, json['tier']),
      rankings: (json['rankings'] as List<dynamic>)
          .map((e) => LeagueRankingEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$LeagueRankingToJson(_LeagueRanking instance) =>
    <String, dynamic>{
      'tier': _$LeagueTierEnumMap[instance.tier]!,
      'rankings': instance.rankings,
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_LeagueRankingEntry _$LeagueRankingEntryFromJson(Map<String, dynamic> json) =>
    _LeagueRankingEntry(
      position: (json['position'] as num).toInt(),
      userId: json['userId'] as String,
      userName: json['userName'] as String,
      rank: $enumDecode(_$LeagueRankEnumMap, json['rank']),
      leaguePoints: (json['leaguePoints'] as num).toInt(),
      totalRankPoints: (json['totalRankPoints'] as num).toInt(),
      wins: (json['wins'] as num).toInt(),
      winRate: (json['winRate'] as num).toDouble(),
    );

Map<String, dynamic> _$LeagueRankingEntryToJson(_LeagueRankingEntry instance) =>
    <String, dynamic>{
      'position': instance.position,
      'userId': instance.userId,
      'userName': instance.userName,
      'rank': _$LeagueRankEnumMap[instance.rank]!,
      'leaguePoints': instance.leaguePoints,
      'totalRankPoints': instance.totalRankPoints,
      'wins': instance.wins,
      'winRate': instance.winRate,
    };

_TierRequirements _$TierRequirementsFromJson(Map<String, dynamic> json) =>
    _TierRequirements(
      tier: $enumDecode(_$LeagueTierEnumMap, json['tier']),
      minRankPoints: (json['minRankPoints'] as num).toInt(),
      maxRankPoints: (json['maxRankPoints'] as num).toInt(),
      weeklyRewardCoins: (json['weeklyRewardCoins'] as num).toInt(),
      rewardBadges: (json['rewardBadges'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$TierRequirementsToJson(_TierRequirements instance) =>
    <String, dynamic>{
      'tier': _$LeagueTierEnumMap[instance.tier]!,
      'minRankPoints': instance.minRankPoints,
      'maxRankPoints': instance.maxRankPoints,
      'weeklyRewardCoins': instance.weeklyRewardCoins,
      'rewardBadges': instance.rewardBadges,
    };

_SeasonStats _$SeasonStatsFromJson(Map<String, dynamic> json) => _SeasonStats(
  userId: json['userId'] as String,
  seasonNumber: (json['seasonNumber'] as num).toInt(),
  highestTier: $enumDecode(_$LeagueTierEnumMap, json['highestTier']),
  totalWins: (json['totalWins'] as num).toInt(),
  totalMatches: (json['totalMatches'] as num).toInt(),
  seasonWinRate: (json['seasonWinRate'] as num).toDouble(),
  coinsEarned: (json['coinsEarned'] as num).toInt(),
  badgesEarned: (json['badgesEarned'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  seasonEndDate: DateTime.parse(json['seasonEndDate'] as String),
);

Map<String, dynamic> _$SeasonStatsToJson(_SeasonStats instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'seasonNumber': instance.seasonNumber,
      'highestTier': _$LeagueTierEnumMap[instance.highestTier]!,
      'totalWins': instance.totalWins,
      'totalMatches': instance.totalMatches,
      'seasonWinRate': instance.seasonWinRate,
      'coinsEarned': instance.coinsEarned,
      'badgesEarned': instance.badgesEarned,
      'seasonEndDate': instance.seasonEndDate.toIso8601String(),
    };

_MatchmakingRequest _$MatchmakingRequestFromJson(Map<String, dynamic> json) =>
    _MatchmakingRequest(
      userId: json['userId'] as String,
      tier: $enumDecode(_$LeagueTierEnumMap, json['tier']),
      leaguePoints: (json['leaguePoints'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      appId: json['appId'] as String?,
    );

Map<String, dynamic> _$MatchmakingRequestToJson(_MatchmakingRequest instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'tier': _$LeagueTierEnumMap[instance.tier]!,
      'leaguePoints': instance.leaguePoints,
      'createdAt': instance.createdAt.toIso8601String(),
      'appId': instance.appId,
    };
