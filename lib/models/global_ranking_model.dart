import 'package:freezed_annotation/freezed_annotation.dart';

part 'global_ranking_model.freezed.dart';
part 'global_ranking_model.g.dart';

/// グローバルランキング（7アプリ合計スコア）
@freezed
class GlobalRankingEntry with _$GlobalRankingEntry {
  const factory GlobalRankingEntry({
    required String userId,
    required String username,
    required int totalScore,      // 7アプリの合計スコア
    required int globalRank,      // 順位
    required double percentile,   // パーセンタイル（0-100）
    required DateTime lastUpdated,
  }) = _GlobalRankingEntry;

  factory GlobalRankingEntry.fromJson(Map<String, dynamic> json) =>
      _$GlobalRankingEntryFromJson(json);
}

/// 教科別ランキング
@freezed
class SubjectRankingEntry with _$SubjectRankingEntry {
  const factory SubjectRankingEntry({
    required String userId,
    required String username,
    required String subject,      // 'japanese', 'math', 'english', 'science', 'social', 'programming', 'morality'
    required int score,
    required int subjectRank,
    required double percentile,
    required DateTime lastUpdated,
  }) = _SubjectRankingEntry;

  factory SubjectRankingEntry.fromJson(Map<String, dynamic> json) =>
      _$SubjectRankingEntryFromJson(json);
}

/// ユーザースコア集計データ
@freezed
class UserRankingStats with _$UserRankingStats {
  const factory UserRankingStats({
    required String userId,
    required Map<String, int> subjectScores, // 教科別スコア: {'japanese': 100, 'math': 150, ...}
    required int totalScore,
    required DateTime updatedAt,
  }) = _UserRankingStats;

  factory UserRankingStats.fromJson(Map<String, dynamic> json) =>
      _$UserRankingStatsFromJson(json);
}

// 教科定義
const List<String> SUBJECTS = [
  'japanese',      // 国語
  'math',          // 算数
  'english',       // 英語
  'science',       // 理科
  'social',        // 社会
  'programming',   // プログラミング
  'morality',      // 道徳
];

// 教科表示名
const Map<String, String> SUBJECT_LABELS = {
  'japanese': '国語',
  'math': '算数',
  'english': '英語',
  'science': '理科',
  'social': '社会',
  'programming': 'プログラミング',
  'morality': '道徳',
};
