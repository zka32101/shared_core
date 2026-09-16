// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'league_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserLeague _$UserLeagueFromJson(Map<String, dynamic> json) {
  return _UserLeague.fromJson(json);
}

/// @nodoc
mixin _$UserLeague {
  String get userId => throw _privateConstructorUsedError;
  LeagueTier get tier => throw _privateConstructorUsedError;
  LeagueRank get rank => throw _privateConstructorUsedError;
  int get leaguePoints => throw _privateConstructorUsedError; // 0-100
  int get totalRankPoints => throw _privateConstructorUsedError; // 全体ランクポイント
  int get wins => throw _privateConstructorUsedError;
  int get losses => throw _privateConstructorUsedError;
  double get winRate => throw _privateConstructorUsedError; // 0-100
  DateTime get promotedAt => throw _privateConstructorUsedError; // 昇格日時
  DateTime? get demotedAt => throw _privateConstructorUsedError; // 降格日時
  bool get isPromo => throw _privateConstructorUsedError; // プロモーション進行中
  int get promoProgress =>
      throw _privateConstructorUsedError; // 0-3（3勝でプロモーション）
  int get consecutiveWins => throw _privateConstructorUsedError;
  DateTime get lastMatchAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this UserLeague to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserLeague
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserLeagueCopyWith<UserLeague> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLeagueCopyWith<$Res> {
  factory $UserLeagueCopyWith(
    UserLeague value,
    $Res Function(UserLeague) then,
  ) = _$UserLeagueCopyWithImpl<$Res, UserLeague>;
  @useResult
  $Res call({
    String userId,
    LeagueTier tier,
    LeagueRank rank,
    int leaguePoints,
    int totalRankPoints,
    int wins,
    int losses,
    double winRate,
    DateTime promotedAt,
    DateTime? demotedAt,
    bool isPromo,
    int promoProgress,
    int consecutiveWins,
    DateTime lastMatchAt,
    DateTime updatedAt,
  });
}

/// @nodoc
class _$UserLeagueCopyWithImpl<$Res, $Val extends UserLeague>
    implements $UserLeagueCopyWith<$Res> {
  _$UserLeagueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserLeague
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? tier = null,
    Object? rank = null,
    Object? leaguePoints = null,
    Object? totalRankPoints = null,
    Object? wins = null,
    Object? losses = null,
    Object? winRate = null,
    Object? promotedAt = null,
    Object? demotedAt = freezed,
    Object? isPromo = null,
    Object? promoProgress = null,
    Object? consecutiveWins = null,
    Object? lastMatchAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            tier: null == tier
                ? _value.tier
                : tier // ignore: cast_nullable_to_non_nullable
                      as LeagueTier,
            rank: null == rank
                ? _value.rank
                : rank // ignore: cast_nullable_to_non_nullable
                      as LeagueRank,
            leaguePoints: null == leaguePoints
                ? _value.leaguePoints
                : leaguePoints // ignore: cast_nullable_to_non_nullable
                      as int,
            totalRankPoints: null == totalRankPoints
                ? _value.totalRankPoints
                : totalRankPoints // ignore: cast_nullable_to_non_nullable
                      as int,
            wins: null == wins
                ? _value.wins
                : wins // ignore: cast_nullable_to_non_nullable
                      as int,
            losses: null == losses
                ? _value.losses
                : losses // ignore: cast_nullable_to_non_nullable
                      as int,
            winRate: null == winRate
                ? _value.winRate
                : winRate // ignore: cast_nullable_to_non_nullable
                      as double,
            promotedAt: null == promotedAt
                ? _value.promotedAt
                : promotedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            demotedAt: freezed == demotedAt
                ? _value.demotedAt
                : demotedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            isPromo: null == isPromo
                ? _value.isPromo
                : isPromo // ignore: cast_nullable_to_non_nullable
                      as bool,
            promoProgress: null == promoProgress
                ? _value.promoProgress
                : promoProgress // ignore: cast_nullable_to_non_nullable
                      as int,
            consecutiveWins: null == consecutiveWins
                ? _value.consecutiveWins
                : consecutiveWins // ignore: cast_nullable_to_non_nullable
                      as int,
            lastMatchAt: null == lastMatchAt
                ? _value.lastMatchAt
                : lastMatchAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserLeagueImplCopyWith<$Res>
    implements $UserLeagueCopyWith<$Res> {
  factory _$$UserLeagueImplCopyWith(
    _$UserLeagueImpl value,
    $Res Function(_$UserLeagueImpl) then,
  ) = __$$UserLeagueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    LeagueTier tier,
    LeagueRank rank,
    int leaguePoints,
    int totalRankPoints,
    int wins,
    int losses,
    double winRate,
    DateTime promotedAt,
    DateTime? demotedAt,
    bool isPromo,
    int promoProgress,
    int consecutiveWins,
    DateTime lastMatchAt,
    DateTime updatedAt,
  });
}

