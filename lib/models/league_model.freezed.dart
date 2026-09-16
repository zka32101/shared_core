// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'league_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserLeague {

 String get userId; LeagueTier get tier; LeagueRank get rank; int get leaguePoints;// 0-100
 int get totalRankPoints;// 全体ランクポイント
 int get wins; int get losses; double get winRate;// 0-100
 DateTime get promotedAt;// 昇格日時
 DateTime? get demotedAt;// 降格日時
 bool get isPromo;// プロモーション進行中
 int get promoProgress;// 0-3（3勝でプロモーション）
 int get consecutiveWins; DateTime get lastMatchAt; DateTime get updatedAt;
/// Create a copy of UserLeague
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserLeagueCopyWith<UserLeague> get copyWith => _$UserLeagueCopyWithImpl<UserLeague>(this as UserLeague, _$identity);

  /// Serializes this UserLeague to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserLeague&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.tier, tier) || other.tier == tier)&&(identical(other.rank, rank) || other.rank == rank)&&(identical(other.leaguePoints, leaguePoints) || other.leaguePoints == leaguePoints)&&(identical(other.totalRankPoints, totalRankPoints) || other.totalRankPoints == totalRankPoints)&&(identical(other.wins, wins) || other.wins == wins)&&(identical(other.losses, losses) || other.losses == losses)&&(identical(other.winRate, winRate) || other.winRate == winRate)&&(identical(other.promotedAt, promotedAt) || other.promotedAt == promotedAt)&&(identical(other.demotedAt, demotedAt) || other.demotedAt == demotedAt)&&(identical(other.isPromo, isPromo) || other.isPromo == isPromo)&&(identical(other.promoProgress, promoProgress) || other.promoProgress == promoProgress)&&(identical(other.consecutiveWins, consecutiveWins) || other.consecutiveWins == consecutiveWins)&&(identical(other.lastMatchAt, lastMatchAt) || other.lastMatchAt == lastMatchAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,tier,rank,leaguePoints,totalRankPoints,wins,losses,winRate,promotedAt,demotedAt,isPromo,promoProgress,consecutiveWins,lastMatchAt,updatedAt);

