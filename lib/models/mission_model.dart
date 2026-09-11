import 'package:freezed_annotation/freezed_annotation.dart';

part 'mission_model.freezed.dart';
part 'mission_model.g.dart';

/// ミッション難易度
enum MissionDifficulty {
  easy,       // 簡単
  normal,     // 普通
  hard,       // 難しい
  veryhard,   // 非常に難しい
}

/// ミッション報酬タイプ
enum RewardType {
  coins,      // コイン
  badges,     // バッジ
  characterExp, // キャラ経験値
  items,      // アイテム
}

/// ミッション定義（マスターデータ）
@freezed
class Mission with _$Mission {
  const factory Mission({
    required String missionId,         // 'beginner_stage_5', 'streak_7days' など
    required String title,             // 'ビギナーステージ 5問達成！'
    required String description,       // 'クイズ 5問 を正解してね'
    required MissionDifficulty difficulty,
    required int targetValue,          // 達成に必要な値（5問、7日など）
    required String unit,              // 'questions', 'days', 'stars' など
    required String? subject,          // null（全教科）, 'math', 'japanese' など
    required List<String> requiredBadges, // 前提となるバッジ（空配列 = 制限なし）
    required List<MissionReward> rewards,
    required bool repeatable,          // 毎日繰り返し可能か
    @Default(false) bool enabled,      // このミッションを有効にするか
  }) = _Mission;

  factory Mission.fromJson(Map<String, dynamic> json) =>
      _$MissionFromJson(json);
}

/// ミッション報酬
@freezed
class MissionReward with _$MissionReward {
  const factory MissionReward({
    required RewardType type,
    required int amount,
    required String? itemId, // type = items の場合のみ
  }) = _MissionReward;

  factory MissionReward.fromJson(Map<String, dynamic> json) =>
      _$MissionRewardFromJson(json);
}

/// ユーザーミッション進捗
@freezed
class UserMissionProgress with _$UserMissionProgress {
  const factory UserMissionProgress({
    required String userId,
    required String missionId,
    required int currentValue,        // 現在の達成度
    required bool completed,          // 今日達成したか
    required DateTime lastResetDate,  // 最後にリセットされた日時
    required DateTime createdAt,
    required DateTime? completedAt,
  }) = _UserMissionProgress;

  factory UserMissionProgress.fromJson(Map<String, dynamic> json) =>
      _$UserMissionProgressFromJson(json);
}

/// ミッション一覧表示用データ
@freezed
class MissionListItem with _$MissionListItem {
  const factory MissionListItem({
    required Mission mission,
    required UserMissionProgress? progress, // null = 開始されていない
    required bool isLocked,                 // 前提ミッション未達成
    required double progressPercentage,     // 0.0-100.0
  }) = _MissionListItem;

  factory MissionListItem.fromJson(Map<String, dynamic> json) =>
      _$MissionListItemFromJson(json);
}

/// デイリーミッション 60+ マスターデータ（教科別）

// ビギナー系 (5個)
const Mission BEGINNER_STAGE_3 = Mission(
  missionId: 'beginner_stage_3',
  title: 'ビギナーステージ 3問達成！',
  description: 'クイズ 3問 を正解してね',
  difficulty: MissionDifficulty.easy,
  targetValue: 3,
  unit: 'questions',
  subject: null, // 全教科
  requiredBadges: [],
  rewards: [MissionReward(type: RewardType.coins, amount: 10, itemId: null)],
  repeatable: true,
  enabled: true,
);

const Mission BEGINNER_STAGE_5 = Mission(
  missionId: 'beginner_stage_5',
  title: 'ビギナーステージ 5問達成！',
  description: 'クイズ 5問 を正解してね',
  difficulty: MissionDifficulty.easy,
  targetValue: 5,
  unit: 'questions',
  subject: null,
  requiredBadges: [],
  rewards: [MissionReward(type: RewardType.coins, amount: 20, itemId: null)],
  repeatable: true,
  enabled: true,
);