/// @nodoc
class __$$UserLeagueImplCopyWithImpl<$Res>
    extends _$UserLeagueCopyWithImpl<$Res, _$UserLeagueImpl>
    implements _$$UserLeagueImplCopyWith<$Res> {
  __$$UserLeagueImplCopyWithImpl(
    _$UserLeagueImpl _value,
    $Res Function(_$UserLeagueImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserLeague
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? tier = null,
    Object? rank = null,
    Object? leaguePoints = null,
    Object? totalRankPoints = null,
    Object? wins = null,
    Object? losses = null,
    Object? winRate = null,
    Object? promotedAt = null,
    Object? demotedAt = freezed,
    Object? isPromo = null,
    Object? promoProgress = null,
    Object? consecutiveWins = null,
    Object? lastMatchAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$UserLeagueImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        tier: null == tier
            ? _value.tier
            : tier // ignore: cast_nullable_to_non_nullable
                  as LeagueTier,
        rank: null == rank
            ? _value.rank
            : rank // ignore: cast_nullable_to_non_nullable
                  as LeagueRank,
        leaguePoints: null == leaguePoints
            ? _value.leaguePoints
            : leaguePoints // ignore: cast_nullable_to_non_nullable
                  as int,
        totalRankPoints: null == totalRankPoints
            ? _value.totalRankPoints
            : totalRankPoints // ignore: cast_nullable_to_non_nullable
                  as int,
        wins: null == wins
            ? _value.wins
            : wins // ignore: cast_nullable_to_non_nullable
                  as int,
        losses: null == losses
            ? _value.losses
            : losses // ignore: cast_nullable_to_non_nullable
                  as int,
        winRate: null == winRate
            ? _value.winRate
            : winRate // ignore: cast_nullable_to_non_nullable
                  as double,
        promotedAt: null == promotedAt
            ? _value.promotedAt
            : promotedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        demotedAt: freezed == demotedAt
            ? _value.demotedAt
            : demotedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        isPromo: null == isPromo
            ? _value.isPromo
            : isPromo // ignore: cast_nullable_to_non_nullable
                  as bool,
        promoProgress: null == promoProgress
            ? _value.promoProgress
            : promoProgress // ignore: cast_nullable_to_non_nullable
                  as int,
        consecutiveWins: null == consecutiveWins
            ? _value.consecutiveWins
            : consecutiveWins // ignore: cast_nullable_to_non_nullable
                  as int,
        lastMatchAt: null == lastMatchAt
            ? _value.lastMatchAt
            : lastMatchAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserLeagueImpl implements _UserLeague {
  const _$UserLeagueImpl({
    required this.userId,
    required this.tier,
    required this.rank,
    required this.leaguePoints,
    required this.totalRankPoints,
    required this.wins,
    required this.losses,
    required this.winRate,
    required this.promotedAt,
    required this.demotedAt,
    required this.isPromo,
    required this.promoProgress,
    required this.consecutiveWins,
    required this.lastMatchAt,
    required this.updatedAt,
  });

  factory _$UserLeagueImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLeagueImplFromJson(json);

  @override
  final String userId;
  @override
  final LeagueTier tier;
  @override
  final LeagueRank rank;
  @override
  final int leaguePoints;
  // 0-100
  @override
  final int totalRankPoints;
  // 全体ランクポイント
  @override
  final int wins;
  @override
  final int losses;
  @override
  final double winRate;
  // 0-100
  @override
  final DateTime promotedAt;
  // 昇格日時
  @override
  final DateTime? demotedAt;
  // 降格日時
  @override
  final bool isPromo;
  // プロモーション進行中
  @override
  final int promoProgress;
  // 0-3（3勝でプロモーション）
  @override
  final int consecutiveWins;
  @override
  final DateTime lastMatchAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'UserLeague(userId: $userId, tier: $tier, rank: $rank, leaguePoints: $leaguePoints, totalRankPoints: $totalRankPoints, wins: $wins, losses: $losses, winRate: $winRate, promotedAt: $promotedAt, demotedAt: $demotedAt, isPromo: $isPromo, promoProgress: $promoProgress, consecutiveWins: $consecutiveWins, lastMatchAt: $lastMatchAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLeagueImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.tier, tier) || other.tier == tier) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.leaguePoints, leaguePoints) ||
                other.leaguePoints == leaguePoints) &&
            (identical(other.totalRankPoints, totalRankPoints) ||
                other.totalRankPoints == totalRankPoints) &&
            (identical(other.wins, wins) || other.wins == wins) &&
            (identical(other.losses, losses) || other.losses == losses) &&
            (identical(other.winRate, winRate) || other.winRate == winRate) &&
            (identical(other.promotedAt, promotedAt) ||
                other.promotedAt == promotedAt) &&
            (identical(other.demotedAt, demotedAt) ||
                other.demotedAt == demotedAt) &&
            (identical(other.isPromo, isPromo) || other.isPromo == isPromo) &&
            (identical(other.promoProgress, promoProgress) ||
                other.promoProgress == promoProgress) &&
            (identical(other.consecutiveWins, consecutiveWins) ||
                other.consecutiveWins == consecutiveWins) &&
            (identical(other.lastMatchAt, lastMatchAt) ||
                other.lastMatchAt == lastMatchAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    tier,
    rank,
    leaguePoints,
    totalRankPoints,
    wins,
    losses,
    winRate,
    promotedAt,
    demotedAt,
    isPromo,
    promoProgress,
    consecutiveWins,
    lastMatchAt,
    updatedAt,
  );

  /// Create a copy of UserLeague
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLeagueImplCopyWith<_$UserLeagueImpl> get copyWith =>
      __$$UserLeagueImplCopyWithImpl<_$UserLeagueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLeagueImplToJson(this);
  }
}

abstract class _UserLeague implements UserLeague {
  const factory _UserLeague({
    required final String userId,
    required final LeagueTier tier,
    required final LeagueRank rank,
    required final int leaguePoints,
    required final int totalRankPoints,
    required final int wins,
    required final int losses,
    required final double winRate,
    required final DateTime promotedAt,
    required final DateTime? demotedAt,
    required final bool isPromo,
    required final int promoProgress,
    required final int consecutiveWins,
    required final DateTime lastMatchAt,
    required final DateTime updatedAt,
  }) = _$UserLeagueImpl;

  factory _UserLeague.fromJson(Map<String, dynamic> json) =
      _$UserLeagueImpl.fromJson;

  @override
  String get userId;
  @override
  LeagueTier get tier;
  @override
  LeagueRank get rank;
  @override
  int get leaguePoints; // 0-100
  @override
  int get totalRankPoints; // 全体ランクポイント
  @override
  int get wins;
  @override
  int get losses;
  @override
  double get winRate; // 0-100
  @override
  DateTime get promotedAt; // 昇格日時
  @override
  DateTime? get demotedAt; // 降格日時
  @override
  bool get isPromo; // プロモーション進行中
  @override
  int get promoProgress; // 0-3（3勝でプロモーション）
  @override
  int get consecutiveWins;
  @override
  DateTime get lastMatchAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of UserLeague
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLeagueImplCopyWith<_$UserLeagueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LeagueMatch _$LeagueMatchFromJson(Map<String, dynamic> json) {
  return _LeagueMatch.fromJson(json);
}

/// @nodoc
mixin _$LeagueMatch {
  String get matchId => throw _privateConstructorUsedError;
  String get player1Id => throw _privateConstructorUsedError;
  String get player2Id => throw _privateConstructorUsedError;
  String get winnerId => throw _privateConstructorUsedError;
  int get pointsAwarded => throw _privateConstructorUsedError;
  int get player1PointsChange => throw _privateConstructorUsedError;
  int get player2PointsChange => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get appId => throw _privateConstructorUsedError;

  /// Serializes this LeagueMatch to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeagueMatch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeagueMatchCopyWith<LeagueMatch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeagueMatchCopyWith<$Res> {
  factory $LeagueMatchCopyWith(
    LeagueMatch value,
    $Res Function(LeagueMatch) then,
  ) = _$LeagueMatchCopyWithImpl<$Res, LeagueMatch>;
  @useResult
  $Res call({
    String matchId,
    String player1Id,
    String player2Id,
    String winnerId,
    int pointsAwarded,
    int player1PointsChange,
    int player2PointsChange,
    DateTime createdAt,
    String? appId,
  });
}

/// @nodoc
class _$LeagueMatchCopyWithImpl<$Res, $Val extends LeagueMatch>
    implements $LeagueMatchCopyWith<$Res> {
  _$LeagueMatchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeagueMatch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matchId = null,
    Object? player1Id = null,
    Object? player2Id = null,
    Object? winnerId = null,
    Object? pointsAwarded = null,
    Object? player1PointsChange = null,
    Object? player2PointsChange = null,
    Object? createdAt = null,
    Object? appId = freezed,
  }) {
    return _then(
      _value.copyWith(
            matchId: null == matchId
                ? _value.matchId
                : matchId // ignore: cast_nullable_to_non_nullable
                      as String,
            player1Id: null == player1Id
                ? _value.player1Id
                : player1Id // ignore: cast_nullable_to_non_nullable
                      as String,
            player2Id: null == player2Id
                ? _value.player2Id
                : player2Id // ignore: cast_nullable_to_non_nullable
                      as String,
            winnerId: null == winnerId
                ? _value.winnerId
                : winnerId // ignore: cast_nullable_to_non_nullable
                      as String,
            pointsAwarded: null == pointsAwarded
                ? _value.pointsAwarded
                : pointsAwarded // ignore: cast_nullable_to_non_nullable
                      as int,
            player1PointsChange: null == player1PointsChange
                ? _value.player1PointsChange
                : player1PointsChange // ignore: cast_nullable_to_non_nullable
                      as int,
            player2PointsChange: null == player2PointsChange
                ? _value.player2PointsChange
                : player2PointsChange // ignore: cast_nullable_to_non_nullable
                      as int,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            appId: freezed == appId
                ? _value.appId
                : appId // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LeagueMatchImplCopyWith<$Res>
    implements $LeagueMatchCopyWith<$Res> {
  factory _$$LeagueMatchImplCopyWith(
    _$LeagueMatchImpl value,
    $Res Function(_$LeagueMatchImpl) then,
  ) = __$$LeagueMatchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String matchId,
    String player1Id,
    String player2Id,
    String winnerId,
    int pointsAwarded,
    int player1PointsChange,
    int player2PointsChange,
    DateTime createdAt,
    String? appId,
  });
}

/// @nodoc
class __$$LeagueMatchImplCopyWithImpl<$Res>
    extends _$LeagueMatchCopyWithImpl<$Res, _$LeagueMatchImpl>
    implements _$$LeagueMatchImplCopyWith<$Res> {
  __$$LeagueMatchImplCopyWithImpl(
    _$LeagueMatchImpl _value,
    $Res Function(_$LeagueMatchImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LeagueMatch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matchId = null,
    Object? player1Id = null,
    Object? player2Id = null,
    Object? winnerId = null,
    Object? pointsAwarded = null,
    Object? player1PointsChange = null,
    Object? player2PointsChange = null,
    Object? createdAt = null,
    Object? appId = freezed,
  }) {
    return _then(
      _$LeagueMatchImpl(
        matchId: null == matchId
            ? _value.matchId
            : matchId // ignore: cast_nullable_to_non_nullable
                  as String,
        player1Id: null == player1Id
            ? _value.player1Id
            : player1Id // ignore: cast_nullable_to_non_nullable
                  as String,
        player2Id: null == player2Id
            ? _value.player2Id
            : player2Id // ignore: cast_nullable_to_non_nullable
                  as String,
        winnerId: null == winnerId
            ? _value.winnerId
            : winnerId // ignore: cast_nullable_to_non_nullable
                  as String,
        pointsAwarded: null == pointsAwarded
            ? _value.pointsAwarded
            : pointsAwarded // ignore: cast_nullable_to_non_nullable
                  as int,
        player1PointsChange: null == player1PointsChange
            ? _value.player1PointsChange
            : player1PointsChange // ignore: cast_nullable_to_non_nullable
                  as int,
        player2PointsChange: null == player2PointsChange
            ? _value.player2PointsChange
            : player2PointsChange // ignore: cast_nullable_to_non_nullable
                  as int,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        appId: freezed == appId
            ? _value.appId
            : appId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LeagueMatchImpl implements _LeagueMatch {
  const _$LeagueMatchImpl({
    required this.matchId,
    required this.player1Id,
    required this.player2Id,
    required this.winnerId,
    required this.pointsAwarded,
    required this.player1PointsChange,
    required this.player2PointsChange,
    required this.createdAt,
    required this.appId,
  });

  factory _$LeagueMatchImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeagueMatchImplFromJson(json);

  @override
  final String matchId;
  @override
  final String player1Id;
  @override
  final String player2Id;
  @override
  final String winnerId;
  @override
  final int pointsAwarded;
  @override
  final int player1PointsChange;
  @override
  final int player2PointsChange;
  @override
  final DateTime createdAt;
  @override
  final String? appId;

  @override
  String toString() {
    return 'LeagueMatch(matchId: $matchId, player1Id: $player1Id, player2Id: $player2Id, winnerId: $winnerId, pointsAwarded: $pointsAwarded, player1PointsChange: $player1PointsChange, player2PointsChange: $player2PointsChange, createdAt: $createdAt, appId: $appId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeagueMatchImpl &&
            (identical(other.matchId, matchId) || other.matchId == matchId) &&
            (identical(other.player1Id, player1Id) ||
                other.player1Id == player1Id) &&
            (identical(other.player2Id, player2Id) ||
                other.player2Id == player2Id) &&
            (identical(other.winnerId, winnerId) ||
                other.winnerId == winnerId) &&
            (identical(other.pointsAwarded, pointsAwarded) ||
                other.pointsAwarded == pointsAwarded) &&
            (identical(other.player1PointsChange, player1PointsChange) ||
                other.player1PointsChange == player1PointsChange) &&
            (identical(other.player2PointsChange, player2PointsChange) ||
                other.player2PointsChange == player2PointsChange) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.appId, appId) || other.appId == appId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    matchId,
    player1Id,
    player2Id,
    winnerId,
    pointsAwarded,
    player1PointsChange,
    player2PointsChange,
    createdAt,
    appId,
  );

  /// Create a copy of LeagueMatch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeagueMatchImplCopyWith<_$LeagueMatchImpl> get copyWith =>
      __$$LeagueMatchImplCopyWithImpl<_$LeagueMatchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeagueMatchImplToJson(this);
  }
}

abstract class _LeagueMatch implements LeagueMatch {
  const factory _LeagueMatch({
    required final String matchId,
    required final String player1Id,
    required final String player2Id,
    required final String winnerId,
    required final int pointsAwarded,
    required final int player1PointsChange,
    required final int player2PointsChange,
    required final DateTime createdAt,
    required final String? appId,
  }) = _$LeagueMatchImpl;

  factory _LeagueMatch.fromJson(Map<String, dynamic> json) =
      _$LeagueMatchImpl.fromJson;

  @override
  String get matchId;
  @override
  String get player1Id;
  @override
  String get player2Id;
  @override
  String get winnerId;
  @override
  int get pointsAwarded;
  @override
  int get player1PointsChange;
  @override
  int get player2PointsChange;
  @override
  DateTime get createdAt;
  @override
  String? get appId;

  /// Create a copy of LeagueMatch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeagueMatchImplCopyWith<_$LeagueMatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LeagueRanking _$LeagueRankingFromJson(Map<String, dynamic> json) {
  return _LeagueRanking.fromJson(json);
}

/// @nodoc
mixin _$LeagueRanking {
  LeagueTier get tier => throw _privateConstructorUsedError;
  List<LeagueRankingEntry> get rankings =>
      throw _privateConstructorUsedError; // 上位100
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this LeagueRanking to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeagueRanking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeagueRankingCopyWith<LeagueRanking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeagueRankingCopyWith<$Res> {
  factory $LeagueRankingCopyWith(
    LeagueRanking value,
    $Res Function(LeagueRanking) then,
  ) = _$LeagueRankingCopyWithImpl<$Res, LeagueRanking>;
  @useResult
  $Res call({
    LeagueTier tier,
    List<LeagueRankingEntry> rankings,
    DateTime updatedAt,
  });
}

/// @nodoc
class _$LeagueRankingCopyWithImpl<$Res, $Val extends LeagueRanking>
    implements $LeagueRankingCopyWith<$Res> {
  _$LeagueRankingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeagueRanking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tier = null,
    Object? rankings = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            tier: null == tier
                ? _value.tier
                : tier // ignore: cast_nullable_to_non_nullable
                      as LeagueTier,
            rankings: null == rankings
                ? _value.rankings
                : rankings // ignore: cast_nullable_to_non_nullable
                      as List<LeagueRankingEntry>,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LeagueRankingImplCopyWith<$Res>
    implements $LeagueRankingCopyWith<$Res> {
  factory _$$LeagueRankingImplCopyWith(
    _$LeagueRankingImpl value,
    $Res Function(_$LeagueRankingImpl) then,
  ) = __$$LeagueRankingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    LeagueTier tier,
    List<LeagueRankingEntry> rankings,
    DateTime updatedAt,
  });
}

/// @nodoc
class __$$LeagueRankingImplCopyWithImpl<$Res>
    extends _$LeagueRankingCopyWithImpl<$Res, _$LeagueRankingImpl>
    implements _$$LeagueRankingImplCopyWith<$Res> {
  __$$LeagueRankingImplCopyWithImpl(
    _$LeagueRankingImpl _value,
    $Res Function(_$LeagueRankingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LeagueRanking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tier = null,
    Object? rankings = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$LeagueRankingImpl(
        tier: null == tier
            ? _value.tier
            : tier // ignore: cast_nullable_to_non_nullable
                  as LeagueTier,
        rankings: null == rankings
            ? _value._rankings
            : rankings // ignore: cast_nullable_to_non_nullable
                  as List<LeagueRankingEntry>,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LeagueRankingImpl implements _LeagueRanking {
  const _$LeagueRankingImpl({
    required this.tier,
    required final List<LeagueRankingEntry> rankings,
    required this.updatedAt,
  }) : _rankings = rankings;

  factory _$LeagueRankingImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeagueRankingImplFromJson(json);

  @override
  final LeagueTier tier;
  final List<LeagueRankingEntry> _rankings;
  @override
  List<LeagueRankingEntry> get rankings {
    if (_rankings is EqualUnmodifiableListView) return _rankings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rankings);
  }

  // 上位100
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'LeagueRanking(tier: $tier, rankings: $rankings, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeagueRankingImpl &&
            (identical(other.tier, tier) || other.tier == tier) &&
            const DeepCollectionEquality().equals(other._rankings, _rankings) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    tier,
    const DeepCollectionEquality().hash(_rankings),
    updatedAt,
  );

  /// Create a copy of LeagueRanking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeagueRankingImplCopyWith<_$LeagueRankingImpl> get copyWith =>
      __$$LeagueRankingImplCopyWithImpl<_$LeagueRankingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeagueRankingImplToJson(this);
  }
}

abstract class _LeagueRanking implements LeagueRanking {
  const factory _LeagueRanking({
    required final LeagueTier tier,
    required final List<LeagueRankingEntry> rankings,
    required final DateTime updatedAt,
  }) = _$LeagueRankingImpl;

  factory _LeagueRanking.fromJson(Map<String, dynamic> json) =
      _$LeagueRankingImpl.fromJson;

  @override
  LeagueTier get tier;
  @override
  List<LeagueRankingEntry> get rankings; // 上位100
  @override
  DateTime get updatedAt;

  /// Create a copy of LeagueRanking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeagueRankingImplCopyWith<_$LeagueRankingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LeagueRankingEntry _$LeagueRankingEntryFromJson(Map<String, dynamic> json) {
  return _LeagueRankingEntry.fromJson(json);
}

/// @nodoc
mixin _$LeagueRankingEntry {
  int get position => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  LeagueRank get rank => throw _privateConstructorUsedError;
  int get leaguePoints => throw _privateConstructorUsedError;
  int get totalRankPoints => throw _privateConstructorUsedError;
  int get wins => throw _privateConstructorUsedError;
  double get winRate => throw _privateConstructorUsedError;

  /// Serializes this LeagueRankingEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeagueRankingEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeagueRankingEntryCopyWith<LeagueRankingEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeagueRankingEntryCopyWith<$Res> {
  factory $LeagueRankingEntryCopyWith(
    LeagueRankingEntry value,
    $Res Function(LeagueRankingEntry) then,
  ) = _$LeagueRankingEntryCopyWithImpl<$Res, LeagueRankingEntry>;
  @useResult
  $Res call({
    int position,
    String userId,
    String userName,
    LeagueRank rank,
    int leaguePoints,
    int totalRankPoints,
    int wins,
    double winRate,
  });
}

/// @nodoc
class _$LeagueRankingEntryCopyWithImpl<$Res, $Val extends LeagueRankingEntry>
    implements $LeagueRankingEntryCopyWith<$Res> {
  _$LeagueRankingEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeagueRankingEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? userId = null,
    Object? userName = null,
    Object? rank = null,
    Object? leaguePoints = null,
    Object? totalRankPoints = null,
    Object? wins = null,
    Object? winRate = null,
  }) {
    return _then(
      _value.copyWith(
            position: null == position
                ? _value.position
                : position // ignore: cast_nullable_to_non_nullable
                      as int,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            userName: null == userName
                ? _value.userName
                : userName // ignore: cast_nullable_to_non_nullable
                      as String,
            rank: null == rank
                ? _value.rank
                : rank // ignore: cast_nullable_to_non_nullable
                      as LeagueRank,
            leaguePoints: null == leaguePoints
                ? _value.leaguePoints
                : leaguePoints // ignore: cast_nullable_to_non_nullable
                      as int,
            totalRankPoints: null == totalRankPoints
                ? _value.totalRankPoints
                : totalRankPoints // ignore: cast_nullable_to_non_nullable
                      as int,
            wins: null == wins
                ? _value.wins
                : wins // ignore: cast_nullable_to_non_nullable
                      as int,
            winRate: null == winRate
                ? _value.winRate
                : winRate // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LeagueRankingEntryImplCopyWith<$Res>
    implements $LeagueRankingEntryCopyWith<$Res> {
  factory _$$LeagueRankingEntryImplCopyWith(
    _$LeagueRankingEntryImpl value,
    $Res Function(_$LeagueRankingEntryImpl) then,
  ) = __$$LeagueRankingEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int position,
    String userId,
    String userName,
    LeagueRank rank,
    int leaguePoints,
    int totalRankPoints,
    int wins,
    double winRate,
  });
}

/// @nodoc
class __$$LeagueRankingEntryImplCopyWithImpl<$Res>
    extends _$LeagueRankingEntryCopyWithImpl<$Res, _$LeagueRankingEntryImpl>
    implements _$$LeagueRankingEntryImplCopyWith<$Res> {
  __$$LeagueRankingEntryImplCopyWithImpl(
    _$LeagueRankingEntryImpl _value,
    $Res Function(_$LeagueRankingEntryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LeagueRankingEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? userId = null,
    Object? userName = null,
    Object? rank = null,
    Object? leaguePoints = null,
    Object? totalRankPoints = null,
    Object? wins = null,
    Object? winRate = null,
  }) {
    return _then(
      _$LeagueRankingEntryImpl(
        position: null == position
            ? _value.position
            : position // ignore: cast_nullable_to_non_nullable
                  as int,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        userName: null == userName
            ? _value.userName
            : userName // ignore: cast_nullable_to_non_nullable
                  as String,
        rank: null == rank
            ? _value.rank
            : rank // ignore: cast_nullable_to_non_nullable
                  as LeagueRank,
        leaguePoints: null == leaguePoints
            ? _value.leaguePoints
            : leaguePoints // ignore: cast_nullable_to_non_nullable
                  as int,
        totalRankPoints: null == totalRankPoints
            ? _value.totalRankPoints
            : totalRankPoints // ignore: cast_nullable_to_non_nullable
                  as int,
        wins: null == wins
            ? _value.wins
            : wins // ignore: cast_nullable_to_non_nullable
                  as int,
        winRate: null == winRate
            ? _value.winRate
            : winRate // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LeagueRankingEntryImpl implements _LeagueRankingEntry {
  const _$LeagueRankingEntryImpl({
    required this.position,
    required this.userId,
    required this.userName,
    required this.rank,
    required this.leaguePoints,
    required this.totalRankPoints,
    required this.wins,
    required this.winRate,
  });

  factory _$LeagueRankingEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeagueRankingEntryImplFromJson(json);

  @override
  final int position;
  @override
  final String userId;
  @override
  final String userName;
  @override
  final LeagueRank rank;
  @override
  final int leaguePoints;
  @override
  final int totalRankPoints;
  @override
  final int wins;
  @override
  final double winRate;

  @override
  String toString() {
    return 'LeagueRankingEntry(position: $position, userId: $userId, userName: $userName, rank: $rank, leaguePoints: $leaguePoints, totalRankPoints: $totalRankPoints, wins: $wins, winRate: $winRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeagueRankingEntryImpl &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.leaguePoints, leaguePoints) ||
                other.leaguePoints == leaguePoints) &&
            (identical(other.totalRankPoints, totalRankPoints) ||
                other.totalRankPoints == totalRankPoints) &&
            (identical(other.wins, wins) || other.wins == wins) &&
            (identical(other.winRate, winRate) || other.winRate == winRate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    position,
    userId,
    userName,
    rank,
    leaguePoints,
    totalRankPoints,
    wins,
    winRate,
  );

  /// Create a copy of LeagueRankingEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeagueRankingEntryImplCopyWith<_$LeagueRankingEntryImpl> get copyWith =>
      __$$LeagueRankingEntryImplCopyWithImpl<_$LeagueRankingEntryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LeagueRankingEntryImplToJson(this);
  }
}

abstract class _LeagueRankingEntry implements LeagueRankingEntry {
  const factory _LeagueRankingEntry({
    required final int position,
    required final String userId,
    required final String userName,
    required final LeagueRank rank,
    required final int leaguePoints,
    required final int totalRankPoints,
    required final int wins,
    required final double winRate,
  }) = _$LeagueRankingEntryImpl;

  factory _LeagueRankingEntry.fromJson(Map<String, dynamic> json) =
      _$LeagueRankingEntryImpl.fromJson;

  @override
  int get position;
  @override
  String get userId;
  @override
  String get userName;
  @override
  LeagueRank get rank;
  @override
  int get leaguePoints;
  @override
  int get totalRankPoints;
  @override
  int get wins;
  @override
  double get winRate;

  /// Create a copy of LeagueRankingEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeagueRankingEntryImplCopyWith<_$LeagueRankingEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TierRequirements _$TierRequirementsFromJson(Map<String, dynamic> json) {
  return _TierRequirements.fromJson(json);
}

/// @nodoc
mixin _$TierRequirements {
  LeagueTier get tier => throw _privateConstructorUsedError;
  int get minRankPoints => throw _privateConstructorUsedError;
  int get maxRankPoints => throw _privateConstructorUsedError;
  int get weeklyRewardCoins => throw _privateConstructorUsedError;
  List<String> get rewardBadges => throw _privateConstructorUsedError;

  /// Serializes this TierRequirements to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TierRequirements
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TierRequirementsCopyWith<TierRequirements> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TierRequirementsCopyWith<$Res> {
  factory $TierRequirementsCopyWith(
    TierRequirements value,
    $Res Function(TierRequirements) then,
  ) = _$TierRequirementsCopyWithImpl<$Res, TierRequirements>;
  @useResult
  $Res call({
    LeagueTier tier,
    int minRankPoints,
    int maxRankPoints,
    int weeklyRewardCoins,
    List<String> rewardBadges,
  });
}

/// @nodoc
class _$TierRequirementsCopyWithImpl<$Res, $Val extends TierRequirements>
    implements $TierRequirementsCopyWith<$Res> {
  _$TierRequirementsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TierRequirements
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tier = null,
    Object? minRankPoints = null,
    Object? maxRankPoints = null,
    Object? weeklyRewardCoins = null,
    Object? rewardBadges = null,
  }) {
    return _then(
      _value.copyWith(
            tier: null == tier
                ? _value.tier
                : tier // ignore: cast_nullable_to_non_nullable
                      as LeagueTier,
            minRankPoints: null == minRankPoints
                ? _value.minRankPoints
                : minRankPoints // ignore: cast_nullable_to_non_nullable
                      as int,
            maxRankPoints: null == maxRankPoints
                ? _value.maxRankPoints
                : maxRankPoints // ignore: cast_nullable_to_non_nullable
                      as int,
            weeklyRewardCoins: null == weeklyRewardCoins
                ? _value.weeklyRewardCoins
                : weeklyRewardCoins // ignore: cast_nullable_to_non_nullable
                      as int,
            rewardBadges: null == rewardBadges
                ? _value.rewardBadges
                : rewardBadges // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TierRequirementsImplCopyWith<$Res>
    implements $TierRequirementsCopyWith<$Res> {
  factory _$$TierRequirementsImplCopyWith(
    _$TierRequirementsImpl value,
    $Res Function(_$TierRequirementsImpl) then,
  ) = __$$TierRequirementsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    LeagueTier tier,
    int minRankPoints,
    int maxRankPoints,
    int weeklyRewardCoins,
    List<String> rewardBadges,
  });
}

/// @nodoc
class __$$TierRequirementsImplCopyWithImpl<$Res>
    extends _$TierRequirementsCopyWithImpl<$Res, _$TierRequirementsImpl>
    implements _$$TierRequirementsImplCopyWith<$Res> {
  __$$TierRequirementsImplCopyWithImpl(
    _$TierRequirementsImpl _value,
    $Res Function(_$TierRequirementsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TierRequirements
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tier = null,
    Object? minRankPoints = null,
    Object? maxRankPoints = null,
    Object? weeklyRewardCoins = null,
    Object? rewardBadges = null,
  }) {
    return _then(
      _$TierRequirementsImpl(
        tier: null == tier
            ? _value.tier
            : tier // ignore: cast_nullable_to_non_nullable
                  as LeagueTier,
        minRankPoints: null == minRankPoints
            ? _value.minRankPoints
            : minRankPoints // ignore: cast_nullable_to_non_nullable
                  as int,
        maxRankPoints: null == maxRankPoints
            ? _value.maxRankPoints
            : maxRankPoints // ignore: cast_nullable_to_non_nullable
                  as int,
        weeklyRewardCoins: null == weeklyRewardCoins
            ? _value.weeklyRewardCoins
            : weeklyRewardCoins // ignore: cast_nullable_to_non_nullable
                  as int,
        rewardBadges: null == rewardBadges
            ? _value._rewardBadges
            : rewardBadges // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TierRequirementsImpl implements _TierRequirements {
  const _$TierRequirementsImpl({
    required this.tier,
    required this.minRankPoints,
    required this.maxRankPoints,
    required this.weeklyRewardCoins,
    required final List<String> rewardBadges,
  }) : _rewardBadges = rewardBadges;

  factory _$TierRequirementsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TierRequirementsImplFromJson(json);

  @override
  final LeagueTier tier;
  @override
  final int minRankPoints;
  @override
  final int maxRankPoints;
  @override
  final int weeklyRewardCoins;
  final List<String> _rewardBadges;
  @override
  List<String> get rewardBadges {
    if (_rewardBadges is EqualUnmodifiableListView) return _rewardBadges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rewardBadges);
  }

  @override
  String toString() {
    return 'TierRequirements(tier: $tier, minRankPoints: $minRankPoints, maxRankPoints: $maxRankPoints, weeklyRewardCoins: $weeklyRewardCoins, rewardBadges: $rewardBadges)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TierRequirementsImpl &&
            (identical(other.tier, tier) || other.tier == tier) &&
            (identical(other.minRankPoints, minRankPoints) ||
                other.minRankPoints == minRankPoints) &&
            (identical(other.maxRankPoints, maxRankPoints) ||
                other.maxRankPoints == maxRankPoints) &&
            (identical(other.weeklyRewardCoins, weeklyRewardCoins) ||
                other.weeklyRewardCoins == weeklyRewardCoins) &&
            const DeepCollectionEquality().equals(
              other._rewardBadges,
              _rewardBadges,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    tier,
    minRankPoints,
    maxRankPoints,
    weeklyRewardCoins,
    const DeepCollectionEquality().hash(_rewardBadges),
  );

  /// Create a copy of TierRequirements
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TierRequirementsImplCopyWith<_$TierRequirementsImpl> get copyWith =>
      __$$TierRequirementsImplCopyWithImpl<_$TierRequirementsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TierRequirementsImplToJson(this);
  }
}

abstract class _TierRequirements implements TierRequirements {
  const factory _TierRequirements({
    required final LeagueTier tier,
    required final int minRankPoints,
    required final int maxRankPoints,
    required final int weeklyRewardCoins,
    required final List<String> rewardBadges,
  }) = _$TierRequirementsImpl;

  factory _TierRequirements.fromJson(Map<String, dynamic> json) =
      _$TierRequirementsImpl.fromJson;

  @override
  LeagueTier get tier;
  @override
  int get minRankPoints;
  @override
  int get maxRankPoints;
  @override
  int get weeklyRewardCoins;
  @override
  List<String> get rewardBadges;

  /// Create a copy of TierRequirements
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TierRequirementsImplCopyWith<_$TierRequirementsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SeasonStats _$SeasonStatsFromJson(Map<String, dynamic> json) {
  return _SeasonStats.fromJson(json);
}

/// @nodoc
mixin _$SeasonStats {
  String get userId => throw _privateConstructorUsedError;
  int get seasonNumber => throw _privateConstructorUsedError;
  LeagueTier get highestTier => throw _privateConstructorUsedError;
  int get totalWins => throw _privateConstructorUsedError;
  int get totalMatches => throw _privateConstructorUsedError;
  double get seasonWinRate => throw _privateConstructorUsedError;
  int get coinsEarned => throw _privateConstructorUsedError;
  List<String> get badgesEarned => throw _privateConstructorUsedError;
  DateTime get seasonEndDate => throw _privateConstructorUsedError;

  /// Serializes this SeasonStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SeasonStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SeasonStatsCopyWith<SeasonStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeasonStatsCopyWith<$Res> {
  factory $SeasonStatsCopyWith(
    SeasonStats value,
    $Res Function(SeasonStats) then,
  ) = _$SeasonStatsCopyWithImpl<$Res, SeasonStats>;
  @useResult
  $Res call({
    String userId,
    int seasonNumber,
    LeagueTier highestTier,
    int totalWins,
    int totalMatches,
    double seasonWinRate,
    int coinsEarned,
    List<String> badgesEarned,
    DateTime seasonEndDate,
  });
}

/// @nodoc
class _$SeasonStatsCopyWithImpl<$Res, $Val extends SeasonStats>
    implements $SeasonStatsCopyWith<$Res> {
  _$SeasonStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SeasonStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? seasonNumber = null,
    Object? highestTier = null,
    Object? totalWins = null,
    Object? totalMatches = null,
    Object? seasonWinRate = null,
    Object? coinsEarned = null,
    Object? badgesEarned = null,
    Object? seasonEndDate = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            seasonNumber: null == seasonNumber
                ? _value.seasonNumber
                : seasonNumber // ignore: cast_nullable_to_non_nullable
                      as int,
            highestTier: null == highestTier
                ? _value.highestTier
                : highestTier // ignore: cast_nullable_to_non_nullable
                      as LeagueTier,
            totalWins: null == totalWins
                ? _value.totalWins
                : totalWins // ignore: cast_nullable_to_non_nullable
                      as int,
            totalMatches: null == totalMatches
                ? _value.totalMatches
                : totalMatches // ignore: cast_nullable_to_non_nullable
                      as int,
            seasonWinRate: null == seasonWinRate
                ? _value.seasonWinRate
                : seasonWinRate // ignore: cast_nullable_to_non_nullable
                      as double,
            coinsEarned: null == coinsEarned
                ? _value.coinsEarned
                : coinsEarned // ignore: cast_nullable_to_non_nullable
                      as int,
            badgesEarned: null == badgesEarned
                ? _value.badgesEarned
                : badgesEarned // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            seasonEndDate: null == seasonEndDate
                ? _value.seasonEndDate
                : seasonEndDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SeasonStatsImplCopyWith<$Res>
    implements $SeasonStatsCopyWith<$Res> {
  factory _$$SeasonStatsImplCopyWith(
    _$SeasonStatsImpl value,
    $Res Function(_$SeasonStatsImpl) then,
  ) = __$$SeasonStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    int seasonNumber,
    LeagueTier highestTier,
    int totalWins,
    int totalMatches,
    double seasonWinRate,
    int coinsEarned,
    List<String> badgesEarned,
    DateTime seasonEndDate,
  });
}

/// @nodoc
class __$$SeasonStatsImplCopyWithImpl<$Res>
    extends _$SeasonStatsCopyWithImpl<$Res, _$SeasonStatsImpl>
    implements _$$SeasonStatsImplCopyWith<$Res> {
  __$$SeasonStatsImplCopyWithImpl(
    _$SeasonStatsImpl _value,
    $Res Function(_$SeasonStatsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SeasonStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? seasonNumber = null,
    Object? highestTier = null,
    Object? totalWins = null,
    Object? totalMatches = null,
    Object? seasonWinRate = null,
    Object? coinsEarned = null,
    Object? badgesEarned = null,
    Object? seasonEndDate = null,
  }) {
    return _then(
      _$SeasonStatsImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        seasonNumber: null == seasonNumber
            ? _value.seasonNumber
            : seasonNumber // ignore: cast_nullable_to_non_nullable
                  as int,
        highestTier: null == highestTier
            ? _value.highestTier
            : highestTier // ignore: cast_nullable_to_non_nullable
                  as LeagueTier,
        totalWins: null == totalWins
            ? _value.totalWins
            : totalWins // ignore: cast_nullable_to_non_nullable
                  as int,
        totalMatches: null == totalMatches
            ? _value.totalMatches
            : totalMatches // ignore: cast_nullable_to_non_nullable
                  as int,
        seasonWinRate: null == seasonWinRate
            ? _value.seasonWinRate
            : seasonWinRate // ignore: cast_nullable_to_non_nullable
                  as double,
        coinsEarned: null == coinsEarned
            ? _value.coinsEarned
            : coinsEarned // ignore: cast_nullable_to_non_nullable
                  as int,
        badgesEarned: null == badgesEarned
            ? _value._badgesEarned
            : badgesEarned // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        seasonEndDate: null == seasonEndDate
            ? _value.seasonEndDate
            : seasonEndDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SeasonStatsImpl implements _SeasonStats {
  const _$SeasonStatsImpl({
    required this.userId,
    required this.seasonNumber,
    required this.highestTier,
    required this.totalWins,
    required this.totalMatches,
    required this.seasonWinRate,
    required this.coinsEarned,
    required final List<String> badgesEarned,
    required this.seasonEndDate,
  }) : _badgesEarned = badgesEarned;

  factory _$SeasonStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeasonStatsImplFromJson(json);

  @override
  final String userId;
  @override
  final int seasonNumber;
  @override
  final LeagueTier highestTier;
  @override
  final int totalWins;
  @override
  final int totalMatches;
  @override
  final double seasonWinRate;
  @override
  final int coinsEarned;
  final List<String> _badgesEarned;
  @override
  List<String> get badgesEarned {
    if (_badgesEarned is EqualUnmodifiableListView) return _badgesEarned;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_badgesEarned);
  }

  @override
  final DateTime seasonEndDate;

  @override
  String toString() {
    return 'SeasonStats(userId: $userId, seasonNumber: $seasonNumber, highestTier: $highestTier, totalWins: $totalWins, totalMatches: $totalMatches, seasonWinRate: $seasonWinRate, coinsEarned: $coinsEarned, badgesEarned: $badgesEarned, seasonEndDate: $seasonEndDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeasonStatsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.seasonNumber, seasonNumber) ||
                other.seasonNumber == seasonNumber) &&
            (identical(other.highestTier, highestTier) ||
                other.highestTier == highestTier) &&
            (identical(other.totalWins, totalWins) ||
                other.totalWins == totalWins) &&
            (identical(other.totalMatches, totalMatches) ||
                other.totalMatches == totalMatches) &&
            (identical(other.seasonWinRate, seasonWinRate) ||
                other.seasonWinRate == seasonWinRate) &&
            (identical(other.coinsEarned, coinsEarned) ||
                other.coinsEarned == coinsEarned) &&
            const DeepCollectionEquality().equals(
              other._badgesEarned,
              _badgesEarned,
            ) &&
            (identical(other.seasonEndDate, seasonEndDate) ||
                other.seasonEndDate == seasonEndDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    seasonNumber,
    highestTier,
    totalWins,
    totalMatches,
    seasonWinRate,
    coinsEarned,
    const DeepCollectionEquality().hash(_badgesEarned),
    seasonEndDate,
  );

  /// Create a copy of SeasonStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeasonStatsImplCopyWith<_$SeasonStatsImpl> get copyWith =>
      __$$SeasonStatsImplCopyWithImpl<_$SeasonStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeasonStatsImplToJson(this);
  }
}

abstract class _SeasonStats implements SeasonStats {
  const factory _SeasonStats({
    required final String userId,
    required final int seasonNumber,
    required final LeagueTier highestTier,
    required final int totalWins,
    required final int totalMatches,
    required final double seasonWinRate,
    required final int coinsEarned,
    required final List<String> badgesEarned,
    required final DateTime seasonEndDate,
  }) = _$SeasonStatsImpl;

  factory _SeasonStats.fromJson(Map<String, dynamic> json) =
      _$SeasonStatsImpl.fromJson;

  @override
  String get userId;
  @override
  int get seasonNumber;
  @override
  LeagueTier get highestTier;
  @override
  int get totalWins;
  @override
  int get totalMatches;
  @override
  double get seasonWinRate;
  @override
  int get coinsEarned;
  @override
  List<String> get badgesEarned;
  @override
  DateTime get seasonEndDate;

  /// Create a copy of SeasonStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeasonStatsImplCopyWith<_$SeasonStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MatchmakingRequest _$MatchmakingRequestFromJson(Map<String, dynamic> json) {
  return _MatchmakingRequest.fromJson(json);
}

/// @nodoc
mixin _$MatchmakingRequest {
  String get userId => throw _privateConstructorUsedError;
  LeagueTier get tier => throw _privateConstructorUsedError;
  int get leaguePoints => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get appId => throw _privateConstructorUsedError;

  /// Serializes this MatchmakingRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MatchmakingRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MatchmakingRequestCopyWith<MatchmakingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchmakingRequestCopyWith<$Res> {
  factory $MatchmakingRequestCopyWith(
    MatchmakingRequest value,
    $Res Function(MatchmakingRequest) then,
  ) = _$MatchmakingRequestCopyWithImpl<$Res, MatchmakingRequest>;
  @useResult
  $Res call({
    String userId,
    LeagueTier tier,
    int leaguePoints,
    DateTime createdAt,
    String? appId,
  });
}

/// @nodoc
class _$MatchmakingRequestCopyWithImpl<$Res, $Val extends MatchmakingRequest>
    implements $MatchmakingRequestCopyWith<$Res> {
  _$MatchmakingRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MatchmakingRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? tier = null,
    Object? leaguePoints = null,
    Object? createdAt = null,
    Object? appId = freezed,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            tier: null == tier
                ? _value.tier
                : tier // ignore: cast_nullable_to_non_nullable
                      as LeagueTier,
            leaguePoints: null == leaguePoints
                ? _value.leaguePoints
                : leaguePoints // ignore: cast_nullable_to_non_nullable
                      as int,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            appId: freezed == appId
                ? _value.appId
                : appId // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MatchmakingRequestImplCopyWith<$Res>
    implements $MatchmakingRequestCopyWith<$Res> {
  factory _$$MatchmakingRequestImplCopyWith(
    _$MatchmakingRequestImpl value,
    $Res Function(_$MatchmakingRequestImpl) then,
  ) = __$$MatchmakingRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    LeagueTier tier,
    int leaguePoints,
    DateTime createdAt,
    String? appId,
  });
}

/// @nodoc
class __$$MatchmakingRequestImplCopyWithImpl<$Res>
    extends _$MatchmakingRequestCopyWithImpl<$Res, _$MatchmakingRequestImpl>
    implements _$$MatchmakingRequestImplCopyWith<$Res> {
  __$$MatchmakingRequestImplCopyWithImpl(
    _$MatchmakingRequestImpl _value,
    $Res Function(_$MatchmakingRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MatchmakingRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? tier = null,
    Object? leaguePoints = null,
    Object? createdAt = null,
    Object? appId = freezed,
  }) {
    return _then(
      _$MatchmakingRequestImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        tier: null == tier
            ? _value.tier
            : tier // ignore: cast_nullable_to_non_nullable
                  as LeagueTier,
        leaguePoints: null == leaguePoints
            ? _value.leaguePoints
            : leaguePoints // ignore: cast_nullable_to_non_nullable
                  as int,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        appId: freezed == appId
            ? _value.appId
            : appId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MatchmakingRequestImpl implements _MatchmakingRequest {
  const _$MatchmakingRequestImpl({
    required this.userId,
    required this.tier,
    required this.leaguePoints,
    required this.createdAt,
    required this.appId,
  });

  factory _$MatchmakingRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchmakingRequestImplFromJson(json);

  @override
  final String userId;
  @override
  final LeagueTier tier;
  @override
  final int leaguePoints;
  @override
  final DateTime createdAt;
  @override
  final String? appId;

  @override
  String toString() {
    return 'MatchmakingRequest(userId: $userId, tier: $tier, leaguePoints: $leaguePoints, createdAt: $createdAt, appId: $appId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchmakingRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.tier, tier) || other.tier == tier) &&
            (identical(other.leaguePoints, leaguePoints) ||
                other.leaguePoints == leaguePoints) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.appId, appId) || other.appId == appId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, tier, leaguePoints, createdAt, appId);

  /// Create a copy of MatchmakingRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchmakingRequestImplCopyWith<_$MatchmakingRequestImpl> get copyWith =>
      __$$MatchmakingRequestImplCopyWithImpl<_$MatchmakingRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MatchmakingRequestImplToJson(this);
  }
}

abstract class _MatchmakingRequest implements MatchmakingRequest {
  const factory _MatchmakingRequest({
    required final String userId,
    required final LeagueTier tier,
    required final int leaguePoints,
    required final DateTime createdAt,
    required final String? appId,
  }) = _$MatchmakingRequestImpl;

  factory _MatchmakingRequest.fromJson(Map<String, dynamic> json) =
      _$MatchmakingRequestImpl.fromJson;

  @override
  String get userId;
  @override
  LeagueTier get tier;
  @override
  int get leaguePoints;
  @override
  DateTime get createdAt;
  @override
  String? get appId;

  /// Create a copy of MatchmakingRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MatchmakingRequestImplCopyWith<_$MatchmakingRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
