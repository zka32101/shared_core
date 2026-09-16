// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_mission_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DailyMission {

 String get missionId; String get title; String get description; int get targetValue; String get unit; String get subject;// 'sansu', 'kokugo', 'eigo', 'rika', 'shakai', 'programming', 'doutoku'
 MissionReward get reward; DateTime get resetTime;// Unix timestamp for daily reset (5:00 AM default)
 bool get enabled; List<String> get appIds;
/// Create a copy of DailyMission
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyMissionCopyWith<DailyMission> get copyWith => _$DailyMissionCopyWithImpl<DailyMission>(this as DailyMission, _$identity);

  /// Serializes this DailyMission to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyMission&&(identical(other.missionId, missionId) || other.missionId == missionId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.targetValue, targetValue) || other.targetValue == targetValue)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.reward, reward) || other.reward == reward)&&(identical(other.resetTime, resetTime) || other.resetTime == resetTime)&&(identical(other.enabled, enabled) || other.enabled == enabled)&&const DeepCollectionEquality().equals(other.appIds, appIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,missionId,title,description,targetValue,unit,subject,reward,resetTime,enabled,const DeepCollectionEquality().hash(appIds));

@override
String toString() {
  return 'DailyMission(missionId: $missionId, title: $title, description: $description, targetValue: $targetValue, unit: $unit, subject: $subject, reward: $reward, resetTime: $resetTime, enabled: $enabled, appIds: $appIds)';
}


}

