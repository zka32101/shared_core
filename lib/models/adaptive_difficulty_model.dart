import 'package:freezed_annotation/freezed_annotation.dart';

part 'adaptive_difficulty_model.freezed.dart';
part 'adaptive_difficulty_model.g.dart';

/// 難易度レベル
enum DifficultyLevel {
  veryEasy,   // 非常に簡単
  easy,       // 簡単
  normal,     // 標準
  hard,       // 難しい
  veryHard,   // 非常に難しい
}

/// 適応学習の指標
@freezed
class AdaptiveMetrics with _$AdaptiveMetrics {
  const factory AdaptiveMetrics({
    required double accuracy,           // 正答率（0.0-1.0）
    required double completionRate,     // 完了率（0.0-1.0）
    required int averageTimePerQuestion, // 1問あたりの平均時間（秒）
    required int totalQuestionsAnswered, // 答えた問題数
    required int correctAnswers,         // 正解数
    required int wrongAnswers,           // 不正解数
    required DateTime lastUpdatedAt,    // 最終更新日時
  }) = _AdaptiveMetrics;

  factory AdaptiveMetrics.fromJson(Map<String, dynamic> json) =>
      _$AdaptiveMetricsFromJson(json);
}

/// ユーザーの適応難易度設定
@freezed
class UserAdaptiveDifficulty with _$UserAdaptiveDifficulty {
  const factory UserAdaptiveDifficulty({
    required String userId,
    required String appId,              // アプリID（kokugo, sansu等）
    required DifficultyLevel currentLevel, // 現在の難易度
    required DifficultyLevel recommendedLevel, // 推奨難易度
    required AdaptiveMetrics metrics,   // パフォーマンス指標
    required int adjustmentCount,       // 調整回数
    required DateTime? lastAdjustedAt,  // 最終調整日時
    required bool isAutoAdjust,         // 自動調整有効
    required double confidenceScore,    // 推奨の確信度（0.0-1.0）
  }) = _UserAdaptiveDifficulty;

  factory UserAdaptiveDifficulty.fromJson(Map<String, dynamic> json) =>
      _$UserAdaptiveDifficultyFromJson(json);
}

/// 難易度調整履歴
@freezed
class DifficultyAdjustmentHistory with _$DifficultyAdjustmentHistory {
  const factory DifficultyAdjustmentHistory({
    required String userId,
    required String appId,
    required DifficultyLevel previousLevel,
    required DifficultyLevel newLevel,
    required String reason,              // 調整理由（例: 'high_accuracy'）
    required DateTime adjustedAt,
    required double metricsSnapshot,     // 調整時の指標値
  }) = _DifficultyAdjustmentHistory;

  factory DifficultyAdjustmentHistory.fromJson(Map<String, dynamic> json) =>
      _$DifficultyAdjustmentHistoryFromJson(json);
}

/// 適応難易度設定（RemoteConfig から取得）
@freezed
class AdaptiveDifficultyConfig with _$AdaptiveDifficultyConfig {
  const factory AdaptiveDifficultyConfig({
    required bool enableAutoAdjust,     // 自動調整を有効
    required int adjustmentIntervalDays, // 調整間隔（日数）
    required double highAccuracyThreshold, // 高い正答率と判定する閾値
    required double lowAccuracyThreshold,  // 低い正答率と判定する閾値
    required double completionThreshold,   // 完了率の目標
    required int minQuestionsBeforeAdjust, // 調整前に答える最小問題数
    required Map<String, double> difficultyMultipliers, // 難易度係数
  }) = _AdaptiveDifficultyConfig;

  factory AdaptiveDifficultyConfig.fromJson(Map<String, dynamic> json) =>
      _$AdaptiveDifficultyConfigFromJson(json);
}

/// 推奨難易度結果
@freezed
class DifficultyRecommendation with _$DifficultyRecommendation {
  const factory DifficultyRecommendation({
    required DifficultyLevel recommendedLevel,
    required double confidence,         // 推奨の確信度（0.0-1.0）
    required String reason,             // 推奨理由
    required List<String> indicators,   // 判定指標リスト
    required DateTime calculatedAt,
  }) = _DifficultyRecommendation;

  factory DifficultyRecommendation.fromJson(Map<String, dynamic> json) =>
      _$DifficultyRecommendationFromJson(json);
}

/// 難易度パフォーマンス統計
@freezed
class DifficultyPerformanceStats with _$DifficultyPerformanceStats {
  const factory DifficultyPerformanceStats({
    required DifficultyLevel level,
    required double avgAccuracy,        // 平均正答率
    required double avgCompletionTime,  // 平均完了時間
    required int totalAttempts,         // 総試行回数
    required int successfulAttempts,    // 成功試行回数
    required DateTime? lastUsedAt,      // 最終使用日時
  }) = _DifficultyPerformanceStats;

  factory DifficultyPerformanceStats.fromJson(Map<String, dynamic> json) =>
      _$DifficultyPerformanceStatsFromJson(json);
}

/// ユーザーの学習パターン（難易度選択傾向）
@freezed
class UserLearningPattern with _$UserLearningPattern {
  const factory UserLearningPattern({
    required String userId,
    required String appId,
    required Map<String, DifficultyPerformanceStats> performanceByLevel,
    required DifficultyLevel mostCommonLevel, // 最もよく選ぶ難易度
    required DifficultyLevel mostSuccessfulLevel, // 最も成功する難易度
    required double learningVelocity,   // 学習速度（1.0 = 標準）
    required DateTime analyzedAt,
  }) = _UserLearningPattern;

  factory UserLearningPattern.fromJson(Map<String, dynamic> json) =>
      _$UserLearningPatternFromJson(json);
}
