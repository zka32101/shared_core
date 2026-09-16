// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'global_ranking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GlobalRankingEntry {

 String get userId; String get username; int get totalScore;// 7アプリの合計スコア
 int get globalRank;// 順位
 double get percentile;// パーセンタイル（0-100）
 DateTime get lastUpdated;
/// Create a copy of GlobalRankingEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GlobalRankingEntryCopyWith<GlobalRankingEntry> get copyWith => _$GlobalRankingEntryCopyWithImpl<GlobalRankingEntry>(this as GlobalRankingEntry, _$identity);

  /// Serializes this GlobalRankingEntry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GlobalRankingEntry&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.username, username) || other.username == username)&&(identical(other.totalScore, totalScore) || other.totalScore == totalScore)&&(identical(other.globalRank, globalRank) || other.globalRank == globalRank)&&(identical(other.percentile, percentile) || other.percentile == percentile)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,username,totalScore,globalRank,percentile,lastUpdated);

@override
String toString() {
  return 'GlobalRankingEntry(userId: $userId, username: $username, totalScore: $totalScore, globalRank: $globalRank, percentile: $percentile, lastUpdated: $lastUpdated)';
}


}

/// @nodoc
abstract mixin class $GlobalRankingEntryCopyWith<$Res>  {
  factory $GlobalRankingEntryCopyWith(GlobalRankingEntry value, $Res Function(GlobalRankingEntry) _then) = _$GlobalRankingEntryCopyWithImpl;
@useResult
$Res call({
 String userId, String username, int totalScore, int globalRank, double percentile, DateTime lastUpdated
});




}
/// @nodoc
class _$GlobalRankingEntryCopyWithImpl<$Res>
    implements $GlobalRankingEntryCopyWith<$Res> {
  _$GlobalRankingEntryCopyWithImpl(this._self, this._then);

  final GlobalRankingEntry _self;
  final $Res Function(GlobalRankingEntry) _then;

/// Create a copy of GlobalRankingEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? username = null,Object? totalScore = null,Object? globalRank = null,Object? percentile = null,Object? lastUpdated = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,totalScore: null == totalScore ? _self.totalScore : totalScore // ignore: cast_nullable_to_non_nullable
as int,globalRank: null == globalRank ? _self.globalRank : globalRank // ignore: cast_nullable_to_non_nullable
as int,percentile: null == percentile ? _self.percentile : percentile // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [GlobalRankingEntry].
extension GlobalRankingEntryPatterns on GlobalRankingEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GlobalRankingEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GlobalRankingEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GlobalRankingEntry value)  $default,){
final _that = this;
switch (_that) {
case _GlobalRankingEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GlobalRankingEntry value)?  $default,){
final _that = this;
switch (_that) {
case _GlobalRankingEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String username,  int totalScore,  int globalRank,  double percentile,  DateTime lastUpdated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GlobalRankingEntry() when $default != null:
return $default(_that.userId,_that.username,_that.totalScore,_that.globalRank,_that.percentile,_that.lastUpdated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String username,  int totalScore,  int globalRank,  double percentile,  DateTime lastUpdated)  $default,) {final _that = this;
switch (_that) {
case _GlobalRankingEntry():
return $default(_that.userId,_that.username,_that.totalScore,_that.globalRank,_that.percentile,_that.lastUpdated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String username,  int totalScore,  int globalRank,  double percentile,  DateTime lastUpdated)?  $default,) {final _that = this;
switch (_that) {
case _GlobalRankingEntry() when $default != null:
return $default(_that.userId,_that.username,_that.totalScore,_that.globalRank,_that.percentile,_that.lastUpdated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GlobalRankingEntry implements GlobalRankingEntry {
  const _GlobalRankingEntry({required this.userId, required this.username, required this.totalScore, required this.globalRank, required this.percentile, required this.lastUpdated});
  factory _GlobalRankingEntry.fromJson(Map<String, dynamic> json) => _$GlobalRankingEntryFromJson(json);

@override final  String userId;
@override final  String username;
@override final  int totalScore;
// 7アプリの合計スコア
@override final  int globalRank;
// 順位
@override final  double percentile;
// パーセンタイル（0-100）
@override final  DateTime lastUpdated;

/// Create a copy of GlobalRankingEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GlobalRankingEntryCopyWith<_GlobalRankingEntry> get copyWith => __$GlobalRankingEntryCopyWithImpl<_GlobalRankingEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GlobalRankingEntryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GlobalRankingEntry&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.username, username) || other.username == username)&&(identical(other.totalScore, totalScore) || other.totalScore == totalScore)&&(identical(other.globalRank, globalRank) || other.globalRank == globalRank)&&(identical(other.percentile, percentile) || other.percentile == percentile)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,username,totalScore,globalRank,percentile,lastUpdated);

@override
String toString() {
  return 'GlobalRankingEntry(userId: $userId, username: $username, totalScore: $totalScore, globalRank: $globalRank, percentile: $percentile, lastUpdated: $lastUpdated)';
}


}

/// @nodoc
abstract mixin class _$GlobalRankingEntryCopyWith<$Res> implements $GlobalRankingEntryCopyWith<$Res> {
  factory _$GlobalRankingEntryCopyWith(_GlobalRankingEntry value, $Res Function(_GlobalRankingEntry) _then) = __$GlobalRankingEntryCopyWithImpl;
@override @useResult
$Res call({
 String userId, String username, int totalScore, int globalRank, double percentile, DateTime lastUpdated
});




}
/// @nodoc
class __$GlobalRankingEntryCopyWithImpl<$Res>
    implements _$GlobalRankingEntryCopyWith<$Res> {
  __$GlobalRankingEntryCopyWithImpl(this._self, this._then);

  final _GlobalRankingEntry _self;
  final $Res Function(_GlobalRankingEntry) _then;

/// Create a copy of GlobalRankingEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? username = null,Object? totalScore = null,Object? globalRank = null,Object? percentile = null,Object? lastUpdated = null,}) {
  return _then(_GlobalRankingEntry(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,totalScore: null == totalScore ? _self.totalScore : totalScore // ignore: cast_nullable_to_non_nullable
as int,globalRank: null == globalRank ? _self.globalRank : globalRank // ignore: cast_nullable_to_non_nullable
as int,percentile: null == percentile ? _self.percentile : percentile // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$SubjectRankingEntry {

 String get userId; String get username; String get subject;// 'japanese', 'math', 'english', 'science', 'social', 'programming', 'morality'
 int get score; int get subjectRank; double get percentile; DateTime get lastUpdated;
/// Create a copy of SubjectRankingEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubjectRankingEntryCopyWith<SubjectRankingEntry> get copyWith => _$SubjectRankingEntryCopyWithImpl<SubjectRankingEntry>(this as SubjectRankingEntry, _$identity);

  /// Serializes this SubjectRankingEntry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubjectRankingEntry&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.username, username) || other.username == username)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.score, score) || other.score == score)&&(identical(other.subjectRank, subjectRank) || other.subjectRank == subjectRank)&&(identical(other.percentile, percentile) || other.percentile == percentile)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,username,subject,score,subjectRank,percentile,lastUpdated);

@override
String toString() {
  return 'SubjectRankingEntry(userId: $userId, username: $username, subject: $subject, score: $score, subjectRank: $subjectRank, percentile: $percentile, lastUpdated: $lastUpdated)';
}


}

/// @nodoc
abstract mixin class $SubjectRankingEntryCopyWith<$Res>  {
  factory $SubjectRankingEntryCopyWith(SubjectRankingEntry value, $Res Function(SubjectRankingEntry) _then) = _$SubjectRankingEntryCopyWithImpl;
@useResult
$Res call({
 String userId, String username, String subject, int score, int subjectRank, double percentile, DateTime lastUpdated
});




}
/// @nodoc
class _$SubjectRankingEntryCopyWithImpl<$Res>
    implements $SubjectRankingEntryCopyWith<$Res> {
  _$SubjectRankingEntryCopyWithImpl(this._self, this._then);

  final SubjectRankingEntry _self;
  final $Res Function(SubjectRankingEntry) _then;

/// Create a copy of SubjectRankingEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? username = null,Object? subject = null,Object? score = null,Object? subjectRank = null,Object? percentile = null,Object? lastUpdated = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,subjectRank: null == subjectRank ? _self.subjectRank : subjectRank // ignore: cast_nullable_to_non_nullable
as int,percentile: null == percentile ? _self.percentile : percentile // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [SubjectRankingEntry].
extension SubjectRankingEntryPatterns on SubjectRankingEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubjectRankingEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubjectRankingEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubjectRankingEntry value)  $default,){
final _that = this;
switch (_that) {
case _SubjectRankingEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubjectRankingEntry value)?  $default,){
final _that = this;
switch (_that) {
case _SubjectRankingEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String username,  String subject,  int score,  int subjectRank,  double percentile,  DateTime lastUpdated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubjectRankingEntry() when $default != null:
return $default(_that.userId,_that.username,_that.subject,_that.score,_that.subjectRank,_that.percentile,_that.lastUpdated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String username,  String subject,  int score,  int subjectRank,  double percentile,  DateTime lastUpdated)  $default,) {final _that = this;
switch (_that) {
case _SubjectRankingEntry():
return $default(_that.userId,_that.username,_that.subject,_that.score,_that.subjectRank,_that.percentile,_that.lastUpdated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String username,  String subject,  int score,  int subjectRank,  double percentile,  DateTime lastUpdated)?  $default,) {final _that = this;
switch (_that) {
case _SubjectRankingEntry() when $default != null:
return $default(_that.userId,_that.username,_that.subject,_that.score,_that.subjectRank,_that.percentile,_that.lastUpdated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubjectRankingEntry implements SubjectRankingEntry {
  const _SubjectRankingEntry({required this.userId, required this.username, required this.subject, required this.score, required this.subjectRank, required this.percentile, required this.lastUpdated});
  factory _SubjectRankingEntry.fromJson(Map<String, dynamic> json) => _$SubjectRankingEntryFromJson(json);

@override final  String userId;
@override final  String username;
@override final  String subject;
// 'japanese', 'math', 'english', 'science', 'social', 'programming', 'morality'
@override final  int score;
@override final  int subjectRank;
@override final  double percentile;
@override final  DateTime lastUpdated;

/// Create a copy of SubjectRankingEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubjectRankingEntryCopyWith<_SubjectRankingEntry> get copyWith => __$SubjectRankingEntryCopyWithImpl<_SubjectRankingEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubjectRankingEntryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubjectRankingEntry&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.username, username) || other.username == username)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.score, score) || other.score == score)&&(identical(other.subjectRank, subjectRank) || other.subjectRank == subjectRank)&&(identical(other.percentile, percentile) || other.percentile == percentile)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,username,subject,score,subjectRank,percentile,lastUpdated);

@override
String toString() {
  return 'SubjectRankingEntry(userId: $userId, username: $username, subject: $subject, score: $score, subjectRank: $subjectRank, percentile: $percentile, lastUpdated: $lastUpdated)';
}


}

/// @nodoc
abstract mixin class _$SubjectRankingEntryCopyWith<$Res> implements $SubjectRankingEntryCopyWith<$Res> {
  factory _$SubjectRankingEntryCopyWith(_SubjectRankingEntry value, $Res Function(_SubjectRankingEntry) _then) = __$SubjectRankingEntryCopyWithImpl;
@override @useResult
$Res call({
 String userId, String username, String subject, int score, int subjectRank, double percentile, DateTime lastUpdated
});




}
/// @nodoc
class __$SubjectRankingEntryCopyWithImpl<$Res>
    implements _$SubjectRankingEntryCopyWith<$Res> {
  __$SubjectRankingEntryCopyWithImpl(this._self, this._then);

  final _SubjectRankingEntry _self;
  final $Res Function(_SubjectRankingEntry) _then;

/// Create a copy of SubjectRankingEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? username = null,Object? subject = null,Object? score = null,Object? subjectRank = null,Object? percentile = null,Object? lastUpdated = null,}) {
  return _then(_SubjectRankingEntry(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,subjectRank: null == subjectRank ? _self.subjectRank : subjectRank // ignore: cast_nullable_to_non_nullable
as int,percentile: null == percentile ? _self.percentile : percentile // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$UserRankingStats {

 String get userId; Map<String, int> get subjectScores;// 教科別スコア: {'japanese': 100, 'math': 150, ...}
 int get totalScore; DateTime get updatedAt;
/// Create a copy of UserRankingStats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserRankingStatsCopyWith<UserRankingStats> get copyWith => _$UserRankingStatsCopyWithImpl<UserRankingStats>(this as UserRankingStats, _$identity);

  /// Serializes this UserRankingStats to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserRankingStats&&(identical(other.userId, userId) || other.userId == userId)&&const DeepCollectionEquality().equals(other.subjectScores, subjectScores)&&(identical(other.totalScore, totalScore) || other.totalScore == totalScore)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,const DeepCollectionEquality().hash(subjectScores),totalScore,updatedAt);

@override
String toString() {
  return 'UserRankingStats(userId: $userId, subjectScores: $subjectScores, totalScore: $totalScore, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $UserRankingStatsCopyWith<$Res>  {
  factory $UserRankingStatsCopyWith(UserRankingStats value, $Res Function(UserRankingStats) _then) = _$UserRankingStatsCopyWithImpl;
@useResult
$Res call({
 String userId, Map<String, int> subjectScores, int totalScore, DateTime updatedAt
});




}
/// @nodoc
class _$UserRankingStatsCopyWithImpl<$Res>
    implements $UserRankingStatsCopyWith<$Res> {
  _$UserRankingStatsCopyWithImpl(this._self, this._then);

  final UserRankingStats _self;
  final $Res Function(UserRankingStats) _then;

/// Create a copy of UserRankingStats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? subjectScores = null,Object? totalScore = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,subjectScores: null == subjectScores ? _self.subjectScores : subjectScores // ignore: cast_nullable_to_non_nullable
as Map<String, int>,totalScore: null == totalScore ? _self.totalScore : totalScore // ignore: cast_nullable_to_non_nullable
as int,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [UserRankingStats].
extension UserRankingStatsPatterns on UserRankingStats {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserRankingStats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserRankingStats() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserRankingStats value)  $default,){
final _that = this;
switch (_that) {
case _UserRankingStats():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserRankingStats value)?  $default,){
final _that = this;
switch (_that) {
case _UserRankingStats() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  Map<String, int> subjectScores,  int totalScore,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserRankingStats() when $default != null:
return $default(_that.userId,_that.subjectScores,_that.totalScore,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  Map<String, int> subjectScores,  int totalScore,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _UserRankingStats():
return $default(_that.userId,_that.subjectScores,_that.totalScore,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  Map<String, int> subjectScores,  int totalScore,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _UserRankingStats() when $default != null:
return $default(_that.userId,_that.subjectScores,_that.totalScore,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserRankingStats implements UserRankingStats {
  const _UserRankingStats({required this.userId, required final  Map<String, int> subjectScores, required this.totalScore, required this.updatedAt}): _subjectScores = subjectScores;
  factory _UserRankingStats.fromJson(Map<String, dynamic> json) => _$UserRankingStatsFromJson(json);

@override final  String userId;
 final  Map<String, int> _subjectScores;
@override Map<String, int> get subjectScores {
  if (_subjectScores is EqualUnmodifiableMapView) return _subjectScores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_subjectScores);
}

// 教科別スコア: {'japanese': 100, 'math': 150, ...}
@override final  int totalScore;
@override final  DateTime updatedAt;

/// Create a copy of UserRankingStats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserRankingStatsCopyWith<_UserRankingStats> get copyWith => __$UserRankingStatsCopyWithImpl<_UserRankingStats>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserRankingStatsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserRankingStats&&(identical(other.userId, userId) || other.userId == userId)&&const DeepCollectionEquality().equals(other._subjectScores, _subjectScores)&&(identical(other.totalScore, totalScore) || other.totalScore == totalScore)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,const DeepCollectionEquality().hash(_subjectScores),totalScore,updatedAt);

@override
String toString() {
  return 'UserRankingStats(userId: $userId, subjectScores: $subjectScores, totalScore: $totalScore, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$UserRankingStatsCopyWith<$Res> implements $UserRankingStatsCopyWith<$Res> {
  factory _$UserRankingStatsCopyWith(_UserRankingStats value, $Res Function(_UserRankingStats) _then) = __$UserRankingStatsCopyWithImpl;
@override @useResult
$Res call({
 String userId, Map<String, int> subjectScores, int totalScore, DateTime updatedAt
});




}
/// @nodoc
class __$UserRankingStatsCopyWithImpl<$Res>
    implements _$UserRankingStatsCopyWith<$Res> {
  __$UserRankingStatsCopyWithImpl(this._self, this._then);

  final _UserRankingStats _self;
  final $Res Function(_UserRankingStats) _then;

/// Create a copy of UserRankingStats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? subjectScores = null,Object? totalScore = null,Object? updatedAt = null,}) {
  return _then(_UserRankingStats(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,subjectScores: null == subjectScores ? _self._subjectScores : subjectScores // ignore: cast_nullable_to_non_nullable
as Map<String, int>,totalScore: null == totalScore ? _self.totalScore : totalScore // ignore: cast_nullable_to_non_nullable
as int,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
