// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mission_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Mission {

 String get missionId;// 'beginner_stage_5', 'streak_7days' など
 String get title;// 'ビギナーステージ 5問達成！'
 String get description;// 'クイズ 5問 を正解してね'
 MissionDifficulty get difficulty; int get targetValue;// 達成に必要な値（5問、7日など）
 String get unit;// 'questions', 'days', 'stars' など
 String? get subject;// null（全教科）, 'math', 'japanese' など
 List<String> get requiredBadges;// 前提となるバッジ（空配列 = 制限なし）
 List<MissionReward> get rewards; bool get repeatable;// 毎日繰り返し可能か
 bool get enabled;
/// Create a copy of Mission
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MissionCopyWith<Mission> get copyWith => _$MissionCopyWithImpl<Mission>(this as Mission, _$identity);

  /// Serializes this Mission to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Mission&&(identical(other.missionId, missionId) || other.missionId == missionId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.targetValue, targetValue) || other.targetValue == targetValue)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.subject, subject) || other.subject == subject)&&const DeepCollectionEquality().equals(other.requiredBadges, requiredBadges)&&const DeepCollectionEquality().equals(other.rewards, rewards)&&(identical(other.repeatable, repeatable) || other.repeatable == repeatable)&&(identical(other.enabled, enabled) || other.enabled == enabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,missionId,title,description,difficulty,targetValue,unit,subject,const DeepCollectionEquality().hash(requiredBadges),const DeepCollectionEquality().hash(rewards),repeatable,enabled);

@override
String toString() {
  return 'Mission(missionId: $missionId, title: $title, description: $description, difficulty: $difficulty, targetValue: $targetValue, unit: $unit, subject: $subject, requiredBadges: $requiredBadges, rewards: $rewards, repeatable: $repeatable, enabled: $enabled)';
}


}

