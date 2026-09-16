// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'retention_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DailyMission {

 String get id;// 'daily_mission_YYYYMMDD'
 MissionType get type; String get title; String get description; int get targetValue;// 達成目標数
 int get currentProgress;// 現在の進捗
 int get rewardCoins;// 報酬コイン
 String? get rewardBadgeId;// 報酬バッジ（オプション）
 DateTime get generatedAt;// 生成日時
 DateTime get expiresAt;// 有効期限（翌日 23:59:59）
 bool get isCompleted;// 完了フラグ
 DateTime? get completedAt;
/// Create a copy of DailyMission
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyMissionCopyWith<DailyMission> get copyWith => _$DailyMissionCopyWithImpl<DailyMission>(this as DailyMission, _$identity);

  /// Serializes this DailyMission to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyMission&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.targetValue, targetValue) || other.targetValue == targetValue)&&(identical(other.currentProgress, currentProgress) || other.currentProgress == currentProgress)&&(identical(other.rewardCoins, rewardCoins) || other.rewardCoins == rewardCoins)&&(identical(other.rewardBadgeId, rewardBadgeId) || other.rewardBadgeId == rewardBadgeId)&&(identical(other.generatedAt, generatedAt) || other.generatedAt == generatedAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,title,description,targetValue,currentProgress,rewardCoins,rewardBadgeId,generatedAt,expiresAt,isCompleted,completedAt);

@override
String toString() {
  return 'DailyMission(id: $id, type: $type, title: $title, description: $description, targetValue: $targetValue, currentProgress: $currentProgress, rewardCoins: $rewardCoins, rewardBadgeId: $rewardBadgeId, generatedAt: $generatedAt, expiresAt: $expiresAt, isCompleted: $isCompleted, completedAt: $completedAt)';
}


}

