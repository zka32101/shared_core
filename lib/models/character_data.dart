// ─── Subject Enum (Phase 4.1) ─────────────────────────────────────────────
// 7つの小学コレシリーズ教科

enum Subject {
  kokugo,        // 国語コレ
  sansu,         // 算数コレ
  rika,          // 理科コレ
  eigo,          // 英語コレ
  shakai,        // 社会クイズ
  programming,   // プログラミング
  doutoku,       // 道徳
}

extension SubjectExt on Subject {
  String get label {
    return switch (this) {
      Subject.kokugo => '国語',
      Subject.sansu => '算数',
      Subject.rika => '理科',
      Subject.eigo => '英語',
      Subject.shakai => '社会',
      Subject.programming => 'プログラミング',
      Subject.doutoku => '道徳',
    };
  }

  String get emoji {
    return switch (this) {
      Subject.kokugo => '📖',
      Subject.sansu => '🔢',
      Subject.rika => '🔬',
      Subject.eigo => '🌍',
      Subject.shakai => '🗺️',
      Subject.programming => '💻',
      Subject.doutoku => '❤️',
    };
  }
}

// ─── Level-up constants ────────────────────────────────────────────────────

// Lv.2:50 / Lv.3:100 / Lv.4:200 / Lv.5:500 コイン
const Map<int, int> kLevelUpCost = {2: 50, 3: 100, 4: 200, 5: 500};

const Map<int, String> kLevelUpFeatureDesc = {
  2: '新しい表情が3種類追加されるよ！',
  3: '新しいポーズが3種類追加されるよ！',
  4: 'キャラの背景ストーリーが解放されるよ！',
  5: 'きらきらエフェクトが常時表示されるよ！',
};

// ─── BaseCharacter ─────────────────────────────────────────────────────────
// Each subject app defines a List<BaseCharacter> with its own data.

// ─── CharacterStats (Phase 4.1) ────────────────────────────────────────
// キャラクターの統計情報

class CharacterStats {
  final int usageCount;      // このキャラを装備した回数
  final int victoryCount;    // このキャラでクイズに勝利した回数
  final int questsClearedCount; // クエスト/ステージクリア数
  final int totalCoinEarned; // このキャラで稼いだコイン
  final double avgAccuracy;  // 平均正答率

  const CharacterStats({
    this.usageCount = 0,
    this.victoryCount = 0,
    this.questsClearedCount = 0,
    this.totalCoinEarned = 0,
    this.avgAccuracy = 0.0,
  });

  CharacterStats copyWith({
    int? usageCount,
    int? victoryCount,
    int? questsClearedCount,
    int? totalCoinEarned,
    double? avgAccuracy,
  }) =>
      CharacterStats(
        usageCount: usageCount ?? this.usageCount,
        victoryCount: victoryCount ?? this.victoryCount,
        questsClearedCount: questsClearedCount ?? this.questsClearedCount,
        totalCoinEarned: totalCoinEarned ?? this.totalCoinEarned,
        avgAccuracy: avgAccuracy ?? this.avgAccuracy,
      );

  Map<String, dynamic> toJson() => {
        'usageCount': usageCount,
        'victoryCount': victoryCount,
        'questsClearedCount': questsClearedCount,
        'totalCoinEarned': totalCoinEarned,
        'avgAccuracy': avgAccuracy,
      };

  factory CharacterStats.fromJson(Map<String, dynamic> j) => CharacterStats(
        usageCount: j['usageCount'] as int? ?? 0,
        victoryCount: j['victoryCount'] as int? ?? 0,
        questsClearedCount: j['questsClearedCount'] as int? ?? 0,
        totalCoinEarned: j['totalCoinEarned'] as int? ?? 0,
        avgAccuracy: j['avgAccuracy'] as double? ?? 0.0,
      );
}

// ─── BaseCharacter ────────────────────────────────────────────────────────
// Each subject app defines a List<BaseCharacter> with its own data.