/// @nodoc
abstract mixin class $MissionCopyWith<$Res>  {
  factory $MissionCopyWith(Mission value, $Res Function(Mission) _then) = _$MissionCopyWithImpl;
@useResult
$Res call({
 String missionId, String title, String description, MissionDifficulty difficulty, int targetValue, String unit, String? subject, List<String> requiredBadges, List<MissionReward> rewards, bool repeatable, bool enabled
});




}
/// @nodoc
class _$MissionCopyWithImpl<$Res>
    implements $MissionCopyWith<$Res> {
  _$MissionCopyWithImpl(this._self, this._then);

  final Mission _self;
  final $Res Function(Mission) _then;

/// Create a copy of Mission
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? missionId = null,Object? title = null,Object? description = null,Object? difficulty = null,Object? targetValue = null,Object? unit = null,Object? subject = freezed,Object? requiredBadges = null,Object? rewards = null,Object? repeatable = null,Object? enabled = null,}) {
  return _then(_self.copyWith(
missionId: null == missionId ? _self.missionId : missionId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,difficulty: null == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as MissionDifficulty,targetValue: null == targetValue ? _self.targetValue : targetValue // ignore: cast_nullable_to_non_nullable
as int,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,requiredBadges: null == requiredBadges ? _self.requiredBadges : requiredBadges // ignore: cast_nullable_to_non_nullable
as List<String>,rewards: null == rewards ? _self.rewards : rewards // ignore: cast_nullable_to_non_nullable
as List<MissionReward>,repeatable: null == repeatable ? _self.repeatable : repeatable // ignore: cast_nullable_to_non_nullable
as bool,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Mission].
extension MissionPatterns on Mission {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Mission value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Mission() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Mission value)  $default,){
final _that = this;
switch (_that) {
case _Mission():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Mission value)?  $default,){
final _that = this;
switch (_that) {
case _Mission() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String missionId,  String title,  String description,  MissionDifficulty difficulty,  int targetValue,  String unit,  String? subject,  List<String> requiredBadges,  List<MissionReward> rewards,  bool repeatable,  bool enabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Mission() when $default != null:
return $default(_that.missionId,_that.title,_that.description,_that.difficulty,_that.targetValue,_that.unit,_that.subject,_that.requiredBadges,_that.rewards,_that.repeatable,_that.enabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String missionId,  String title,  String description,  MissionDifficulty difficulty,  int targetValue,  String unit,  String? subject,  List<String> requiredBadges,  List<MissionReward> rewards,  bool repeatable,  bool enabled)  $default,) {final _that = this;
switch (_that) {
case _Mission():
return $default(_that.missionId,_that.title,_that.description,_that.difficulty,_that.targetValue,_that.unit,_that.subject,_that.requiredBadges,_that.rewards,_that.repeatable,_that.enabled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String missionId,  String title,  String description,  MissionDifficulty difficulty,  int targetValue,  String unit,  String? subject,  List<String> requiredBadges,  List<MissionReward> rewards,  bool repeatable,  bool enabled)?  $default,) {final _that = this;
switch (_that) {
case _Mission() when $default != null:
return $default(_that.missionId,_that.title,_that.description,_that.difficulty,_that.targetValue,_that.unit,_that.subject,_that.requiredBadges,_that.rewards,_that.repeatable,_that.enabled);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Mission implements Mission {
  const _Mission({required this.missionId, required this.title, required this.description, required this.difficulty, required this.targetValue, required this.unit, required this.subject, required final  List<String> requiredBadges, required final  List<MissionReward> rewards, required this.repeatable, this.enabled = false}): _requiredBadges = requiredBadges,_rewards = rewards;
  factory _Mission.fromJson(Map<String, dynamic> json) => _$MissionFromJson(json);

@override final  String missionId;
// 'beginner_stage_5', 'streak_7days' など
@override final  String title;
// 'ビギナーステージ 5問達成！'
@override final  String description;
// 'クイズ 5問 を正解してね'
@override final  MissionDifficulty difficulty;
@override final  int targetValue;
// 達成に必要な値（5問、7日など）
@override final  String unit;
// 'questions', 'days', 'stars' など
@override final  String? subject;
// null（全教科）, 'math', 'japanese' など
 final  List<String> _requiredBadges;
// null（全教科）, 'math', 'japanese' など
@override List<String> get requiredBadges {
  if (_requiredBadges is EqualUnmodifiableListView) return _requiredBadges;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_requiredBadges);
}

// 前提となるバッジ（空配列 = 制限なし）
 final  List<MissionReward> _rewards;
// 前提となるバッジ（空配列 = 制限なし）
@override List<MissionReward> get rewards {
  if (_rewards is EqualUnmodifiableListView) return _rewards;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rewards);
}

@override final  bool repeatable;
// 毎日繰り返し可能か
@override@JsonKey() final  bool enabled;

/// Create a copy of Mission
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MissionCopyWith<_Mission> get copyWith => __$MissionCopyWithImpl<_Mission>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MissionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Mission&&(identical(other.missionId, missionId) || other.missionId == missionId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.targetValue, targetValue) || other.targetValue == targetValue)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.subject, subject) || other.subject == subject)&&const DeepCollectionEquality().equals(other._requiredBadges, _requiredBadges)&&const DeepCollectionEquality().equals(other._rewards, _rewards)&&(identical(other.repeatable, repeatable) || other.repeatable == repeatable)&&(identical(other.enabled, enabled) || other.enabled == enabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,missionId,title,description,difficulty,targetValue,unit,subject,const DeepCollectionEquality().hash(_requiredBadges),const DeepCollectionEquality().hash(_rewards),repeatable,enabled);

@override
String toString() {
  return 'Mission(missionId: $missionId, title: $title, description: $description, difficulty: $difficulty, targetValue: $targetValue, unit: $unit, subject: $subject, requiredBadges: $requiredBadges, rewards: $rewards, repeatable: $repeatable, enabled: $enabled)';
}


}