/// @nodoc
abstract mixin class $DailyMissionCopyWith<$Res>  {
  factory $DailyMissionCopyWith(DailyMission value, $Res Function(DailyMission) _then) = _$DailyMissionCopyWithImpl;
@useResult
$Res call({
 String id, MissionType type, String title, String description, int targetValue, int currentProgress, int rewardCoins, String? rewardBadgeId, DateTime generatedAt, DateTime expiresAt, bool isCompleted, DateTime? completedAt
});




}
/// @nodoc
class _$DailyMissionCopyWithImpl<$Res>
    implements $DailyMissionCopyWith<$Res> {
  _$DailyMissionCopyWithImpl(this._self, this._then);

  final DailyMission _self;
  final $Res Function(DailyMission) _then;

/// Create a copy of DailyMission
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? title = null,Object? description = null,Object? targetValue = null,Object? currentProgress = null,Object? rewardCoins = null,Object? rewardBadgeId = freezed,Object? generatedAt = null,Object? expiresAt = null,Object? isCompleted = null,Object? completedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MissionType,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,targetValue: null == targetValue ? _self.targetValue : targetValue // ignore: cast_nullable_to_non_nullable
as int,currentProgress: null == currentProgress ? _self.currentProgress : currentProgress // ignore: cast_nullable_to_non_nullable
as int,rewardCoins: null == rewardCoins ? _self.rewardCoins : rewardCoins // ignore: cast_nullable_to_non_nullable
as int,rewardBadgeId: freezed == rewardBadgeId ? _self.rewardBadgeId : rewardBadgeId // ignore: cast_nullable_to_non_nullable
as String?,generatedAt: null == generatedAt ? _self.generatedAt : generatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [DailyMission].
extension DailyMissionPatterns on DailyMission {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyMission value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyMission() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyMission value)  $default,){
final _that = this;
switch (_that) {
case _DailyMission():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyMission value)?  $default,){
final _that = this;
switch (_that) {
case _DailyMission() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  MissionType type,  String title,  String description,  int targetValue,  int currentProgress,  int rewardCoins,  String? rewardBadgeId,  DateTime generatedAt,  DateTime expiresAt,  bool isCompleted,  DateTime? completedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyMission() when $default != null:
return $default(_that.id,_that.type,_that.title,_that.description,_that.targetValue,_that.currentProgress,_that.rewardCoins,_that.rewardBadgeId,_that.generatedAt,_that.expiresAt,_that.isCompleted,_that.completedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  MissionType type,  String title,  String description,  int targetValue,  int currentProgress,  int rewardCoins,  String? rewardBadgeId,  DateTime generatedAt,  DateTime expiresAt,  bool isCompleted,  DateTime? completedAt)  $default,) {final _that = this;
switch (_that) {
case _DailyMission():
return $default(_that.id,_that.type,_that.title,_that.description,_that.targetValue,_that.currentProgress,_that.rewardCoins,_that.rewardBadgeId,_that.generatedAt,_that.expiresAt,_that.isCompleted,_that.completedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  MissionType type,  String title,  String description,  int targetValue,  int currentProgress,  int rewardCoins,  String? rewardBadgeId,  DateTime generatedAt,  DateTime expiresAt,  bool isCompleted,  DateTime? completedAt)?  $default,) {final _that = this;
switch (_that) {
case _DailyMission() when $default != null:
return $default(_that.id,_that.type,_that.title,_that.description,_that.targetValue,_that.currentProgress,_that.rewardCoins,_that.rewardBadgeId,_that.generatedAt,_that.expiresAt,_that.isCompleted,_that.completedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DailyMission implements DailyMission {
  const _DailyMission({required this.id, required this.type, required this.title, required this.description, required this.targetValue, required this.currentProgress, required this.rewardCoins, required this.rewardBadgeId, required this.generatedAt, required this.expiresAt, required this.isCompleted, required this.completedAt});
  factory _DailyMission.fromJson(Map<String, dynamic> json) => _$DailyMissionFromJson(json);

@override final  String id;
// 'daily_mission_YYYYMMDD'
@override final  MissionType type;
@override final  String title;
@override final  String description;
@override final  int targetValue;
// 達成目標数
@override final  int currentProgress;
// 現在の進捗
@override final  int rewardCoins;
// 報酬コイン
@override final  String? rewardBadgeId;
// 報酬バッジ（オプション）
@override final  DateTime generatedAt;
// 生成日時
@override final  DateTime expiresAt;
// 有効期限（翌日 23:59:59）
@override final  bool isCompleted;
// 完了フラグ
@override final  DateTime? completedAt;

/// Create a copy of DailyMission
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyMissionCopyWith<_DailyMission> get copyWith => __$DailyMissionCopyWithImpl<_DailyMission>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyMissionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyMission&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.targetValue, targetValue) || other.targetValue == targetValue)&&(identical(other.currentProgress, currentProgress) || other.currentProgress == currentProgress)&&(identical(other.rewardCoins, rewardCoins) || other.rewardCoins == rewardCoins)&&(identical(other.rewardBadgeId, rewardBadgeId) || other.rewardBadgeId == rewardBadgeId)&&(identical(other.generatedAt, generatedAt) || other.generatedAt == generatedAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,title,description,targetValue,currentProgress,rewardCoins,rewardBadgeId,generatedAt,expiresAt,isCompleted,completedAt);

@override
String toString() {
  return 'DailyMission(id: $id, type: $type, title: $title, description: $description, targetValue: $targetValue, currentProgress: $currentProgress, rewardCoins: $rewardCoins, rewardBadgeId: $rewardBadgeId, generatedAt: $generatedAt, expiresAt: $expiresAt, isCompleted: $isCompleted, completedAt: $completedAt)';
}


}

/// @nodoc
abstract mixin class _$DailyMissionCopyWith<$Res> implements $DailyMissionCopyWith<$Res> {
  factory _$DailyMissionCopyWith(_DailyMission value, $Res Function(_DailyMission) _then) = __$DailyMissionCopyWithImpl;
@override @useResult
$Res call({
 String id, MissionType type, String title, String description, int targetValue, int currentProgress, int rewardCoins, String? rewardBadgeId, DateTime generatedAt, DateTime expiresAt, bool isCompleted, DateTime? completedAt
});




}
/// @nodoc
class __$DailyMissionCopyWithImpl<$Res>
    implements _$DailyMissionCopyWith<$Res> {
  __$DailyMissionCopyWithImpl(this._self, this._then);

  final _DailyMission _self;
  final $Res Function(_DailyMission) _then;

/// Create a copy of DailyMission
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? title = null,Object? description = null,Object? targetValue = null,Object? currentProgress = null,Object? rewardCoins = null,Object? rewardBadgeId = freezed,Object? generatedAt = null,Object? expiresAt = null,Object? isCompleted = null,Object? completedAt = freezed,}) {
  return _then(_DailyMission(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MissionType,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,targetValue: null == targetValue ? _self.targetValue : targetValue // ignore: cast_nullable_to_non_nullable
as int,currentProgress: null == currentProgress ? _self.currentProgress : currentProgress // ignore: cast_nullable_to_non_nullable
as int,rewardCoins: null == rewardCoins ? _self.rewardCoins : rewardCoins // ignore: cast_nullable_to_non_nullable
as int,rewardBadgeId: freezed == rewardBadgeId ? _self.rewardBadgeId : rewardBadgeId // ignore: cast_nullable_to_non_nullable
as String?,generatedAt: null == generatedAt ? _self.generatedAt : generatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$StreakData {

 String get userId; int get currentStreak;// 現在のストリーク日数
 int get longestStreak;// 最長ストリーク
 DateTime get lastActivityAt;// 最後に学習した日時
 int get totalStreakCoins;// 累計ストリーク報酬コイン
 List<String> get streakBadges;
/// Create a copy of StreakData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StreakDataCopyWith<StreakData> get copyWith => _$StreakDataCopyWithImpl<StreakData>(this as StreakData, _$identity);

  /// Serializes this StreakData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StreakData&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.currentStreak, currentStreak) || other.currentStreak == currentStreak)&&(identical(other.longestStreak, longestStreak) || other.longestStreak == longestStreak)&&(identical(other.lastActivityAt, lastActivityAt) || other.lastActivityAt == lastActivityAt)&&(identical(other.totalStreakCoins, totalStreakCoins) || other.totalStreakCoins == totalStreakCoins)&&const DeepCollectionEquality().equals(other.streakBadges, streakBadges));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,currentStreak,longestStreak,lastActivityAt,totalStreakCoins,const DeepCollectionEquality().hash(streakBadges));

@override
String toString() {
  return 'StreakData(userId: $userId, currentStreak: $currentStreak, longestStreak: $longestStreak, lastActivityAt: $lastActivityAt, totalStreakCoins: $totalStreakCoins, streakBadges: $streakBadges)';
}


}

/// @nodoc
abstract mixin class $StreakDataCopyWith<$Res>  {
  factory $StreakDataCopyWith(StreakData value, $Res Function(StreakData) _then) = _$StreakDataCopyWithImpl;
@useResult
$Res call({
 String userId, int currentStreak, int longestStreak, DateTime lastActivityAt, int totalStreakCoins, List<String> streakBadges
});




}
/// @nodoc
class _$StreakDataCopyWithImpl<$Res>
    implements $StreakDataCopyWith<$Res> {
  _$StreakDataCopyWithImpl(this._self, this._then);

  final StreakData _self;
  final $Res Function(StreakData) _then;

/// Create a copy of StreakData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? currentStreak = null,Object? longestStreak = null,Object? lastActivityAt = null,Object? totalStreakCoins = null,Object? streakBadges = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,currentStreak: null == currentStreak ? _self.currentStreak : currentStreak // ignore: cast_nullable_to_non_nullable
as int,longestStreak: null == longestStreak ? _self.longestStreak : longestStreak // ignore: cast_nullable_to_non_nullable
as int,lastActivityAt: null == lastActivityAt ? _self.lastActivityAt : lastActivityAt // ignore: cast_nullable_to_non_nullable
as DateTime,totalStreakCoins: null == totalStreakCoins ? _self.totalStreakCoins : totalStreakCoins // ignore: cast_nullable_to_non_nullable
as int,streakBadges: null == streakBadges ? _self.streakBadges : streakBadges // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [StreakData].
extension StreakDataPatterns on StreakData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StreakData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StreakData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StreakData value)  $default,){
final _that = this;
switch (_that) {
case _StreakData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StreakData value)?  $default,){
final _that = this;
switch (_that) {
case _StreakData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  int currentStreak,  int longestStreak,  DateTime lastActivityAt,  int totalStreakCoins,  List<String> streakBadges)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StreakData() when $default != null:
return $default(_that.userId,_that.currentStreak,_that.longestStreak,_that.lastActivityAt,_that.totalStreakCoins,_that.streakBadges);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  int currentStreak,  int longestStreak,  DateTime lastActivityAt,  int totalStreakCoins,  List<String> streakBadges)  $default,) {final _that = this;
switch (_that) {
case _StreakData():
return $default(_that.userId,_that.currentStreak,_that.longestStreak,_that.lastActivityAt,_that.totalStreakCoins,_that.streakBadges);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  int currentStreak,  int longestStreak,  DateTime lastActivityAt,  int totalStreakCoins,  List<String> streakBadges)?  $default,) {final _that = this;
switch (_that) {
case _StreakData() when $default != null:
return $default(_that.userId,_that.currentStreak,_that.longestStreak,_that.lastActivityAt,_that.totalStreakCoins,_that.streakBadges);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StreakData implements StreakData {
  const _StreakData({required this.userId, required this.currentStreak, required this.longestStreak, required this.lastActivityAt, required this.totalStreakCoins, required final  List<String> streakBadges}): _streakBadges = streakBadges;
  factory _StreakData.fromJson(Map<String, dynamic> json) => _$StreakDataFromJson(json);

@override final  String userId;
@override final  int currentStreak;
// 現在のストリーク日数
@override final  int longestStreak;
// 最長ストリーク
@override final  DateTime lastActivityAt;
// 最後に学習した日時
@override final  int totalStreakCoins;
// 累計ストリーク報酬コイン
 final  List<String> _streakBadges;
// 累計ストリーク報酬コイン
@override List<String> get streakBadges {
  if (_streakBadges is EqualUnmodifiableListView) return _streakBadges;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_streakBadges);
}


/// Create a copy of StreakData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StreakDataCopyWith<_StreakData> get copyWith => __$StreakDataCopyWithImpl<_StreakData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StreakDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StreakData&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.currentStreak, currentStreak) || other.currentStreak == currentStreak)&&(identical(other.longestStreak, longestStreak) || other.longestStreak == longestStreak)&&(identical(other.lastActivityAt, lastActivityAt) || other.lastActivityAt == lastActivityAt)&&(identical(other.totalStreakCoins, totalStreakCoins) || other.totalStreakCoins == totalStreakCoins)&&const DeepCollectionEquality().equals(other._streakBadges, _streakBadges));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,currentStreak,longestStreak,lastActivityAt,totalStreakCoins,const DeepCollectionEquality().hash(_streakBadges));

@override
String toString() {
  return 'StreakData(userId: $userId, currentStreak: $currentStreak, longestStreak: $longestStreak, lastActivityAt: $lastActivityAt, totalStreakCoins: $totalStreakCoins, streakBadges: $streakBadges)';
}


}

/// @nodoc
abstract mixin class _$StreakDataCopyWith<$Res> implements $StreakDataCopyWith<$Res> {
  factory _$StreakDataCopyWith(_StreakData value, $Res Function(_StreakData) _then) = __$StreakDataCopyWithImpl;
@override @useResult
$Res call({
 String userId, int currentStreak, int longestStreak, DateTime lastActivityAt, int totalStreakCoins, List<String> streakBadges
});




}
/// @nodoc
class __$StreakDataCopyWithImpl<$Res>
    implements _$StreakDataCopyWith<$Res> {
  __$StreakDataCopyWithImpl(this._self, this._then);

  final _StreakData _self;
  final $Res Function(_StreakData) _then;

/// Create a copy of StreakData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? currentStreak = null,Object? longestStreak = null,Object? lastActivityAt = null,Object? totalStreakCoins = null,Object? streakBadges = null,}) {
  return _then(_StreakData(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,currentStreak: null == currentStreak ? _self.currentStreak : currentStreak // ignore: cast_nullable_to_non_nullable
as int,longestStreak: null == longestStreak ? _self.longestStreak : longestStreak // ignore: cast_nullable_to_non_nullable
as int,lastActivityAt: null == lastActivityAt ? _self.lastActivityAt : lastActivityAt // ignore: cast_nullable_to_non_nullable
as DateTime,totalStreakCoins: null == totalStreakCoins ? _self.totalStreakCoins : totalStreakCoins // ignore: cast_nullable_to_non_nullable
as int,streakBadges: null == streakBadges ? _self._streakBadges : streakBadges // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$WeeklyBonus {

 int get dayNumber;// 1-7
 int get requiredMissions;// その日に必要なミッション完了数
 int get coinReward;// コイン報酬
 String? get badgeId;// バッジ報酬（オプション）
 bool get isCompleted;
/// Create a copy of WeeklyBonus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeeklyBonusCopyWith<WeeklyBonus> get copyWith => _$WeeklyBonusCopyWithImpl<WeeklyBonus>(this as WeeklyBonus, _$identity);

  /// Serializes this WeeklyBonus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeeklyBonus&&(identical(other.dayNumber, dayNumber) || other.dayNumber == dayNumber)&&(identical(other.requiredMissions, requiredMissions) || other.requiredMissions == requiredMissions)&&(identical(other.coinReward, coinReward) || other.coinReward == coinReward)&&(identical(other.badgeId, badgeId) || other.badgeId == badgeId)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dayNumber,requiredMissions,coinReward,badgeId,isCompleted);

@override
String toString() {
  return 'WeeklyBonus(dayNumber: $dayNumber, requiredMissions: $requiredMissions, coinReward: $coinReward, badgeId: $badgeId, isCompleted: $isCompleted)';
}


}

/// @nodoc
abstract mixin class $WeeklyBonusCopyWith<$Res>  {
  factory $WeeklyBonusCopyWith(WeeklyBonus value, $Res Function(WeeklyBonus) _then) = _$WeeklyBonusCopyWithImpl;
@useResult
$Res call({
 int dayNumber, int requiredMissions, int coinReward, String? badgeId, bool isCompleted
});




}
/// @nodoc
class _$WeeklyBonusCopyWithImpl<$Res>
    implements $WeeklyBonusCopyWith<$Res> {
  _$WeeklyBonusCopyWithImpl(this._self, this._then);

  final WeeklyBonus _self;
  final $Res Function(WeeklyBonus) _then;

/// Create a copy of WeeklyBonus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dayNumber = null,Object? requiredMissions = null,Object? coinReward = null,Object? badgeId = freezed,Object? isCompleted = null,}) {
  return _then(_self.copyWith(
dayNumber: null == dayNumber ? _self.dayNumber : dayNumber // ignore: cast_nullable_to_non_nullable
as int,requiredMissions: null == requiredMissions ? _self.requiredMissions : requiredMissions // ignore: cast_nullable_to_non_nullable
as int,coinReward: null == coinReward ? _self.coinReward : coinReward // ignore: cast_nullable_to_non_nullable
as int,badgeId: freezed == badgeId ? _self.badgeId : badgeId // ignore: cast_nullable_to_non_nullable
as String?,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [WeeklyBonus].
extension WeeklyBonusPatterns on WeeklyBonus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeeklyBonus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeeklyBonus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeeklyBonus value)  $default,){
final _that = this;
switch (_that) {
case _WeeklyBonus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeeklyBonus value)?  $default,){
final _that = this;
switch (_that) {
case _WeeklyBonus() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int dayNumber,  int requiredMissions,  int coinReward,  String? badgeId,  bool isCompleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeeklyBonus() when $default != null:
return $default(_that.dayNumber,_that.requiredMissions,_that.coinReward,_that.badgeId,_that.isCompleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int dayNumber,  int requiredMissions,  int coinReward,  String? badgeId,  bool isCompleted)  $default,) {final _that = this;
switch (_that) {
case _WeeklyBonus():
return $default(_that.dayNumber,_that.requiredMissions,_that.coinReward,_that.badgeId,_that.isCompleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int dayNumber,  int requiredMissions,  int coinReward,  String? badgeId,  bool isCompleted)?  $default,) {final _that = this;
switch (_that) {
case _WeeklyBonus() when $default != null:
return $default(_that.dayNumber,_that.requiredMissions,_that.coinReward,_that.badgeId,_that.isCompleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeeklyBonus implements WeeklyBonus {
  const _WeeklyBonus({required this.dayNumber, required this.requiredMissions, required this.coinReward, required this.badgeId, required this.isCompleted});
  factory _WeeklyBonus.fromJson(Map<String, dynamic> json) => _$WeeklyBonusFromJson(json);

@override final  int dayNumber;
// 1-7
@override final  int requiredMissions;
// その日に必要なミッション完了数
@override final  int coinReward;
// コイン報酬
@override final  String? badgeId;
// バッジ報酬（オプション）
@override final  bool isCompleted;

/// Create a copy of WeeklyBonus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeeklyBonusCopyWith<_WeeklyBonus> get copyWith => __$WeeklyBonusCopyWithImpl<_WeeklyBonus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeeklyBonusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeeklyBonus&&(identical(other.dayNumber, dayNumber) || other.dayNumber == dayNumber)&&(identical(other.requiredMissions, requiredMissions) || other.requiredMissions == requiredMissions)&&(identical(other.coinReward, coinReward) || other.coinReward == coinReward)&&(identical(other.badgeId, badgeId) || other.badgeId == badgeId)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dayNumber,requiredMissions,coinReward,badgeId,isCompleted);

@override
String toString() {
  return 'WeeklyBonus(dayNumber: $dayNumber, requiredMissions: $requiredMissions, coinReward: $coinReward, badgeId: $badgeId, isCompleted: $isCompleted)';
}


}

/// @nodoc
abstract mixin class _$WeeklyBonusCopyWith<$Res> implements $WeeklyBonusCopyWith<$Res> {
  factory _$WeeklyBonusCopyWith(_WeeklyBonus value, $Res Function(_WeeklyBonus) _then) = __$WeeklyBonusCopyWithImpl;
@override @useResult
$Res call({
 int dayNumber, int requiredMissions, int coinReward, String? badgeId, bool isCompleted
});




}
/// @nodoc
class __$WeeklyBonusCopyWithImpl<$Res>
    implements _$WeeklyBonusCopyWith<$Res> {
  __$WeeklyBonusCopyWithImpl(this._self, this._then);

  final _WeeklyBonus _self;
  final $Res Function(_WeeklyBonus) _then;

/// Create a copy of WeeklyBonus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dayNumber = null,Object? requiredMissions = null,Object? coinReward = null,Object? badgeId = freezed,Object? isCompleted = null,}) {
  return _then(_WeeklyBonus(
dayNumber: null == dayNumber ? _self.dayNumber : dayNumber // ignore: cast_nullable_to_non_nullable
as int,requiredMissions: null == requiredMissions ? _self.requiredMissions : requiredMissions // ignore: cast_nullable_to_non_nullable
as int,coinReward: null == coinReward ? _self.coinReward : coinReward // ignore: cast_nullable_to_non_nullable
as int,badgeId: freezed == badgeId ? _self.badgeId : badgeId // ignore: cast_nullable_to_non_nullable
as String?,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$WeeklyBonusProgress {

 String get userId; int get weekNumber;// 年間週番号
 List<WeeklyBonus> get bonuses; int get completedDays;// 完了した日数
 DateTime get startedAt; DateTime? get completedAt;
/// Create a copy of WeeklyBonusProgress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeeklyBonusProgressCopyWith<WeeklyBonusProgress> get copyWith => _$WeeklyBonusProgressCopyWithImpl<WeeklyBonusProgress>(this as WeeklyBonusProgress, _$identity);

  /// Serializes this WeeklyBonusProgress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeeklyBonusProgress&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.weekNumber, weekNumber) || other.weekNumber == weekNumber)&&const DeepCollectionEquality().equals(other.bonuses, bonuses)&&(identical(other.completedDays, completedDays) || other.completedDays == completedDays)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,weekNumber,const DeepCollectionEquality().hash(bonuses),completedDays,startedAt,completedAt);

@override
String toString() {
  return 'WeeklyBonusProgress(userId: $userId, weekNumber: $weekNumber, bonuses: $bonuses, completedDays: $completedDays, startedAt: $startedAt, completedAt: $completedAt)';
}


}

/// @nodoc
abstract mixin class $WeeklyBonusProgressCopyWith<$Res>  {
  factory $WeeklyBonusProgressCopyWith(WeeklyBonusProgress value, $Res Function(WeeklyBonusProgress) _then) = _$WeeklyBonusProgressCopyWithImpl;
@useResult
$Res call({
 String userId, int weekNumber, List<WeeklyBonus> bonuses, int completedDays, DateTime startedAt, DateTime? completedAt
});




}
/// @nodoc
class _$WeeklyBonusProgressCopyWithImpl<$Res>
    implements $WeeklyBonusProgressCopyWith<$Res> {
  _$WeeklyBonusProgressCopyWithImpl(this._self, this._then);

  final WeeklyBonusProgress _self;
  final $Res Function(WeeklyBonusProgress) _then;

/// Create a copy of WeeklyBonusProgress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? weekNumber = null,Object? bonuses = null,Object? completedDays = null,Object? startedAt = null,Object? completedAt = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,weekNumber: null == weekNumber ? _self.weekNumber : weekNumber // ignore: cast_nullable_to_non_nullable
as int,bonuses: null == bonuses ? _self.bonuses : bonuses // ignore: cast_nullable_to_non_nullable
as List<WeeklyBonus>,completedDays: null == completedDays ? _self.completedDays : completedDays // ignore: cast_nullable_to_non_nullable
as int,startedAt: null == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [WeeklyBonusProgress].
extension WeeklyBonusProgressPatterns on WeeklyBonusProgress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeeklyBonusProgress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeeklyBonusProgress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeeklyBonusProgress value)  $default,){
final _that = this;
switch (_that) {
case _WeeklyBonusProgress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeeklyBonusProgress value)?  $default,){
final _that = this;
switch (_that) {
case _WeeklyBonusProgress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  int weekNumber,  List<WeeklyBonus> bonuses,  int completedDays,  DateTime startedAt,  DateTime? completedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeeklyBonusProgress() when $default != null:
return $default(_that.userId,_that.weekNumber,_that.bonuses,_that.completedDays,_that.startedAt,_that.completedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  int weekNumber,  List<WeeklyBonus> bonuses,  int completedDays,  DateTime startedAt,  DateTime? completedAt)  $default,) {final _that = this;
switch (_that) {
case _WeeklyBonusProgress():
return $default(_that.userId,_that.weekNumber,_that.bonuses,_that.completedDays,_that.startedAt,_that.completedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  int weekNumber,  List<WeeklyBonus> bonuses,  int completedDays,  DateTime startedAt,  DateTime? completedAt)?  $default,) {final _that = this;
switch (_that) {
case _WeeklyBonusProgress() when $default != null:
return $default(_that.userId,_that.weekNumber,_that.bonuses,_that.completedDays,_that.startedAt,_that.completedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeeklyBonusProgress implements WeeklyBonusProgress {
  const _WeeklyBonusProgress({required this.userId, required this.weekNumber, required final  List<WeeklyBonus> bonuses, required this.completedDays, required this.startedAt, required this.completedAt}): _bonuses = bonuses;
  factory _WeeklyBonusProgress.fromJson(Map<String, dynamic> json) => _$WeeklyBonusProgressFromJson(json);

@override final  String userId;
@override final  int weekNumber;
// 年間週番号
 final  List<WeeklyBonus> _bonuses;
// 年間週番号
@override List<WeeklyBonus> get bonuses {
  if (_bonuses is EqualUnmodifiableListView) return _bonuses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bonuses);
}

@override final  int completedDays;
// 完了した日数
@override final  DateTime startedAt;
@override final  DateTime? completedAt;

/// Create a copy of WeeklyBonusProgress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeeklyBonusProgressCopyWith<_WeeklyBonusProgress> get copyWith => __$WeeklyBonusProgressCopyWithImpl<_WeeklyBonusProgress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeeklyBonusProgressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeeklyBonusProgress&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.weekNumber, weekNumber) || other.weekNumber == weekNumber)&&const DeepCollectionEquality().equals(other._bonuses, _bonuses)&&(identical(other.completedDays, completedDays) || other.completedDays == completedDays)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,weekNumber,const DeepCollectionEquality().hash(_bonuses),completedDays,startedAt,completedAt);

@override
String toString() {
  return 'WeeklyBonusProgress(userId: $userId, weekNumber: $weekNumber, bonuses: $bonuses, completedDays: $completedDays, startedAt: $startedAt, completedAt: $completedAt)';
}


}

/// @nodoc
abstract mixin class _$WeeklyBonusProgressCopyWith<$Res> implements $WeeklyBonusProgressCopyWith<$Res> {
  factory _$WeeklyBonusProgressCopyWith(_WeeklyBonusProgress value, $Res Function(_WeeklyBonusProgress) _then) = __$WeeklyBonusProgressCopyWithImpl;
@override @useResult
$Res call({
 String userId, int weekNumber, List<WeeklyBonus> bonuses, int completedDays, DateTime startedAt, DateTime? completedAt
});




}
/// @nodoc
class __$WeeklyBonusProgressCopyWithImpl<$Res>
    implements _$WeeklyBonusProgressCopyWith<$Res> {
  __$WeeklyBonusProgressCopyWithImpl(this._self, this._then);

  final _WeeklyBonusProgress _self;
  final $Res Function(_WeeklyBonusProgress) _then;

/// Create a copy of WeeklyBonusProgress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? weekNumber = null,Object? bonuses = null,Object? completedDays = null,Object? startedAt = null,Object? completedAt = freezed,}) {
  return _then(_WeeklyBonusProgress(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,weekNumber: null == weekNumber ? _self.weekNumber : weekNumber // ignore: cast_nullable_to_non_nullable
as int,bonuses: null == bonuses ? _self._bonuses : bonuses // ignore: cast_nullable_to_non_nullable
as List<WeeklyBonus>,completedDays: null == completedDays ? _self.completedDays : completedDays // ignore: cast_nullable_to_non_nullable
as int,startedAt: null == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$RetentionConfig {

 int get dailyMissionCount;// 1日のミッション数（デフォルト3）
 int get streakCoinMultiplier;// ストリーク1日あたりのコイン（デフォルト10）
 int get maxStreakBonusPerDay;// 1日最大ストリーク報酬（デフォルト100）
 Map<int, int> get weeklyBonusCoins;// 曜日別ボーナスコイン{day: coins}
 List<int> get streakMilestones;
/// Create a copy of RetentionConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RetentionConfigCopyWith<RetentionConfig> get copyWith => _$RetentionConfigCopyWithImpl<RetentionConfig>(this as RetentionConfig, _$identity);

  /// Serializes this RetentionConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RetentionConfig&&(identical(other.dailyMissionCount, dailyMissionCount) || other.dailyMissionCount == dailyMissionCount)&&(identical(other.streakCoinMultiplier, streakCoinMultiplier) || other.streakCoinMultiplier == streakCoinMultiplier)&&(identical(other.maxStreakBonusPerDay, maxStreakBonusPerDay) || other.maxStreakBonusPerDay == maxStreakBonusPerDay)&&const DeepCollectionEquality().equals(other.weeklyBonusCoins, weeklyBonusCoins)&&const DeepCollectionEquality().equals(other.streakMilestones, streakMilestones));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dailyMissionCount,streakCoinMultiplier,maxStreakBonusPerDay,const DeepCollectionEquality().hash(weeklyBonusCoins),const DeepCollectionEquality().hash(streakMilestones));

@override
String toString() {
  return 'RetentionConfig(dailyMissionCount: $dailyMissionCount, streakCoinMultiplier: $streakCoinMultiplier, maxStreakBonusPerDay: $maxStreakBonusPerDay, weeklyBonusCoins: $weeklyBonusCoins, streakMilestones: $streakMilestones)';
}


}

/// @nodoc
abstract mixin class $RetentionConfigCopyWith<$Res>  {
  factory $RetentionConfigCopyWith(RetentionConfig value, $Res Function(RetentionConfig) _then) = _$RetentionConfigCopyWithImpl;
@useResult
$Res call({
 int dailyMissionCount, int streakCoinMultiplier, int maxStreakBonusPerDay, Map<int, int> weeklyBonusCoins, List<int> streakMilestones
});




}
/// @nodoc
class _$RetentionConfigCopyWithImpl<$Res>
    implements $RetentionConfigCopyWith<$Res> {
  _$RetentionConfigCopyWithImpl(this._self, this._then);

  final RetentionConfig _self;
  final $Res Function(RetentionConfig) _then;

/// Create a copy of RetentionConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dailyMissionCount = null,Object? streakCoinMultiplier = null,Object? maxStreakBonusPerDay = null,Object? weeklyBonusCoins = null,Object? streakMilestones = null,}) {
  return _then(_self.copyWith(
dailyMissionCount: null == dailyMissionCount ? _self.dailyMissionCount : dailyMissionCount // ignore: cast_nullable_to_non_nullable
as int,streakCoinMultiplier: null == streakCoinMultiplier ? _self.streakCoinMultiplier : streakCoinMultiplier // ignore: cast_nullable_to_non_nullable
as int,maxStreakBonusPerDay: null == maxStreakBonusPerDay ? _self.maxStreakBonusPerDay : maxStreakBonusPerDay // ignore: cast_nullable_to_non_nullable
as int,weeklyBonusCoins: null == weeklyBonusCoins ? _self.weeklyBonusCoins : weeklyBonusCoins // ignore: cast_nullable_to_non_nullable
as Map<int, int>,streakMilestones: null == streakMilestones ? _self.streakMilestones : streakMilestones // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// Adds pattern-matching-related methods to [RetentionConfig].
extension RetentionConfigPatterns on RetentionConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RetentionConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RetentionConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RetentionConfig value)  $default,){
final _that = this;
switch (_that) {
case _RetentionConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RetentionConfig value)?  $default,){
final _that = this;
switch (_that) {
case _RetentionConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int dailyMissionCount,  int streakCoinMultiplier,  int maxStreakBonusPerDay,  Map<int, int> weeklyBonusCoins,  List<int> streakMilestones)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RetentionConfig() when $default != null:
return $default(_that.dailyMissionCount,_that.streakCoinMultiplier,_that.maxStreakBonusPerDay,_that.weeklyBonusCoins,_that.streakMilestones);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int dailyMissionCount,  int streakCoinMultiplier,  int maxStreakBonusPerDay,  Map<int, int> weeklyBonusCoins,  List<int> streakMilestones)  $default,) {final _that = this;
switch (_that) {
case _RetentionConfig():
return $default(_that.dailyMissionCount,_that.streakCoinMultiplier,_that.maxStreakBonusPerDay,_that.weeklyBonusCoins,_that.streakMilestones);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int dailyMissionCount,  int streakCoinMultiplier,  int maxStreakBonusPerDay,  Map<int, int> weeklyBonusCoins,  List<int> streakMilestones)?  $default,) {final _that = this;
switch (_that) {
case _RetentionConfig() when $default != null:
return $default(_that.dailyMissionCount,_that.streakCoinMultiplier,_that.maxStreakBonusPerDay,_that.weeklyBonusCoins,_that.streakMilestones);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RetentionConfig implements RetentionConfig {
  const _RetentionConfig({required this.dailyMissionCount, required this.streakCoinMultiplier, required this.maxStreakBonusPerDay, required final  Map<int, int> weeklyBonusCoins, required final  List<int> streakMilestones}): _weeklyBonusCoins = weeklyBonusCoins,_streakMilestones = streakMilestones;
  factory _RetentionConfig.fromJson(Map<String, dynamic> json) => _$RetentionConfigFromJson(json);

@override final  int dailyMissionCount;
// 1日のミッション数（デフォルト3）
@override final  int streakCoinMultiplier;
// ストリーク1日あたりのコイン（デフォルト10）
@override final  int maxStreakBonusPerDay;
// 1日最大ストリーク報酬（デフォルト100）
 final  Map<int, int> _weeklyBonusCoins;
// 1日最大ストリーク報酬（デフォルト100）
@override Map<int, int> get weeklyBonusCoins {
  if (_weeklyBonusCoins is EqualUnmodifiableMapView) return _weeklyBonusCoins;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_weeklyBonusCoins);
}

// 曜日別ボーナスコイン{day: coins}
 final  List<int> _streakMilestones;
// 曜日別ボーナスコイン{day: coins}
@override List<int> get streakMilestones {
  if (_streakMilestones is EqualUnmodifiableListView) return _streakMilestones;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_streakMilestones);
}


/// Create a copy of RetentionConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RetentionConfigCopyWith<_RetentionConfig> get copyWith => __$RetentionConfigCopyWithImpl<_RetentionConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RetentionConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RetentionConfig&&(identical(other.dailyMissionCount, dailyMissionCount) || other.dailyMissionCount == dailyMissionCount)&&(identical(other.streakCoinMultiplier, streakCoinMultiplier) || other.streakCoinMultiplier == streakCoinMultiplier)&&(identical(other.maxStreakBonusPerDay, maxStreakBonusPerDay) || other.maxStreakBonusPerDay == maxStreakBonusPerDay)&&const DeepCollectionEquality().equals(other._weeklyBonusCoins, _weeklyBonusCoins)&&const DeepCollectionEquality().equals(other._streakMilestones, _streakMilestones));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dailyMissionCount,streakCoinMultiplier,maxStreakBonusPerDay,const DeepCollectionEquality().hash(_weeklyBonusCoins),const DeepCollectionEquality().hash(_streakMilestones));

@override
String toString() {
  return 'RetentionConfig(dailyMissionCount: $dailyMissionCount, streakCoinMultiplier: $streakCoinMultiplier, maxStreakBonusPerDay: $maxStreakBonusPerDay, weeklyBonusCoins: $weeklyBonusCoins, streakMilestones: $streakMilestones)';
}


}

/// @nodoc
abstract mixin class _$RetentionConfigCopyWith<$Res> implements $RetentionConfigCopyWith<$Res> {
  factory _$RetentionConfigCopyWith(_RetentionConfig value, $Res Function(_RetentionConfig) _then) = __$RetentionConfigCopyWithImpl;
@override @useResult
$Res call({
 int dailyMissionCount, int streakCoinMultiplier, int maxStreakBonusPerDay, Map<int, int> weeklyBonusCoins, List<int> streakMilestones
});




}
/// @nodoc
class __$RetentionConfigCopyWithImpl<$Res>
    implements _$RetentionConfigCopyWith<$Res> {
  __$RetentionConfigCopyWithImpl(this._self, this._then);

  final _RetentionConfig _self;
  final $Res Function(_RetentionConfig) _then;

/// Create a copy of RetentionConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dailyMissionCount = null,Object? streakCoinMultiplier = null,Object? maxStreakBonusPerDay = null,Object? weeklyBonusCoins = null,Object? streakMilestones = null,}) {
  return _then(_RetentionConfig(
dailyMissionCount: null == dailyMissionCount ? _self.dailyMissionCount : dailyMissionCount // ignore: cast_nullable_to_non_nullable
as int,streakCoinMultiplier: null == streakCoinMultiplier ? _self.streakCoinMultiplier : streakCoinMultiplier // ignore: cast_nullable_to_non_nullable
as int,maxStreakBonusPerDay: null == maxStreakBonusPerDay ? _self.maxStreakBonusPerDay : maxStreakBonusPerDay // ignore: cast_nullable_to_non_nullable
as int,weeklyBonusCoins: null == weeklyBonusCoins ? _self._weeklyBonusCoins : weeklyBonusCoins // ignore: cast_nullable_to_non_nullable
as Map<int, int>,streakMilestones: null == streakMilestones ? _self._streakMilestones : streakMilestones // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on