class BaseCharacter {
  final String id;
  final String name;
  final String emoji;
  final int tier; // 1-4
  final int unlockAt; // clearedStageIds.length threshold
  final String subject; // e.g. '漢字', '計算'
  final Subject appSubject; // Phase 4.1: 教科タグ（Subject enum）
  final String backstory; // revealed at Lv.4
  final List<String> stampPhrases; // 8 phrases for LINE stamp
  final String? imageAsset; // optional character illustration (Lv.1 default)
  final Map<int, String>? levelImages; // optional Lv別画像 (2, 3, 4, 5=MAX)

  const BaseCharacter({
    required this.id,
    required this.name,
    required this.emoji,
    required this.tier,
    required this.unlockAt,
    required this.subject,
    required this.appSubject,
    required this.backstory,
    required this.stampPhrases,
    this.imageAsset,
    this.levelImages,
  });

  /// 指定レベルに応じた画像を返す。
  /// そのレベル専用の画像がなければ、それ以下で最も近いレベルの画像に
  /// フォールバックし、何もなければ [imageAsset]（Lv.1 デフォルト）を返す。
  String? imageAssetForLevel(int level) {
    if (levelImages != null) {
      for (var l = level; l >= 2; l--) {
        final asset = levelImages![l];
        if (asset != null) return asset;
      }
    }
    return imageAsset;
  }
}

// ─── CharacterProfile (Phase 4.1) ─────────────────────────────────────────
// キャラクター情報を統一管理するプロフィール

class CharacterProfile {
  final String id;              // キャラクターID
  final String name;            // キャラクター名
  final String emoji;           // 絵文字
  final Subject appSubject;     // 教科タグ
  final int tier;               // ティア (1-4)
  final int level;              // 現在のレベル (1-5)
  final int experience;         // 現在の経験値
  final CharacterStats stats;   // キャラクター統計情報
  final DateTime unlockedAt;    // 解放日時
  final bool isEquipped;        // 現在装備中かどうか

  const CharacterProfile({
    required this.id,
    required this.name,
    required this.emoji,
    required this.appSubject,
    required this.tier,
    this.level = 1,
    this.experience = 0,
    this.stats = const CharacterStats(),
    required this.unlockedAt,
    this.isEquipped = false,
  });

  bool get isMaxLevel => level >= 5;

  CharacterProfile copyWith({
    String? id,
    String? name,
    String? emoji,
    Subject? appSubject,
    int? tier,
    int? level,
    int? experience,
    CharacterStats? stats,
    DateTime? unlockedAt,
    bool? isEquipped,
  }) =>
      CharacterProfile(
        id: id ?? this.id,
        name: name ?? this.name,
        emoji: emoji ?? this.emoji,
        appSubject: appSubject ?? this.appSubject,
        tier: tier ?? this.tier,
        level: level ?? this.level,
        experience: experience ?? this.experience,
        stats: stats ?? this.stats,
        unlockedAt: unlockedAt ?? this.unlockedAt,
        isEquipped: isEquipped ?? this.isEquipped,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'emoji': emoji,
        'appSubject': appSubject.name,
        'tier': tier,
        'level': level,
        'experience': experience,
        'stats': stats.toJson(),
        'unlockedAt': unlockedAt.toIso8601String(),
        'isEquipped': isEquipped,
      };

  factory CharacterProfile.fromJson(Map<String, dynamic> j) =>
      CharacterProfile(
        id: j['id'] as String,
        name: j['name'] as String,
        emoji: j['emoji'] as String,
        appSubject: Subject.values.firstWhere(
          (s) => s.name == (j['appSubject'] as String),
        ),
        tier: j['tier'] as int,
        level: j['level'] as int? ?? 1,
        experience: j['experience'] as int? ?? 0,
        stats: CharacterStats.fromJson(
          (j['stats'] as Map?)?.cast<String, dynamic>() ?? {},
        ),
        unlockedAt: DateTime.parse(j['unlockedAt'] as String),
        isEquipped: j['isEquipped'] as bool? ?? false,
      );
}

// ─── CharacterState ────────────────────────────────────────────────────────