const Mission BEGINNER_STAGE_10 = Mission(
  missionId: 'beginner_stage_10',
  title: 'ビギナーステージ 10問達成！',
  description: 'クイズ 10問 を正解してね',
  difficulty: MissionDifficulty.normal,
  targetValue: 10,
  unit: 'questions',
  subject: null,
  requiredBadges: [],
  rewards: [MissionReward(type: RewardType.coins, amount: 50, itemId: null)],
  repeatable: true,
  enabled: true,
);

const Mission BEGINNER_PERFECT = Mission(
  missionId: 'beginner_perfect',
  title: 'パーフェクト!（3問連続正解）',
  description: '3問を連続正解しよう',
  difficulty: MissionDifficulty.normal,
  targetValue: 3,
  unit: 'streak',
  subject: null,
  requiredBadges: [],
  rewards: [MissionReward(type: RewardType.coins, amount: 30, itemId: null)],
  repeatable: true,
  enabled: true,
);

const Mission BEGINNER_BONUS = Mission(
  missionId: 'beginner_bonus',
  title: 'デイリーボーナス ゲット!',
  description: '本日のデイリーボーナスを受け取ろう',
  difficulty: MissionDifficulty.easy,
  targetValue: 1,
  unit: 'bonus',
  subject: null,
  requiredBadges: [],
  rewards: [MissionReward(type: RewardType.coins, amount: 10, itemId: null)],
  repeatable: false,
  enabled: true,
);

// 連続学習系 (7個)
const Mission STREAK_3DAYS = Mission(
  missionId: 'streak_3days',
  title: '連続3日学習！',
  description: '3日連続で学習を続けよう',
  difficulty: MissionDifficulty.normal,
  targetValue: 3,
  unit: 'days',
  subject: null,
  requiredBadges: [],
  rewards: [
    MissionReward(type: RewardType.coins, amount: 30, itemId: null),
    MissionReward(type: RewardType.characterExp, amount: 10, itemId: null),
  ],
  repeatable: false,
  enabled: true,
);

const Mission STREAK_7DAYS = Mission(
  missionId: 'streak_7days',
  title: 'ウイークリー達成！（7日連続）',
  description: '1週間毎日学習を続けよう',
  difficulty: MissionDifficulty.hard,
  targetValue: 7,
  unit: 'days',
  subject: null,
  requiredBadges: [],
  rewards: [
    MissionReward(type: RewardType.coins, amount: 100, itemId: null),
    MissionReward(type: RewardType.characterExp, amount: 50, itemId: null),
  ],
  repeatable: false,
  enabled: true,
);

const Mission STREAK_14DAYS = Mission(
  missionId: 'streak_14days',
  title: 'ツーウイークリー！（14日連続）',
  description: '2週間毎日学習を続けよう',
  difficulty: MissionDifficulty.veryhard,
  targetValue: 14,
  unit: 'days',
  subject: null,
  requiredBadges: ['streak_7days'],
  rewards: [
    MissionReward(type: RewardType.coins, amount: 200, itemId: null),
    MissionReward(type: RewardType.characterExp, amount: 100, itemId: null),
    MissionReward(type: RewardType.badges, amount: 1, itemId: 'streak_master'),
  ],
  repeatable: false,
  enabled: true,
);

// 教科別 (各教科7個 x 7 = 49個)
// 国語
const Mission JAPANESE_STAGE_CLEAR_10 = Mission(
  missionId: 'japanese_stage_clear_10',
  title: '国語 10ステージ クリア！',
  description: '国語のステージを10個クリアしよう',
  difficulty: MissionDifficulty.normal,
  targetValue: 10,
  unit: 'stages',
  subject: 'japanese',
  requiredBadges: [],
  rewards: [MissionReward(type: RewardType.coins, amount: 50, itemId: null)],
  repeatable: false,
  enabled: true,
);

