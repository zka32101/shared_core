import 'package:freezed_annotation/freezed_annotation.dart';

part 'league_model.freezed.dart';
part 'league_model.g.dart';

/// リーグティアの列挙型
enum LeagueTier {
  bronze, // ブロンズ
  silver, // シルバー
  gold, // ゴールド
  platinum, // プラチナ
  diamond, // ダイヤ
  master, // マスター
}

/// リーグ内ランク
enum LeagueRank {
  iv, // 4位
  iii, // 3位
  ii, // 2位
  i, // 1位
}

@freezed
class UserLeague with _$UserLeague {
  const factory UserLeague({
    required String userId,
    required LeagueTier tier,
    required LeagueRank rank,
    required int leaguePoints, // 0-100
    required int totalRankPoints, // 全体ランクポイント
    required int wins,
    required int losses,
    required double winRate, // 0-100
    required DateTime promotedAt, // 昇格日時
    required DateTime? demotedAt, // 降格日時
    required bool isPromo, // プロモーション進行中
    required int promoProgress, // 0-3（3勝でプロモーション）
    required int consecutiveWins,
    required DateTime lastMatchAt,
    required DateTime updatedAt,
  }) = _UserLeague;

  factory UserLeague.fromJson(Map<String, dynamic> json) =>
      _$UserLeagueFromJson(json);
}

@freezed
class LeagueMatch with _$LeagueMatch {
  const factory LeagueMatch({
    required String matchId,
    required String player1Id,
    required String player2Id,
    required String winnerId,
    required int pointsAwarded,
    required int player1PointsChange,
    required int player2PointsChange,
    required DateTime createdAt,
    required String? appId, // マッチが行われたアプリ
  }) = _LeagueMatch;

  factory LeagueMatch.fromJson(Map<String, dynamic> json) =>
      _$LeagueMatchFromJson(json);
}

@freezed
class LeagueRanking with _$LeagueRanking {
  const factory LeagueRanking({
    required LeagueTier tier,
    required List<LeagueRankingEntry> rankings, // 上位100
    required DateTime updatedAt,
  }) = _LeagueRanking;

  factory LeagueRanking.fromJson(Map<String, dynamic> json) =>
      _$LeagueRankingFromJson(json);
}

@freezed
class LeagueRankingEntry with _$LeagueRankingEntry {
  const factory LeagueRankingEntry({
    required int position,
    required String userId,
    required String userName,
    required LeagueRank rank,
    required int leaguePoints,
    required int totalRankPoints,
    required int wins,
    required double winRate,
  }) = _LeagueRankingEntry;

  factory LeagueRankingEntry.fromJson(Map<String, dynamic> json) =>
      _$LeagueRankingEntryFromJson(json);
}

@freezed
class TierRequirements with _$TierRequirements {
  const factory TierRequirements({
    required LeagueTier tier,
    required int minRankPoints,
    required int maxRankPoints,
    required int weeklyRewardCoins,
    required List<String> rewardBadges,
  }) = _TierRequirements;

  factory TierRequirements.fromJson(Map<String, dynamic> json) =>
      _$TierRequirementsFromJson(json);
}

@freezed
class SeasonStats with _$SeasonStats {
  const factory SeasonStats({
    required String userId,
    required int seasonNumber,
    required LeagueTier highestTier,
    required int totalWins,
    required int totalMatches,
    required double seasonWinRate,
    required int coinsEarned,
    required List<String> badgesEarned,
    required DateTime seasonEndDate,
  }) = _SeasonStats;

  factory SeasonStats.fromJson(Map<String, dynamic> json) =>
      _$SeasonStatsFromJson(json);
}

@freezed
class MatchmakingRequest with _$MatchmakingRequest {
  const factory MatchmakingRequest({
    required String userId,
    required LeagueTier tier,
    required int leaguePoints,
    required DateTime createdAt,
    required String? appId,
  }) = _MatchmakingRequest;

  factory MatchmakingRequest.fromJson(Map<String, dynamic> json) =>
      _$MatchmakingRequestFromJson(json);
}