class CharacterState {
  final bool isUnlocked;
  final int level; // 1-5
  final bool hasExpressions; // Lv.2
  final bool hasPoses; // Lv.3
  final bool hasBackstory; // Lv.4
  final bool hasSparkle; // Lv.5
  final bool hasStampCoupon; // auto at Lv.MAX

  const CharacterState({
    this.isUnlocked = false,
    this.level = 1,
    this.hasExpressions = false,
    this.hasPoses = false,
    this.hasBackstory = false,
    this.hasSparkle = false,
    this.hasStampCoupon = false,
  });

  bool get isMaxLevel => level >= 5;
  String get levelLabel => isMaxLevel ? 'MAX ✨' : 'Lv.$level';
  int? get nextLevelCost => isMaxLevel ? null : kLevelUpCost[level + 1];

  CharacterState copyWith({
    bool? isUnlocked,
    int? level,
    bool? hasExpressions,
    bool? hasPoses,
    bool? hasBackstory,
    bool? hasSparkle,
    bool? hasStampCoupon,
  }) =>
      CharacterState(
        isUnlocked: isUnlocked ?? this.isUnlocked,
        level: level ?? this.level,
        hasExpressions: hasExpressions ?? this.hasExpressions,
        hasPoses: hasPoses ?? this.hasPoses,
        hasBackstory: hasBackstory ?? this.hasBackstory,
        hasSparkle: hasSparkle ?? this.hasSparkle,
        hasStampCoupon: hasStampCoupon ?? this.hasStampCoupon,
      );

  Map<String, dynamic> toJson() => {
        'isUnlocked': isUnlocked,
        'level': level,
        'hasExpressions': hasExpressions,
        'hasPoses': hasPoses,
        'hasBackstory': hasBackstory,
        'hasSparkle': hasSparkle,
        'hasStampCoupon': hasStampCoupon,
      };

  factory CharacterState.fromJson(Map<String, dynamic> j) => CharacterState(
        isUnlocked: j['isUnlocked'] as bool? ?? false,
        level: j['level'] as int? ?? 1,
        hasExpressions: j['hasExpressions'] as bool? ?? false,
        hasPoses: j['hasPoses'] as bool? ?? false,
        hasBackstory: j['hasBackstory'] as bool? ?? false,
        hasSparkle: j['hasSparkle'] as bool? ?? false,
        hasStampCoupon: j['hasStampCoupon'] as bool? ?? false,
      );
}

// ─── AppShopItem ───────────────────────────────────────────────────────────

/// ショップアイテムの種別。
/// - [emoji]: 従来通り絵文字だけで表現するアイテム（帽子・BGM等）
/// - [theme]: 背景テーマ（ホーム画面やプロフィールの背景色・柄）
/// - [frame]: プロフィールフレーム（アイコン周りの縁取り）
/// - [accessory]: アバターに装着する装飾パーツ
enum ShopItemKind { emoji, theme, frame, accessory }

class AppShopItem {
  final String id;
  final String emoji;
  final String name;
  final String description;
  final String category;
  final int coinCost;

  /// アイテムの種別。装着可能かどうか・表示方法の判定に使う。
  /// 既存の商品定義との後方互換のためデフォルトは [ShopItemKind.emoji]。
  final ShopItemKind kind;

  /// SVGアセットのパス（例:
  /// 'packages/shared_core/assets/shop/theme_sunny.svg'）。
  /// null の場合は従来通り [emoji] を表示にフォールバックする。
  final String? assetPath;

  /// テーマ等の色情報を直接埋め込む軽量な代替案。
  /// SVGアセットを用意しづらい場合や、コード側でグラデーション等を
  /// 動的に組み立てたい場合に使う（例: {'colors': ['#FFE082', '#FFF3C4']}）。
  final Map<String, dynamic>? themeData;

  const AppShopItem({
    required this.id,
    required this.emoji,
    required this.name,
    required this.description,
    required this.category,
    required this.coinCost,
    this.kind = ShopItemKind.emoji,
    this.assetPath,
    this.themeData,
  });
}