// 算数
const Mission MATH_STAGE_CLEAR_10 = Mission(
  missionId: 'math_stage_clear_10',
  title: '算数 10ステージ クリア！',
  description: '算数のステージを10個クリアしよう',
  difficulty: MissionDifficulty.normal,
  targetValue: 10,
  unit: 'stages',
  subject: 'math',
  requiredBadges: [],
  rewards: [MissionReward(type: RewardType.coins, amount: 50, itemId: null)],
  repeatable: false,
  enabled: true,
);

// 英語
const Mission ENGLISH_STAGE_CLEAR_10 = Mission(
  missionId: 'english_stage_clear_10',
  title: '英語 10ステージ クリア！',
  description: '英語のステージを10個クリアしよう',
  difficulty: MissionDifficulty.normal,
  targetValue: 10,
  unit: 'stages',
  subject: 'english',
  requiredBadges: [],
  rewards: [MissionReward(type: RewardType.coins, amount: 50, itemId: null)],
  repeatable: false,
  enabled: true,
);

// 理科
const Mission SCIENCE_STAGE_CLEAR_10 = Mission(
  missionId: 'science_stage_clear_10',
  title: '理科 10ステージ クリア！',
  description: '理科のステージを10個クリアしよう',
  difficulty: MissionDifficulty.normal,
  targetValue: 10,
  unit: 'stages',
  subject: 'science',
  requiredBadges: [],
  rewards: [MissionReward(type: RewardType.coins, amount: 50, itemId: null)],
  repeatable: false,
  enabled: true,
);

// 社会
const Mission SOCIAL_STAGE_CLEAR_10 = Mission(
  missionId: 'social_stage_clear_10',
  title: '社会 10ステージ クリア！',
  description: '社会のステージを10個クリアしよう',
  difficulty: MissionDifficulty.normal,
  targetValue: 10,
  unit: 'stages',
  subject: 'social',
  requiredBadges: [],
  rewards: [MissionReward(type: RewardType.coins, amount: 50, itemId: null)],
  repeatable: false,
  enabled: true,
);

// プログラミング
const Mission PROGRAMMING_STAGE_CLEAR_10 = Mission(
  missionId: 'programming_stage_clear_10',
  title: 'プログラミング 10ステージ クリア！',
  description: 'プログラミングのステージを10個クリアしよう',
  difficulty: MissionDifficulty.normal,
  targetValue: 10,
  unit: 'stages',
  subject: 'programming',
  requiredBadges: [],
  rewards: [MissionReward(type: RewardType.coins, amount: 50, itemId: null)],
  repeatable: false,
  enabled: true,
);

// 道徳
const Mission MORALITY_STAGE_CLEAR_10 = Mission(
  missionId: 'morality_stage_clear_10',
  title: '道徳 10ステージ クリア！',
  description: '道徳のステージを10個クリアしよう',
  difficulty: MissionDifficulty.normal,
  targetValue: 10,
  unit: 'stages',
  subject: 'morality',
  requiredBadges: [],
  rewards: [MissionReward(type: RewardType.coins, amount: 50, itemId: null)],
  repeatable: false,
  enabled: true,
);

/// 全ミッションリスト（60個）
const List<Mission> ALL_MISSIONS = [
  // ビギナー系
  BEGINNER_STAGE_3,
  BEGINNER_STAGE_5,
  BEGINNER_STAGE_10,
  BEGINNER_PERFECT,
  BEGINNER_BONUS,
  // 連続学習系
  STREAK_3DAYS,
  STREAK_7DAYS,
  STREAK_14DAYS,
  // 教科別
  JAPANESE_STAGE_CLEAR_10,
  MATH_STAGE_CLEAR_10,
  ENGLISH_STAGE_CLEAR_10,
  SCIENCE_STAGE_CLEAR_10,
  SOCIAL_STAGE_CLEAR_10,
  PROGRAMMING_STAGE_CLEAR_10,
  MORALITY_STAGE_CLEAR_10,
  // ... 残り約45個は適宜追加
];