/// @nodoc
abstract mixin class _$MissionCopyWith<$Res> implements $MissionCopyWith<$Res> {
  factory _$MissionCopyWith(_Mission value, $Res Function(_Mission) _then) = __$MissionCopyWithImpl;
@override @useResult
$Res call({
 String missionId, String title, String description, MissionDifficulty difficulty, int targetValue, String unit, String? subject, List<String> requiredBadges, List<MissionReward> rewards, bool repeatable, bool enabled
});




}
/// @nodoc
class __$MissionCopyWithImpl<$Res>
    implements _$MissionCopyWith<$Res> {
  __$MissionCopyWithImpl(this._self, this._then);

  final _Mission _self;
  final $Res Function(_Mission) _then;

/// Create a copy of Mission
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? missionId = null,Object? title = null,Object? description = null,Object? difficulty = null,Object? targetValue = null,Object? unit = null,Object? subject = freezed,Object? requiredBadges = null,Object? rewards = null,Object? repeatable = null,Object? enabled = null,}) {
  return _then(_Mission(
missionId: null == missionId ? _self.missionId : missionId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,difficulty: null == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as MissionDifficulty,targetValue: null == targetValue ? _self.targetValue : targetValue // ignore: cast_nullable_to_non_nullable
as int,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,requiredBadges: null == requiredBadges ? _self._requiredBadges : requiredBadges // ignore: cast_nullable_to_non_nullable
as List<String>,rewards: null == rewards ? _self._rewards : rewards // ignore: cast_nullable_to_non_nullable
as List<MissionReward>,repeatable: null == repeatable ? _self.repeatable : repeatable // ignore: cast_nullable_to_non_nullable
as bool,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$MissionReward {

 RewardType get type; int get amount; String? get itemId;
/// Create a copy of MissionReward
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MissionRewardCopyWith<MissionReward> get copyWith => _$MissionRewardCopyWithImpl<MissionReward>(this as MissionReward, _$identity);

  /// Serializes this MissionReward to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MissionReward&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.itemId, itemId) || other.itemId == itemId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,amount,itemId);

@override
String toString() {
  return 'MissionReward(type: $type, amount: $amount, itemId: $itemId)';
}


}

/// @nodoc
abstract mixin class $MissionRewardCopyWith<$Res>  {
  factory $MissionRewardCopyWith(MissionReward value, $Res Function(MissionReward) _then) = _$MissionRewardCopyWithImpl;
@useResult
$Res call({
 RewardType type, int amount, String? itemId
});




}
/// @nodoc
class _$MissionRewardCopyWithImpl<$Res>
    implements $MissionRewardCopyWith<$Res> {
  _$MissionRewardCopyWithImpl(this._self, this._then);

  final MissionReward _self;
  final $Res Function(MissionReward) _then;

/// Create a copy of MissionReward
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? amount = null,Object? itemId = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as RewardType,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MissionReward].
extension MissionRewardPatterns on MissionReward {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MissionReward value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MissionReward() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MissionReward value)  $default,){
final _that = this;
switch (_that) {
case _MissionReward():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MissionReward value)?  $default,){
final _that = this;
switch (_that) {
case _MissionReward() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RewardType type,  int amount,  String? itemId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MissionReward() when $default != null:
return $default(_that.type,_that.amount,_that.itemId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RewardType type,  int amount,  String? itemId)  $default,) {final _that = this;
switch (_that) {
case _MissionReward():
return $default(_that.type,_that.amount,_that.itemId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RewardType type,  int amount,  String? itemId)?  $default,) {final _that = this;
switch (_that) {
case _MissionReward() when $default != null:
return $default(_that.type,_that.amount,_that.itemId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MissionReward implements MissionReward {
  const _MissionReward({required this.type, required this.amount, required this.itemId});
  factory _MissionReward.fromJson(Map<String, dynamic> json) => _$MissionRewardFromJson(json);

@override final  RewardType type;
@override final  int amount;
@override final  String? itemId;

/// Create a copy of MissionReward
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MissionRewardCopyWith<_MissionReward> get copyWith => __$MissionRewardCopyWithImpl<_MissionReward>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MissionRewardToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MissionReward&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.itemId, itemId) || other.itemId == itemId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,amount,itemId);

@override
String toString() {
  return 'MissionReward(type: $type, amount: $amount, itemId: $itemId)';
}


}

/// @nodoc
abstract mixin class _$MissionRewardCopyWith<$Res> implements $MissionRewardCopyWith<$Res> {
  factory _$MissionRewardCopyWith(_MissionReward value, $Res Function(_MissionReward) _then) = __$MissionRewardCopyWithImpl;
@override @useResult
$Res call({
 RewardType type, int amount, String? itemId
});




}
/// @nodoc
class __$MissionRewardCopyWithImpl<$Res>
    implements _$MissionRewardCopyWith<$Res> {
  __$MissionRewardCopyWithImpl(this._self, this._then);

  final _MissionReward _self;
  final $Res Function(_MissionReward) _then;

/// Create a copy of MissionReward
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? amount = null,Object? itemId = freezed,}) {
  return _then(_MissionReward(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as RewardType,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$UserMissionProgress {

 String get userId; String get missionId; int get currentValue;// 現在の達成度
 bool get completed;// 今日達成したか
 DateTime get lastResetDate;// 最後にリセットされた日時
 DateTime get createdAt; DateTime? get completedAt;
/// Create a copy of UserMissionProgress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserMissionProgressCopyWith<UserMissionProgress> get copyWith => _$UserMissionProgressCopyWithImpl<UserMissionProgress>(this as UserMissionProgress, _$identity);

  /// Serializes this UserMissionProgress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserMissionProgress&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.missionId, missionId) || other.missionId == missionId)&&(identical(other.currentValue, currentValue) || other.currentValue == currentValue)&&(identical(other.completed, completed) || other.completed == completed)&&(identical(other.lastResetDate, lastResetDate) || other.lastResetDate == lastResetDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,missionId,currentValue,completed,lastResetDate,createdAt,completedAt);

@override
String toString() {
  return 'UserMissionProgress(userId: $userId, missionId: $missionId, currentValue: $currentValue, completed: $completed, lastResetDate: $lastResetDate, createdAt: $createdAt, completedAt: $completedAt)';
}


}

/// @nodoc
abstract mixin class $UserMissionProgressCopyWith<$Res>  {
  factory $UserMissionProgressCopyWith(UserMissionProgress value, $Res Function(UserMissionProgress) _then) = _$UserMissionProgressCopyWithImpl;
@useResult
$Res call({
 String userId, String missionId, int currentValue, bool completed, DateTime lastResetDate, DateTime createdAt, DateTime? completedAt
});




}
/// @nodoc
class _$UserMissionProgressCopyWithImpl<$Res>
    implements $UserMissionProgressCopyWith<$Res> {
  _$UserMissionProgressCopyWithImpl(this._self, this._then);

  final UserMissionProgress _self;
  final $Res Function(UserMissionProgress) _then;

/// Create a copy of UserMissionProgress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? missionId = null,Object? currentValue = null,Object? completed = null,Object? lastResetDate = null,Object? createdAt = null,Object? completedAt = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,missionId: null == missionId ? _self.missionId : missionId // ignore: cast_nullable_to_non_nullable
as String,currentValue: null == currentValue ? _self.currentValue : currentValue // ignore: cast_nullable_to_non_nullable
as int,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as bool,lastResetDate: null == lastResetDate ? _self.lastResetDate : lastResetDate // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserMissionProgress].
extension UserMissionProgressPatterns on UserMissionProgress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserMissionProgress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserMissionProgress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserMissionProgress value)  $default,){
final _that = this;
switch (_that) {
case _UserMissionProgress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserMissionProgress value)?  $default,){
final _that = this;
switch (_that) {
case _UserMissionProgress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String missionId,  int currentValue,  bool completed,  DateTime lastResetDate,  DateTime createdAt,  DateTime? completedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserMissionProgress() when $default != null:
return $default(_that.userId,_that.missionId,_that.currentValue,_that.completed,_that.lastResetDate,_that.createdAt,_that.completedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String missionId,  int currentValue,  bool completed,  DateTime lastResetDate,  DateTime createdAt,  DateTime? completedAt)  $default,) {final _that = this;
switch (_that) {
case _UserMissionProgress():
return $default(_that.userId,_that.missionId,_that.currentValue,_that.completed,_that.lastResetDate,_that.createdAt,_that.completedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String missionId,  int currentValue,  bool completed,  DateTime lastResetDate,  DateTime createdAt,  DateTime? completedAt)?  $default,) {final _that = this;
switch (_that) {
case _UserMissionProgress() when $default != null:
return $default(_that.userId,_that.missionId,_that.currentValue,_that.completed,_that.lastResetDate,_that.createdAt,_that.completedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserMissionProgress implements UserMissionProgress {
  const _UserMissionProgress({required this.userId, required this.missionId, required this.currentValue, required this.completed, required this.lastResetDate, required this.createdAt, required this.completedAt});
  factory _UserMissionProgress.fromJson(Map<String, dynamic> json) => _$UserMissionProgressFromJson(json);

@override final  String userId;
@override final  String missionId;
@override final  int currentValue;
// 現在の達成度
@override final  bool completed;
// 今日達成したか
@override final  DateTime lastResetDate;
// 最後にリセットされた日時
@override final  DateTime createdAt;
@override final  DateTime? completedAt;

/// Create a copy of UserMissionProgress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserMissionProgressCopyWith<_UserMissionProgress> get copyWith => __$UserMissionProgressCopyWithImpl<_UserMissionProgress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserMissionProgressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserMissionProgress&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.missionId, missionId) || other.missionId == missionId)&&(identical(other.currentValue, currentValue) || other.currentValue == currentValue)&&(identical(other.completed, completed) || other.completed == completed)&&(identical(other.lastResetDate, lastResetDate) || other.lastResetDate == lastResetDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,missionId,currentValue,completed,lastResetDate,createdAt,completedAt);

@override
String toString() {
  return 'UserMissionProgress(userId: $userId, missionId: $missionId, currentValue: $currentValue, completed: $completed, lastResetDate: $lastResetDate, createdAt: $createdAt, completedAt: $completedAt)';
}


}

/// @nodoc
abstract mixin class _$UserMissionProgressCopyWith<$Res> implements $UserMissionProgressCopyWith<$Res> {
  factory _$UserMissionProgressCopyWith(_UserMissionProgress value, $Res Function(_UserMissionProgress) _then) = __$UserMissionProgressCopyWithImpl;
@override @useResult
$Res call({
 String userId, String missionId, int currentValue, bool completed, DateTime lastResetDate, DateTime createdAt, DateTime? completedAt
});




}
/// @nodoc
class __$UserMissionProgressCopyWithImpl<$Res>
    implements _$UserMissionProgressCopyWith<$Res> {
  __$UserMissionProgressCopyWithImpl(this._self, this._then);

  final _UserMissionProgress _self;
  final $Res Function(_UserMissionProgress) _then;

/// Create a copy of UserMissionProgress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? missionId = null,Object? currentValue = null,Object? completed = null,Object? lastResetDate = null,Object? createdAt = null,Object? completedAt = freezed,}) {
  return _then(_UserMissionProgress(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,missionId: null == missionId ? _self.missionId : missionId // ignore: cast_nullable_to_non_nullable
as String,currentValue: null == currentValue ? _self.currentValue : currentValue // ignore: cast_nullable_to_non_nullable
as int,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as bool,lastResetDate: null == lastResetDate ? _self.lastResetDate : lastResetDate // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$MissionListItem {

 Mission get mission; UserMissionProgress? get progress;// null = 開始されていない
 bool get isLocked;// 前提ミッション未達成
 double get progressPercentage;
/// Create a copy of MissionListItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MissionListItemCopyWith<MissionListItem> get copyWith => _$MissionListItemCopyWithImpl<MissionListItem>(this as MissionListItem, _$identity);

  /// Serializes this MissionListItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MissionListItem&&(identical(other.mission, mission) || other.mission == mission)&&(identical(other.progress, progress) || other.progress == progress)&&(identical(other.isLocked, isLocked) || other.isLocked == isLocked)&&(identical(other.progressPercentage, progressPercentage) || other.progressPercentage == progressPercentage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mission,progress,isLocked,progressPercentage);

@override
String toString() {
  return 'MissionListItem(mission: $mission, progress: $progress, isLocked: $isLocked, progressPercentage: $progressPercentage)';
}


}

/// @nodoc
abstract mixin class $MissionListItemCopyWith<$Res>  {
  factory $MissionListItemCopyWith(MissionListItem value, $Res Function(MissionListItem) _then) = _$MissionListItemCopyWithImpl;
@useResult
$Res call({
 Mission mission, UserMissionProgress? progress, bool isLocked, double progressPercentage
});


$MissionCopyWith<$Res> get mission;$UserMissionProgressCopyWith<$Res>? get progress;

}
/// @nodoc
class _$MissionListItemCopyWithImpl<$Res>
    implements $MissionListItemCopyWith<$Res> {
  _$MissionListItemCopyWithImpl(this._self, this._then);

  final MissionListItem _self;
  final $Res Function(MissionListItem) _then;

/// Create a copy of MissionListItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mission = null,Object? progress = freezed,Object? isLocked = null,Object? progressPercentage = null,}) {
  return _then(_self.copyWith(
mission: null == mission ? _self.mission : mission // ignore: cast_nullable_to_non_nullable
as Mission,progress: freezed == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as UserMissionProgress?,isLocked: null == isLocked ? _self.isLocked : isLocked // ignore: cast_nullable_to_non_nullable
as bool,progressPercentage: null == progressPercentage ? _self.progressPercentage : progressPercentage // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of MissionListItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MissionCopyWith<$Res> get mission {
  
  return $MissionCopyWith<$Res>(_self.mission, (value) {
    return _then(_self.copyWith(mission: value));
  });
}/// Create a copy of MissionListItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserMissionProgressCopyWith<$Res>? get progress {
    if (_self.progress == null) {
    return null;
  }

  return $UserMissionProgressCopyWith<$Res>(_self.progress!, (value) {
    return _then(_self.copyWith(progress: value));
  });
}
}


/// Adds pattern-matching-related methods to [MissionListItem].
extension MissionListItemPatterns on MissionListItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MissionListItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MissionListItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MissionListItem value)  $default,){
final _that = this;
switch (_that) {
case _MissionListItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MissionListItem value)?  $default,){
final _that = this;
switch (_that) {
case _MissionListItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Mission mission,  UserMissionProgress? progress,  bool isLocked,  double progressPercentage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MissionListItem() when $default != null:
return $default(_that.mission,_that.progress,_that.isLocked,_that.progressPercentage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Mission mission,  UserMissionProgress? progress,  bool isLocked,  double progressPercentage)  $default,) {final _that = this;
switch (_that) {
case _MissionListItem():
return $default(_that.mission,_that.progress,_that.isLocked,_that.progressPercentage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Mission mission,  UserMissionProgress? progress,  bool isLocked,  double progressPercentage)?  $default,) {final _that = this;
switch (_that) {
case _MissionListItem() when $default != null:
return $default(_that.mission,_that.progress,_that.isLocked,_that.progressPercentage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MissionListItem implements MissionListItem {
  const _MissionListItem({required this.mission, required this.progress, required this.isLocked, required this.progressPercentage});
  factory _MissionListItem.fromJson(Map<String, dynamic> json) => _$MissionListItemFromJson(json);

@override final  Mission mission;
@override final  UserMissionProgress? progress;
// null = 開始されていない
@override final  bool isLocked;
// 前提ミッション未達成
@override final  double progressPercentage;

/// Create a copy of MissionListItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MissionListItemCopyWith<_MissionListItem> get copyWith => __$MissionListItemCopyWithImpl<_MissionListItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MissionListItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MissionListItem&&(identical(other.mission, mission) || other.mission == mission)&&(identical(other.progress, progress) || other.progress == progress)&&(identical(other.isLocked, isLocked) || other.isLocked == isLocked)&&(identical(other.progressPercentage, progressPercentage) || other.progressPercentage == progressPercentage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mission,progress,isLocked,progressPercentage);

@override
String toString() {
  return 'MissionListItem(mission: $mission, progress: $progress, isLocked: $isLocked, progressPercentage: $progressPercentage)';
}


}

/// @nodoc
abstract mixin class _$MissionListItemCopyWith<$Res> implements $MissionListItemCopyWith<$Res> {
  factory _$MissionListItemCopyWith(_MissionListItem value, $Res Function(_MissionListItem) _then) = __$MissionListItemCopyWithImpl;
@override @useResult
$Res call({
 Mission mission, UserMissionProgress? progress, bool isLocked, double progressPercentage
});


@override $MissionCopyWith<$Res> get mission;@override $UserMissionProgressCopyWith<$Res>? get progress;

}
/// @nodoc
class __$MissionListItemCopyWithImpl<$Res>
    implements _$MissionListItemCopyWith<$Res> {
  __$MissionListItemCopyWithImpl(this._self, this._then);

  final _MissionListItem _self;
  final $Res Function(_MissionListItem) _then;

/// Create a copy of MissionListItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mission = null,Object? progress = freezed,Object? isLocked = null,Object? progressPercentage = null,}) {
  return _then(_MissionListItem(
mission: null == mission ? _self.mission : mission // ignore: cast_nullable_to_non_nullable
as Mission,progress: freezed == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as UserMissionProgress?,isLocked: null == isLocked ? _self.isLocked : isLocked // ignore: cast_nullable_to_non_nullable
as bool,progressPercentage: null == progressPercentage ? _self.progressPercentage : progressPercentage // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of MissionListItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MissionCopyWith<$Res> get mission {
  
  return $MissionCopyWith<$Res>(_self.mission, (value) {
    return _then(_self.copyWith(mission: value));
  });
}/// Create a copy of MissionListItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserMissionProgressCopyWith<$Res>? get progress {
    if (_self.progress == null) {
    return null;
  }

  return $UserMissionProgressCopyWith<$Res>(_self.progress!, (value) {
    return _then(_self.copyWith(progress: value));
  });
}
}

// dart format on
