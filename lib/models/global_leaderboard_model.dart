import 'package:freezed_annotation/freezed_annotation.dart';

part 'global_leaderboard_model.freezed.dart';
part 'global_leaderboard_model.g.dart';

/// 各アプリのスコア詳細
@freezed
class AppScore with _$AppScore {
  const factory AppScore({
    required String appId,           // 'kokugo', 'sansu', 'eigo', 'rika', 'shakai', 'programming', 'morality'
    required String appName,         // 表示名
    required int score,              // 当該アプリのスコア
    required int completedStages,    // クリアしたステージ数
    required int totalStars,         // 獲得した星の合計
    required DateTime lastPlayedAt,  // 最終プレイ日時
  }) = _AppScore;

  factory AppScore.fromJson(Map<String, dynamic> json) =>
      _$AppScoreFromJson(json);
}

/// 統一グローバルリーダーボード（7アプリ統合スコア）
@freezed
class UnifiedLeaderboardEntry with _$UnifiedLeaderboardEntry {
  const factory UnifiedLeaderboardEntry({
    required String userId,
    required String username,
    required String? avatarUrl,           // ユーザーアバター
    required int totalScore,              // 7アプリの合計スコア
    required int globalRank,              // 全体順位
    required double percentile,           // パーセンタイル（0-100）
    required int totalStarsAcrossApps,    // 全アプリでの星合計
    required int totalCompletedStages,    // 全アプリでのクリアステージ合計
    required List<AppScore> appScores,    // 各アプリのスコア詳細
    required int consecutiveDaysPlaying,  // 連続プレイ日数
    required DateTime lastUpdated,
  }) = _UnifiedLeaderboardEntry;

  factory UnifiedLeaderboardEntry.fromJson(Map<String, dynamic> json) =>
      _$UnifiedLeaderboardEntryFromJson(json);
}

/// ユーザーの詳細ランキング情報
@freezed
class UserLeaderboardDetail with _$UserLeaderboardDetail {
  const factory UserLeaderboardDetail({
    required String userId,
    required String username,
    required int globalRank,
    required int totalScore,
    required DateTime joinedAt,
    required int level,                    // ユーザーレベル（全アプリ統合）
    required double winRate,               // 勝率（マルチプレイ統計）
    required List<AppScore> appScores,
    required Map<String, int> badgesEarned, // 教科別バッジ獲得数
    required bool isFriend,                // フレンド判定
    required DateTime lastUpdated,
  }) = _UserLeaderboardDetail;

  factory UserLeaderboardDetail.fromJson(Map<String, dynamic> json) =>
      _$UserLeaderboardDetailFromJson(json);
}

/// リーダーボードフィルター設定
@freezed
class LeaderboardFilter with _$LeaderboardFilter {
  const factory LeaderboardFilter({
    required LeaderboardType type,        // global / friends / weekly / monthly
    required String? appFilter,           // 特定アプリに絞込（nullで全アプリ）
    required AgeGroup? ageGroupFilter,    // 学年フィルター
    required int limit,                   // 表示件数上限
    required int offset,                  // ページング用オフセット
  }) = _LeaderboardFilter;

  factory LeaderboardFilter.fromJson(Map<String, dynamic> json) =>
      _$LeaderboardFilterFromJson(json);
}

enum LeaderboardType {
  global,      // 全ユーザー
  friends,     // フレンドのみ
  weekly,      // 週間ランキング（リセット毎週）
  monthly,     // 月間ランキング（リセット毎月）
  regional,    // 地域別（今後実装）
}

enum AgeGroup {
  grade3,      // 3年生
  grade4,      // 4年生
  grade5,      // 5年生
  grade6,      // 6年生
}

/// リーダーボード統計情報
@freezed
class LeaderboardStats with _$LeaderboardStats {
  const factory LeaderboardStats({
    required int totalUsers,
    required int activeUsersLast7Days,
    required int averageScore,
    required int medianScore,
    required int topScore,
    required DateTime calculatedAt,
  }) = _LeaderboardStats;

  factory LeaderboardStats.fromJson(Map<String, dynamic> json) =>
      _$LeaderboardStatsFromJson(json);
}