@override
String toString() {
  return 'UserLeague(userId: $userId, tier: $tier, rank: $rank, leaguePoints: $leaguePoints, totalRankPoints: $totalRankPoints, wins: $wins, losses: $losses, winRate: $winRate, promotedAt: $promotedAt, demotedAt: $demotedAt, isPromo: $isPromo, promoProgress: $promoProgress, consecutiveWins: $consecutiveWins, lastMatchAt: $lastMatchAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $UserLeagueCopyWith<$Res>  {
  factory $UserLeagueCopyWith(UserLeague value, $Res Function(UserLeague) _then) = _$UserLeagueCopyWithImpl;
@useResult
$Res call({
 String userId, LeagueTier tier, LeagueRank rank, int leaguePoints, int totalRankPoints, int wins, int losses, double winRate, DateTime promotedAt, DateTime? demotedAt, bool isPromo, int promoProgress, int consecutiveWins, DateTime lastMatchAt, DateTime updatedAt
});




}
/// @nodoc
class _$UserLeagueCopyWithImpl<$Res>
    implements $UserLeagueCopyWith<$Res> {
  _$UserLeagueCopyWithImpl(this._self, this._then);

  final UserLeague _self;
  final $Res Function(UserLeague) _then;

/// Create a copy of UserLeague
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? tier = null,Object? rank = null,Object? leaguePoints = null,Object? totalRankPoints = null,Object? wins = null,Object? losses = null,Object? winRate = null,Object? promotedAt = null,Object? demotedAt = freezed,Object? isPromo = null,Object? promoProgress = null,Object? consecutiveWins = null,Object? lastMatchAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,tier: null == tier ? _self.tier : tier // ignore: cast_nullable_to_non_nullable
as LeagueTier,rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as LeagueRank,leaguePoints: null == leaguePoints ? _self.leaguePoints : leaguePoints // ignore: cast_nullable_to_non_nullable
as int,totalRankPoints: null == totalRankPoints ? _self.totalRankPoints : totalRankPoints // ignore: cast_nullable_to_non_nullable
as int,wins: null == wins ? _self.wins : wins // ignore: cast_nullable_to_non_nullable
as int,losses: null == losses ? _self.losses : losses // ignore: cast_nullable_to_non_nullable
as int,winRate: null == winRate ? _self.winRate : winRate // ignore: cast_nullable_to_non_nullable
as double,promotedAt: null == promotedAt ? _self.promotedAt : promotedAt // ignore: cast_nullable_to_non_nullable
as DateTime,demotedAt: freezed == demotedAt ? _self.demotedAt : demotedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isPromo: null == isPromo ? _self.isPromo : isPromo // ignore: cast_nullable_to_non_nullable
as bool,promoProgress: null == promoProgress ? _self.promoProgress : promoProgress // ignore: cast_nullable_to_non_nullable
as int,consecutiveWins: null == consecutiveWins ? _self.consecutiveWins : consecutiveWins // ignore: cast_nullable_to_non_nullable
as int,lastMatchAt: null == lastMatchAt ? _self.lastMatchAt : lastMatchAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [UserLeague].
extension UserLeaguePatterns on UserLeague {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserLeague value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserLeague() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserLeague value)  $default,){
final _that = this;
switch (_that) {
case _UserLeague():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserLeague value)?  $default,){
final _that = this;
switch (_that) {
case _UserLeague() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  LeagueTier tier,  LeagueRank rank,  int leaguePoints,  int totalRankPoints,  int wins,  int losses,  double winRate,  DateTime promotedAt,  DateTime? demotedAt,  bool isPromo,  int promoProgress,  int consecutiveWins,  DateTime lastMatchAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserLeague() when $default != null:
return $default(_that.userId,_that.tier,_that.rank,_that.leaguePoints,_that.totalRankPoints,_that.wins,_that.losses,_that.winRate,_that.promotedAt,_that.demotedAt,_that.isPromo,_that.promoProgress,_that.consecutiveWins,_that.lastMatchAt,_that.updatedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  LeagueTier tier,  LeagueRank rank,  int leaguePoints,  int totalRankPoints,  int wins,  int losses,  double winRate,  DateTime promotedAt,  DateTime? demotedAt,  bool isPromo,  int promoProgress,  int consecutiveWins,  DateTime lastMatchAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _UserLeague():
return $default(_that.userId,_that.tier,_that.rank,_that.leaguePoints,_that.totalRankPoints,_that.wins,_that.losses,_that.winRate,_that.promotedAt,_that.demotedAt,_that.isPromo,_that.promoProgress,_that.consecutiveWins,_that.lastMatchAt,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  LeagueTier tier,  LeagueRank rank,  int leaguePoints,  int totalRankPoints,  int wins,  int losses,  double winRate,  DateTime promotedAt,  DateTime? demotedAt,  bool isPromo,  int promoProgress,  int consecutiveWins,  DateTime lastMatchAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _UserLeague() when $default != null:
return $default(_that.userId,_that.tier,_that.rank,_that.leaguePoints,_that.totalRankPoints,_that.wins,_that.losses,_that.winRate,_that.promotedAt,_that.demotedAt,_that.isPromo,_that.promoProgress,_that.consecutiveWins,_that.lastMatchAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserLeague implements UserLeague {
  const _UserLeague({required this.userId, required this.tier, required this.rank, required this.leaguePoints, required this.totalRankPoints, required this.wins, required this.losses, required this.winRate, required this.promotedAt, required this.demotedAt, required this.isPromo, required this.promoProgress, required this.consecutiveWins, required this.lastMatchAt, required this.updatedAt});
  factory _UserLeague.fromJson(Map<String, dynamic> json) => _$UserLeagueFromJson(json);

@override final  String userId;
@override final  LeagueTier tier;
@override final  LeagueRank rank;
@override final  int leaguePoints;
// 0-100
@override final  int totalRankPoints;
// 全体ランクポイント
@override final  int wins;
@override final  int losses;
@override final  double winRate;
// 0-100
@override final  DateTime promotedAt;
// 昇格日時
@override final  DateTime? demotedAt;
// 降格日時
@override final  bool isPromo;
// プロモーション進行中
@override final  int promoProgress;
// 0-3（3勝でプロモーション）
@override final  int consecutiveWins;
@override final  DateTime lastMatchAt;
@override final  DateTime updatedAt;

/// Create a copy of UserLeague
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserLeagueCopyWith<_UserLeague> get copyWith => __$UserLeagueCopyWithImpl<_UserLeague>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserLeagueToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserLeague&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.tier, tier) || other.tier == tier)&&(identical(other.rank, rank) || other.rank == rank)&&(identical(other.leaguePoints, leaguePoints) || other.leaguePoints == leaguePoints)&&(identical(other.totalRankPoints, totalRankPoints) || other.totalRankPoints == totalRankPoints)&&(identical(other.wins, wins) || other.wins == wins)&&(identical(other.losses, losses) || other.losses == losses)&&(identical(other.winRate, winRate) || other.winRate == winRate)&&(identical(other.promotedAt, promotedAt) || other.promotedAt == promotedAt)&&(identical(other.demotedAt, demotedAt) || other.demotedAt == demotedAt)&&(identical(other.isPromo, isPromo) || other.isPromo == isPromo)&&(identical(other.promoProgress, promoProgress) || other.promoProgress == promoProgress)&&(identical(other.consecutiveWins, consecutiveWins) || other.consecutiveWins == consecutiveWins)&&(identical(other.lastMatchAt, lastMatchAt) || other.lastMatchAt == lastMatchAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,tier,rank,leaguePoints,totalRankPoints,wins,losses,winRate,promotedAt,demotedAt,isPromo,promoProgress,consecutiveWins,lastMatchAt,updatedAt);

@override
String toString() {
  return 'UserLeague(userId: $userId, tier: $tier, rank: $rank, leaguePoints: $leaguePoints, totalRankPoints: $totalRankPoints, wins: $wins, losses: $losses, winRate: $winRate, promotedAt: $promotedAt, demotedAt: $demotedAt, isPromo: $isPromo, promoProgress: $promoProgress, consecutiveWins: $consecutiveWins, lastMatchAt: $lastMatchAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$UserLeagueCopyWith<$Res> implements $UserLeagueCopyWith<$Res> {
  factory _$UserLeagueCopyWith(_UserLeague value, $Res Function(_UserLeague) _then) = __$UserLeagueCopyWithImpl;
@override @useResult
$Res call({
 String userId, LeagueTier tier, LeagueRank rank, int leaguePoints, int totalRankPoints, int wins, int losses, double winRate, DateTime promotedAt, DateTime? demotedAt, bool isPromo, int promoProgress, int consecutiveWins, DateTime lastMatchAt, DateTime updatedAt
});




}
/// @nodoc
class __$UserLeagueCopyWithImpl<$Res>
    implements _$UserLeagueCopyWith<$Res> {
  __$UserLeagueCopyWithImpl(this._self, this._then);

  final _UserLeague _self;
  final $Res Function(_UserLeague) _then;

/// Create a copy of UserLeague
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? tier = null,Object? rank = null,Object? leaguePoints = null,Object? totalRankPoints = null,Object? wins = null,Object? losses = null,Object? winRate = null,Object? promotedAt = null,Object? demotedAt = freezed,Object? isPromo = null,Object? promoProgress = null,Object? consecutiveWins = null,Object? lastMatchAt = null,Object? updatedAt = null,}) {
  return _then(_UserLeague(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,tier: null == tier ? _self.tier : tier // ignore: cast_nullable_to_non_nullable
as LeagueTier,rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as LeagueRank,leaguePoints: null == leaguePoints ? _self.leaguePoints : leaguePoints // ignore: cast_nullable_to_non_nullable
as int,totalRankPoints: null == totalRankPoints ? _self.totalRankPoints : totalRankPoints // ignore: cast_nullable_to_non_nullable
as int,wins: null == wins ? _self.wins : wins // ignore: cast_nullable_to_non_nullable
as int,losses: null == losses ? _self.losses : losses // ignore: cast_nullable_to_non_nullable
as int,winRate: null == winRate ? _self.winRate : winRate // ignore: cast_nullable_to_non_nullable
as double,promotedAt: null == promotedAt ? _self.promotedAt : promotedAt // ignore: cast_nullable_to_non_nullable
as DateTime,demotedAt: freezed == demotedAt ? _self.demotedAt : demotedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isPromo: null == isPromo ? _self.isPromo : isPromo // ignore: cast_nullable_to_non_nullable
as bool,promoProgress: null == promoProgress ? _self.promoProgress : promoProgress // ignore: cast_nullable_to_non_nullable
as int,consecutiveWins: null == consecutiveWins ? _self.consecutiveWins : consecutiveWins // ignore: cast_nullable_to_non_nullable
as int,lastMatchAt: null == lastMatchAt ? _self.lastMatchAt : lastMatchAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$LeagueMatch {

 String get matchId; String get player1Id; String get player2Id; String get winnerId; int get pointsAwarded; int get player1PointsChange; int get player2PointsChange; DateTime get createdAt; String? get appId;
/// Create a copy of LeagueMatch
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeagueMatchCopyWith<LeagueMatch> get copyWith => _$LeagueMatchCopyWithImpl<LeagueMatch>(this as LeagueMatch, _$identity);

  /// Serializes this LeagueMatch to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeagueMatch&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.player1Id, player1Id) || other.player1Id == player1Id)&&(identical(other.player2Id, player2Id) || other.player2Id == player2Id)&&(identical(other.winnerId, winnerId) || other.winnerId == winnerId)&&(identical(other.pointsAwarded, pointsAwarded) || other.pointsAwarded == pointsAwarded)&&(identical(other.player1PointsChange, player1PointsChange) || other.player1PointsChange == player1PointsChange)&&(identical(other.player2PointsChange, player2PointsChange) || other.player2PointsChange == player2PointsChange)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.appId, appId) || other.appId == appId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,matchId,player1Id,player2Id,winnerId,pointsAwarded,player1PointsChange,player2PointsChange,createdAt,appId);

@override
String toString() {
  return 'LeagueMatch(matchId: $matchId, player1Id: $player1Id, player2Id: $player2Id, winnerId: $winnerId, pointsAwarded: $pointsAwarded, player1PointsChange: $player1PointsChange, player2PointsChange: $player2PointsChange, createdAt: $createdAt, appId: $appId)';
}


}

/// @nodoc
abstract mixin class $LeagueMatchCopyWith<$Res>  {
  factory $LeagueMatchCopyWith(LeagueMatch value, $Res Function(LeagueMatch) _then) = _$LeagueMatchCopyWithImpl;
@useResult
$Res call({
 String matchId, String player1Id, String player2Id, String winnerId, int pointsAwarded, int player1PointsChange, int player2PointsChange, DateTime createdAt, String? appId
});




}
/// @nodoc
class _$LeagueMatchCopyWithImpl<$Res>
    implements $LeagueMatchCopyWith<$Res> {
  _$LeagueMatchCopyWithImpl(this._self, this._then);

  final LeagueMatch _self;
  final $Res Function(LeagueMatch) _then;

/// Create a copy of LeagueMatch
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? matchId = null,Object? player1Id = null,Object? player2Id = null,Object? winnerId = null,Object? pointsAwarded = null,Object? player1PointsChange = null,Object? player2PointsChange = null,Object? createdAt = null,Object? appId = freezed,}) {
  return _then(_self.copyWith(
matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as String,player1Id: null == player1Id ? _self.player1Id : player1Id // ignore: cast_nullable_to_non_nullable
as String,player2Id: null == player2Id ? _self.player2Id : player2Id // ignore: cast_nullable_to_non_nullable
as String,winnerId: null == winnerId ? _self.winnerId : winnerId // ignore: cast_nullable_to_non_nullable
as String,pointsAwarded: null == pointsAwarded ? _self.pointsAwarded : pointsAwarded // ignore: cast_nullable_to_non_nullable
as int,player1PointsChange: null == player1PointsChange ? _self.player1PointsChange : player1PointsChange // ignore: cast_nullable_to_non_nullable
as int,player2PointsChange: null == player2PointsChange ? _self.player2PointsChange : player2PointsChange // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,appId: freezed == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LeagueMatch].
extension LeagueMatchPatterns on LeagueMatch {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeagueMatch value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeagueMatch() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeagueMatch value)  $default,){
final _that = this;
switch (_that) {
case _LeagueMatch():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeagueMatch value)?  $default,){
final _that = this;
switch (_that) {
case _LeagueMatch() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String matchId,  String player1Id,  String player2Id,  String winnerId,  int pointsAwarded,  int player1PointsChange,  int player2PointsChange,  DateTime createdAt,  String? appId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeagueMatch() when $default != null:
return $default(_that.matchId,_that.player1Id,_that.player2Id,_that.winnerId,_that.pointsAwarded,_that.player1PointsChange,_that.player2PointsChange,_that.createdAt,_that.appId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String matchId,  String player1Id,  String player2Id,  String winnerId,  int pointsAwarded,  int player1PointsChange,  int player2PointsChange,  DateTime createdAt,  String? appId)  $default,) {final _that = this;
switch (_that) {
case _LeagueMatch():
return $default(_that.matchId,_that.player1Id,_that.player2Id,_that.winnerId,_that.pointsAwarded,_that.player1PointsChange,_that.player2PointsChange,_that.createdAt,_that.appId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String matchId,  String player1Id,  String player2Id,  String winnerId,  int pointsAwarded,  int player1PointsChange,  int player2PointsChange,  DateTime createdAt,  String? appId)?  $default,) {final _that = this;
switch (_that) {
case _LeagueMatch() when $default != null:
return $default(_that.matchId,_that.player1Id,_that.player2Id,_that.winnerId,_that.pointsAwarded,_that.player1PointsChange,_that.player2PointsChange,_that.createdAt,_that.appId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LeagueMatch implements LeagueMatch {
  const _LeagueMatch({required this.matchId, required this.player1Id, required this.player2Id, required this.winnerId, required this.pointsAwarded, required this.player1PointsChange, required this.player2PointsChange, required this.createdAt, required this.appId});
  factory _LeagueMatch.fromJson(Map<String, dynamic> json) => _$LeagueMatchFromJson(json);

@override final  String matchId;
@override final  String player1Id;
@override final  String player2Id;
@override final  String winnerId;
@override final  int pointsAwarded;
@override final  int player1PointsChange;
@override final  int player2PointsChange;
@override final  DateTime createdAt;
@override final  String? appId;

/// Create a copy of LeagueMatch
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeagueMatchCopyWith<_LeagueMatch> get copyWith => __$LeagueMatchCopyWithImpl<_LeagueMatch>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LeagueMatchToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeagueMatch&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.player1Id, player1Id) || other.player1Id == player1Id)&&(identical(other.player2Id, player2Id) || other.player2Id == player2Id)&&(identical(other.winnerId, winnerId) || other.winnerId == winnerId)&&(identical(other.pointsAwarded, pointsAwarded) || other.pointsAwarded == pointsAwarded)&&(identical(other.player1PointsChange, player1PointsChange) || other.player1PointsChange == player1PointsChange)&&(identical(other.player2PointsChange, player2PointsChange) || other.player2PointsChange == player2PointsChange)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.appId, appId) || other.appId == appId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,matchId,player1Id,player2Id,winnerId,pointsAwarded,player1PointsChange,player2PointsChange,createdAt,appId);

@override
String toString() {
  return 'LeagueMatch(matchId: $matchId, player1Id: $player1Id, player2Id: $player2Id, winnerId: $winnerId, pointsAwarded: $pointsAwarded, player1PointsChange: $player1PointsChange, player2PointsChange: $player2PointsChange, createdAt: $createdAt, appId: $appId)';
}


}

/// @nodoc
abstract mixin class _$LeagueMatchCopyWith<$Res> implements $LeagueMatchCopyWith<$Res> {
  factory _$LeagueMatchCopyWith(_LeagueMatch value, $Res Function(_LeagueMatch) _then) = __$LeagueMatchCopyWithImpl;
@override @useResult
$Res call({
 String matchId, String player1Id, String player2Id, String winnerId, int pointsAwarded, int player1PointsChange, int player2PointsChange, DateTime createdAt, String? appId
});




}
/// @nodoc
class __$LeagueMatchCopyWithImpl<$Res>
    implements _$LeagueMatchCopyWith<$Res> {
  __$LeagueMatchCopyWithImpl(this._self, this._then);

  final _LeagueMatch _self;
  final $Res Function(_LeagueMatch) _then;

/// Create a copy of LeagueMatch
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? matchId = null,Object? player1Id = null,Object? player2Id = null,Object? winnerId = null,Object? pointsAwarded = null,Object? player1PointsChange = null,Object? player2PointsChange = null,Object? createdAt = null,Object? appId = freezed,}) {
  return _then(_LeagueMatch(
matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as String,player1Id: null == player1Id ? _self.player1Id : player1Id // ignore: cast_nullable_to_non_nullable
as String,player2Id: null == player2Id ? _self.player2Id : player2Id // ignore: cast_nullable_to_non_nullable
as String,winnerId: null == winnerId ? _self.winnerId : winnerId // ignore: cast_nullable_to_non_nullable
as String,pointsAwarded: null == pointsAwarded ? _self.pointsAwarded : pointsAwarded // ignore: cast_nullable_to_non_nullable
as int,player1PointsChange: null == player1PointsChange ? _self.player1PointsChange : player1PointsChange // ignore: cast_nullable_to_non_nullable
as int,player2PointsChange: null == player2PointsChange ? _self.player2PointsChange : player2PointsChange // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,appId: freezed == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$LeagueRanking {

 LeagueTier get tier; List<LeagueRankingEntry> get rankings;// 上位100
 DateTime get updatedAt;
/// Create a copy of LeagueRanking
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeagueRankingCopyWith<LeagueRanking> get copyWith => _$LeagueRankingCopyWithImpl<LeagueRanking>(this as LeagueRanking, _$identity);

  /// Serializes this LeagueRanking to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeagueRanking&&(identical(other.tier, tier) || other.tier == tier)&&const DeepCollectionEquality().equals(other.rankings, rankings)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tier,const DeepCollectionEquality().hash(rankings),updatedAt);

@override
String toString() {
  return 'LeagueRanking(tier: $tier, rankings: $rankings, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $LeagueRankingCopyWith<$Res>  {
  factory $LeagueRankingCopyWith(LeagueRanking value, $Res Function(LeagueRanking) _then) = _$LeagueRankingCopyWithImpl;
@useResult
$Res call({
 LeagueTier tier, List<LeagueRankingEntry> rankings, DateTime updatedAt
});




}
/// @nodoc
class _$LeagueRankingCopyWithImpl<$Res>
    implements $LeagueRankingCopyWith<$Res> {
  _$LeagueRankingCopyWithImpl(this._self, this._then);

  final LeagueRanking _self;
  final $Res Function(LeagueRanking) _then;

/// Create a copy of LeagueRanking
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tier = null,Object? rankings = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
tier: null == tier ? _self.tier : tier // ignore: cast_nullable_to_non_nullable
as LeagueTier,rankings: null == rankings ? _self.rankings : rankings // ignore: cast_nullable_to_non_nullable
as List<LeagueRankingEntry>,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [LeagueRanking].
extension LeagueRankingPatterns on LeagueRanking {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeagueRanking value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeagueRanking() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeagueRanking value)  $default,){
final _that = this;
switch (_that) {
case _LeagueRanking():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeagueRanking value)?  $default,){
final _that = this;
switch (_that) {
case _LeagueRanking() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LeagueTier tier,  List<LeagueRankingEntry> rankings,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeagueRanking() when $default != null:
return $default(_that.tier,_that.rankings,_that.updatedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LeagueTier tier,  List<LeagueRankingEntry> rankings,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _LeagueRanking():
return $default(_that.tier,_that.rankings,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LeagueTier tier,  List<LeagueRankingEntry> rankings,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _LeagueRanking() when $default != null:
return $default(_that.tier,_that.rankings,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LeagueRanking implements LeagueRanking {
  const _LeagueRanking({required this.tier, required final  List<LeagueRankingEntry> rankings, required this.updatedAt}): _rankings = rankings;
  factory _LeagueRanking.fromJson(Map<String, dynamic> json) => _$LeagueRankingFromJson(json);

@override final  LeagueTier tier;
 final  List<LeagueRankingEntry> _rankings;
@override List<LeagueRankingEntry> get rankings {
  if (_rankings is EqualUnmodifiableListView) return _rankings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rankings);
}

// 上位100
@override final  DateTime updatedAt;

/// Create a copy of LeagueRanking
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeagueRankingCopyWith<_LeagueRanking> get copyWith => __$LeagueRankingCopyWithImpl<_LeagueRanking>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LeagueRankingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeagueRanking&&(identical(other.tier, tier) || other.tier == tier)&&const DeepCollectionEquality().equals(other._rankings, _rankings)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tier,const DeepCollectionEquality().hash(_rankings),updatedAt);

@override
String toString() {
  return 'LeagueRanking(tier: $tier, rankings: $rankings, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$LeagueRankingCopyWith<$Res> implements $LeagueRankingCopyWith<$Res> {
  factory _$LeagueRankingCopyWith(_LeagueRanking value, $Res Function(_LeagueRanking) _then) = __$LeagueRankingCopyWithImpl;
@override @useResult
$Res call({
 LeagueTier tier, List<LeagueRankingEntry> rankings, DateTime updatedAt
});




}
/// @nodoc
class __$LeagueRankingCopyWithImpl<$Res>
    implements _$LeagueRankingCopyWith<$Res> {
  __$LeagueRankingCopyWithImpl(this._self, this._then);

  final _LeagueRanking _self;
  final $Res Function(_LeagueRanking) _then;

/// Create a copy of LeagueRanking
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tier = null,Object? rankings = null,Object? updatedAt = null,}) {
  return _then(_LeagueRanking(
tier: null == tier ? _self.tier : tier // ignore: cast_nullable_to_non_nullable
as LeagueTier,rankings: null == rankings ? _self._rankings : rankings // ignore: cast_nullable_to_non_nullable
as List<LeagueRankingEntry>,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$LeagueRankingEntry {

 int get position; String get userId; String get userName; LeagueRank get rank; int get leaguePoints; int get totalRankPoints; int get wins; double get winRate;
/// Create a copy of LeagueRankingEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeagueRankingEntryCopyWith<LeagueRankingEntry> get copyWith => _$LeagueRankingEntryCopyWithImpl<LeagueRankingEntry>(this as LeagueRankingEntry, _$identity);

  /// Serializes this LeagueRankingEntry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeagueRankingEntry&&(identical(other.position, position) || other.position == position)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.rank, rank) || other.rank == rank)&&(identical(other.leaguePoints, leaguePoints) || other.leaguePoints == leaguePoints)&&(identical(other.totalRankPoints, totalRankPoints) || other.totalRankPoints == totalRankPoints)&&(identical(other.wins, wins) || other.wins == wins)&&(identical(other.winRate, winRate) || other.winRate == winRate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,position,userId,userName,rank,leaguePoints,totalRankPoints,wins,winRate);

@override
String toString() {
  return 'LeagueRankingEntry(position: $position, userId: $userId, userName: $userName, rank: $rank, leaguePoints: $leaguePoints, totalRankPoints: $totalRankPoints, wins: $wins, winRate: $winRate)';
}


}

/// @nodoc
abstract mixin class $LeagueRankingEntryCopyWith<$Res>  {
  factory $LeagueRankingEntryCopyWith(LeagueRankingEntry value, $Res Function(LeagueRankingEntry) _then) = _$LeagueRankingEntryCopyWithImpl;
@useResult
$Res call({
 int position, String userId, String userName, LeagueRank rank, int leaguePoints, int totalRankPoints, int wins, double winRate
});




}
/// @nodoc
class _$LeagueRankingEntryCopyWithImpl<$Res>
    implements $LeagueRankingEntryCopyWith<$Res> {
  _$LeagueRankingEntryCopyWithImpl(this._self, this._then);

  final LeagueRankingEntry _self;
  final $Res Function(LeagueRankingEntry) _then;

/// Create a copy of LeagueRankingEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? position = null,Object? userId = null,Object? userName = null,Object? rank = null,Object? leaguePoints = null,Object? totalRankPoints = null,Object? wins = null,Object? winRate = null,}) {
  return _then(_self.copyWith(
position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as LeagueRank,leaguePoints: null == leaguePoints ? _self.leaguePoints : leaguePoints // ignore: cast_nullable_to_non_nullable
as int,totalRankPoints: null == totalRankPoints ? _self.totalRankPoints : totalRankPoints // ignore: cast_nullable_to_non_nullable
as int,wins: null == wins ? _self.wins : wins // ignore: cast_nullable_to_non_nullable
as int,winRate: null == winRate ? _self.winRate : winRate // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [LeagueRankingEntry].
extension LeagueRankingEntryPatterns on LeagueRankingEntry {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeagueRankingEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeagueRankingEntry() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeagueRankingEntry value)  $default,){
final _that = this;
switch (_that) {
case _LeagueRankingEntry():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeagueRankingEntry value)?  $default,){
final _that = this;
switch (_that) {
case _LeagueRankingEntry() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int position,  String userId,  String userName,  LeagueRank rank,  int leaguePoints,  int totalRankPoints,  int wins,  double winRate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeagueRankingEntry() when $default != null:
return $default(_that.position,_that.userId,_that.userName,_that.rank,_that.leaguePoints,_that.totalRankPoints,_that.wins,_that.winRate);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int position,  String userId,  String userName,  LeagueRank rank,  int leaguePoints,  int totalRankPoints,  int wins,  double winRate)  $default,) {final _that = this;
switch (_that) {
case _LeagueRankingEntry():
return $default(_that.position,_that.userId,_that.userName,_that.rank,_that.leaguePoints,_that.totalRankPoints,_that.wins,_that.winRate);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int position,  String userId,  String userName,  LeagueRank rank,  int leaguePoints,  int totalRankPoints,  int wins,  double winRate)?  $default,) {final _that = this;
switch (_that) {
case _LeagueRankingEntry() when $default != null:
return $default(_that.position,_that.userId,_that.userName,_that.rank,_that.leaguePoints,_that.totalRankPoints,_that.wins,_that.winRate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LeagueRankingEntry implements LeagueRankingEntry {
  const _LeagueRankingEntry({required this.position, required this.userId, required this.userName, required this.rank, required this.leaguePoints, required this.totalRankPoints, required this.wins, required this.winRate});
  factory _LeagueRankingEntry.fromJson(Map<String, dynamic> json) => _$LeagueRankingEntryFromJson(json);

@override final  int position;
@override final  String userId;
@override final  String userName;
@override final  LeagueRank rank;
@override final  int leaguePoints;
@override final  int totalRankPoints;
@override final  int wins;
@override final  double winRate;

/// Create a copy of LeagueRankingEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeagueRankingEntryCopyWith<_LeagueRankingEntry> get copyWith => __$LeagueRankingEntryCopyWithImpl<_LeagueRankingEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LeagueRankingEntryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeagueRankingEntry&&(identical(other.position, position) || other.position == position)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.rank, rank) || other.rank == rank)&&(identical(other.leaguePoints, leaguePoints) || other.leaguePoints == leaguePoints)&&(identical(other.totalRankPoints, totalRankPoints) || other.totalRankPoints == totalRankPoints)&&(identical(other.wins, wins) || other.wins == wins)&&(identical(other.winRate, winRate) || other.winRate == winRate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,position,userId,userName,rank,leaguePoints,totalRankPoints,wins,winRate);

@override
String toString() {
  return 'LeagueRankingEntry(position: $position, userId: $userId, userName: $userName, rank: $rank, leaguePoints: $leaguePoints, totalRankPoints: $totalRankPoints, wins: $wins, winRate: $winRate)';
}


}

/// @nodoc
abstract mixin class _$LeagueRankingEntryCopyWith<$Res> implements $LeagueRankingEntryCopyWith<$Res> {
  factory _$LeagueRankingEntryCopyWith(_LeagueRankingEntry value, $Res Function(_LeagueRankingEntry) _then) = __$LeagueRankingEntryCopyWithImpl;
@override @useResult
$Res call({
 int position, String userId, String userName, LeagueRank rank, int leaguePoints, int totalRankPoints, int wins, double winRate
});




}
/// @nodoc
class __$LeagueRankingEntryCopyWithImpl<$Res>
    implements _$LeagueRankingEntryCopyWith<$Res> {
  __$LeagueRankingEntryCopyWithImpl(this._self, this._then);

  final _LeagueRankingEntry _self;
  final $Res Function(_LeagueRankingEntry) _then;

/// Create a copy of LeagueRankingEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? position = null,Object? userId = null,Object? userName = null,Object? rank = null,Object? leaguePoints = null,Object? totalRankPoints = null,Object? wins = null,Object? winRate = null,}) {
  return _then(_LeagueRankingEntry(
position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as LeagueRank,leaguePoints: null == leaguePoints ? _self.leaguePoints : leaguePoints // ignore: cast_nullable_to_non_nullable
as int,totalRankPoints: null == totalRankPoints ? _self.totalRankPoints : totalRankPoints // ignore: cast_nullable_to_non_nullable
as int,wins: null == wins ? _self.wins : wins // ignore: cast_nullable_to_non_nullable
as int,winRate: null == winRate ? _self.winRate : winRate // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$TierRequirements {

 LeagueTier get tier; int get minRankPoints; int get maxRankPoints; int get weeklyRewardCoins; List<String> get rewardBadges;
/// Create a copy of TierRequirements
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TierRequirementsCopyWith<TierRequirements> get copyWith => _$TierRequirementsCopyWithImpl<TierRequirements>(this as TierRequirements, _$identity);

  /// Serializes this TierRequirements to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TierRequirements&&(identical(other.tier, tier) || other.tier == tier)&&(identical(other.minRankPoints, minRankPoints) || other.minRankPoints == minRankPoints)&&(identical(other.maxRankPoints, maxRankPoints) || other.maxRankPoints == maxRankPoints)&&(identical(other.weeklyRewardCoins, weeklyRewardCoins) || other.weeklyRewardCoins == weeklyRewardCoins)&&const DeepCollectionEquality().equals(other.rewardBadges, rewardBadges));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tier,minRankPoints,maxRankPoints,weeklyRewardCoins,const DeepCollectionEquality().hash(rewardBadges));

@override
String toString() {
  return 'TierRequirements(tier: $tier, minRankPoints: $minRankPoints, maxRankPoints: $maxRankPoints, weeklyRewardCoins: $weeklyRewardCoins, rewardBadges: $rewardBadges)';
}


}

/// @nodoc
abstract mixin class $TierRequirementsCopyWith<$Res>  {
  factory $TierRequirementsCopyWith(TierRequirements value, $Res Function(TierRequirements) _then) = _$TierRequirementsCopyWithImpl;
@useResult
$Res call({
 LeagueTier tier, int minRankPoints, int maxRankPoints, int weeklyRewardCoins, List<String> rewardBadges
});




}
/// @nodoc
class _$TierRequirementsCopyWithImpl<$Res>
    implements $TierRequirementsCopyWith<$Res> {
  _$TierRequirementsCopyWithImpl(this._self, this._then);

  final TierRequirements _self;
  final $Res Function(TierRequirements) _then;

/// Create a copy of TierRequirements
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tier = null,Object? minRankPoints = null,Object? maxRankPoints = null,Object? weeklyRewardCoins = null,Object? rewardBadges = null,}) {
  return _then(_self.copyWith(
tier: null == tier ? _self.tier : tier // ignore: cast_nullable_to_non_nullable
as LeagueTier,minRankPoints: null == minRankPoints ? _self.minRankPoints : minRankPoints // ignore: cast_nullable_to_non_nullable
as int,maxRankPoints: null == maxRankPoints ? _self.maxRankPoints : maxRankPoints // ignore: cast_nullable_to_non_nullable
as int,weeklyRewardCoins: null == weeklyRewardCoins ? _self.weeklyRewardCoins : weeklyRewardCoins // ignore: cast_nullable_to_non_nullable
as int,rewardBadges: null == rewardBadges ? _self.rewardBadges : rewardBadges // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [TierRequirements].
extension TierRequirementsPatterns on TierRequirements {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TierRequirements value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TierRequirements() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TierRequirements value)  $default,){
final _that = this;
switch (_that) {
case _TierRequirements():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TierRequirements value)?  $default,){
final _that = this;
switch (_that) {
case _TierRequirements() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LeagueTier tier,  int minRankPoints,  int maxRankPoints,  int weeklyRewardCoins,  List<String> rewardBadges)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TierRequirements() when $default != null:
return $default(_that.tier,_that.minRankPoints,_that.maxRankPoints,_that.weeklyRewardCoins,_that.rewardBadges);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LeagueTier tier,  int minRankPoints,  int maxRankPoints,  int weeklyRewardCoins,  List<String> rewardBadges)  $default,) {final _that = this;
switch (_that) {
case _TierRequirements():
return $default(_that.tier,_that.minRankPoints,_that.maxRankPoints,_that.weeklyRewardCoins,_that.rewardBadges);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LeagueTier tier,  int minRankPoints,  int maxRankPoints,  int weeklyRewardCoins,  List<String> rewardBadges)?  $default,) {final _that = this;
switch (_that) {
case _TierRequirements() when $default != null:
return $default(_that.tier,_that.minRankPoints,_that.maxRankPoints,_that.weeklyRewardCoins,_that.rewardBadges);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TierRequirements implements TierRequirements {
  const _TierRequirements({required this.tier, required this.minRankPoints, required this.maxRankPoints, required this.weeklyRewardCoins, required final  List<String> rewardBadges}): _rewardBadges = rewardBadges;
  factory _TierRequirements.fromJson(Map<String, dynamic> json) => _$TierRequirementsFromJson(json);

@override final  LeagueTier tier;
@override final  int minRankPoints;
@override final  int maxRankPoints;
@override final  int weeklyRewardCoins;
 final  List<String> _rewardBadges;
@override List<String> get rewardBadges {
  if (_rewardBadges is EqualUnmodifiableListView) return _rewardBadges;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rewardBadges);
}


/// Create a copy of TierRequirements
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TierRequirementsCopyWith<_TierRequirements> get copyWith => __$TierRequirementsCopyWithImpl<_TierRequirements>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TierRequirementsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TierRequirements&&(identical(other.tier, tier) || other.tier == tier)&&(identical(other.minRankPoints, minRankPoints) || other.minRankPoints == minRankPoints)&&(identical(other.maxRankPoints, maxRankPoints) || other.maxRankPoints == maxRankPoints)&&(identical(other.weeklyRewardCoins, weeklyRewardCoins) || other.weeklyRewardCoins == weeklyRewardCoins)&&const DeepCollectionEquality().equals(other._rewardBadges, _rewardBadges));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tier,minRankPoints,maxRankPoints,weeklyRewardCoins,const DeepCollectionEquality().hash(_rewardBadges));

@override
String toString() {
  return 'TierRequirements(tier: $tier, minRankPoints: $minRankPoints, maxRankPoints: $maxRankPoints, weeklyRewardCoins: $weeklyRewardCoins, rewardBadges: $rewardBadges)';
}


}

/// @nodoc
abstract mixin class _$TierRequirementsCopyWith<$Res> implements $TierRequirementsCopyWith<$Res> {
  factory _$TierRequirementsCopyWith(_TierRequirements value, $Res Function(_TierRequirements) _then) = __$TierRequirementsCopyWithImpl;
@override @useResult
$Res call({
 LeagueTier tier, int minRankPoints, int maxRankPoints, int weeklyRewardCoins, List<String> rewardBadges
});




}
/// @nodoc
class __$TierRequirementsCopyWithImpl<$Res>
    implements _$TierRequirementsCopyWith<$Res> {
  __$TierRequirementsCopyWithImpl(this._self, this._then);

  final _TierRequirements _self;
  final $Res Function(_TierRequirements) _then;

/// Create a copy of TierRequirements
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tier = null,Object? minRankPoints = null,Object? maxRankPoints = null,Object? weeklyRewardCoins = null,Object? rewardBadges = null,}) {
  return _then(_TierRequirements(
tier: null == tier ? _self.tier : tier // ignore: cast_nullable_to_non_nullable
as LeagueTier,minRankPoints: null == minRankPoints ? _self.minRankPoints : minRankPoints // ignore: cast_nullable_to_non_nullable
as int,maxRankPoints: null == maxRankPoints ? _self.maxRankPoints : maxRankPoints // ignore: cast_nullable_to_non_nullable
as int,weeklyRewardCoins: null == weeklyRewardCoins ? _self.weeklyRewardCoins : weeklyRewardCoins // ignore: cast_nullable_to_non_nullable
as int,rewardBadges: null == rewardBadges ? _self._rewardBadges : rewardBadges // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$SeasonStats {

 String get userId; int get seasonNumber; LeagueTier get highestTier; int get totalWins; int get totalMatches; double get seasonWinRate; int get coinsEarned; List<String> get badgesEarned; DateTime get seasonEndDate;
/// Create a copy of SeasonStats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SeasonStatsCopyWith<SeasonStats> get copyWith => _$SeasonStatsCopyWithImpl<SeasonStats>(this as SeasonStats, _$identity);

  /// Serializes this SeasonStats to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SeasonStats&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.seasonNumber, seasonNumber) || other.seasonNumber == seasonNumber)&&(identical(other.highestTier, highestTier) || other.highestTier == highestTier)&&(identical(other.totalWins, totalWins) || other.totalWins == totalWins)&&(identical(other.totalMatches, totalMatches) || other.totalMatches == totalMatches)&&(identical(other.seasonWinRate, seasonWinRate) || other.seasonWinRate == seasonWinRate)&&(identical(other.coinsEarned, coinsEarned) || other.coinsEarned == coinsEarned)&&const DeepCollectionEquality().equals(other.badgesEarned, badgesEarned)&&(identical(other.seasonEndDate, seasonEndDate) || other.seasonEndDate == seasonEndDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,seasonNumber,highestTier,totalWins,totalMatches,seasonWinRate,coinsEarned,const DeepCollectionEquality().hash(badgesEarned),seasonEndDate);

@override
String toString() {
  return 'SeasonStats(userId: $userId, seasonNumber: $seasonNumber, highestTier: $highestTier, totalWins: $totalWins, totalMatches: $totalMatches, seasonWinRate: $seasonWinRate, coinsEarned: $coinsEarned, badgesEarned: $badgesEarned, seasonEndDate: $seasonEndDate)';
}


}

/// @nodoc
abstract mixin class $SeasonStatsCopyWith<$Res>  {
  factory $SeasonStatsCopyWith(SeasonStats value, $Res Function(SeasonStats) _then) = _$SeasonStatsCopyWithImpl;
@useResult
$Res call({
 String userId, int seasonNumber, LeagueTier highestTier, int totalWins, int totalMatches, double seasonWinRate, int coinsEarned, List<String> badgesEarned, DateTime seasonEndDate
});




}
/// @nodoc
class _$SeasonStatsCopyWithImpl<$Res>
    implements $SeasonStatsCopyWith<$Res> {
  _$SeasonStatsCopyWithImpl(this._self, this._then);

  final SeasonStats _self;
  final $Res Function(SeasonStats) _then;

/// Create a copy of SeasonStats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? seasonNumber = null,Object? highestTier = null,Object? totalWins = null,Object? totalMatches = null,Object? seasonWinRate = null,Object? coinsEarned = null,Object? badgesEarned = null,Object? seasonEndDate = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,seasonNumber: null == seasonNumber ? _self.seasonNumber : seasonNumber // ignore: cast_nullable_to_non_nullable
as int,highestTier: null == highestTier ? _self.highestTier : highestTier // ignore: cast_nullable_to_non_nullable
as LeagueTier,totalWins: null == totalWins ? _self.totalWins : totalWins // ignore: cast_nullable_to_non_nullable
as int,totalMatches: null == totalMatches ? _self.totalMatches : totalMatches // ignore: cast_nullable_to_non_nullable
as int,seasonWinRate: null == seasonWinRate ? _self.seasonWinRate : seasonWinRate // ignore: cast_nullable_to_non_nullable
as double,coinsEarned: null == coinsEarned ? _self.coinsEarned : coinsEarned // ignore: cast_nullable_to_non_nullable
as int,badgesEarned: null == badgesEarned ? _self.badgesEarned : badgesEarned // ignore: cast_nullable_to_non_nullable
as List<String>,seasonEndDate: null == seasonEndDate ? _self.seasonEndDate : seasonEndDate // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [SeasonStats].
extension SeasonStatsPatterns on SeasonStats {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SeasonStats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SeasonStats() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SeasonStats value)  $default,){
final _that = this;
switch (_that) {
case _SeasonStats():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SeasonStats value)?  $default,){
final _that = this;
switch (_that) {
case _SeasonStats() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  int seasonNumber,  LeagueTier highestTier,  int totalWins,  int totalMatches,  double seasonWinRate,  int coinsEarned,  List<String> badgesEarned,  DateTime seasonEndDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SeasonStats() when $default != null:
return $default(_that.userId,_that.seasonNumber,_that.highestTier,_that.totalWins,_that.totalMatches,_that.seasonWinRate,_that.coinsEarned,_that.badgesEarned,_that.seasonEndDate);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  int seasonNumber,  LeagueTier highestTier,  int totalWins,  int totalMatches,  double seasonWinRate,  int coinsEarned,  List<String> badgesEarned,  DateTime seasonEndDate)  $default,) {final _that = this;
switch (_that) {
case _SeasonStats():
return $default(_that.userId,_that.seasonNumber,_that.highestTier,_that.totalWins,_that.totalMatches,_that.seasonWinRate,_that.coinsEarned,_that.badgesEarned,_that.seasonEndDate);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  int seasonNumber,  LeagueTier highestTier,  int totalWins,  int totalMatches,  double seasonWinRate,  int coinsEarned,  List<String> badgesEarned,  DateTime seasonEndDate)?  $default,) {final _that = this;
switch (_that) {
case _SeasonStats() when $default != null:
return $default(_that.userId,_that.seasonNumber,_that.highestTier,_that.totalWins,_that.totalMatches,_that.seasonWinRate,_that.coinsEarned,_that.badgesEarned,_that.seasonEndDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SeasonStats implements SeasonStats {
  const _SeasonStats({required this.userId, required this.seasonNumber, required this.highestTier, required this.totalWins, required this.totalMatches, required this.seasonWinRate, required this.coinsEarned, required final  List<String> badgesEarned, required this.seasonEndDate}): _badgesEarned = badgesEarned;
  factory _SeasonStats.fromJson(Map<String, dynamic> json) => _$SeasonStatsFromJson(json);

@override final  String userId;
@override final  int seasonNumber;
@override final  LeagueTier highestTier;
@override final  int totalWins;
@override final  int totalMatches;
@override final  double seasonWinRate;
@override final  int coinsEarned;
 final  List<String> _badgesEarned;
@override List<String> get badgesEarned {
  if (_badgesEarned is EqualUnmodifiableListView) return _badgesEarned;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_badgesEarned);
}

@override final  DateTime seasonEndDate;

/// Create a copy of SeasonStats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SeasonStatsCopyWith<_SeasonStats> get copyWith => __$SeasonStatsCopyWithImpl<_SeasonStats>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SeasonStatsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SeasonStats&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.seasonNumber, seasonNumber) || other.seasonNumber == seasonNumber)&&(identical(other.highestTier, highestTier) || other.highestTier == highestTier)&&(identical(other.totalWins, totalWins) || other.totalWins == totalWins)&&(identical(other.totalMatches, totalMatches) || other.totalMatches == totalMatches)&&(identical(other.seasonWinRate, seasonWinRate) || other.seasonWinRate == seasonWinRate)&&(identical(other.coinsEarned, coinsEarned) || other.coinsEarned == coinsEarned)&&const DeepCollectionEquality().equals(other._badgesEarned, _badgesEarned)&&(identical(other.seasonEndDate, seasonEndDate) || other.seasonEndDate == seasonEndDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,seasonNumber,highestTier,totalWins,totalMatches,seasonWinRate,coinsEarned,const DeepCollectionEquality().hash(_badgesEarned),seasonEndDate);

@override
String toString() {
  return 'SeasonStats(userId: $userId, seasonNumber: $seasonNumber, highestTier: $highestTier, totalWins: $totalWins, totalMatches: $totalMatches, seasonWinRate: $seasonWinRate, coinsEarned: $coinsEarned, badgesEarned: $badgesEarned, seasonEndDate: $seasonEndDate)';
}


}

/// @nodoc
abstract mixin class _$SeasonStatsCopyWith<$Res> implements $SeasonStatsCopyWith<$Res> {
  factory _$SeasonStatsCopyWith(_SeasonStats value, $Res Function(_SeasonStats) _then) = __$SeasonStatsCopyWithImpl;
@override @useResult
$Res call({
 String userId, int seasonNumber, LeagueTier highestTier, int totalWins, int totalMatches, double seasonWinRate, int coinsEarned, List<String> badgesEarned, DateTime seasonEndDate
});




}
/// @nodoc
class __$SeasonStatsCopyWithImpl<$Res>
    implements _$SeasonStatsCopyWith<$Res> {
  __$SeasonStatsCopyWithImpl(this._self, this._then);

  final _SeasonStats _self;
  final $Res Function(_SeasonStats) _then;

/// Create a copy of SeasonStats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? seasonNumber = null,Object? highestTier = null,Object? totalWins = null,Object? totalMatches = null,Object? seasonWinRate = null,Object? coinsEarned = null,Object? badgesEarned = null,Object? seasonEndDate = null,}) {
  return _then(_SeasonStats(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,seasonNumber: null == seasonNumber ? _self.seasonNumber : seasonNumber // ignore: cast_nullable_to_non_nullable
as int,highestTier: null == highestTier ? _self.highestTier : highestTier // ignore: cast_nullable_to_non_nullable
as LeagueTier,totalWins: null == totalWins ? _self.totalWins : totalWins // ignore: cast_nullable_to_non_nullable
as int,totalMatches: null == totalMatches ? _self.totalMatches : totalMatches // ignore: cast_nullable_to_non_nullable
as int,seasonWinRate: null == seasonWinRate ? _self.seasonWinRate : seasonWinRate // ignore: cast_nullable_to_non_nullable
as double,coinsEarned: null == coinsEarned ? _self.coinsEarned : coinsEarned // ignore: cast_nullable_to_non_nullable
as int,badgesEarned: null == badgesEarned ? _self._badgesEarned : badgesEarned // ignore: cast_nullable_to_non_nullable
as List<String>,seasonEndDate: null == seasonEndDate ? _self.seasonEndDate : seasonEndDate // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$MatchmakingRequest {

 String get userId; LeagueTier get tier; int get leaguePoints; DateTime get createdAt; String? get appId;
/// Create a copy of MatchmakingRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchmakingRequestCopyWith<MatchmakingRequest> get copyWith => _$MatchmakingRequestCopyWithImpl<MatchmakingRequest>(this as MatchmakingRequest, _$identity);

  /// Serializes this MatchmakingRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchmakingRequest&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.tier, tier) || other.tier == tier)&&(identical(other.leaguePoints, leaguePoints) || other.leaguePoints == leaguePoints)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.appId, appId) || other.appId == appId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,tier,leaguePoints,createdAt,appId);

@override
String toString() {
  return 'MatchmakingRequest(userId: $userId, tier: $tier, leaguePoints: $leaguePoints, createdAt: $createdAt, appId: $appId)';
}


}

/// @nodoc
abstract mixin class $MatchmakingRequestCopyWith<$Res>  {
  factory $MatchmakingRequestCopyWith(MatchmakingRequest value, $Res Function(MatchmakingRequest) _then) = _$MatchmakingRequestCopyWithImpl;
@useResult
$Res call({
 String userId, LeagueTier tier, int leaguePoints, DateTime createdAt, String? appId
});




}
/// @nodoc
class _$MatchmakingRequestCopyWithImpl<$Res>
    implements $MatchmakingRequestCopyWith<$Res> {
  _$MatchmakingRequestCopyWithImpl(this._self, this._then);

  final MatchmakingRequest _self;
  final $Res Function(MatchmakingRequest) _then;

/// Create a copy of MatchmakingRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? tier = null,Object? leaguePoints = null,Object? createdAt = null,Object? appId = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,tier: null == tier ? _self.tier : tier // ignore: cast_nullable_to_non_nullable
as LeagueTier,leaguePoints: null == leaguePoints ? _self.leaguePoints : leaguePoints // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,appId: freezed == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MatchmakingRequest].
extension MatchmakingRequestPatterns on MatchmakingRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchmakingRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchmakingRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchmakingRequest value)  $default,){
final _that = this;
switch (_that) {
case _MatchmakingRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchmakingRequest value)?  $default,){
final _that = this;
switch (_that) {
case _MatchmakingRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  LeagueTier tier,  int leaguePoints,  DateTime createdAt,  String? appId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchmakingRequest() when $default != null:
return $default(_that.userId,_that.tier,_that.leaguePoints,_that.createdAt,_that.appId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  LeagueTier tier,  int leaguePoints,  DateTime createdAt,  String? appId)  $default,) {final _that = this;
switch (_that) {
case _MatchmakingRequest():
return $default(_that.userId,_that.tier,_that.leaguePoints,_that.createdAt,_that.appId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  LeagueTier tier,  int leaguePoints,  DateTime createdAt,  String? appId)?  $default,) {final _that = this;
switch (_that) {
case _MatchmakingRequest() when $default != null:
return $default(_that.userId,_that.tier,_that.leaguePoints,_that.createdAt,_that.appId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MatchmakingRequest implements MatchmakingRequest {
  const _MatchmakingRequest({required this.userId, required this.tier, required this.leaguePoints, required this.createdAt, required this.appId});
  factory _MatchmakingRequest.fromJson(Map<String, dynamic> json) => _$MatchmakingRequestFromJson(json);

@override final  String userId;
@override final  LeagueTier tier;
@override final  int leaguePoints;
@override final  DateTime createdAt;
@override final  String? appId;

/// Create a copy of MatchmakingRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchmakingRequestCopyWith<_MatchmakingRequest> get copyWith => __$MatchmakingRequestCopyWithImpl<_MatchmakingRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MatchmakingRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchmakingRequest&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.tier, tier) || other.tier == tier)&&(identical(other.leaguePoints, leaguePoints) || other.leaguePoints == leaguePoints)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.appId, appId) || other.appId == appId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,tier,leaguePoints,createdAt,appId);

@override
String toString() {
  return 'MatchmakingRequest(userId: $userId, tier: $tier, leaguePoints: $leaguePoints, createdAt: $createdAt, appId: $appId)';
}


}

/// @nodoc
abstract mixin class _$MatchmakingRequestCopyWith<$Res> implements $MatchmakingRequestCopyWith<$Res> {
  factory _$MatchmakingRequestCopyWith(_MatchmakingRequest value, $Res Function(_MatchmakingRequest) _then) = __$MatchmakingRequestCopyWithImpl;
@override @useResult
$Res call({
 String userId, LeagueTier tier, int leaguePoints, DateTime createdAt, String? appId
});




}
/// @nodoc
class __$MatchmakingRequestCopyWithImpl<$Res>
    implements _$MatchmakingRequestCopyWith<$Res> {
  __$MatchmakingRequestCopyWithImpl(this._self, this._then);

  final _MatchmakingRequest _self;
  final $Res Function(_MatchmakingRequest) _then;

/// Create a copy of MatchmakingRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? tier = null,Object? leaguePoints = null,Object? createdAt = null,Object? appId = freezed,}) {
  return _then(_MatchmakingRequest(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,tier: null == tier ? _self.tier : tier // ignore: cast_nullable_to_non_nullable
as LeagueTier,leaguePoints: null == leaguePoints ? _self.leaguePoints : leaguePoints // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,appId: freezed == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