/// @nodoc
abstract mixin class $DailyMissionCopyWith<$Res>  {
  factory $DailyMissionCopyWith(DailyMission value, $Res Function(DailyMission) _then) = _$DailyMissionCopyWithImpl;
@useResult
$Res call({
 String missionId, String title, String description, int targetValue, String unit, String subject, MissionReward reward, DateTime resetTime, bool enabled, List<String> appIds
});


$MissionRewardCopyWith<$Res> get reward;

}
/// @nodoc
class _$DailyMissionCopyWithImpl<$Res>
    implements $DailyMissionCopyWith<$Res> {
  _$DailyMissionCopyWithImpl(this._self, this._then);

  final DailyMission _self;
  final $Res Function(DailyMission) _then;

/// Create a copy of DailyMission
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? missionId = null,Object? title = null,Object? description = null,Object? targetValue = null,Object? unit = null,Object? subject = null,Object? reward = null,Object? resetTime = null,Object? enabled = null,Object? appIds = null,}) {
  return _then(_self.copyWith(
missionId: null == missionId ? _self.missionId : missionId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,targetValue: null == targetValue ? _self.targetValue : targetValue // ignore: cast_nullable_to_non_nullable
as int,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,reward: null == reward ? _self.reward : reward // ignore: cast_nullable_to_non_nullable
as MissionReward,resetTime: null == resetTime ? _self.resetTime : resetTime // ignore: cast_nullable_to_non_nullable
as DateTime,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,appIds: null == appIds ? _self.appIds : appIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of DailyMission
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MissionRewardCopyWith<$Res> get reward {
  
  return $MissionRewardCopyWith<$Res>(_self.reward, (value) {
    return _then(_self.copyWith(reward: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String missionId,  String title,  String description,  int targetValue,  String unit,  String subject,  MissionReward reward,  DateTime resetTime,  bool enabled,  List<String> appIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyMission() when $default != null:
return $default(_that.missionId,_that.title,_that.description,_that.targetValue,_that.unit,_that.subject,_that.reward,_that.resetTime,_that.enabled,_that.appIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String missionId,  String title,  String description,  int targetValue,  String unit,  String subject,  MissionReward reward,  DateTime resetTime,  bool enabled,  List<String> appIds)  $default,) {final _that = this;
switch (_that) {
case _DailyMission():
return $default(_that.missionId,_that.title,_that.description,_that.targetValue,_that.unit,_that.subject,_that.reward,_that.resetTime,_that.enabled,_that.appIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String missionId,  String title,  String description,  int targetValue,  String unit,  String subject,  MissionReward reward,  DateTime resetTime,  bool enabled,  List<String> appIds)?  $default,) {final _that = this;
switch (_that) {
case _DailyMission() when $default != null:
return $default(_that.missionId,_that.title,_that.description,_that.targetValue,_that.unit,_that.subject,_that.reward,_that.resetTime,_that.enabled,_that.appIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DailyMission implements DailyMission {
  const _DailyMission({required this.missionId, required this.title, required this.description, required this.targetValue, required this.unit, required this.subject, required this.reward, required this.resetTime, this.enabled = true, final  List<String> appIds = const []}): _appIds = appIds;
  factory _DailyMission.fromJson(Map<String, dynamic> json) => _$DailyMissionFromJson(json);

@override final  String missionId;
@override final  String title;
@override final  String description;
@override final  int targetValue;
@override final  String unit;
@override final  String subject;
// 'sansu', 'kokugo', 'eigo', 'rika', 'shakai', 'programming', 'doutoku'
@override final  MissionReward reward;
@override final  DateTime resetTime;
// Unix timestamp for daily reset (5:00 AM default)
@override@JsonKey() final  bool enabled;
 final  List<String> _appIds;
@override@JsonKey() List<String> get appIds {
  if (_appIds is EqualUnmodifiableListView) return _appIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_appIds);
}


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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyMission&&(identical(other.missionId, missionId) || other.missionId == missionId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.targetValue, targetValue) || other.targetValue == targetValue)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.reward, reward) || other.reward == reward)&&(identical(other.resetTime, resetTime) || other.resetTime == resetTime)&&(identical(other.enabled, enabled) || other.enabled == enabled)&&const DeepCollectionEquality().equals(other._appIds, _appIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,missionId,title,description,targetValue,unit,subject,reward,resetTime,enabled,const DeepCollectionEquality().hash(_appIds));

@override
String toString() {
  return 'DailyMission(missionId: $missionId, title: $title, description: $description, targetValue: $targetValue, unit: $unit, subject: $subject, reward: $reward, resetTime: $resetTime, enabled: $enabled, appIds: $appIds)';
}


}

/// @nodoc
abstract mixin class _$DailyMissionCopyWith<$Res> implements $DailyMissionCopyWith<$Res> {
  factory _$DailyMissionCopyWith(_DailyMission value, $Res Function(_DailyMission) _then) = __$DailyMissionCopyWithImpl;
@override @useResult
$Res call({
 String missionId, String title, String description, int targetValue, String unit, String subject, MissionReward reward, DateTime resetTime, bool enabled, List<String> appIds
});


@override $MissionRewardCopyWith<$Res> get reward;

}
/// @nodoc
class __$DailyMissionCopyWithImpl<$Res>
    implements _$DailyMissionCopyWith<$Res> {
  __$DailyMissionCopyWithImpl(this._self, this._then);

  final _DailyMission _self;
  final $Res Function(_DailyMission) _then;

/// Create a copy of DailyMission
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? missionId = null,Object? title = null,Object? description = null,Object? targetValue = null,Object? unit = null,Object? subject = null,Object? reward = null,Object? resetTime = null,Object? enabled = null,Object? appIds = null,}) {
  return _then(_DailyMission(
missionId: null == missionId ? _self.missionId : missionId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,targetValue: null == targetValue ? _self.targetValue : targetValue // ignore: cast_nullable_to_non_nullable
as int,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,reward: null == reward ? _self.reward : reward // ignore: cast_nullable_to_non_nullable
as MissionReward,resetTime: null == resetTime ? _self.resetTime : resetTime // ignore: cast_nullable_to_non_nullable
as DateTime,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,appIds: null == appIds ? _self._appIds : appIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of DailyMission
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MissionRewardCopyWith<$Res> get reward {
  
  return $MissionRewardCopyWith<$Res>(_self.reward, (value) {
    return _then(_self.copyWith(reward: value));
  });
}
}


/// @nodoc
mixin _$MissionReward {

 RewardType get type;// 'coins', 'badges', 'characterExp', 'items'
 int get amount; String? get itemId;// For badges or items
 String? get badgeId;
/// Create a copy of MissionReward
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MissionRewardCopyWith<MissionReward> get copyWith => _$MissionRewardCopyWithImpl<MissionReward>(this as MissionReward, _$identity);

  /// Serializes this MissionReward to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MissionReward&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.badgeId, badgeId) || other.badgeId == badgeId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,amount,itemId,badgeId);

@override
String toString() {
  return 'MissionReward(type: $type, amount: $amount, itemId: $itemId, badgeId: $badgeId)';
}


}

/// @nodoc
abstract mixin class $MissionRewardCopyWith<$Res>  {
  factory $MissionRewardCopyWith(MissionReward value, $Res Function(MissionReward) _then) = _$MissionRewardCopyWithImpl;
@useResult
$Res call({
 RewardType type, int amount, String? itemId, String? badgeId
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
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? amount = null,Object? itemId = freezed,Object? badgeId = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as RewardType,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String?,badgeId: freezed == badgeId ? _self.badgeId : badgeId // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RewardType type,  int amount,  String? itemId,  String? badgeId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MissionReward() when $default != null:
return $default(_that.type,_that.amount,_that.itemId,_that.badgeId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RewardType type,  int amount,  String? itemId,  String? badgeId)  $default,) {final _that = this;
switch (_that) {
case _MissionReward():
return $default(_that.type,_that.amount,_that.itemId,_that.badgeId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RewardType type,  int amount,  String? itemId,  String? badgeId)?  $default,) {final _that = this;
switch (_that) {
case _MissionReward() when $default != null:
return $default(_that.type,_that.amount,_that.itemId,_that.badgeId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MissionReward implements MissionReward {
  const _MissionReward({required this.type, required this.amount, this.itemId, this.badgeId});
  factory _MissionReward.fromJson(Map<String, dynamic> json) => _$MissionRewardFromJson(json);

@override final  RewardType type;
// 'coins', 'badges', 'characterExp', 'items'
@override final  int amount;
@override final  String? itemId;
// For badges or items
@override final  String? badgeId;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MissionReward&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.badgeId, badgeId) || other.badgeId == badgeId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,amount,itemId,badgeId);

@override
String toString() {
  return 'MissionReward(type: $type, amount: $amount, itemId: $itemId, badgeId: $badgeId)';
}


}

/// @nodoc
abstract mixin class _$MissionRewardCopyWith<$Res> implements $MissionRewardCopyWith<$Res> {
  factory _$MissionRewardCopyWith(_MissionReward value, $Res Function(_MissionReward) _then) = __$MissionRewardCopyWithImpl;
@override @useResult
$Res call({
 RewardType type, int amount, String? itemId, String? badgeId
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
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? amount = null,Object? itemId = freezed,Object? badgeId = freezed,}) {
  return _then(_MissionReward(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as RewardType,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String?,badgeId: freezed == badgeId ? _self.badgeId : badgeId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$DailyMissionProgress {

 String get userId; String get missionId; int get currentValue; bool get completed; DateTime get lastResetDate; DateTime get createdAt; DateTime? get completedAt;
/// Create a copy of DailyMissionProgress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyMissionProgressCopyWith<DailyMissionProgress> get copyWith => _$DailyMissionProgressCopyWithImpl<DailyMissionProgress>(this as DailyMissionProgress, _$identity);

  /// Serializes this DailyMissionProgress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyMissionProgress&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.missionId, missionId) || other.missionId == missionId)&&(identical(other.currentValue, currentValue) || other.currentValue == currentValue)&&(identical(other.completed, completed) || other.completed == completed)&&(identical(other.lastResetDate, lastResetDate) || other.lastResetDate == lastResetDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,missionId,currentValue,completed,lastResetDate,createdAt,completedAt);

@override
String toString() {
  return 'DailyMissionProgress(userId: $userId, missionId: $missionId, currentValue: $currentValue, completed: $completed, lastResetDate: $lastResetDate, createdAt: $createdAt, completedAt: $completedAt)';
}


}

/// @nodoc
abstract mixin class $DailyMissionProgressCopyWith<$Res>  {
  factory $DailyMissionProgressCopyWith(DailyMissionProgress value, $Res Function(DailyMissionProgress) _then) = _$DailyMissionProgressCopyWithImpl;
@useResult
$Res call({
 String userId, String missionId, int currentValue, bool completed, DateTime lastResetDate, DateTime createdAt, DateTime? completedAt
});




}
/// @nodoc
class _$DailyMissionProgressCopyWithImpl<$Res>
    implements $DailyMissionProgressCopyWith<$Res> {
  _$DailyMissionProgressCopyWithImpl(this._self, this._then);

  final DailyMissionProgress _self;
  final $Res Function(DailyMissionProgress) _then;

/// Create a copy of DailyMissionProgress
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


/// Adds pattern-matching-related methods to [DailyMissionProgress].
extension DailyMissionProgressPatterns on DailyMissionProgress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyMissionProgress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyMissionProgress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyMissionProgress value)  $default,){
final _that = this;
switch (_that) {
case _DailyMissionProgress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyMissionProgress value)?  $default,){
final _that = this;
switch (_that) {
case _DailyMissionProgress() when $default != null:
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
case _DailyMissionProgress() when $default != null:
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
case _DailyMissionProgress():
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
case _DailyMissionProgress() when $default != null:
return $default(_that.userId,_that.missionId,_that.currentValue,_that.completed,_that.lastResetDate,_that.createdAt,_that.completedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DailyMissionProgress implements DailyMissionProgress {
  const _DailyMissionProgress({required this.userId, required this.missionId, required this.currentValue, this.completed = false, required this.lastResetDate, required this.createdAt, this.completedAt});
  factory _DailyMissionProgress.fromJson(Map<String, dynamic> json) => _$DailyMissionProgressFromJson(json);

@override final  String userId;
@override final  String missionId;
@override final  int currentValue;
@override@JsonKey() final  bool completed;
@override final  DateTime lastResetDate;
@override final  DateTime createdAt;
@override final  DateTime? completedAt;

/// Create a copy of DailyMissionProgress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyMissionProgressCopyWith<_DailyMissionProgress> get copyWith => __$DailyMissionProgressCopyWithImpl<_DailyMissionProgress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyMissionProgressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyMissionProgress&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.missionId, missionId) || other.missionId == missionId)&&(identical(other.currentValue, currentValue) || other.currentValue == currentValue)&&(identical(other.completed, completed) || other.completed == completed)&&(identical(other.lastResetDate, lastResetDate) || other.lastResetDate == lastResetDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,missionId,currentValue,completed,lastResetDate,createdAt,completedAt);

@override
String toString() {
  return 'DailyMissionProgress(userId: $userId, missionId: $missionId, currentValue: $currentValue, completed: $completed, lastResetDate: $lastResetDate, createdAt: $createdAt, completedAt: $completedAt)';
}


}

/// @nodoc
abstract mixin class _$DailyMissionProgressCopyWith<$Res> implements $DailyMissionProgressCopyWith<$Res> {
  factory _$DailyMissionProgressCopyWith(_DailyMissionProgress value, $Res Function(_DailyMissionProgress) _then) = __$DailyMissionProgressCopyWithImpl;
@override @useResult
$Res call({
 String userId, String missionId, int currentValue, bool completed, DateTime lastResetDate, DateTime createdAt, DateTime? completedAt
});




}
/// @nodoc
class __$DailyMissionProgressCopyWithImpl<$Res>
    implements _$DailyMissionProgressCopyWith<$Res> {
  __$DailyMissionProgressCopyWithImpl(this._self, this._then);

  final _DailyMissionProgress _self;
  final $Res Function(_DailyMissionProgress) _then;

/// Create a copy of DailyMissionProgress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? missionId = null,Object? currentValue = null,Object? completed = null,Object? lastResetDate = null,Object? createdAt = null,Object? completedAt = freezed,}) {
  return _then(_DailyMissionProgress(
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
mixin _$DailyMissionListItem {

 DailyMission get mission; DailyMissionProgress get progress; bool get isLocked; int get progressPercentage;
/// Create a copy of DailyMissionListItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyMissionListItemCopyWith<DailyMissionListItem> get copyWith => _$DailyMissionListItemCopyWithImpl<DailyMissionListItem>(this as DailyMissionListItem, _$identity);

  /// Serializes this DailyMissionListItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyMissionListItem&&(identical(other.mission, mission) || other.mission == mission)&&(identical(other.progress, progress) || other.progress == progress)&&(identical(other.isLocked, isLocked) || other.isLocked == isLocked)&&(identical(other.progressPercentage, progressPercentage) || other.progressPercentage == progressPercentage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mission,progress,isLocked,progressPercentage);

@override
String toString() {
  return 'DailyMissionListItem(mission: $mission, progress: $progress, isLocked: $isLocked, progressPercentage: $progressPercentage)';
}


}

/// @nodoc
abstract mixin class $DailyMissionListItemCopyWith<$Res>  {
  factory $DailyMissionListItemCopyWith(DailyMissionListItem value, $Res Function(DailyMissionListItem) _then) = _$DailyMissionListItemCopyWithImpl;
@useResult
$Res call({
 DailyMission mission, DailyMissionProgress progress, bool isLocked, int progressPercentage
});


$DailyMissionCopyWith<$Res> get mission;$DailyMissionProgressCopyWith<$Res> get progress;

}
/// @nodoc
class _$DailyMissionListItemCopyWithImpl<$Res>
    implements $DailyMissionListItemCopyWith<$Res> {
  _$DailyMissionListItemCopyWithImpl(this._self, this._then);

  final DailyMissionListItem _self;
  final $Res Function(DailyMissionListItem) _then;

/// Create a copy of DailyMissionListItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mission = null,Object? progress = null,Object? isLocked = null,Object? progressPercentage = null,}) {
  return _then(_self.copyWith(
mission: null == mission ? _self.mission : mission // ignore: cast_nullable_to_non_nullable
as DailyMission,progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as DailyMissionProgress,isLocked: null == isLocked ? _self.isLocked : isLocked // ignore: cast_nullable_to_non_nullable
as bool,progressPercentage: null == progressPercentage ? _self.progressPercentage : progressPercentage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of DailyMissionListItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DailyMissionCopyWith<$Res> get mission {
  
  return $DailyMissionCopyWith<$Res>(_self.mission, (value) {
    return _then(_self.copyWith(mission: value));
  });
}/// Create a copy of DailyMissionListItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DailyMissionProgressCopyWith<$Res> get progress {
  
  return $DailyMissionProgressCopyWith<$Res>(_self.progress, (value) {
    return _then(_self.copyWith(progress: value));
  });
}
}


/// Adds pattern-matching-related methods to [DailyMissionListItem].
extension DailyMissionListItemPatterns on DailyMissionListItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyMissionListItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyMissionListItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyMissionListItem value)  $default,){
final _that = this;
switch (_that) {
case _DailyMissionListItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyMissionListItem value)?  $default,){
final _that = this;
switch (_that) {
case _DailyMissionListItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DailyMission mission,  DailyMissionProgress progress,  bool isLocked,  int progressPercentage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyMissionListItem() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DailyMission mission,  DailyMissionProgress progress,  bool isLocked,  int progressPercentage)  $default,) {final _that = this;
switch (_that) {
case _DailyMissionListItem():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DailyMission mission,  DailyMissionProgress progress,  bool isLocked,  int progressPercentage)?  $default,) {final _that = this;
switch (_that) {
case _DailyMissionListItem() when $default != null:
return $default(_that.mission,_that.progress,_that.isLocked,_that.progressPercentage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DailyMissionListItem implements DailyMissionListItem {
  const _DailyMissionListItem({required this.mission, required this.progress, required this.isLocked, required this.progressPercentage});
  factory _DailyMissionListItem.fromJson(Map<String, dynamic> json) => _$DailyMissionListItemFromJson(json);

@override final  DailyMission mission;
@override final  DailyMissionProgress progress;
@override final  bool isLocked;
@override final  int progressPercentage;

/// Create a copy of DailyMissionListItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyMissionListItemCopyWith<_DailyMissionListItem> get copyWith => __$DailyMissionListItemCopyWithImpl<_DailyMissionListItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyMissionListItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyMissionListItem&&(identical(other.mission, mission) || other.mission == mission)&&(identical(other.progress, progress) || other.progress == progress)&&(identical(other.isLocked, isLocked) || other.isLocked == isLocked)&&(identical(other.progressPercentage, progressPercentage) || other.progressPercentage == progressPercentage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mission,progress,isLocked,progressPercentage);

@override
String toString() {
  return 'DailyMissionListItem(mission: $mission, progress: $progress, isLocked: $isLocked, progressPercentage: $progressPercentage)';
}


}

/// @nodoc
abstract mixin class _$DailyMissionListItemCopyWith<$Res> implements $DailyMissionListItemCopyWith<$Res> {
  factory _$DailyMissionListItemCopyWith(_DailyMissionListItem value, $Res Function(_DailyMissionListItem) _then) = __$DailyMissionListItemCopyWithImpl;
@override @useResult
$Res call({
 DailyMission mission, DailyMissionProgress progress, bool isLocked, int progressPercentage
});


@override $DailyMissionCopyWith<$Res> get mission;@override $DailyMissionProgressCopyWith<$Res> get progress;

}
/// @nodoc
class __$DailyMissionListItemCopyWithImpl<$Res>
    implements _$DailyMissionListItemCopyWith<$Res> {
  __$DailyMissionListItemCopyWithImpl(this._self, this._then);

  final _DailyMissionListItem _self;
  final $Res Function(_DailyMissionListItem) _then;

/// Create a copy of DailyMissionListItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mission = null,Object? progress = null,Object? isLocked = null,Object? progressPercentage = null,}) {
  return _then(_DailyMissionListItem(
mission: null == mission ? _self.mission : mission // ignore: cast_nullable_to_non_nullable
as DailyMission,progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as DailyMissionProgress,isLocked: null == isLocked ? _self.isLocked : isLocked // ignore: cast_nullable_to_non_nullable
as bool,progressPercentage: null == progressPercentage ? _self.progressPercentage : progressPercentage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of DailyMissionListItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DailyMissionCopyWith<$Res> get mission {
  
  return $DailyMissionCopyWith<$Res>(_self.mission, (value) {
    return _then(_self.copyWith(mission: value));
  });
}/// Create a copy of DailyMissionListItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DailyMissionProgressCopyWith<$Res> get progress {
  
  return $DailyMissionProgressCopyWith<$Res>(_self.progress, (value) {
    return _then(_self.copyWith(progress: value));
  });
}
}


/// @nodoc
mixin _$WeeklyBonus {

 String get userId; int get consecutiveDays;// 0-7
 DateTime get lastCompletionDate; DateTime get resetDate;// Reset every Sunday
 List<int> get completionDaysOfWeek;// [0=Mon, 1=Tue, ... 6=Sun]
 bool get bonusClaimedThisWeek;// Whether 7-day bonus already claimed
 int get totalWeeklyBonus;// Total bonus coins/rewards this week
 DateTime? get lastClaimedDate;// When the bonus was last claimed
 DateTime? get weeklyResetDate;// Weekly reset date (sync field)
 int get totalCoinsEarned;
/// Create a copy of WeeklyBonus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeeklyBonusCopyWith<WeeklyBonus> get copyWith => _$WeeklyBonusCopyWithImpl<WeeklyBonus>(this as WeeklyBonus, _$identity);

  /// Serializes this WeeklyBonus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeeklyBonus&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.consecutiveDays, consecutiveDays) || other.consecutiveDays == consecutiveDays)&&(identical(other.lastCompletionDate, lastCompletionDate) || other.lastCompletionDate == lastCompletionDate)&&(identical(other.resetDate, resetDate) || other.resetDate == resetDate)&&const DeepCollectionEquality().equals(other.completionDaysOfWeek, completionDaysOfWeek)&&(identical(other.bonusClaimedThisWeek, bonusClaimedThisWeek) || other.bonusClaimedThisWeek == bonusClaimedThisWeek)&&(identical(other.totalWeeklyBonus, totalWeeklyBonus) || other.totalWeeklyBonus == totalWeeklyBonus)&&(identical(other.lastClaimedDate, lastClaimedDate) || other.lastClaimedDate == lastClaimedDate)&&(identical(other.weeklyResetDate, weeklyResetDate) || other.weeklyResetDate == weeklyResetDate)&&(identical(other.totalCoinsEarned, totalCoinsEarned) || other.totalCoinsEarned == totalCoinsEarned));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,consecutiveDays,lastCompletionDate,resetDate,const DeepCollectionEquality().hash(completionDaysOfWeek),bonusClaimedThisWeek,totalWeeklyBonus,lastClaimedDate,weeklyResetDate,totalCoinsEarned);

@override
String toString() {
  return 'WeeklyBonus(userId: $userId, consecutiveDays: $consecutiveDays, lastCompletionDate: $lastCompletionDate, resetDate: $resetDate, completionDaysOfWeek: $completionDaysOfWeek, bonusClaimedThisWeek: $bonusClaimedThisWeek, totalWeeklyBonus: $totalWeeklyBonus, lastClaimedDate: $lastClaimedDate, weeklyResetDate: $weeklyResetDate, totalCoinsEarned: $totalCoinsEarned)';
}


}

/// @nodoc
abstract mixin class $WeeklyBonusCopyWith<$Res>  {
  factory $WeeklyBonusCopyWith(WeeklyBonus value, $Res Function(WeeklyBonus) _then) = _$WeeklyBonusCopyWithImpl;
@useResult
$Res call({
 String userId, int consecutiveDays, DateTime lastCompletionDate, DateTime resetDate, List<int> completionDaysOfWeek, bool bonusClaimedThisWeek, int totalWeeklyBonus, DateTime? lastClaimedDate, DateTime? weeklyResetDate, int totalCoinsEarned
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
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? consecutiveDays = null,Object? lastCompletionDate = null,Object? resetDate = null,Object? completionDaysOfWeek = null,Object? bonusClaimedThisWeek = null,Object? totalWeeklyBonus = null,Object? lastClaimedDate = freezed,Object? weeklyResetDate = freezed,Object? totalCoinsEarned = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,consecutiveDays: null == consecutiveDays ? _self.consecutiveDays : consecutiveDays // ignore: cast_nullable_to_non_nullable
as int,lastCompletionDate: null == lastCompletionDate ? _self.lastCompletionDate : lastCompletionDate // ignore: cast_nullable_to_non_nullable
as DateTime,resetDate: null == resetDate ? _self.resetDate : resetDate // ignore: cast_nullable_to_non_nullable
as DateTime,completionDaysOfWeek: null == completionDaysOfWeek ? _self.completionDaysOfWeek : completionDaysOfWeek // ignore: cast_nullable_to_non_nullable
as List<int>,bonusClaimedThisWeek: null == bonusClaimedThisWeek ? _self.bonusClaimedThisWeek : bonusClaimedThisWeek // ignore: cast_nullable_to_non_nullable
as bool,totalWeeklyBonus: null == totalWeeklyBonus ? _self.totalWeeklyBonus : totalWeeklyBonus // ignore: cast_nullable_to_non_nullable
as int,lastClaimedDate: freezed == lastClaimedDate ? _self.lastClaimedDate : lastClaimedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,weeklyResetDate: freezed == weeklyResetDate ? _self.weeklyResetDate : weeklyResetDate // ignore: cast_nullable_to_non_nullable
as DateTime?,totalCoinsEarned: null == totalCoinsEarned ? _self.totalCoinsEarned : totalCoinsEarned // ignore: cast_nullable_to_non_nullable
as int,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  int consecutiveDays,  DateTime lastCompletionDate,  DateTime resetDate,  List<int> completionDaysOfWeek,  bool bonusClaimedThisWeek,  int totalWeeklyBonus,  DateTime? lastClaimedDate,  DateTime? weeklyResetDate,  int totalCoinsEarned)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeeklyBonus() when $default != null:
return $default(_that.userId,_that.consecutiveDays,_that.lastCompletionDate,_that.resetDate,_that.completionDaysOfWeek,_that.bonusClaimedThisWeek,_that.totalWeeklyBonus,_that.lastClaimedDate,_that.weeklyResetDate,_that.totalCoinsEarned);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  int consecutiveDays,  DateTime lastCompletionDate,  DateTime resetDate,  List<int> completionDaysOfWeek,  bool bonusClaimedThisWeek,  int totalWeeklyBonus,  DateTime? lastClaimedDate,  DateTime? weeklyResetDate,  int totalCoinsEarned)  $default,) {final _that = this;
switch (_that) {
case _WeeklyBonus():
return $default(_that.userId,_that.consecutiveDays,_that.lastCompletionDate,_that.resetDate,_that.completionDaysOfWeek,_that.bonusClaimedThisWeek,_that.totalWeeklyBonus,_that.lastClaimedDate,_that.weeklyResetDate,_that.totalCoinsEarned);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  int consecutiveDays,  DateTime lastCompletionDate,  DateTime resetDate,  List<int> completionDaysOfWeek,  bool bonusClaimedThisWeek,  int totalWeeklyBonus,  DateTime? lastClaimedDate,  DateTime? weeklyResetDate,  int totalCoinsEarned)?  $default,) {final _that = this;
switch (_that) {
case _WeeklyBonus() when $default != null:
return $default(_that.userId,_that.consecutiveDays,_that.lastCompletionDate,_that.resetDate,_that.completionDaysOfWeek,_that.bonusClaimedThisWeek,_that.totalWeeklyBonus,_that.lastClaimedDate,_that.weeklyResetDate,_that.totalCoinsEarned);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeeklyBonus implements WeeklyBonus {
  const _WeeklyBonus({required this.userId, required this.consecutiveDays, required this.lastCompletionDate, required this.resetDate, required final  List<int> completionDaysOfWeek, this.bonusClaimedThisWeek = false, this.totalWeeklyBonus = 0, this.lastClaimedDate, this.weeklyResetDate, this.totalCoinsEarned = 0}): _completionDaysOfWeek = completionDaysOfWeek;
  factory _WeeklyBonus.fromJson(Map<String, dynamic> json) => _$WeeklyBonusFromJson(json);

@override final  String userId;
@override final  int consecutiveDays;
// 0-7
@override final  DateTime lastCompletionDate;
@override final  DateTime resetDate;
// Reset every Sunday
 final  List<int> _completionDaysOfWeek;
// Reset every Sunday
@override List<int> get completionDaysOfWeek {
  if (_completionDaysOfWeek is EqualUnmodifiableListView) return _completionDaysOfWeek;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_completionDaysOfWeek);
}

// [0=Mon, 1=Tue, ... 6=Sun]
@override@JsonKey() final  bool bonusClaimedThisWeek;
// Whether 7-day bonus already claimed
@override@JsonKey() final  int totalWeeklyBonus;
// Total bonus coins/rewards this week
@override final  DateTime? lastClaimedDate;
// When the bonus was last claimed
@override final  DateTime? weeklyResetDate;
// Weekly reset date (sync field)
@override@JsonKey() final  int totalCoinsEarned;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeeklyBonus&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.consecutiveDays, consecutiveDays) || other.consecutiveDays == consecutiveDays)&&(identical(other.lastCompletionDate, lastCompletionDate) || other.lastCompletionDate == lastCompletionDate)&&(identical(other.resetDate, resetDate) || other.resetDate == resetDate)&&const DeepCollectionEquality().equals(other._completionDaysOfWeek, _completionDaysOfWeek)&&(identical(other.bonusClaimedThisWeek, bonusClaimedThisWeek) || other.bonusClaimedThisWeek == bonusClaimedThisWeek)&&(identical(other.totalWeeklyBonus, totalWeeklyBonus) || other.totalWeeklyBonus == totalWeeklyBonus)&&(identical(other.lastClaimedDate, lastClaimedDate) || other.lastClaimedDate == lastClaimedDate)&&(identical(other.weeklyResetDate, weeklyResetDate) || other.weeklyResetDate == weeklyResetDate)&&(identical(other.totalCoinsEarned, totalCoinsEarned) || other.totalCoinsEarned == totalCoinsEarned));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,consecutiveDays,lastCompletionDate,resetDate,const DeepCollectionEquality().hash(_completionDaysOfWeek),bonusClaimedThisWeek,totalWeeklyBonus,lastClaimedDate,weeklyResetDate,totalCoinsEarned);

@override
String toString() {
  return 'WeeklyBonus(userId: $userId, consecutiveDays: $consecutiveDays, lastCompletionDate: $lastCompletionDate, resetDate: $resetDate, completionDaysOfWeek: $completionDaysOfWeek, bonusClaimedThisWeek: $bonusClaimedThisWeek, totalWeeklyBonus: $totalWeeklyBonus, lastClaimedDate: $lastClaimedDate, weeklyResetDate: $weeklyResetDate, totalCoinsEarned: $totalCoinsEarned)';
}


}

/// @nodoc
abstract mixin class _$WeeklyBonusCopyWith<$Res> implements $WeeklyBonusCopyWith<$Res> {
  factory _$WeeklyBonusCopyWith(_WeeklyBonus value, $Res Function(_WeeklyBonus) _then) = __$WeeklyBonusCopyWithImpl;
@override @useResult
$Res call({
 String userId, int consecutiveDays, DateTime lastCompletionDate, DateTime resetDate, List<int> completionDaysOfWeek, bool bonusClaimedThisWeek, int totalWeeklyBonus, DateTime? lastClaimedDate, DateTime? weeklyResetDate, int totalCoinsEarned
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
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? consecutiveDays = null,Object? lastCompletionDate = null,Object? resetDate = null,Object? completionDaysOfWeek = null,Object? bonusClaimedThisWeek = null,Object? totalWeeklyBonus = null,Object? lastClaimedDate = freezed,Object? weeklyResetDate = freezed,Object? totalCoinsEarned = null,}) {
  return _then(_WeeklyBonus(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,consecutiveDays: null == consecutiveDays ? _self.consecutiveDays : consecutiveDays // ignore: cast_nullable_to_non_nullable
as int,lastCompletionDate: null == lastCompletionDate ? _self.lastCompletionDate : lastCompletionDate // ignore: cast_nullable_to_non_nullable
as DateTime,resetDate: null == resetDate ? _self.resetDate : resetDate // ignore: cast_nullable_to_non_nullable
as DateTime,completionDaysOfWeek: null == completionDaysOfWeek ? _self._completionDaysOfWeek : completionDaysOfWeek // ignore: cast_nullable_to_non_nullable
as List<int>,bonusClaimedThisWeek: null == bonusClaimedThisWeek ? _self.bonusClaimedThisWeek : bonusClaimedThisWeek // ignore: cast_nullable_to_non_nullable
as bool,totalWeeklyBonus: null == totalWeeklyBonus ? _self.totalWeeklyBonus : totalWeeklyBonus // ignore: cast_nullable_to_non_nullable
as int,lastClaimedDate: freezed == lastClaimedDate ? _self.lastClaimedDate : lastClaimedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,weeklyResetDate: freezed == weeklyResetDate ? _self.weeklyResetDate : weeklyResetDate // ignore: cast_nullable_to_non_nullable
as DateTime?,totalCoinsEarned: null == totalCoinsEarned ? _self.totalCoinsEarned : totalCoinsEarned // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
