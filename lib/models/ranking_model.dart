// 小学コレシリーズ共通「ランキング／リーダーボード」機能の型。
//
// shared_core は cloud_firestore 等の特定DBに依存していないため、実データの取得
// （Firestore/RTDB クエリ等）は行わない（feedback/lesson/badge と同じ設計思想）。
// 各アプリ側が RankingNotifier.setFetchHandler() で実際の取得処理を注入する。
//
// デフォルトは匿名表示（isNamePublic == false）とし、設定でオンにした場合のみ
// 実名（rawName）を表示する。ランキング種別は以下の4種類:
//   ① 全体ランキング              → RankingGroupBy.overall
//   ② 友達ランキング              → RankingGroupBy.friends
//   ③ 同学年ランキング            → RankingGroupBy.grade
//   ④ 同学年×同時期開始ランキング → RankingGroupBy.gradeAndStartPeriod

/// ランキングのグループ化種別。
enum RankingGroupBy {
  overall, // 全体ランキング
  friends, // 友達ランキング
  grade, // 同学年ランキング
  gradeAndStartPeriod, // 同学年×同時期開始ランキング
}

extension RankingGroupByLabel on RankingGroupBy {
  String get label => switch (this) {
        RankingGroupBy.overall => '全体ランキング',
        RankingGroupBy.friends => '友達ランキング',
        RankingGroupBy.grade => '同学年ランキング',
        RankingGroupBy.gradeAndStartPeriod => '同学年×同時期開始ランキング',
      };
}

/// DateTime から「同時期開始」判定に使う年月キー（例: '2026-09'）を生成する。
///
/// [RankingFilter.startPeriod] や [RankingEntry.startedAt] のグループ化キーとして
/// 各アプリ側のフィルタ処理・データ取得クエリ内で利用する想定。
String startPeriodKeyFrom(DateTime date) =>
    '${date.year}-${date.month.toString().padLeft(2, '0')}';

/// ランキング表示に使うフィルタ条件。
class RankingFilter {
  final RankingGroupBy groupBy;
  final int? grade; // groupBy が grade / gradeAndStartPeriod の場合に使用
  final String? startPeriod; // groupBy が gradeAndStartPeriod の場合に使用（例: '2026-09'）

  const RankingFilter({
    this.groupBy = RankingGroupBy.overall,
    this.grade,
    this.startPeriod,
  });

  RankingFilter copyWith({
    RankingGroupBy? groupBy,
    int? grade,
    String? startPeriod,
    bool clearGrade = false,
    bool clearStartPeriod = false,
  }) =>
      RankingFilter(
        groupBy: groupBy ?? this.groupBy,
        grade: clearGrade ? null : (grade ?? this.grade),
        startPeriod: clearStartPeriod ? null : (startPeriod ?? this.startPeriod),
      );

  @override
  String toString() =>
      'RankingFilter(groupBy: $groupBy, grade: $grade, startPeriod: $startPeriod)';
}

/// ランキング1件分のエントリ（ユーザー1人分のスコア・表示情報）。
class RankingEntry {
  final String userId;
  final String rawName; // 実名（内部利用。isNamePublic が false のときは直接表示しない）
  final bool isNamePublic; // 実名を公開設定にしているか（デフォルト false = 匿名表示）
  final int score;
  final int rank; // 計算済み順位（1始まり。未計算の場合は0）
  final int? grade; // 学年
  final DateTime? startedAt; // 利用開始日（同時期開始グループ化に使用）
  final bool isFriend; // 友達ランキングのフィルタ用

  const RankingEntry({
    required this.userId,
    required this.rawName,
    this.isNamePublic = false,
    required this.score,
    this.rank = 0,
    this.grade,
    this.startedAt,
    this.isFriend = false,
  });

  /// 表示用の名前。
  ///
  /// [isNamePublic] が true の場合は [rawName] をそのまま返し、
  /// false（デフォルト）の場合は userId から決定的に生成した匿名名を返す。
  /// 同じ userId であれば常に同じ匿名名になるため、同一ユーザーがランキング内で
  /// 一貫した表示になる。
  String get resolvedDisplayName {
    if (isNamePublic) return rawName;
    final anonymousId = userId.hashCode.abs() % 10000;
    return 'プレイヤー$anonymousId';
  }

  /// 開始時期グループ化キー（例: '2026-09'）。[startedAt] が未設定なら null。
  String? get startPeriodKey =>
      startedAt == null ? null : startPeriodKeyFrom(startedAt!);

  RankingEntry copyWith({
    String? userId,
    String? rawName,
    bool? isNamePublic,
    int? score,
    int? rank,
    int? grade,
    DateTime? startedAt,
    bool? isFriend,
  }) =>
      RankingEntry(
        userId: userId ?? this.userId,
        rawName: rawName ?? this.rawName,
        isNamePublic: isNamePublic ?? this.isNamePublic,
        score: score ?? this.score,
        rank: rank ?? this.rank,
        grade: grade ?? this.grade,
        startedAt: startedAt ?? this.startedAt,
        isFriend: isFriend ?? this.isFriend,
      );

  /// スコア降順で順位（rank）を採番し直したリストを返す簡易ヘルパー。
  /// 実データ取得側（アプリ側のhandler）で使ってもよいし、使わなくてもよい。
  static List<RankingEntry> withRecalculatedRanks(List<RankingEntry> entries) {
    final sorted = [...entries]..sort((a, b) => b.score.compareTo(a.score));
    return [
      for (var i = 0; i < sorted.length; i++) sorted[i].copyWith(rank: i + 1),
    ];
  }

  @override
  String toString() =>
      'RankingEntry(userId: $userId, score: $score, rank: $rank, grade: $grade, isFriend: $isFriend)';
}
