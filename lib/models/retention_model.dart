import 'package:freezed_annotation/freezed_annotation.dart';

part 'retention_model.freezed.dart';
part 'retention_model.g.dart';

/// デイリーミッションの種類
enum MissionType {
  quizzes,         // N問正解
  timeLimit,       // 学習時間達成
  streakMaintain,  // ストリーク維持
  friendMatch,     // フレンドとマッチ
  achievements,    // 特定バッジ獲得
}

/// デイリーミッション（今日のミッション）
@freezed
class DailyMission with _$DailyMission {
  const factory DailyMission({
    required String id,              // 'daily_mission_YYYYMMDD'
    required MissionType type,
    required String title,
    required String description,
    required int targetValue,        // 達成目標数
    required int currentProgress,    // 現在の進捗
    required int rewardCoins,        // 報酬コイン
    required String? rewardBadgeId,  // 報酬バッジ（オプション）
    required DateTime generatedAt,   // 生成日時
    required DateTime expiresAt,     // 有効期限（翌日 23:59:59）
    required bool isCompleted,       // 完了フラグ
    required DateTime? completedAt,
  }) = _DailyMission;

  factory DailyMission.fromJson(Map<String, dynamic> json) =>
      _$DailyMissionFromJson(json);
}

/// ストリークデータ
@freezed
class StreakData with _$StreakData {
  const factory StreakData({
    required String userId,
    required int currentStreak,      // 現在のストリーク日数
    required int longestStreak,      // 最長ストリーク
    required DateTime lastActivityAt, // 最後に学習した日時
    required int totalStreakCoins,   // 累計ストリーク報酬コイン
    required List<String> streakBadges, // ストリーク達成バッジ
  }) = _StreakData;

  factory StreakData.fromJson(Map<String, dynamic> json) =>
      _$StreakDataFromJson(json);
}

/// 週間ボーナス定義
@freezed
class WeeklyBonus with _$WeeklyBonus {
  const factory WeeklyBonus({
    required int dayNumber,          // 1-7
    required int requiredMissions,   // その日に必要なミッション完了数
    required int coinReward,         // コイン報酬
    required String? badgeId,        // バッジ報酬（オプション）
    required bool isCompleted,
  }) = _WeeklyBonus;

  factory WeeklyBonus.fromJson(Map<String, dynamic> json) =>
      _$WeeklyBonusFromJson(json);
}

/// 週間ボーナス進捗
@freezed
class WeeklyBonusProgress with _$WeeklyBonusProgress {
  const factory WeeklyBonusProgress({
    required String userId,
    required int weekNumber,         // 年間週番号
    required List<WeeklyBonus> bonuses,
    required int completedDays,      // 完了した日数
    required DateTime startedAt,
    required DateTime? completedAt,
  }) = _WeeklyBonusProgress;

  factory WeeklyBonusProgress.fromJson(Map<String, dynamic> json) =>
      _$WeeklyBonusProgressFromJson(json);
}

/// リテンション設定（RemoteConfig から取得）
@freezed
class RetentionConfig with _$RetentionConfig {
  const factory RetentionConfig({
    required int dailyMissionCount,           // 1日のミッション数（デフォルト3）
    required int streakCoinMultiplier,        // ストリーク1日あたりのコイン（デフォルト10）
    required int maxStreakBonusPerDay,        // 1日最大ストリーク報酬（デフォルト100）
    required Map<int, int> weeklyBonusCoins,  // 曜日別ボーナスコイン{day: coins}
    required List<int> streakMilestones,      // ストリーク達成マイルストーン[7, 30, 100, 365]
  }) = _RetentionConfig;

  factory RetentionConfig.fromJson(Map<String, dynamic> json) =>
      _$RetentionConfigFromJson(json);
}

/// リテンション状態
class RetentionState {
  final List<DailyMission> todayMissions;
  final int currentStreak;
  final int longestStreak;
  final int totalStreakCoins;
  final WeeklyBonusProgress? weeklyProgress;
  final bool isLoading;
  final String? error;

  const RetentionState({
    this.todayMissions = const [],
    this.currentStreak = 0,
    this.longestStreak = 0,
    this.totalStreakCoins = 0,
    this.weeklyProgress,
    this.isLoading = false,
    this.error,
  });

  RetentionState copyWith({
    List<DailyMission>? todayMissions,
    int? currentStreak,
    int? longestStreak,
    int? totalStreakCoins,
    WeeklyBonusProgress? weeklyProgress,
    bool? isLoading,
    String? error,
    bool clearError = false,
  }) =>
      RetentionState(
        todayMissions: todayMissions ?? this.todayMissions,
        currentStreak: currentStreak ?? this.currentStreak,
        longestStreak: longestStreak ?? this.longestStreak,
        totalStreakCoins: totalStreakCoins ?? this.totalStreakCoins,
        weeklyProgress: weeklyProgress ?? this.weeklyProgress,
        isLoading: isLoading ?? this.isLoading,
        error: clearError ? null : (error ?? this.error),
      );
}
