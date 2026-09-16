// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytics_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LearningMetric {

 String get userId; LearningMetricType get type; int get value; DateTime get recordedAt; String? get appId;// 教科別追跡（'kokugo', 'sansu'など）
 Map<String, dynamic>? get customData;
/// Create a copy of LearningMetric
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LearningMetricCopyWith<LearningMetric> get copyWith => _$LearningMetricCopyWithImpl<LearningMetric>(this as LearningMetric, _$identity);

  /// Serializes this LearningMetric to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LearningMetric&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value)&&(identical(other.recordedAt, recordedAt) || other.recordedAt == recordedAt)&&(identical(other.appId, appId) || other.appId == appId)&&const DeepCollectionEquality().equals(other.customData, customData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,type,value,recordedAt,appId,const DeepCollectionEquality().hash(customData));

@override
String toString() {
  return 'LearningMetric(userId: $userId, type: $type, value: $value, recordedAt: $recordedAt, appId: $appId, customData: $customData)';
}


}

/// @nodoc
abstract mixin class $LearningMetricCopyWith<$Res>  {
  factory $LearningMetricCopyWith(LearningMetric value, $Res Function(LearningMetric) _then) = _$LearningMetricCopyWithImpl;
@useResult
$Res call({
 String userId, LearningMetricType type, int value, DateTime recordedAt, String? appId, Map<String, dynamic>? customData
});




}
/// @nodoc
class _$LearningMetricCopyWithImpl<$Res>
    implements $LearningMetricCopyWith<$Res> {
  _$LearningMetricCopyWithImpl(this._self, this._then);

  final LearningMetric _self;
  final $Res Function(LearningMetric) _then;

/// Create a copy of LearningMetric
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? type = null,Object? value = null,Object? recordedAt = null,Object? appId = freezed,Object? customData = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as LearningMetricType,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,recordedAt: null == recordedAt ? _self.recordedAt : recordedAt // ignore: cast_nullable_to_non_nullable
as DateTime,appId: freezed == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as String?,customData: freezed == customData ? _self.customData : customData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [LearningMetric].
extension LearningMetricPatterns on LearningMetric {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LearningMetric value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LearningMetric() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LearningMetric value)  $default,){
final _that = this;
switch (_that) {
case _LearningMetric():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LearningMetric value)?  $default,){
final _that = this;
switch (_that) {
case _LearningMetric() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  LearningMetricType type,  int value,  DateTime recordedAt,  String? appId,  Map<String, dynamic>? customData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LearningMetric() when $default != null:
return $default(_that.userId,_that.type,_that.value,_that.recordedAt,_that.appId,_that.customData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  LearningMetricType type,  int value,  DateTime recordedAt,  String? appId,  Map<String, dynamic>? customData)  $default,) {final _that = this;
switch (_that) {
case _LearningMetric():
return $default(_that.userId,_that.type,_that.value,_that.recordedAt,_that.appId,_that.customData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  LearningMetricType type,  int value,  DateTime recordedAt,  String? appId,  Map<String, dynamic>? customData)?  $default,) {final _that = this;
switch (_that) {
case _LearningMetric() when $default != null:
return $default(_that.userId,_that.type,_that.value,_that.recordedAt,_that.appId,_that.customData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LearningMetric implements LearningMetric {
  const _LearningMetric({required this.userId, required this.type, required this.value, required this.recordedAt, this.appId, final  Map<String, dynamic>? customData}): _customData = customData;
  factory _LearningMetric.fromJson(Map<String, dynamic> json) => _$LearningMetricFromJson(json);

@override final  String userId;
@override final  LearningMetricType type;
@override final  int value;
@override final  DateTime recordedAt;
@override final  String? appId;
// 教科別追跡（'kokugo', 'sansu'など）
 final  Map<String, dynamic>? _customData;
// 教科別追跡（'kokugo', 'sansu'など）
@override Map<String, dynamic>? get customData {
  final value = _customData;
  if (value == null) return null;
  if (_customData is EqualUnmodifiableMapView) return _customData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of LearningMetric
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LearningMetricCopyWith<_LearningMetric> get copyWith => __$LearningMetricCopyWithImpl<_LearningMetric>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LearningMetricToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LearningMetric&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value)&&(identical(other.recordedAt, recordedAt) || other.recordedAt == recordedAt)&&(identical(other.appId, appId) || other.appId == appId)&&const DeepCollectionEquality().equals(other._customData, _customData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,type,value,recordedAt,appId,const DeepCollectionEquality().hash(_customData));

@override
String toString() {
  return 'LearningMetric(userId: $userId, type: $type, value: $value, recordedAt: $recordedAt, appId: $appId, customData: $customData)';
}


}

/// @nodoc
abstract mixin class _$LearningMetricCopyWith<$Res> implements $LearningMetricCopyWith<$Res> {
  factory _$LearningMetricCopyWith(_LearningMetric value, $Res Function(_LearningMetric) _then) = __$LearningMetricCopyWithImpl;
@override @useResult
$Res call({
 String userId, LearningMetricType type, int value, DateTime recordedAt, String? appId, Map<String, dynamic>? customData
});




}
/// @nodoc
class __$LearningMetricCopyWithImpl<$Res>
    implements _$LearningMetricCopyWith<$Res> {
  __$LearningMetricCopyWithImpl(this._self, this._then);

  final _LearningMetric _self;
  final $Res Function(_LearningMetric) _then;

/// Create a copy of LearningMetric
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? type = null,Object? value = null,Object? recordedAt = null,Object? appId = freezed,Object? customData = freezed,}) {
  return _then(_LearningMetric(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as LearningMetricType,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,recordedAt: null == recordedAt ? _self.recordedAt : recordedAt // ignore: cast_nullable_to_non_nullable
as DateTime,appId: freezed == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as String?,customData: freezed == customData ? _self._customData : customData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$UserSegmentAnalytics {

 String get userId; String get segmentId;// newUser, inactive, active, vip, churnRisk
 int get engagementScore;// 0-100
 int get retentionScore;// 0-100
 DateTime get lastActiveAt; int get totalLearningMinutes; int get consecutiveAbsenceDays; Map<String, int> get subjectScores;// { 'kokugo': 85, 'sansu': 72 }
 String? get cohortDate;// ユーザー登録日
 String? get churnRiskLevel;// 'low', 'medium', 'high'
 int? get engagementTrend;// -100 to 100
 int? get retentionTrend;
/// Create a copy of UserSegmentAnalytics
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserSegmentAnalyticsCopyWith<UserSegmentAnalytics> get copyWith => _$UserSegmentAnalyticsCopyWithImpl<UserSegmentAnalytics>(this as UserSegmentAnalytics, _$identity);

  /// Serializes this UserSegmentAnalytics to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSegmentAnalytics&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.segmentId, segmentId) || other.segmentId == segmentId)&&(identical(other.engagementScore, engagementScore) || other.engagementScore == engagementScore)&&(identical(other.retentionScore, retentionScore) || other.retentionScore == retentionScore)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt)&&(identical(other.totalLearningMinutes, totalLearningMinutes) || other.totalLearningMinutes == totalLearningMinutes)&&(identical(other.consecutiveAbsenceDays, consecutiveAbsenceDays) || other.consecutiveAbsenceDays == consecutiveAbsenceDays)&&const DeepCollectionEquality().equals(other.subjectScores, subjectScores)&&(identical(other.cohortDate, cohortDate) || other.cohortDate == cohortDate)&&(identical(other.churnRiskLevel, churnRiskLevel) || other.churnRiskLevel == churnRiskLevel)&&(identical(other.engagementTrend, engagementTrend) || other.engagementTrend == engagementTrend)&&(identical(other.retentionTrend, retentionTrend) || other.retentionTrend == retentionTrend));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,segmentId,engagementScore,retentionScore,lastActiveAt,totalLearningMinutes,consecutiveAbsenceDays,const DeepCollectionEquality().hash(subjectScores),cohortDate,churnRiskLevel,engagementTrend,retentionTrend);

@override
String toString() {
  return 'UserSegmentAnalytics(userId: $userId, segmentId: $segmentId, engagementScore: $engagementScore, retentionScore: $retentionScore, lastActiveAt: $lastActiveAt, totalLearningMinutes: $totalLearningMinutes, consecutiveAbsenceDays: $consecutiveAbsenceDays, subjectScores: $subjectScores, cohortDate: $cohortDate, churnRiskLevel: $churnRiskLevel, engagementTrend: $engagementTrend, retentionTrend: $retentionTrend)';
}


}

/// @nodoc
abstract mixin class $UserSegmentAnalyticsCopyWith<$Res>  {
  factory $UserSegmentAnalyticsCopyWith(UserSegmentAnalytics value, $Res Function(UserSegmentAnalytics) _then) = _$UserSegmentAnalyticsCopyWithImpl;
@useResult
$Res call({
 String userId, String segmentId, int engagementScore, int retentionScore, DateTime lastActiveAt, int totalLearningMinutes, int consecutiveAbsenceDays, Map<String, int> subjectScores, String? cohortDate, String? churnRiskLevel, int? engagementTrend, int? retentionTrend
});




}
/// @nodoc
class _$UserSegmentAnalyticsCopyWithImpl<$Res>
    implements $UserSegmentAnalyticsCopyWith<$Res> {
  _$UserSegmentAnalyticsCopyWithImpl(this._self, this._then);

  final UserSegmentAnalytics _self;
  final $Res Function(UserSegmentAnalytics) _then;

/// Create a copy of UserSegmentAnalytics
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? segmentId = null,Object? engagementScore = null,Object? retentionScore = null,Object? lastActiveAt = null,Object? totalLearningMinutes = null,Object? consecutiveAbsenceDays = null,Object? subjectScores = null,Object? cohortDate = freezed,Object? churnRiskLevel = freezed,Object? engagementTrend = freezed,Object? retentionTrend = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,segmentId: null == segmentId ? _self.segmentId : segmentId // ignore: cast_nullable_to_non_nullable
as String,engagementScore: null == engagementScore ? _self.engagementScore : engagementScore // ignore: cast_nullable_to_non_nullable
as int,retentionScore: null == retentionScore ? _self.retentionScore : retentionScore // ignore: cast_nullable_to_non_nullable
as int,lastActiveAt: null == lastActiveAt ? _self.lastActiveAt : lastActiveAt // ignore: cast_nullable_to_non_nullable
as DateTime,totalLearningMinutes: null == totalLearningMinutes ? _self.totalLearningMinutes : totalLearningMinutes // ignore: cast_nullable_to_non_nullable
as int,consecutiveAbsenceDays: null == consecutiveAbsenceDays ? _self.consecutiveAbsenceDays : consecutiveAbsenceDays // ignore: cast_nullable_to_non_nullable
as int,subjectScores: null == subjectScores ? _self.subjectScores : subjectScores // ignore: cast_nullable_to_non_nullable
as Map<String, int>,cohortDate: freezed == cohortDate ? _self.cohortDate : cohortDate // ignore: cast_nullable_to_non_nullable
as String?,churnRiskLevel: freezed == churnRiskLevel ? _self.churnRiskLevel : churnRiskLevel // ignore: cast_nullable_to_non_nullable
as String?,engagementTrend: freezed == engagementTrend ? _self.engagementTrend : engagementTrend // ignore: cast_nullable_to_non_nullable
as int?,retentionTrend: freezed == retentionTrend ? _self.retentionTrend : retentionTrend // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserSegmentAnalytics].
extension UserSegmentAnalyticsPatterns on UserSegmentAnalytics {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserSegmentAnalytics value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserSegmentAnalytics() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserSegmentAnalytics value)  $default,){
final _that = this;
switch (_that) {
case _UserSegmentAnalytics():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserSegmentAnalytics value)?  $default,){
final _that = this;
switch (_that) {
case _UserSegmentAnalytics() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String segmentId,  int engagementScore,  int retentionScore,  DateTime lastActiveAt,  int totalLearningMinutes,  int consecutiveAbsenceDays,  Map<String, int> subjectScores,  String? cohortDate,  String? churnRiskLevel,  int? engagementTrend,  int? retentionTrend)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserSegmentAnalytics() when $default != null:
return $default(_that.userId,_that.segmentId,_that.engagementScore,_that.retentionScore,_that.lastActiveAt,_that.totalLearningMinutes,_that.consecutiveAbsenceDays,_that.subjectScores,_that.cohortDate,_that.churnRiskLevel,_that.engagementTrend,_that.retentionTrend);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String segmentId,  int engagementScore,  int retentionScore,  DateTime lastActiveAt,  int totalLearningMinutes,  int consecutiveAbsenceDays,  Map<String, int> subjectScores,  String? cohortDate,  String? churnRiskLevel,  int? engagementTrend,  int? retentionTrend)  $default,) {final _that = this;
switch (_that) {
case _UserSegmentAnalytics():
return $default(_that.userId,_that.segmentId,_that.engagementScore,_that.retentionScore,_that.lastActiveAt,_that.totalLearningMinutes,_that.consecutiveAbsenceDays,_that.subjectScores,_that.cohortDate,_that.churnRiskLevel,_that.engagementTrend,_that.retentionTrend);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String segmentId,  int engagementScore,  int retentionScore,  DateTime lastActiveAt,  int totalLearningMinutes,  int consecutiveAbsenceDays,  Map<String, int> subjectScores,  String? cohortDate,  String? churnRiskLevel,  int? engagementTrend,  int? retentionTrend)?  $default,) {final _that = this;
switch (_that) {
case _UserSegmentAnalytics() when $default != null:
return $default(_that.userId,_that.segmentId,_that.engagementScore,_that.retentionScore,_that.lastActiveAt,_that.totalLearningMinutes,_that.consecutiveAbsenceDays,_that.subjectScores,_that.cohortDate,_that.churnRiskLevel,_that.engagementTrend,_that.retentionTrend);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserSegmentAnalytics implements UserSegmentAnalytics {
  const _UserSegmentAnalytics({required this.userId, required this.segmentId, required this.engagementScore, required this.retentionScore, required this.lastActiveAt, required this.totalLearningMinutes, required this.consecutiveAbsenceDays, required final  Map<String, int> subjectScores, this.cohortDate, this.churnRiskLevel, this.engagementTrend, this.retentionTrend}): _subjectScores = subjectScores;
  factory _UserSegmentAnalytics.fromJson(Map<String, dynamic> json) => _$UserSegmentAnalyticsFromJson(json);

@override final  String userId;
@override final  String segmentId;
// newUser, inactive, active, vip, churnRisk
@override final  int engagementScore;
// 0-100
@override final  int retentionScore;
// 0-100
@override final  DateTime lastActiveAt;
@override final  int totalLearningMinutes;
@override final  int consecutiveAbsenceDays;
 final  Map<String, int> _subjectScores;
@override Map<String, int> get subjectScores {
  if (_subjectScores is EqualUnmodifiableMapView) return _subjectScores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_subjectScores);
}

// { 'kokugo': 85, 'sansu': 72 }
@override final  String? cohortDate;
// ユーザー登録日
@override final  String? churnRiskLevel;
// 'low', 'medium', 'high'
@override final  int? engagementTrend;
// -100 to 100
@override final  int? retentionTrend;

/// Create a copy of UserSegmentAnalytics
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserSegmentAnalyticsCopyWith<_UserSegmentAnalytics> get copyWith => __$UserSegmentAnalyticsCopyWithImpl<_UserSegmentAnalytics>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserSegmentAnalyticsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserSegmentAnalytics&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.segmentId, segmentId) || other.segmentId == segmentId)&&(identical(other.engagementScore, engagementScore) || other.engagementScore == engagementScore)&&(identical(other.retentionScore, retentionScore) || other.retentionScore == retentionScore)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt)&&(identical(other.totalLearningMinutes, totalLearningMinutes) || other.totalLearningMinutes == totalLearningMinutes)&&(identical(other.consecutiveAbsenceDays, consecutiveAbsenceDays) || other.consecutiveAbsenceDays == consecutiveAbsenceDays)&&const DeepCollectionEquality().equals(other._subjectScores, _subjectScores)&&(identical(other.cohortDate, cohortDate) || other.cohortDate == cohortDate)&&(identical(other.churnRiskLevel, churnRiskLevel) || other.churnRiskLevel == churnRiskLevel)&&(identical(other.engagementTrend, engagementTrend) || other.engagementTrend == engagementTrend)&&(identical(other.retentionTrend, retentionTrend) || other.retentionTrend == retentionTrend));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,segmentId,engagementScore,retentionScore,lastActiveAt,totalLearningMinutes,consecutiveAbsenceDays,const DeepCollectionEquality().hash(_subjectScores),cohortDate,churnRiskLevel,engagementTrend,retentionTrend);

@override
String toString() {
  return 'UserSegmentAnalytics(userId: $userId, segmentId: $segmentId, engagementScore: $engagementScore, retentionScore: $retentionScore, lastActiveAt: $lastActiveAt, totalLearningMinutes: $totalLearningMinutes, consecutiveAbsenceDays: $consecutiveAbsenceDays, subjectScores: $subjectScores, cohortDate: $cohortDate, churnRiskLevel: $churnRiskLevel, engagementTrend: $engagementTrend, retentionTrend: $retentionTrend)';
}


}

/// @nodoc
abstract mixin class _$UserSegmentAnalyticsCopyWith<$Res> implements $UserSegmentAnalyticsCopyWith<$Res> {
  factory _$UserSegmentAnalyticsCopyWith(_UserSegmentAnalytics value, $Res Function(_UserSegmentAnalytics) _then) = __$UserSegmentAnalyticsCopyWithImpl;
@override @useResult
$Res call({
 String userId, String segmentId, int engagementScore, int retentionScore, DateTime lastActiveAt, int totalLearningMinutes, int consecutiveAbsenceDays, Map<String, int> subjectScores, String? cohortDate, String? churnRiskLevel, int? engagementTrend, int? retentionTrend
});




}
/// @nodoc
class __$UserSegmentAnalyticsCopyWithImpl<$Res>
    implements _$UserSegmentAnalyticsCopyWith<$Res> {
  __$UserSegmentAnalyticsCopyWithImpl(this._self, this._then);

  final _UserSegmentAnalytics _self;
  final $Res Function(_UserSegmentAnalytics) _then;

/// Create a copy of UserSegmentAnalytics
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? segmentId = null,Object? engagementScore = null,Object? retentionScore = null,Object? lastActiveAt = null,Object? totalLearningMinutes = null,Object? consecutiveAbsenceDays = null,Object? subjectScores = null,Object? cohortDate = freezed,Object? churnRiskLevel = freezed,Object? engagementTrend = freezed,Object? retentionTrend = freezed,}) {
  return _then(_UserSegmentAnalytics(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,segmentId: null == segmentId ? _self.segmentId : segmentId // ignore: cast_nullable_to_non_nullable
as String,engagementScore: null == engagementScore ? _self.engagementScore : engagementScore // ignore: cast_nullable_to_non_nullable
as int,retentionScore: null == retentionScore ? _self.retentionScore : retentionScore // ignore: cast_nullable_to_non_nullable
as int,lastActiveAt: null == lastActiveAt ? _self.lastActiveAt : lastActiveAt // ignore: cast_nullable_to_non_nullable
as DateTime,totalLearningMinutes: null == totalLearningMinutes ? _self.totalLearningMinutes : totalLearningMinutes // ignore: cast_nullable_to_non_nullable
as int,consecutiveAbsenceDays: null == consecutiveAbsenceDays ? _self.consecutiveAbsenceDays : consecutiveAbsenceDays // ignore: cast_nullable_to_non_nullable
as int,subjectScores: null == subjectScores ? _self._subjectScores : subjectScores // ignore: cast_nullable_to_non_nullable
as Map<String, int>,cohortDate: freezed == cohortDate ? _self.cohortDate : cohortDate // ignore: cast_nullable_to_non_nullable
as String?,churnRiskLevel: freezed == churnRiskLevel ? _self.churnRiskLevel : churnRiskLevel // ignore: cast_nullable_to_non_nullable
as String?,engagementTrend: freezed == engagementTrend ? _self.engagementTrend : engagementTrend // ignore: cast_nullable_to_non_nullable
as int?,retentionTrend: freezed == retentionTrend ? _self.retentionTrend : retentionTrend // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$WeeklyReport {

 String get userId; DateTime get weekStartDate; int get totalMinutes; int get totalQuizzesCompleted; double get averageAccuracy; List<String> get topicsFocused; int get newBadgesEarned; int get coinsEarned; String? get weeklyGoalStatus;// 'completed', 'partial', 'missed'
 int? get friendsInteracted; int? get challengesCompleted; Map<String, int>? get subjectBreakdown;
/// Create a copy of WeeklyReport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeeklyReportCopyWith<WeeklyReport> get copyWith => _$WeeklyReportCopyWithImpl<WeeklyReport>(this as WeeklyReport, _$identity);

  /// Serializes this WeeklyReport to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeeklyReport&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.weekStartDate, weekStartDate) || other.weekStartDate == weekStartDate)&&(identical(other.totalMinutes, totalMinutes) || other.totalMinutes == totalMinutes)&&(identical(other.totalQuizzesCompleted, totalQuizzesCompleted) || other.totalQuizzesCompleted == totalQuizzesCompleted)&&(identical(other.averageAccuracy, averageAccuracy) || other.averageAccuracy == averageAccuracy)&&const DeepCollectionEquality().equals(other.topicsFocused, topicsFocused)&&(identical(other.newBadgesEarned, newBadgesEarned) || other.newBadgesEarned == newBadgesEarned)&&(identical(other.coinsEarned, coinsEarned) || other.coinsEarned == coinsEarned)&&(identical(other.weeklyGoalStatus, weeklyGoalStatus) || other.weeklyGoalStatus == weeklyGoalStatus)&&(identical(other.friendsInteracted, friendsInteracted) || other.friendsInteracted == friendsInteracted)&&(identical(other.challengesCompleted, challengesCompleted) || other.challengesCompleted == challengesCompleted)&&const DeepCollectionEquality().equals(other.subjectBreakdown, subjectBreakdown));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,weekStartDate,totalMinutes,totalQuizzesCompleted,averageAccuracy,const DeepCollectionEquality().hash(topicsFocused),newBadgesEarned,coinsEarned,weeklyGoalStatus,friendsInteracted,challengesCompleted,const DeepCollectionEquality().hash(subjectBreakdown));

@override
String toString() {
  return 'WeeklyReport(userId: $userId, weekStartDate: $weekStartDate, totalMinutes: $totalMinutes, totalQuizzesCompleted: $totalQuizzesCompleted, averageAccuracy: $averageAccuracy, topicsFocused: $topicsFocused, newBadgesEarned: $newBadgesEarned, coinsEarned: $coinsEarned, weeklyGoalStatus: $weeklyGoalStatus, friendsInteracted: $friendsInteracted, challengesCompleted: $challengesCompleted, subjectBreakdown: $subjectBreakdown)';
}


}

/// @nodoc
abstract mixin class $WeeklyReportCopyWith<$Res>  {
  factory $WeeklyReportCopyWith(WeeklyReport value, $Res Function(WeeklyReport) _then) = _$WeeklyReportCopyWithImpl;
@useResult
$Res call({
 String userId, DateTime weekStartDate, int totalMinutes, int totalQuizzesCompleted, double averageAccuracy, List<String> topicsFocused, int newBadgesEarned, int coinsEarned, String? weeklyGoalStatus, int? friendsInteracted, int? challengesCompleted, Map<String, int>? subjectBreakdown
});




}
/// @nodoc
class _$WeeklyReportCopyWithImpl<$Res>
    implements $WeeklyReportCopyWith<$Res> {
  _$WeeklyReportCopyWithImpl(this._self, this._then);

  final WeeklyReport _self;
  final $Res Function(WeeklyReport) _then;

/// Create a copy of WeeklyReport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? weekStartDate = null,Object? totalMinutes = null,Object? totalQuizzesCompleted = null,Object? averageAccuracy = null,Object? topicsFocused = null,Object? newBadgesEarned = null,Object? coinsEarned = null,Object? weeklyGoalStatus = freezed,Object? friendsInteracted = freezed,Object? challengesCompleted = freezed,Object? subjectBreakdown = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,weekStartDate: null == weekStartDate ? _self.weekStartDate : weekStartDate // ignore: cast_nullable_to_non_nullable
as DateTime,totalMinutes: null == totalMinutes ? _self.totalMinutes : totalMinutes // ignore: cast_nullable_to_non_nullable
as int,totalQuizzesCompleted: null == totalQuizzesCompleted ? _self.totalQuizzesCompleted : totalQuizzesCompleted // ignore: cast_nullable_to_non_nullable
as int,averageAccuracy: null == averageAccuracy ? _self.averageAccuracy : averageAccuracy // ignore: cast_nullable_to_non_nullable
as double,topicsFocused: null == topicsFocused ? _self.topicsFocused : topicsFocused // ignore: cast_nullable_to_non_nullable
as List<String>,newBadgesEarned: null == newBadgesEarned ? _self.newBadgesEarned : newBadgesEarned // ignore: cast_nullable_to_non_nullable
as int,coinsEarned: null == coinsEarned ? _self.coinsEarned : coinsEarned // ignore: cast_nullable_to_non_nullable
as int,weeklyGoalStatus: freezed == weeklyGoalStatus ? _self.weeklyGoalStatus : weeklyGoalStatus // ignore: cast_nullable_to_non_nullable
as String?,friendsInteracted: freezed == friendsInteracted ? _self.friendsInteracted : friendsInteracted // ignore: cast_nullable_to_non_nullable
as int?,challengesCompleted: freezed == challengesCompleted ? _self.challengesCompleted : challengesCompleted // ignore: cast_nullable_to_non_nullable
as int?,subjectBreakdown: freezed == subjectBreakdown ? _self.subjectBreakdown : subjectBreakdown // ignore: cast_nullable_to_non_nullable
as Map<String, int>?,
  ));
}

}


/// Adds pattern-matching-related methods to [WeeklyReport].
extension WeeklyReportPatterns on WeeklyReport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeeklyReport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeeklyReport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeeklyReport value)  $default,){
final _that = this;
switch (_that) {
case _WeeklyReport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeeklyReport value)?  $default,){
final _that = this;
switch (_that) {
case _WeeklyReport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  DateTime weekStartDate,  int totalMinutes,  int totalQuizzesCompleted,  double averageAccuracy,  List<String> topicsFocused,  int newBadgesEarned,  int coinsEarned,  String? weeklyGoalStatus,  int? friendsInteracted,  int? challengesCompleted,  Map<String, int>? subjectBreakdown)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeeklyReport() when $default != null:
return $default(_that.userId,_that.weekStartDate,_that.totalMinutes,_that.totalQuizzesCompleted,_that.averageAccuracy,_that.topicsFocused,_that.newBadgesEarned,_that.coinsEarned,_that.weeklyGoalStatus,_that.friendsInteracted,_that.challengesCompleted,_that.subjectBreakdown);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  DateTime weekStartDate,  int totalMinutes,  int totalQuizzesCompleted,  double averageAccuracy,  List<String> topicsFocused,  int newBadgesEarned,  int coinsEarned,  String? weeklyGoalStatus,  int? friendsInteracted,  int? challengesCompleted,  Map<String, int>? subjectBreakdown)  $default,) {final _that = this;
switch (_that) {
case _WeeklyReport():
return $default(_that.userId,_that.weekStartDate,_that.totalMinutes,_that.totalQuizzesCompleted,_that.averageAccuracy,_that.topicsFocused,_that.newBadgesEarned,_that.coinsEarned,_that.weeklyGoalStatus,_that.friendsInteracted,_that.challengesCompleted,_that.subjectBreakdown);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  DateTime weekStartDate,  int totalMinutes,  int totalQuizzesCompleted,  double averageAccuracy,  List<String> topicsFocused,  int newBadgesEarned,  int coinsEarned,  String? weeklyGoalStatus,  int? friendsInteracted,  int? challengesCompleted,  Map<String, int>? subjectBreakdown)?  $default,) {final _that = this;
switch (_that) {
case _WeeklyReport() when $default != null:
return $default(_that.userId,_that.weekStartDate,_that.totalMinutes,_that.totalQuizzesCompleted,_that.averageAccuracy,_that.topicsFocused,_that.newBadgesEarned,_that.coinsEarned,_that.weeklyGoalStatus,_that.friendsInteracted,_that.challengesCompleted,_that.subjectBreakdown);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeeklyReport implements WeeklyReport {
  const _WeeklyReport({required this.userId, required this.weekStartDate, required this.totalMinutes, required this.totalQuizzesCompleted, required this.averageAccuracy, required final  List<String> topicsFocused, required this.newBadgesEarned, required this.coinsEarned, this.weeklyGoalStatus, this.friendsInteracted, this.challengesCompleted, final  Map<String, int>? subjectBreakdown}): _topicsFocused = topicsFocused,_subjectBreakdown = subjectBreakdown;
  factory _WeeklyReport.fromJson(Map<String, dynamic> json) => _$WeeklyReportFromJson(json);

@override final  String userId;
@override final  DateTime weekStartDate;
@override final  int totalMinutes;
@override final  int totalQuizzesCompleted;
@override final  double averageAccuracy;
 final  List<String> _topicsFocused;
@override List<String> get topicsFocused {
  if (_topicsFocused is EqualUnmodifiableListView) return _topicsFocused;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topicsFocused);
}

@override final  int newBadgesEarned;
@override final  int coinsEarned;
@override final  String? weeklyGoalStatus;
// 'completed', 'partial', 'missed'
@override final  int? friendsInteracted;
@override final  int? challengesCompleted;
 final  Map<String, int>? _subjectBreakdown;
@override Map<String, int>? get subjectBreakdown {
  final value = _subjectBreakdown;
  if (value == null) return null;
  if (_subjectBreakdown is EqualUnmodifiableMapView) return _subjectBreakdown;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of WeeklyReport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeeklyReportCopyWith<_WeeklyReport> get copyWith => __$WeeklyReportCopyWithImpl<_WeeklyReport>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeeklyReportToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeeklyReport&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.weekStartDate, weekStartDate) || other.weekStartDate == weekStartDate)&&(identical(other.totalMinutes, totalMinutes) || other.totalMinutes == totalMinutes)&&(identical(other.totalQuizzesCompleted, totalQuizzesCompleted) || other.totalQuizzesCompleted == totalQuizzesCompleted)&&(identical(other.averageAccuracy, averageAccuracy) || other.averageAccuracy == averageAccuracy)&&const DeepCollectionEquality().equals(other._topicsFocused, _topicsFocused)&&(identical(other.newBadgesEarned, newBadgesEarned) || other.newBadgesEarned == newBadgesEarned)&&(identical(other.coinsEarned, coinsEarned) || other.coinsEarned == coinsEarned)&&(identical(other.weeklyGoalStatus, weeklyGoalStatus) || other.weeklyGoalStatus == weeklyGoalStatus)&&(identical(other.friendsInteracted, friendsInteracted) || other.friendsInteracted == friendsInteracted)&&(identical(other.challengesCompleted, challengesCompleted) || other.challengesCompleted == challengesCompleted)&&const DeepCollectionEquality().equals(other._subjectBreakdown, _subjectBreakdown));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,weekStartDate,totalMinutes,totalQuizzesCompleted,averageAccuracy,const DeepCollectionEquality().hash(_topicsFocused),newBadgesEarned,coinsEarned,weeklyGoalStatus,friendsInteracted,challengesCompleted,const DeepCollectionEquality().hash(_subjectBreakdown));

@override
String toString() {
  return 'WeeklyReport(userId: $userId, weekStartDate: $weekStartDate, totalMinutes: $totalMinutes, totalQuizzesCompleted: $totalQuizzesCompleted, averageAccuracy: $averageAccuracy, topicsFocused: $topicsFocused, newBadgesEarned: $newBadgesEarned, coinsEarned: $coinsEarned, weeklyGoalStatus: $weeklyGoalStatus, friendsInteracted: $friendsInteracted, challengesCompleted: $challengesCompleted, subjectBreakdown: $subjectBreakdown)';
}


}

/// @nodoc
abstract mixin class _$WeeklyReportCopyWith<$Res> implements $WeeklyReportCopyWith<$Res> {
  factory _$WeeklyReportCopyWith(_WeeklyReport value, $Res Function(_WeeklyReport) _then) = __$WeeklyReportCopyWithImpl;
@override @useResult
$Res call({
 String userId, DateTime weekStartDate, int totalMinutes, int totalQuizzesCompleted, double averageAccuracy, List<String> topicsFocused, int newBadgesEarned, int coinsEarned, String? weeklyGoalStatus, int? friendsInteracted, int? challengesCompleted, Map<String, int>? subjectBreakdown
});




}
/// @nodoc
class __$WeeklyReportCopyWithImpl<$Res>
    implements _$WeeklyReportCopyWith<$Res> {
  __$WeeklyReportCopyWithImpl(this._self, this._then);

  final _WeeklyReport _self;
  final $Res Function(_WeeklyReport) _then;

/// Create a copy of WeeklyReport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? weekStartDate = null,Object? totalMinutes = null,Object? totalQuizzesCompleted = null,Object? averageAccuracy = null,Object? topicsFocused = null,Object? newBadgesEarned = null,Object? coinsEarned = null,Object? weeklyGoalStatus = freezed,Object? friendsInteracted = freezed,Object? challengesCompleted = freezed,Object? subjectBreakdown = freezed,}) {
  return _then(_WeeklyReport(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,weekStartDate: null == weekStartDate ? _self.weekStartDate : weekStartDate // ignore: cast_nullable_to_non_nullable
as DateTime,totalMinutes: null == totalMinutes ? _self.totalMinutes : totalMinutes // ignore: cast_nullable_to_non_nullable
as int,totalQuizzesCompleted: null == totalQuizzesCompleted ? _self.totalQuizzesCompleted : totalQuizzesCompleted // ignore: cast_nullable_to_non_nullable
as int,averageAccuracy: null == averageAccuracy ? _self.averageAccuracy : averageAccuracy // ignore: cast_nullable_to_non_nullable
as double,topicsFocused: null == topicsFocused ? _self._topicsFocused : topicsFocused // ignore: cast_nullable_to_non_nullable
as List<String>,newBadgesEarned: null == newBadgesEarned ? _self.newBadgesEarned : newBadgesEarned // ignore: cast_nullable_to_non_nullable
as int,coinsEarned: null == coinsEarned ? _self.coinsEarned : coinsEarned // ignore: cast_nullable_to_non_nullable
as int,weeklyGoalStatus: freezed == weeklyGoalStatus ? _self.weeklyGoalStatus : weeklyGoalStatus // ignore: cast_nullable_to_non_nullable
as String?,friendsInteracted: freezed == friendsInteracted ? _self.friendsInteracted : friendsInteracted // ignore: cast_nullable_to_non_nullable
as int?,challengesCompleted: freezed == challengesCompleted ? _self.challengesCompleted : challengesCompleted // ignore: cast_nullable_to_non_nullable
as int?,subjectBreakdown: freezed == subjectBreakdown ? _self._subjectBreakdown : subjectBreakdown // ignore: cast_nullable_to_non_nullable
as Map<String, int>?,
  ));
}


}


/// @nodoc
mixin _$MonthlyReport {

 String get userId; int get month;// 1-12
 int get year; int get totalMinutes; int get totalQuizzesCompleted; double get averageAccuracy; int get badgesEarned; int get coinsEarned; int get friendsAdded; String get growthTrend;// 'improving', 'stable', 'declining'
 Map<String, dynamic> get subjectPerformance;// { 'kokugo': { 'accuracy': 85, 'time': 120 } }
 List<String> get achievements; int? get longestStreak;// 最長連続学習日数
 int? get newCharactersUnlocked; double? get improvementRate;// 前月比の改善率（%）
 String? get recommendation;
/// Create a copy of MonthlyReport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MonthlyReportCopyWith<MonthlyReport> get copyWith => _$MonthlyReportCopyWithImpl<MonthlyReport>(this as MonthlyReport, _$identity);

  /// Serializes this MonthlyReport to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MonthlyReport&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.month, month) || other.month == month)&&(identical(other.year, year) || other.year == year)&&(identical(other.totalMinutes, totalMinutes) || other.totalMinutes == totalMinutes)&&(identical(other.totalQuizzesCompleted, totalQuizzesCompleted) || other.totalQuizzesCompleted == totalQuizzesCompleted)&&(identical(other.averageAccuracy, averageAccuracy) || other.averageAccuracy == averageAccuracy)&&(identical(other.badgesEarned, badgesEarned) || other.badgesEarned == badgesEarned)&&(identical(other.coinsEarned, coinsEarned) || other.coinsEarned == coinsEarned)&&(identical(other.friendsAdded, friendsAdded) || other.friendsAdded == friendsAdded)&&(identical(other.growthTrend, growthTrend) || other.growthTrend == growthTrend)&&const DeepCollectionEquality().equals(other.subjectPerformance, subjectPerformance)&&const DeepCollectionEquality().equals(other.achievements, achievements)&&(identical(other.longestStreak, longestStreak) || other.longestStreak == longestStreak)&&(identical(other.newCharactersUnlocked, newCharactersUnlocked) || other.newCharactersUnlocked == newCharactersUnlocked)&&(identical(other.improvementRate, improvementRate) || other.improvementRate == improvementRate)&&(identical(other.recommendation, recommendation) || other.recommendation == recommendation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,month,year,totalMinutes,totalQuizzesCompleted,averageAccuracy,badgesEarned,coinsEarned,friendsAdded,growthTrend,const DeepCollectionEquality().hash(subjectPerformance),const DeepCollectionEquality().hash(achievements),longestStreak,newCharactersUnlocked,improvementRate,recommendation);

@override
String toString() {
  return 'MonthlyReport(userId: $userId, month: $month, year: $year, totalMinutes: $totalMinutes, totalQuizzesCompleted: $totalQuizzesCompleted, averageAccuracy: $averageAccuracy, badgesEarned: $badgesEarned, coinsEarned: $coinsEarned, friendsAdded: $friendsAdded, growthTrend: $growthTrend, subjectPerformance: $subjectPerformance, achievements: $achievements, longestStreak: $longestStreak, newCharactersUnlocked: $newCharactersUnlocked, improvementRate: $improvementRate, recommendation: $recommendation)';
}


}

/// @nodoc
abstract mixin class $MonthlyReportCopyWith<$Res>  {
  factory $MonthlyReportCopyWith(MonthlyReport value, $Res Function(MonthlyReport) _then) = _$MonthlyReportCopyWithImpl;
@useResult
$Res call({
 String userId, int month, int year, int totalMinutes, int totalQuizzesCompleted, double averageAccuracy, int badgesEarned, int coinsEarned, int friendsAdded, String growthTrend, Map<String, dynamic> subjectPerformance, List<String> achievements, int? longestStreak, int? newCharactersUnlocked, double? improvementRate, String? recommendation
});




}
/// @nodoc
class _$MonthlyReportCopyWithImpl<$Res>
    implements $MonthlyReportCopyWith<$Res> {
  _$MonthlyReportCopyWithImpl(this._self, this._then);

  final MonthlyReport _self;
  final $Res Function(MonthlyReport) _then;

/// Create a copy of MonthlyReport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? month = null,Object? year = null,Object? totalMinutes = null,Object? totalQuizzesCompleted = null,Object? averageAccuracy = null,Object? badgesEarned = null,Object? coinsEarned = null,Object? friendsAdded = null,Object? growthTrend = null,Object? subjectPerformance = null,Object? achievements = null,Object? longestStreak = freezed,Object? newCharactersUnlocked = freezed,Object? improvementRate = freezed,Object? recommendation = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,totalMinutes: null == totalMinutes ? _self.totalMinutes : totalMinutes // ignore: cast_nullable_to_non_nullable
as int,totalQuizzesCompleted: null == totalQuizzesCompleted ? _self.totalQuizzesCompleted : totalQuizzesCompleted // ignore: cast_nullable_to_non_nullable
as int,averageAccuracy: null == averageAccuracy ? _self.averageAccuracy : averageAccuracy // ignore: cast_nullable_to_non_nullable
as double,badgesEarned: null == badgesEarned ? _self.badgesEarned : badgesEarned // ignore: cast_nullable_to_non_nullable
as int,coinsEarned: null == coinsEarned ? _self.coinsEarned : coinsEarned // ignore: cast_nullable_to_non_nullable
as int,friendsAdded: null == friendsAdded ? _self.friendsAdded : friendsAdded // ignore: cast_nullable_to_non_nullable
as int,growthTrend: null == growthTrend ? _self.growthTrend : growthTrend // ignore: cast_nullable_to_non_nullable
as String,subjectPerformance: null == subjectPerformance ? _self.subjectPerformance : subjectPerformance // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,achievements: null == achievements ? _self.achievements : achievements // ignore: cast_nullable_to_non_nullable
as List<String>,longestStreak: freezed == longestStreak ? _self.longestStreak : longestStreak // ignore: cast_nullable_to_non_nullable
as int?,newCharactersUnlocked: freezed == newCharactersUnlocked ? _self.newCharactersUnlocked : newCharactersUnlocked // ignore: cast_nullable_to_non_nullable
as int?,improvementRate: freezed == improvementRate ? _self.improvementRate : improvementRate // ignore: cast_nullable_to_non_nullable
as double?,recommendation: freezed == recommendation ? _self.recommendation : recommendation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MonthlyReport].
extension MonthlyReportPatterns on MonthlyReport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MonthlyReport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MonthlyReport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MonthlyReport value)  $default,){
final _that = this;
switch (_that) {
case _MonthlyReport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MonthlyReport value)?  $default,){
final _that = this;
switch (_that) {
case _MonthlyReport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  int month,  int year,  int totalMinutes,  int totalQuizzesCompleted,  double averageAccuracy,  int badgesEarned,  int coinsEarned,  int friendsAdded,  String growthTrend,  Map<String, dynamic> subjectPerformance,  List<String> achievements,  int? longestStreak,  int? newCharactersUnlocked,  double? improvementRate,  String? recommendation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MonthlyReport() when $default != null:
return $default(_that.userId,_that.month,_that.year,_that.totalMinutes,_that.totalQuizzesCompleted,_that.averageAccuracy,_that.badgesEarned,_that.coinsEarned,_that.friendsAdded,_that.growthTrend,_that.subjectPerformance,_that.achievements,_that.longestStreak,_that.newCharactersUnlocked,_that.improvementRate,_that.recommendation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  int month,  int year,  int totalMinutes,  int totalQuizzesCompleted,  double averageAccuracy,  int badgesEarned,  int coinsEarned,  int friendsAdded,  String growthTrend,  Map<String, dynamic> subjectPerformance,  List<String> achievements,  int? longestStreak,  int? newCharactersUnlocked,  double? improvementRate,  String? recommendation)  $default,) {final _that = this;
switch (_that) {
case _MonthlyReport():
return $default(_that.userId,_that.month,_that.year,_that.totalMinutes,_that.totalQuizzesCompleted,_that.averageAccuracy,_that.badgesEarned,_that.coinsEarned,_that.friendsAdded,_that.growthTrend,_that.subjectPerformance,_that.achievements,_that.longestStreak,_that.newCharactersUnlocked,_that.improvementRate,_that.recommendation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  int month,  int year,  int totalMinutes,  int totalQuizzesCompleted,  double averageAccuracy,  int badgesEarned,  int coinsEarned,  int friendsAdded,  String growthTrend,  Map<String, dynamic> subjectPerformance,  List<String> achievements,  int? longestStreak,  int? newCharactersUnlocked,  double? improvementRate,  String? recommendation)?  $default,) {final _that = this;
switch (_that) {
case _MonthlyReport() when $default != null:
return $default(_that.userId,_that.month,_that.year,_that.totalMinutes,_that.totalQuizzesCompleted,_that.averageAccuracy,_that.badgesEarned,_that.coinsEarned,_that.friendsAdded,_that.growthTrend,_that.subjectPerformance,_that.achievements,_that.longestStreak,_that.newCharactersUnlocked,_that.improvementRate,_that.recommendation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MonthlyReport implements MonthlyReport {
  const _MonthlyReport({required this.userId, required this.month, required this.year, required this.totalMinutes, required this.totalQuizzesCompleted, required this.averageAccuracy, required this.badgesEarned, required this.coinsEarned, required this.friendsAdded, required this.growthTrend, required final  Map<String, dynamic> subjectPerformance, required final  List<String> achievements, this.longestStreak, this.newCharactersUnlocked, this.improvementRate, this.recommendation}): _subjectPerformance = subjectPerformance,_achievements = achievements;
  factory _MonthlyReport.fromJson(Map<String, dynamic> json) => _$MonthlyReportFromJson(json);

@override final  String userId;
@override final  int month;
// 1-12
@override final  int year;
@override final  int totalMinutes;
@override final  int totalQuizzesCompleted;
@override final  double averageAccuracy;
@override final  int badgesEarned;
@override final  int coinsEarned;
@override final  int friendsAdded;
@override final  String growthTrend;
// 'improving', 'stable', 'declining'
 final  Map<String, dynamic> _subjectPerformance;
// 'improving', 'stable', 'declining'
@override Map<String, dynamic> get subjectPerformance {
  if (_subjectPerformance is EqualUnmodifiableMapView) return _subjectPerformance;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_subjectPerformance);
}

// { 'kokugo': { 'accuracy': 85, 'time': 120 } }
 final  List<String> _achievements;
// { 'kokugo': { 'accuracy': 85, 'time': 120 } }
@override List<String> get achievements {
  if (_achievements is EqualUnmodifiableListView) return _achievements;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_achievements);
}

@override final  int? longestStreak;
// 最長連続学習日数
@override final  int? newCharactersUnlocked;
@override final  double? improvementRate;
// 前月比の改善率（%）
@override final  String? recommendation;

/// Create a copy of MonthlyReport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MonthlyReportCopyWith<_MonthlyReport> get copyWith => __$MonthlyReportCopyWithImpl<_MonthlyReport>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MonthlyReportToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MonthlyReport&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.month, month) || other.month == month)&&(identical(other.year, year) || other.year == year)&&(identical(other.totalMinutes, totalMinutes) || other.totalMinutes == totalMinutes)&&(identical(other.totalQuizzesCompleted, totalQuizzesCompleted) || other.totalQuizzesCompleted == totalQuizzesCompleted)&&(identical(other.averageAccuracy, averageAccuracy) || other.averageAccuracy == averageAccuracy)&&(identical(other.badgesEarned, badgesEarned) || other.badgesEarned == badgesEarned)&&(identical(other.coinsEarned, coinsEarned) || other.coinsEarned == coinsEarned)&&(identical(other.friendsAdded, friendsAdded) || other.friendsAdded == friendsAdded)&&(identical(other.growthTrend, growthTrend) || other.growthTrend == growthTrend)&&const DeepCollectionEquality().equals(other._subjectPerformance, _subjectPerformance)&&const DeepCollectionEquality().equals(other._achievements, _achievements)&&(identical(other.longestStreak, longestStreak) || other.longestStreak == longestStreak)&&(identical(other.newCharactersUnlocked, newCharactersUnlocked) || other.newCharactersUnlocked == newCharactersUnlocked)&&(identical(other.improvementRate, improvementRate) || other.improvementRate == improvementRate)&&(identical(other.recommendation, recommendation) || other.recommendation == recommendation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,month,year,totalMinutes,totalQuizzesCompleted,averageAccuracy,badgesEarned,coinsEarned,friendsAdded,growthTrend,const DeepCollectionEquality().hash(_subjectPerformance),const DeepCollectionEquality().hash(_achievements),longestStreak,newCharactersUnlocked,improvementRate,recommendation);

@override
String toString() {
  return 'MonthlyReport(userId: $userId, month: $month, year: $year, totalMinutes: $totalMinutes, totalQuizzesCompleted: $totalQuizzesCompleted, averageAccuracy: $averageAccuracy, badgesEarned: $badgesEarned, coinsEarned: $coinsEarned, friendsAdded: $friendsAdded, growthTrend: $growthTrend, subjectPerformance: $subjectPerformance, achievements: $achievements, longestStreak: $longestStreak, newCharactersUnlocked: $newCharactersUnlocked, improvementRate: $improvementRate, recommendation: $recommendation)';
}


}

/// @nodoc
abstract mixin class _$MonthlyReportCopyWith<$Res> implements $MonthlyReportCopyWith<$Res> {
  factory _$MonthlyReportCopyWith(_MonthlyReport value, $Res Function(_MonthlyReport) _then) = __$MonthlyReportCopyWithImpl;
@override @useResult
$Res call({
 String userId, int month, int year, int totalMinutes, int totalQuizzesCompleted, double averageAccuracy, int badgesEarned, int coinsEarned, int friendsAdded, String growthTrend, Map<String, dynamic> subjectPerformance, List<String> achievements, int? longestStreak, int? newCharactersUnlocked, double? improvementRate, String? recommendation
});




}
/// @nodoc
class __$MonthlyReportCopyWithImpl<$Res>
    implements _$MonthlyReportCopyWith<$Res> {
  __$MonthlyReportCopyWithImpl(this._self, this._then);

  final _MonthlyReport _self;
  final $Res Function(_MonthlyReport) _then;

/// Create a copy of MonthlyReport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? month = null,Object? year = null,Object? totalMinutes = null,Object? totalQuizzesCompleted = null,Object? averageAccuracy = null,Object? badgesEarned = null,Object? coinsEarned = null,Object? friendsAdded = null,Object? growthTrend = null,Object? subjectPerformance = null,Object? achievements = null,Object? longestStreak = freezed,Object? newCharactersUnlocked = freezed,Object? improvementRate = freezed,Object? recommendation = freezed,}) {
  return _then(_MonthlyReport(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,totalMinutes: null == totalMinutes ? _self.totalMinutes : totalMinutes // ignore: cast_nullable_to_non_nullable
as int,totalQuizzesCompleted: null == totalQuizzesCompleted ? _self.totalQuizzesCompleted : totalQuizzesCompleted // ignore: cast_nullable_to_non_nullable
as int,averageAccuracy: null == averageAccuracy ? _self.averageAccuracy : averageAccuracy // ignore: cast_nullable_to_non_nullable
as double,badgesEarned: null == badgesEarned ? _self.badgesEarned : badgesEarned // ignore: cast_nullable_to_non_nullable
as int,coinsEarned: null == coinsEarned ? _self.coinsEarned : coinsEarned // ignore: cast_nullable_to_non_nullable
as int,friendsAdded: null == friendsAdded ? _self.friendsAdded : friendsAdded // ignore: cast_nullable_to_non_nullable
as int,growthTrend: null == growthTrend ? _self.growthTrend : growthTrend // ignore: cast_nullable_to_non_nullable
as String,subjectPerformance: null == subjectPerformance ? _self._subjectPerformance : subjectPerformance // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,achievements: null == achievements ? _self._achievements : achievements // ignore: cast_nullable_to_non_nullable
as List<String>,longestStreak: freezed == longestStreak ? _self.longestStreak : longestStreak // ignore: cast_nullable_to_non_nullable
as int?,newCharactersUnlocked: freezed == newCharactersUnlocked ? _self.newCharactersUnlocked : newCharactersUnlocked // ignore: cast_nullable_to_non_nullable
as int?,improvementRate: freezed == improvementRate ? _self.improvementRate : improvementRate // ignore: cast_nullable_to_non_nullable
as double?,recommendation: freezed == recommendation ? _self.recommendation : recommendation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$LearningGoal {

 String get userId; String get goalId; String get goalType;// 'daily_time', 'quizzes', 'accuracy', 'streak'
 int get targetValue; DateTime get startDate; DateTime? get deadline; int get currentProgress; bool get isCompleted; DateTime? get completedAt; GoalStatus? get status; String? get description; int? get rewards;// 達成時の報酬コイン
 double? get difficulty;
/// Create a copy of LearningGoal
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LearningGoalCopyWith<LearningGoal> get copyWith => _$LearningGoalCopyWithImpl<LearningGoal>(this as LearningGoal, _$identity);

  /// Serializes this LearningGoal to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LearningGoal&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.goalId, goalId) || other.goalId == goalId)&&(identical(other.goalType, goalType) || other.goalType == goalType)&&(identical(other.targetValue, targetValue) || other.targetValue == targetValue)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.deadline, deadline) || other.deadline == deadline)&&(identical(other.currentProgress, currentProgress) || other.currentProgress == currentProgress)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.description, description) || other.description == description)&&(identical(other.rewards, rewards) || other.rewards == rewards)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,goalId,goalType,targetValue,startDate,deadline,currentProgress,isCompleted,completedAt,status,description,rewards,difficulty);

@override
String toString() {
  return 'LearningGoal(userId: $userId, goalId: $goalId, goalType: $goalType, targetValue: $targetValue, startDate: $startDate, deadline: $deadline, currentProgress: $currentProgress, isCompleted: $isCompleted, completedAt: $completedAt, status: $status, description: $description, rewards: $rewards, difficulty: $difficulty)';
}


}

/// @nodoc
abstract mixin class $LearningGoalCopyWith<$Res>  {
  factory $LearningGoalCopyWith(LearningGoal value, $Res Function(LearningGoal) _then) = _$LearningGoalCopyWithImpl;
@useResult
$Res call({
 String userId, String goalId, String goalType, int targetValue, DateTime startDate, DateTime? deadline, int currentProgress, bool isCompleted, DateTime? completedAt, GoalStatus? status, String? description, int? rewards, double? difficulty
});




}
/// @nodoc
class _$LearningGoalCopyWithImpl<$Res>
    implements $LearningGoalCopyWith<$Res> {
  _$LearningGoalCopyWithImpl(this._self, this._then);

  final LearningGoal _self;
  final $Res Function(LearningGoal) _then;

/// Create a copy of LearningGoal
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? goalId = null,Object? goalType = null,Object? targetValue = null,Object? startDate = null,Object? deadline = freezed,Object? currentProgress = null,Object? isCompleted = null,Object? completedAt = freezed,Object? status = freezed,Object? description = freezed,Object? rewards = freezed,Object? difficulty = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,goalId: null == goalId ? _self.goalId : goalId // ignore: cast_nullable_to_non_nullable
as String,goalType: null == goalType ? _self.goalType : goalType // ignore: cast_nullable_to_non_nullable
as String,targetValue: null == targetValue ? _self.targetValue : targetValue // ignore: cast_nullable_to_non_nullable
as int,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,deadline: freezed == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as DateTime?,currentProgress: null == currentProgress ? _self.currentProgress : currentProgress // ignore: cast_nullable_to_non_nullable
as int,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GoalStatus?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,rewards: freezed == rewards ? _self.rewards : rewards // ignore: cast_nullable_to_non_nullable
as int?,difficulty: freezed == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [LearningGoal].
extension LearningGoalPatterns on LearningGoal {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LearningGoal value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LearningGoal() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LearningGoal value)  $default,){
final _that = this;
switch (_that) {
case _LearningGoal():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LearningGoal value)?  $default,){
final _that = this;
switch (_that) {
case _LearningGoal() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String goalId,  String goalType,  int targetValue,  DateTime startDate,  DateTime? deadline,  int currentProgress,  bool isCompleted,  DateTime? completedAt,  GoalStatus? status,  String? description,  int? rewards,  double? difficulty)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LearningGoal() when $default != null:
return $default(_that.userId,_that.goalId,_that.goalType,_that.targetValue,_that.startDate,_that.deadline,_that.currentProgress,_that.isCompleted,_that.completedAt,_that.status,_that.description,_that.rewards,_that.difficulty);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String goalId,  String goalType,  int targetValue,  DateTime startDate,  DateTime? deadline,  int currentProgress,  bool isCompleted,  DateTime? completedAt,  GoalStatus? status,  String? description,  int? rewards,  double? difficulty)  $default,) {final _that = this;
switch (_that) {
case _LearningGoal():
return $default(_that.userId,_that.goalId,_that.goalType,_that.targetValue,_that.startDate,_that.deadline,_that.currentProgress,_that.isCompleted,_that.completedAt,_that.status,_that.description,_that.rewards,_that.difficulty);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String goalId,  String goalType,  int targetValue,  DateTime startDate,  DateTime? deadline,  int currentProgress,  bool isCompleted,  DateTime? completedAt,  GoalStatus? status,  String? description,  int? rewards,  double? difficulty)?  $default,) {final _that = this;
switch (_that) {
case _LearningGoal() when $default != null:
return $default(_that.userId,_that.goalId,_that.goalType,_that.targetValue,_that.startDate,_that.deadline,_that.currentProgress,_that.isCompleted,_that.completedAt,_that.status,_that.description,_that.rewards,_that.difficulty);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LearningGoal implements LearningGoal {
  const _LearningGoal({required this.userId, required this.goalId, required this.goalType, required this.targetValue, required this.startDate, this.deadline, required this.currentProgress, required this.isCompleted, this.completedAt, this.status, this.description, this.rewards, this.difficulty});
  factory _LearningGoal.fromJson(Map<String, dynamic> json) => _$LearningGoalFromJson(json);

@override final  String userId;
@override final  String goalId;
@override final  String goalType;
// 'daily_time', 'quizzes', 'accuracy', 'streak'
@override final  int targetValue;
@override final  DateTime startDate;
@override final  DateTime? deadline;
@override final  int currentProgress;
@override final  bool isCompleted;
@override final  DateTime? completedAt;
@override final  GoalStatus? status;
@override final  String? description;
@override final  int? rewards;
// 達成時の報酬コイン
@override final  double? difficulty;

/// Create a copy of LearningGoal
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LearningGoalCopyWith<_LearningGoal> get copyWith => __$LearningGoalCopyWithImpl<_LearningGoal>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LearningGoalToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LearningGoal&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.goalId, goalId) || other.goalId == goalId)&&(identical(other.goalType, goalType) || other.goalType == goalType)&&(identical(other.targetValue, targetValue) || other.targetValue == targetValue)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.deadline, deadline) || other.deadline == deadline)&&(identical(other.currentProgress, currentProgress) || other.currentProgress == currentProgress)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.description, description) || other.description == description)&&(identical(other.rewards, rewards) || other.rewards == rewards)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,goalId,goalType,targetValue,startDate,deadline,currentProgress,isCompleted,completedAt,status,description,rewards,difficulty);

@override
String toString() {
  return 'LearningGoal(userId: $userId, goalId: $goalId, goalType: $goalType, targetValue: $targetValue, startDate: $startDate, deadline: $deadline, currentProgress: $currentProgress, isCompleted: $isCompleted, completedAt: $completedAt, status: $status, description: $description, rewards: $rewards, difficulty: $difficulty)';
}


}

/// @nodoc
abstract mixin class _$LearningGoalCopyWith<$Res> implements $LearningGoalCopyWith<$Res> {
  factory _$LearningGoalCopyWith(_LearningGoal value, $Res Function(_LearningGoal) _then) = __$LearningGoalCopyWithImpl;
@override @useResult
$Res call({
 String userId, String goalId, String goalType, int targetValue, DateTime startDate, DateTime? deadline, int currentProgress, bool isCompleted, DateTime? completedAt, GoalStatus? status, String? description, int? rewards, double? difficulty
});




}
/// @nodoc
class __$LearningGoalCopyWithImpl<$Res>
    implements _$LearningGoalCopyWith<$Res> {
  __$LearningGoalCopyWithImpl(this._self, this._then);

  final _LearningGoal _self;
  final $Res Function(_LearningGoal) _then;

/// Create a copy of LearningGoal
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? goalId = null,Object? goalType = null,Object? targetValue = null,Object? startDate = null,Object? deadline = freezed,Object? currentProgress = null,Object? isCompleted = null,Object? completedAt = freezed,Object? status = freezed,Object? description = freezed,Object? rewards = freezed,Object? difficulty = freezed,}) {
  return _then(_LearningGoal(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,goalId: null == goalId ? _self.goalId : goalId // ignore: cast_nullable_to_non_nullable
as String,goalType: null == goalType ? _self.goalType : goalType // ignore: cast_nullable_to_non_nullable
as String,targetValue: null == targetValue ? _self.targetValue : targetValue // ignore: cast_nullable_to_non_nullable
as int,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,deadline: freezed == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as DateTime?,currentProgress: null == currentProgress ? _self.currentProgress : currentProgress // ignore: cast_nullable_to_non_nullable
as int,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GoalStatus?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,rewards: freezed == rewards ? _self.rewards : rewards // ignore: cast_nullable_to_non_nullable
as int?,difficulty: freezed == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$AnalyticsConfig {

 bool get enableMetricsTracking; bool get enableReportGeneration; List<String> get enabledMetrics; int get reportGenerationIntervalDays;// 7 or 30
 Map<String, int> get goalsConfig;// { 'daily_time': 30, 'quizzes': 5 }
 bool? get enableSegmentation; bool? get enableAIPredictions; Map<String, dynamic>? get segmentThresholds;
/// Create a copy of AnalyticsConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalyticsConfigCopyWith<AnalyticsConfig> get copyWith => _$AnalyticsConfigCopyWithImpl<AnalyticsConfig>(this as AnalyticsConfig, _$identity);

  /// Serializes this AnalyticsConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalyticsConfig&&(identical(other.enableMetricsTracking, enableMetricsTracking) || other.enableMetricsTracking == enableMetricsTracking)&&(identical(other.enableReportGeneration, enableReportGeneration) || other.enableReportGeneration == enableReportGeneration)&&const DeepCollectionEquality().equals(other.enabledMetrics, enabledMetrics)&&(identical(other.reportGenerationIntervalDays, reportGenerationIntervalDays) || other.reportGenerationIntervalDays == reportGenerationIntervalDays)&&const DeepCollectionEquality().equals(other.goalsConfig, goalsConfig)&&(identical(other.enableSegmentation, enableSegmentation) || other.enableSegmentation == enableSegmentation)&&(identical(other.enableAIPredictions, enableAIPredictions) || other.enableAIPredictions == enableAIPredictions)&&const DeepCollectionEquality().equals(other.segmentThresholds, segmentThresholds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enableMetricsTracking,enableReportGeneration,const DeepCollectionEquality().hash(enabledMetrics),reportGenerationIntervalDays,const DeepCollectionEquality().hash(goalsConfig),enableSegmentation,enableAIPredictions,const DeepCollectionEquality().hash(segmentThresholds));

@override
String toString() {
  return 'AnalyticsConfig(enableMetricsTracking: $enableMetricsTracking, enableReportGeneration: $enableReportGeneration, enabledMetrics: $enabledMetrics, reportGenerationIntervalDays: $reportGenerationIntervalDays, goalsConfig: $goalsConfig, enableSegmentation: $enableSegmentation, enableAIPredictions: $enableAIPredictions, segmentThresholds: $segmentThresholds)';
}


}

/// @nodoc
abstract mixin class $AnalyticsConfigCopyWith<$Res>  {
  factory $AnalyticsConfigCopyWith(AnalyticsConfig value, $Res Function(AnalyticsConfig) _then) = _$AnalyticsConfigCopyWithImpl;
@useResult
$Res call({
 bool enableMetricsTracking, bool enableReportGeneration, List<String> enabledMetrics, int reportGenerationIntervalDays, Map<String, int> goalsConfig, bool? enableSegmentation, bool? enableAIPredictions, Map<String, dynamic>? segmentThresholds
});




}
/// @nodoc
class _$AnalyticsConfigCopyWithImpl<$Res>
    implements $AnalyticsConfigCopyWith<$Res> {
  _$AnalyticsConfigCopyWithImpl(this._self, this._then);

  final AnalyticsConfig _self;
  final $Res Function(AnalyticsConfig) _then;

/// Create a copy of AnalyticsConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? enableMetricsTracking = null,Object? enableReportGeneration = null,Object? enabledMetrics = null,Object? reportGenerationIntervalDays = null,Object? goalsConfig = null,Object? enableSegmentation = freezed,Object? enableAIPredictions = freezed,Object? segmentThresholds = freezed,}) {
  return _then(_self.copyWith(
enableMetricsTracking: null == enableMetricsTracking ? _self.enableMetricsTracking : enableMetricsTracking // ignore: cast_nullable_to_non_nullable
as bool,enableReportGeneration: null == enableReportGeneration ? _self.enableReportGeneration : enableReportGeneration // ignore: cast_nullable_to_non_nullable
as bool,enabledMetrics: null == enabledMetrics ? _self.enabledMetrics : enabledMetrics // ignore: cast_nullable_to_non_nullable
as List<String>,reportGenerationIntervalDays: null == reportGenerationIntervalDays ? _self.reportGenerationIntervalDays : reportGenerationIntervalDays // ignore: cast_nullable_to_non_nullable
as int,goalsConfig: null == goalsConfig ? _self.goalsConfig : goalsConfig // ignore: cast_nullable_to_non_nullable
as Map<String, int>,enableSegmentation: freezed == enableSegmentation ? _self.enableSegmentation : enableSegmentation // ignore: cast_nullable_to_non_nullable
as bool?,enableAIPredictions: freezed == enableAIPredictions ? _self.enableAIPredictions : enableAIPredictions // ignore: cast_nullable_to_non_nullable
as bool?,segmentThresholds: freezed == segmentThresholds ? _self.segmentThresholds : segmentThresholds // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AnalyticsConfig].
extension AnalyticsConfigPatterns on AnalyticsConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnalyticsConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnalyticsConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnalyticsConfig value)  $default,){
final _that = this;
switch (_that) {
case _AnalyticsConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnalyticsConfig value)?  $default,){
final _that = this;
switch (_that) {
case _AnalyticsConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool enableMetricsTracking,  bool enableReportGeneration,  List<String> enabledMetrics,  int reportGenerationIntervalDays,  Map<String, int> goalsConfig,  bool? enableSegmentation,  bool? enableAIPredictions,  Map<String, dynamic>? segmentThresholds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalyticsConfig() when $default != null:
return $default(_that.enableMetricsTracking,_that.enableReportGeneration,_that.enabledMetrics,_that.reportGenerationIntervalDays,_that.goalsConfig,_that.enableSegmentation,_that.enableAIPredictions,_that.segmentThresholds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool enableMetricsTracking,  bool enableReportGeneration,  List<String> enabledMetrics,  int reportGenerationIntervalDays,  Map<String, int> goalsConfig,  bool? enableSegmentation,  bool? enableAIPredictions,  Map<String, dynamic>? segmentThresholds)  $default,) {final _that = this;
switch (_that) {
case _AnalyticsConfig():
return $default(_that.enableMetricsTracking,_that.enableReportGeneration,_that.enabledMetrics,_that.reportGenerationIntervalDays,_that.goalsConfig,_that.enableSegmentation,_that.enableAIPredictions,_that.segmentThresholds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool enableMetricsTracking,  bool enableReportGeneration,  List<String> enabledMetrics,  int reportGenerationIntervalDays,  Map<String, int> goalsConfig,  bool? enableSegmentation,  bool? enableAIPredictions,  Map<String, dynamic>? segmentThresholds)?  $default,) {final _that = this;
switch (_that) {
case _AnalyticsConfig() when $default != null:
return $default(_that.enableMetricsTracking,_that.enableReportGeneration,_that.enabledMetrics,_that.reportGenerationIntervalDays,_that.goalsConfig,_that.enableSegmentation,_that.enableAIPredictions,_that.segmentThresholds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnalyticsConfig implements AnalyticsConfig {
  const _AnalyticsConfig({required this.enableMetricsTracking, required this.enableReportGeneration, required final  List<String> enabledMetrics, required this.reportGenerationIntervalDays, required final  Map<String, int> goalsConfig, this.enableSegmentation, this.enableAIPredictions, final  Map<String, dynamic>? segmentThresholds}): _enabledMetrics = enabledMetrics,_goalsConfig = goalsConfig,_segmentThresholds = segmentThresholds;
  factory _AnalyticsConfig.fromJson(Map<String, dynamic> json) => _$AnalyticsConfigFromJson(json);

@override final  bool enableMetricsTracking;
@override final  bool enableReportGeneration;
 final  List<String> _enabledMetrics;
@override List<String> get enabledMetrics {
  if (_enabledMetrics is EqualUnmodifiableListView) return _enabledMetrics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_enabledMetrics);
}

@override final  int reportGenerationIntervalDays;
// 7 or 30
 final  Map<String, int> _goalsConfig;
// 7 or 30
@override Map<String, int> get goalsConfig {
  if (_goalsConfig is EqualUnmodifiableMapView) return _goalsConfig;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_goalsConfig);
}

// { 'daily_time': 30, 'quizzes': 5 }
@override final  bool? enableSegmentation;
@override final  bool? enableAIPredictions;
 final  Map<String, dynamic>? _segmentThresholds;
@override Map<String, dynamic>? get segmentThresholds {
  final value = _segmentThresholds;
  if (value == null) return null;
  if (_segmentThresholds is EqualUnmodifiableMapView) return _segmentThresholds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of AnalyticsConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalyticsConfigCopyWith<_AnalyticsConfig> get copyWith => __$AnalyticsConfigCopyWithImpl<_AnalyticsConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnalyticsConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalyticsConfig&&(identical(other.enableMetricsTracking, enableMetricsTracking) || other.enableMetricsTracking == enableMetricsTracking)&&(identical(other.enableReportGeneration, enableReportGeneration) || other.enableReportGeneration == enableReportGeneration)&&const DeepCollectionEquality().equals(other._enabledMetrics, _enabledMetrics)&&(identical(other.reportGenerationIntervalDays, reportGenerationIntervalDays) || other.reportGenerationIntervalDays == reportGenerationIntervalDays)&&const DeepCollectionEquality().equals(other._goalsConfig, _goalsConfig)&&(identical(other.enableSegmentation, enableSegmentation) || other.enableSegmentation == enableSegmentation)&&(identical(other.enableAIPredictions, enableAIPredictions) || other.enableAIPredictions == enableAIPredictions)&&const DeepCollectionEquality().equals(other._segmentThresholds, _segmentThresholds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enableMetricsTracking,enableReportGeneration,const DeepCollectionEquality().hash(_enabledMetrics),reportGenerationIntervalDays,const DeepCollectionEquality().hash(_goalsConfig),enableSegmentation,enableAIPredictions,const DeepCollectionEquality().hash(_segmentThresholds));

@override
String toString() {
  return 'AnalyticsConfig(enableMetricsTracking: $enableMetricsTracking, enableReportGeneration: $enableReportGeneration, enabledMetrics: $enabledMetrics, reportGenerationIntervalDays: $reportGenerationIntervalDays, goalsConfig: $goalsConfig, enableSegmentation: $enableSegmentation, enableAIPredictions: $enableAIPredictions, segmentThresholds: $segmentThresholds)';
}


}

/// @nodoc
abstract mixin class _$AnalyticsConfigCopyWith<$Res> implements $AnalyticsConfigCopyWith<$Res> {
  factory _$AnalyticsConfigCopyWith(_AnalyticsConfig value, $Res Function(_AnalyticsConfig) _then) = __$AnalyticsConfigCopyWithImpl;
@override @useResult
$Res call({
 bool enableMetricsTracking, bool enableReportGeneration, List<String> enabledMetrics, int reportGenerationIntervalDays, Map<String, int> goalsConfig, bool? enableSegmentation, bool? enableAIPredictions, Map<String, dynamic>? segmentThresholds
});




}
/// @nodoc
class __$AnalyticsConfigCopyWithImpl<$Res>
    implements _$AnalyticsConfigCopyWith<$Res> {
  __$AnalyticsConfigCopyWithImpl(this._self, this._then);

  final _AnalyticsConfig _self;
  final $Res Function(_AnalyticsConfig) _then;

/// Create a copy of AnalyticsConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? enableMetricsTracking = null,Object? enableReportGeneration = null,Object? enabledMetrics = null,Object? reportGenerationIntervalDays = null,Object? goalsConfig = null,Object? enableSegmentation = freezed,Object? enableAIPredictions = freezed,Object? segmentThresholds = freezed,}) {
  return _then(_AnalyticsConfig(
enableMetricsTracking: null == enableMetricsTracking ? _self.enableMetricsTracking : enableMetricsTracking // ignore: cast_nullable_to_non_nullable
as bool,enableReportGeneration: null == enableReportGeneration ? _self.enableReportGeneration : enableReportGeneration // ignore: cast_nullable_to_non_nullable
as bool,enabledMetrics: null == enabledMetrics ? _self._enabledMetrics : enabledMetrics // ignore: cast_nullable_to_non_nullable
as List<String>,reportGenerationIntervalDays: null == reportGenerationIntervalDays ? _self.reportGenerationIntervalDays : reportGenerationIntervalDays // ignore: cast_nullable_to_non_nullable
as int,goalsConfig: null == goalsConfig ? _self._goalsConfig : goalsConfig // ignore: cast_nullable_to_non_nullable
as Map<String, int>,enableSegmentation: freezed == enableSegmentation ? _self.enableSegmentation : enableSegmentation // ignore: cast_nullable_to_non_nullable
as bool?,enableAIPredictions: freezed == enableAIPredictions ? _self.enableAIPredictions : enableAIPredictions // ignore: cast_nullable_to_non_nullable
as bool?,segmentThresholds: freezed == segmentThresholds ? _self._segmentThresholds : segmentThresholds // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$BehaviorAnalytics {

 String get userId; DateTime get analyzedDate; Map<String, int> get sessionCounts;// { 'morning': 5, 'afternoon': 3 }
 Map<String, int> get preferredTopics; int get averageSessionDurationMinutes; double get weekdayVsWeekendRatio; int get peakActivityHour;// 0-23
 String? get learningPattern;// 'bursty', 'consistent', 'irregular'
 int? get predictedNextActivationDays;
/// Create a copy of BehaviorAnalytics
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BehaviorAnalyticsCopyWith<BehaviorAnalytics> get copyWith => _$BehaviorAnalyticsCopyWithImpl<BehaviorAnalytics>(this as BehaviorAnalytics, _$identity);

  /// Serializes this BehaviorAnalytics to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BehaviorAnalytics&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.analyzedDate, analyzedDate) || other.analyzedDate == analyzedDate)&&const DeepCollectionEquality().equals(other.sessionCounts, sessionCounts)&&const DeepCollectionEquality().equals(other.preferredTopics, preferredTopics)&&(identical(other.averageSessionDurationMinutes, averageSessionDurationMinutes) || other.averageSessionDurationMinutes == averageSessionDurationMinutes)&&(identical(other.weekdayVsWeekendRatio, weekdayVsWeekendRatio) || other.weekdayVsWeekendRatio == weekdayVsWeekendRatio)&&(identical(other.peakActivityHour, peakActivityHour) || other.peakActivityHour == peakActivityHour)&&(identical(other.learningPattern, learningPattern) || other.learningPattern == learningPattern)&&(identical(other.predictedNextActivationDays, predictedNextActivationDays) || other.predictedNextActivationDays == predictedNextActivationDays));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,analyzedDate,const DeepCollectionEquality().hash(sessionCounts),const DeepCollectionEquality().hash(preferredTopics),averageSessionDurationMinutes,weekdayVsWeekendRatio,peakActivityHour,learningPattern,predictedNextActivationDays);

@override
String toString() {
  return 'BehaviorAnalytics(userId: $userId, analyzedDate: $analyzedDate, sessionCounts: $sessionCounts, preferredTopics: $preferredTopics, averageSessionDurationMinutes: $averageSessionDurationMinutes, weekdayVsWeekendRatio: $weekdayVsWeekendRatio, peakActivityHour: $peakActivityHour, learningPattern: $learningPattern, predictedNextActivationDays: $predictedNextActivationDays)';
}


}

/// @nodoc
abstract mixin class $BehaviorAnalyticsCopyWith<$Res>  {
  factory $BehaviorAnalyticsCopyWith(BehaviorAnalytics value, $Res Function(BehaviorAnalytics) _then) = _$BehaviorAnalyticsCopyWithImpl;
@useResult
$Res call({
 String userId, DateTime analyzedDate, Map<String, int> sessionCounts, Map<String, int> preferredTopics, int averageSessionDurationMinutes, double weekdayVsWeekendRatio, int peakActivityHour, String? learningPattern, int? predictedNextActivationDays
});




}
/// @nodoc
class _$BehaviorAnalyticsCopyWithImpl<$Res>
    implements $BehaviorAnalyticsCopyWith<$Res> {
  _$BehaviorAnalyticsCopyWithImpl(this._self, this._then);

  final BehaviorAnalytics _self;
  final $Res Function(BehaviorAnalytics) _then;

/// Create a copy of BehaviorAnalytics
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? analyzedDate = null,Object? sessionCounts = null,Object? preferredTopics = null,Object? averageSessionDurationMinutes = null,Object? weekdayVsWeekendRatio = null,Object? peakActivityHour = null,Object? learningPattern = freezed,Object? predictedNextActivationDays = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,analyzedDate: null == analyzedDate ? _self.analyzedDate : analyzedDate // ignore: cast_nullable_to_non_nullable
as DateTime,sessionCounts: null == sessionCounts ? _self.sessionCounts : sessionCounts // ignore: cast_nullable_to_non_nullable
as Map<String, int>,preferredTopics: null == preferredTopics ? _self.preferredTopics : preferredTopics // ignore: cast_nullable_to_non_nullable
as Map<String, int>,averageSessionDurationMinutes: null == averageSessionDurationMinutes ? _self.averageSessionDurationMinutes : averageSessionDurationMinutes // ignore: cast_nullable_to_non_nullable
as int,weekdayVsWeekendRatio: null == weekdayVsWeekendRatio ? _self.weekdayVsWeekendRatio : weekdayVsWeekendRatio // ignore: cast_nullable_to_non_nullable
as double,peakActivityHour: null == peakActivityHour ? _self.peakActivityHour : peakActivityHour // ignore: cast_nullable_to_non_nullable
as int,learningPattern: freezed == learningPattern ? _self.learningPattern : learningPattern // ignore: cast_nullable_to_non_nullable
as String?,predictedNextActivationDays: freezed == predictedNextActivationDays ? _self.predictedNextActivationDays : predictedNextActivationDays // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [BehaviorAnalytics].
extension BehaviorAnalyticsPatterns on BehaviorAnalytics {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BehaviorAnalytics value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BehaviorAnalytics() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BehaviorAnalytics value)  $default,){
final _that = this;
switch (_that) {
case _BehaviorAnalytics():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BehaviorAnalytics value)?  $default,){
final _that = this;
switch (_that) {
case _BehaviorAnalytics() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  DateTime analyzedDate,  Map<String, int> sessionCounts,  Map<String, int> preferredTopics,  int averageSessionDurationMinutes,  double weekdayVsWeekendRatio,  int peakActivityHour,  String? learningPattern,  int? predictedNextActivationDays)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BehaviorAnalytics() when $default != null:
return $default(_that.userId,_that.analyzedDate,_that.sessionCounts,_that.preferredTopics,_that.averageSessionDurationMinutes,_that.weekdayVsWeekendRatio,_that.peakActivityHour,_that.learningPattern,_that.predictedNextActivationDays);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  DateTime analyzedDate,  Map<String, int> sessionCounts,  Map<String, int> preferredTopics,  int averageSessionDurationMinutes,  double weekdayVsWeekendRatio,  int peakActivityHour,  String? learningPattern,  int? predictedNextActivationDays)  $default,) {final _that = this;
switch (_that) {
case _BehaviorAnalytics():
return $default(_that.userId,_that.analyzedDate,_that.sessionCounts,_that.preferredTopics,_that.averageSessionDurationMinutes,_that.weekdayVsWeekendRatio,_that.peakActivityHour,_that.learningPattern,_that.predictedNextActivationDays);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  DateTime analyzedDate,  Map<String, int> sessionCounts,  Map<String, int> preferredTopics,  int averageSessionDurationMinutes,  double weekdayVsWeekendRatio,  int peakActivityHour,  String? learningPattern,  int? predictedNextActivationDays)?  $default,) {final _that = this;
switch (_that) {
case _BehaviorAnalytics() when $default != null:
return $default(_that.userId,_that.analyzedDate,_that.sessionCounts,_that.preferredTopics,_that.averageSessionDurationMinutes,_that.weekdayVsWeekendRatio,_that.peakActivityHour,_that.learningPattern,_that.predictedNextActivationDays);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BehaviorAnalytics implements BehaviorAnalytics {
  const _BehaviorAnalytics({required this.userId, required this.analyzedDate, required final  Map<String, int> sessionCounts, required final  Map<String, int> preferredTopics, required this.averageSessionDurationMinutes, required this.weekdayVsWeekendRatio, required this.peakActivityHour, this.learningPattern, this.predictedNextActivationDays}): _sessionCounts = sessionCounts,_preferredTopics = preferredTopics;
  factory _BehaviorAnalytics.fromJson(Map<String, dynamic> json) => _$BehaviorAnalyticsFromJson(json);

@override final  String userId;
@override final  DateTime analyzedDate;
 final  Map<String, int> _sessionCounts;
@override Map<String, int> get sessionCounts {
  if (_sessionCounts is EqualUnmodifiableMapView) return _sessionCounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_sessionCounts);
}

// { 'morning': 5, 'afternoon': 3 }
 final  Map<String, int> _preferredTopics;
// { 'morning': 5, 'afternoon': 3 }
@override Map<String, int> get preferredTopics {
  if (_preferredTopics is EqualUnmodifiableMapView) return _preferredTopics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_preferredTopics);
}

@override final  int averageSessionDurationMinutes;
@override final  double weekdayVsWeekendRatio;
@override final  int peakActivityHour;
// 0-23
@override final  String? learningPattern;
// 'bursty', 'consistent', 'irregular'
@override final  int? predictedNextActivationDays;

/// Create a copy of BehaviorAnalytics
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BehaviorAnalyticsCopyWith<_BehaviorAnalytics> get copyWith => __$BehaviorAnalyticsCopyWithImpl<_BehaviorAnalytics>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BehaviorAnalyticsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BehaviorAnalytics&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.analyzedDate, analyzedDate) || other.analyzedDate == analyzedDate)&&const DeepCollectionEquality().equals(other._sessionCounts, _sessionCounts)&&const DeepCollectionEquality().equals(other._preferredTopics, _preferredTopics)&&(identical(other.averageSessionDurationMinutes, averageSessionDurationMinutes) || other.averageSessionDurationMinutes == averageSessionDurationMinutes)&&(identical(other.weekdayVsWeekendRatio, weekdayVsWeekendRatio) || other.weekdayVsWeekendRatio == weekdayVsWeekendRatio)&&(identical(other.peakActivityHour, peakActivityHour) || other.peakActivityHour == peakActivityHour)&&(identical(other.learningPattern, learningPattern) || other.learningPattern == learningPattern)&&(identical(other.predictedNextActivationDays, predictedNextActivationDays) || other.predictedNextActivationDays == predictedNextActivationDays));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,analyzedDate,const DeepCollectionEquality().hash(_sessionCounts),const DeepCollectionEquality().hash(_preferredTopics),averageSessionDurationMinutes,weekdayVsWeekendRatio,peakActivityHour,learningPattern,predictedNextActivationDays);

@override
String toString() {
  return 'BehaviorAnalytics(userId: $userId, analyzedDate: $analyzedDate, sessionCounts: $sessionCounts, preferredTopics: $preferredTopics, averageSessionDurationMinutes: $averageSessionDurationMinutes, weekdayVsWeekendRatio: $weekdayVsWeekendRatio, peakActivityHour: $peakActivityHour, learningPattern: $learningPattern, predictedNextActivationDays: $predictedNextActivationDays)';
}


}

/// @nodoc
abstract mixin class _$BehaviorAnalyticsCopyWith<$Res> implements $BehaviorAnalyticsCopyWith<$Res> {
  factory _$BehaviorAnalyticsCopyWith(_BehaviorAnalytics value, $Res Function(_BehaviorAnalytics) _then) = __$BehaviorAnalyticsCopyWithImpl;
@override @useResult
$Res call({
 String userId, DateTime analyzedDate, Map<String, int> sessionCounts, Map<String, int> preferredTopics, int averageSessionDurationMinutes, double weekdayVsWeekendRatio, int peakActivityHour, String? learningPattern, int? predictedNextActivationDays
});




}
/// @nodoc
class __$BehaviorAnalyticsCopyWithImpl<$Res>
    implements _$BehaviorAnalyticsCopyWith<$Res> {
  __$BehaviorAnalyticsCopyWithImpl(this._self, this._then);

  final _BehaviorAnalytics _self;
  final $Res Function(_BehaviorAnalytics) _then;

/// Create a copy of BehaviorAnalytics
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? analyzedDate = null,Object? sessionCounts = null,Object? preferredTopics = null,Object? averageSessionDurationMinutes = null,Object? weekdayVsWeekendRatio = null,Object? peakActivityHour = null,Object? learningPattern = freezed,Object? predictedNextActivationDays = freezed,}) {
  return _then(_BehaviorAnalytics(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,analyzedDate: null == analyzedDate ? _self.analyzedDate : analyzedDate // ignore: cast_nullable_to_non_nullable
as DateTime,sessionCounts: null == sessionCounts ? _self._sessionCounts : sessionCounts // ignore: cast_nullable_to_non_nullable
as Map<String, int>,preferredTopics: null == preferredTopics ? _self._preferredTopics : preferredTopics // ignore: cast_nullable_to_non_nullable
as Map<String, int>,averageSessionDurationMinutes: null == averageSessionDurationMinutes ? _self.averageSessionDurationMinutes : averageSessionDurationMinutes // ignore: cast_nullable_to_non_nullable
as int,weekdayVsWeekendRatio: null == weekdayVsWeekendRatio ? _self.weekdayVsWeekendRatio : weekdayVsWeekendRatio // ignore: cast_nullable_to_non_nullable
as double,peakActivityHour: null == peakActivityHour ? _self.peakActivityHour : peakActivityHour // ignore: cast_nullable_to_non_nullable
as int,learningPattern: freezed == learningPattern ? _self.learningPattern : learningPattern // ignore: cast_nullable_to_non_nullable
as String?,predictedNextActivationDays: freezed == predictedNextActivationDays ? _self.predictedNextActivationDays : predictedNextActivationDays // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$PopulationStats {

 int get totalUsers; int get activeUsersLast7Days; int get activeUsersLast30Days; int get churnedUsersLast30Days; double get churnRate; DateTime get sampledAt; Map<String, int> get segmentDistribution;// { 'newUser': 100, 'active': 500 }
 Map<String, double>? get retentionByDay;// 日数ごとの継続率
 Map<String, int>? get ageGroupDistribution; double? get mau;// 月間アクティブユーザー
 double? get dau;
/// Create a copy of PopulationStats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PopulationStatsCopyWith<PopulationStats> get copyWith => _$PopulationStatsCopyWithImpl<PopulationStats>(this as PopulationStats, _$identity);

  /// Serializes this PopulationStats to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PopulationStats&&(identical(other.totalUsers, totalUsers) || other.totalUsers == totalUsers)&&(identical(other.activeUsersLast7Days, activeUsersLast7Days) || other.activeUsersLast7Days == activeUsersLast7Days)&&(identical(other.activeUsersLast30Days, activeUsersLast30Days) || other.activeUsersLast30Days == activeUsersLast30Days)&&(identical(other.churnedUsersLast30Days, churnedUsersLast30Days) || other.churnedUsersLast30Days == churnedUsersLast30Days)&&(identical(other.churnRate, churnRate) || other.churnRate == churnRate)&&(identical(other.sampledAt, sampledAt) || other.sampledAt == sampledAt)&&const DeepCollectionEquality().equals(other.segmentDistribution, segmentDistribution)&&const DeepCollectionEquality().equals(other.retentionByDay, retentionByDay)&&const DeepCollectionEquality().equals(other.ageGroupDistribution, ageGroupDistribution)&&(identical(other.mau, mau) || other.mau == mau)&&(identical(other.dau, dau) || other.dau == dau));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalUsers,activeUsersLast7Days,activeUsersLast30Days,churnedUsersLast30Days,churnRate,sampledAt,const DeepCollectionEquality().hash(segmentDistribution),const DeepCollectionEquality().hash(retentionByDay),const DeepCollectionEquality().hash(ageGroupDistribution),mau,dau);

@override
String toString() {
  return 'PopulationStats(totalUsers: $totalUsers, activeUsersLast7Days: $activeUsersLast7Days, activeUsersLast30Days: $activeUsersLast30Days, churnedUsersLast30Days: $churnedUsersLast30Days, churnRate: $churnRate, sampledAt: $sampledAt, segmentDistribution: $segmentDistribution, retentionByDay: $retentionByDay, ageGroupDistribution: $ageGroupDistribution, mau: $mau, dau: $dau)';
}


}

/// @nodoc
abstract mixin class $PopulationStatsCopyWith<$Res>  {
  factory $PopulationStatsCopyWith(PopulationStats value, $Res Function(PopulationStats) _then) = _$PopulationStatsCopyWithImpl;
@useResult
$Res call({
 int totalUsers, int activeUsersLast7Days, int activeUsersLast30Days, int churnedUsersLast30Days, double churnRate, DateTime sampledAt, Map<String, int> segmentDistribution, Map<String, double>? retentionByDay, Map<String, int>? ageGroupDistribution, double? mau, double? dau
});




}
/// @nodoc
class _$PopulationStatsCopyWithImpl<$Res>
    implements $PopulationStatsCopyWith<$Res> {
  _$PopulationStatsCopyWithImpl(this._self, this._then);

  final PopulationStats _self;
  final $Res Function(PopulationStats) _then;

/// Create a copy of PopulationStats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalUsers = null,Object? activeUsersLast7Days = null,Object? activeUsersLast30Days = null,Object? churnedUsersLast30Days = null,Object? churnRate = null,Object? sampledAt = null,Object? segmentDistribution = null,Object? retentionByDay = freezed,Object? ageGroupDistribution = freezed,Object? mau = freezed,Object? dau = freezed,}) {
  return _then(_self.copyWith(
totalUsers: null == totalUsers ? _self.totalUsers : totalUsers // ignore: cast_nullable_to_non_nullable
as int,activeUsersLast7Days: null == activeUsersLast7Days ? _self.activeUsersLast7Days : activeUsersLast7Days // ignore: cast_nullable_to_non_nullable
as int,activeUsersLast30Days: null == activeUsersLast30Days ? _self.activeUsersLast30Days : activeUsersLast30Days // ignore: cast_nullable_to_non_nullable
as int,churnedUsersLast30Days: null == churnedUsersLast30Days ? _self.churnedUsersLast30Days : churnedUsersLast30Days // ignore: cast_nullable_to_non_nullable
as int,churnRate: null == churnRate ? _self.churnRate : churnRate // ignore: cast_nullable_to_non_nullable
as double,sampledAt: null == sampledAt ? _self.sampledAt : sampledAt // ignore: cast_nullable_to_non_nullable
as DateTime,segmentDistribution: null == segmentDistribution ? _self.segmentDistribution : segmentDistribution // ignore: cast_nullable_to_non_nullable
as Map<String, int>,retentionByDay: freezed == retentionByDay ? _self.retentionByDay : retentionByDay // ignore: cast_nullable_to_non_nullable
as Map<String, double>?,ageGroupDistribution: freezed == ageGroupDistribution ? _self.ageGroupDistribution : ageGroupDistribution // ignore: cast_nullable_to_non_nullable
as Map<String, int>?,mau: freezed == mau ? _self.mau : mau // ignore: cast_nullable_to_non_nullable
as double?,dau: freezed == dau ? _self.dau : dau // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [PopulationStats].
extension PopulationStatsPatterns on PopulationStats {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PopulationStats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PopulationStats() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PopulationStats value)  $default,){
final _that = this;
switch (_that) {
case _PopulationStats():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PopulationStats value)?  $default,){
final _that = this;
switch (_that) {
case _PopulationStats() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalUsers,  int activeUsersLast7Days,  int activeUsersLast30Days,  int churnedUsersLast30Days,  double churnRate,  DateTime sampledAt,  Map<String, int> segmentDistribution,  Map<String, double>? retentionByDay,  Map<String, int>? ageGroupDistribution,  double? mau,  double? dau)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PopulationStats() when $default != null:
return $default(_that.totalUsers,_that.activeUsersLast7Days,_that.activeUsersLast30Days,_that.churnedUsersLast30Days,_that.churnRate,_that.sampledAt,_that.segmentDistribution,_that.retentionByDay,_that.ageGroupDistribution,_that.mau,_that.dau);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalUsers,  int activeUsersLast7Days,  int activeUsersLast30Days,  int churnedUsersLast30Days,  double churnRate,  DateTime sampledAt,  Map<String, int> segmentDistribution,  Map<String, double>? retentionByDay,  Map<String, int>? ageGroupDistribution,  double? mau,  double? dau)  $default,) {final _that = this;
switch (_that) {
case _PopulationStats():
return $default(_that.totalUsers,_that.activeUsersLast7Days,_that.activeUsersLast30Days,_that.churnedUsersLast30Days,_that.churnRate,_that.sampledAt,_that.segmentDistribution,_that.retentionByDay,_that.ageGroupDistribution,_that.mau,_that.dau);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalUsers,  int activeUsersLast7Days,  int activeUsersLast30Days,  int churnedUsersLast30Days,  double churnRate,  DateTime sampledAt,  Map<String, int> segmentDistribution,  Map<String, double>? retentionByDay,  Map<String, int>? ageGroupDistribution,  double? mau,  double? dau)?  $default,) {final _that = this;
switch (_that) {
case _PopulationStats() when $default != null:
return $default(_that.totalUsers,_that.activeUsersLast7Days,_that.activeUsersLast30Days,_that.churnedUsersLast30Days,_that.churnRate,_that.sampledAt,_that.segmentDistribution,_that.retentionByDay,_that.ageGroupDistribution,_that.mau,_that.dau);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PopulationStats implements PopulationStats {
  const _PopulationStats({required this.totalUsers, required this.activeUsersLast7Days, required this.activeUsersLast30Days, required this.churnedUsersLast30Days, required this.churnRate, required this.sampledAt, required final  Map<String, int> segmentDistribution, final  Map<String, double>? retentionByDay, final  Map<String, int>? ageGroupDistribution, this.mau, this.dau}): _segmentDistribution = segmentDistribution,_retentionByDay = retentionByDay,_ageGroupDistribution = ageGroupDistribution;
  factory _PopulationStats.fromJson(Map<String, dynamic> json) => _$PopulationStatsFromJson(json);

@override final  int totalUsers;
@override final  int activeUsersLast7Days;
@override final  int activeUsersLast30Days;
@override final  int churnedUsersLast30Days;
@override final  double churnRate;
@override final  DateTime sampledAt;
 final  Map<String, int> _segmentDistribution;
@override Map<String, int> get segmentDistribution {
  if (_segmentDistribution is EqualUnmodifiableMapView) return _segmentDistribution;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_segmentDistribution);
}

// { 'newUser': 100, 'active': 500 }
 final  Map<String, double>? _retentionByDay;
// { 'newUser': 100, 'active': 500 }
@override Map<String, double>? get retentionByDay {
  final value = _retentionByDay;
  if (value == null) return null;
  if (_retentionByDay is EqualUnmodifiableMapView) return _retentionByDay;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

// 日数ごとの継続率
 final  Map<String, int>? _ageGroupDistribution;
// 日数ごとの継続率
@override Map<String, int>? get ageGroupDistribution {
  final value = _ageGroupDistribution;
  if (value == null) return null;
  if (_ageGroupDistribution is EqualUnmodifiableMapView) return _ageGroupDistribution;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  double? mau;
// 月間アクティブユーザー
@override final  double? dau;

/// Create a copy of PopulationStats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PopulationStatsCopyWith<_PopulationStats> get copyWith => __$PopulationStatsCopyWithImpl<_PopulationStats>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PopulationStatsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PopulationStats&&(identical(other.totalUsers, totalUsers) || other.totalUsers == totalUsers)&&(identical(other.activeUsersLast7Days, activeUsersLast7Days) || other.activeUsersLast7Days == activeUsersLast7Days)&&(identical(other.activeUsersLast30Days, activeUsersLast30Days) || other.activeUsersLast30Days == activeUsersLast30Days)&&(identical(other.churnedUsersLast30Days, churnedUsersLast30Days) || other.churnedUsersLast30Days == churnedUsersLast30Days)&&(identical(other.churnRate, churnRate) || other.churnRate == churnRate)&&(identical(other.sampledAt, sampledAt) || other.sampledAt == sampledAt)&&const DeepCollectionEquality().equals(other._segmentDistribution, _segmentDistribution)&&const DeepCollectionEquality().equals(other._retentionByDay, _retentionByDay)&&const DeepCollectionEquality().equals(other._ageGroupDistribution, _ageGroupDistribution)&&(identical(other.mau, mau) || other.mau == mau)&&(identical(other.dau, dau) || other.dau == dau));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalUsers,activeUsersLast7Days,activeUsersLast30Days,churnedUsersLast30Days,churnRate,sampledAt,const DeepCollectionEquality().hash(_segmentDistribution),const DeepCollectionEquality().hash(_retentionByDay),const DeepCollectionEquality().hash(_ageGroupDistribution),mau,dau);

@override
String toString() {
  return 'PopulationStats(totalUsers: $totalUsers, activeUsersLast7Days: $activeUsersLast7Days, activeUsersLast30Days: $activeUsersLast30Days, churnedUsersLast30Days: $churnedUsersLast30Days, churnRate: $churnRate, sampledAt: $sampledAt, segmentDistribution: $segmentDistribution, retentionByDay: $retentionByDay, ageGroupDistribution: $ageGroupDistribution, mau: $mau, dau: $dau)';
}


}

/// @nodoc
abstract mixin class _$PopulationStatsCopyWith<$Res> implements $PopulationStatsCopyWith<$Res> {
  factory _$PopulationStatsCopyWith(_PopulationStats value, $Res Function(_PopulationStats) _then) = __$PopulationStatsCopyWithImpl;
@override @useResult
$Res call({
 int totalUsers, int activeUsersLast7Days, int activeUsersLast30Days, int churnedUsersLast30Days, double churnRate, DateTime sampledAt, Map<String, int> segmentDistribution, Map<String, double>? retentionByDay, Map<String, int>? ageGroupDistribution, double? mau, double? dau
});




}
/// @nodoc
class __$PopulationStatsCopyWithImpl<$Res>
    implements _$PopulationStatsCopyWith<$Res> {
  __$PopulationStatsCopyWithImpl(this._self, this._then);

  final _PopulationStats _self;
  final $Res Function(_PopulationStats) _then;

/// Create a copy of PopulationStats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalUsers = null,Object? activeUsersLast7Days = null,Object? activeUsersLast30Days = null,Object? churnedUsersLast30Days = null,Object? churnRate = null,Object? sampledAt = null,Object? segmentDistribution = null,Object? retentionByDay = freezed,Object? ageGroupDistribution = freezed,Object? mau = freezed,Object? dau = freezed,}) {
  return _then(_PopulationStats(
totalUsers: null == totalUsers ? _self.totalUsers : totalUsers // ignore: cast_nullable_to_non_nullable
as int,activeUsersLast7Days: null == activeUsersLast7Days ? _self.activeUsersLast7Days : activeUsersLast7Days // ignore: cast_nullable_to_non_nullable
as int,activeUsersLast30Days: null == activeUsersLast30Days ? _self.activeUsersLast30Days : activeUsersLast30Days // ignore: cast_nullable_to_non_nullable
as int,churnedUsersLast30Days: null == churnedUsersLast30Days ? _self.churnedUsersLast30Days : churnedUsersLast30Days // ignore: cast_nullable_to_non_nullable
as int,churnRate: null == churnRate ? _self.churnRate : churnRate // ignore: cast_nullable_to_non_nullable
as double,sampledAt: null == sampledAt ? _self.sampledAt : sampledAt // ignore: cast_nullable_to_non_nullable
as DateTime,segmentDistribution: null == segmentDistribution ? _self._segmentDistribution : segmentDistribution // ignore: cast_nullable_to_non_nullable
as Map<String, int>,retentionByDay: freezed == retentionByDay ? _self._retentionByDay : retentionByDay // ignore: cast_nullable_to_non_nullable
as Map<String, double>?,ageGroupDistribution: freezed == ageGroupDistribution ? _self._ageGroupDistribution : ageGroupDistribution // ignore: cast_nullable_to_non_nullable
as Map<String, int>?,mau: freezed == mau ? _self.mau : mau // ignore: cast_nullable_to_non_nullable
as double?,dau: freezed == dau ? _self.dau : dau // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$CohortAnalytics {

 String get cohortId;// 登録月（例: '2026-09'）
 int get cohortSize; Map<int, double> get retentionByWeek;// { 1: 0.95, 2: 0.87, ... }
 Map<int, double> get engagementByWeek; double get lifetimeValue; DateTime get createdAt;
/// Create a copy of CohortAnalytics
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CohortAnalyticsCopyWith<CohortAnalytics> get copyWith => _$CohortAnalyticsCopyWithImpl<CohortAnalytics>(this as CohortAnalytics, _$identity);

  /// Serializes this CohortAnalytics to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CohortAnalytics&&(identical(other.cohortId, cohortId) || other.cohortId == cohortId)&&(identical(other.cohortSize, cohortSize) || other.cohortSize == cohortSize)&&const DeepCollectionEquality().equals(other.retentionByWeek, retentionByWeek)&&const DeepCollectionEquality().equals(other.engagementByWeek, engagementByWeek)&&(identical(other.lifetimeValue, lifetimeValue) || other.lifetimeValue == lifetimeValue)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cohortId,cohortSize,const DeepCollectionEquality().hash(retentionByWeek),const DeepCollectionEquality().hash(engagementByWeek),lifetimeValue,createdAt);

@override
String toString() {
  return 'CohortAnalytics(cohortId: $cohortId, cohortSize: $cohortSize, retentionByWeek: $retentionByWeek, engagementByWeek: $engagementByWeek, lifetimeValue: $lifetimeValue, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $CohortAnalyticsCopyWith<$Res>  {
  factory $CohortAnalyticsCopyWith(CohortAnalytics value, $Res Function(CohortAnalytics) _then) = _$CohortAnalyticsCopyWithImpl;
@useResult
$Res call({
 String cohortId, int cohortSize, Map<int, double> retentionByWeek, Map<int, double> engagementByWeek, double lifetimeValue, DateTime createdAt
});




}
/// @nodoc
class _$CohortAnalyticsCopyWithImpl<$Res>
    implements $CohortAnalyticsCopyWith<$Res> {
  _$CohortAnalyticsCopyWithImpl(this._self, this._then);

  final CohortAnalytics _self;
  final $Res Function(CohortAnalytics) _then;

/// Create a copy of CohortAnalytics
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cohortId = null,Object? cohortSize = null,Object? retentionByWeek = null,Object? engagementByWeek = null,Object? lifetimeValue = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
cohortId: null == cohortId ? _self.cohortId : cohortId // ignore: cast_nullable_to_non_nullable
as String,cohortSize: null == cohortSize ? _self.cohortSize : cohortSize // ignore: cast_nullable_to_non_nullable
as int,retentionByWeek: null == retentionByWeek ? _self.retentionByWeek : retentionByWeek // ignore: cast_nullable_to_non_nullable
as Map<int, double>,engagementByWeek: null == engagementByWeek ? _self.engagementByWeek : engagementByWeek // ignore: cast_nullable_to_non_nullable
as Map<int, double>,lifetimeValue: null == lifetimeValue ? _self.lifetimeValue : lifetimeValue // ignore: cast_nullable_to_non_nullable
as double,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [CohortAnalytics].
extension CohortAnalyticsPatterns on CohortAnalytics {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CohortAnalytics value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CohortAnalytics() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CohortAnalytics value)  $default,){
final _that = this;
switch (_that) {
case _CohortAnalytics():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CohortAnalytics value)?  $default,){
final _that = this;
switch (_that) {
case _CohortAnalytics() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String cohortId,  int cohortSize,  Map<int, double> retentionByWeek,  Map<int, double> engagementByWeek,  double lifetimeValue,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CohortAnalytics() when $default != null:
return $default(_that.cohortId,_that.cohortSize,_that.retentionByWeek,_that.engagementByWeek,_that.lifetimeValue,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String cohortId,  int cohortSize,  Map<int, double> retentionByWeek,  Map<int, double> engagementByWeek,  double lifetimeValue,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _CohortAnalytics():
return $default(_that.cohortId,_that.cohortSize,_that.retentionByWeek,_that.engagementByWeek,_that.lifetimeValue,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String cohortId,  int cohortSize,  Map<int, double> retentionByWeek,  Map<int, double> engagementByWeek,  double lifetimeValue,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _CohortAnalytics() when $default != null:
return $default(_that.cohortId,_that.cohortSize,_that.retentionByWeek,_that.engagementByWeek,_that.lifetimeValue,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CohortAnalytics implements CohortAnalytics {
  const _CohortAnalytics({required this.cohortId, required this.cohortSize, required final  Map<int, double> retentionByWeek, required final  Map<int, double> engagementByWeek, required this.lifetimeValue, required this.createdAt}): _retentionByWeek = retentionByWeek,_engagementByWeek = engagementByWeek;
  factory _CohortAnalytics.fromJson(Map<String, dynamic> json) => _$CohortAnalyticsFromJson(json);

@override final  String cohortId;
// 登録月（例: '2026-09'）
@override final  int cohortSize;
 final  Map<int, double> _retentionByWeek;
@override Map<int, double> get retentionByWeek {
  if (_retentionByWeek is EqualUnmodifiableMapView) return _retentionByWeek;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_retentionByWeek);
}

// { 1: 0.95, 2: 0.87, ... }
 final  Map<int, double> _engagementByWeek;
// { 1: 0.95, 2: 0.87, ... }
@override Map<int, double> get engagementByWeek {
  if (_engagementByWeek is EqualUnmodifiableMapView) return _engagementByWeek;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_engagementByWeek);
}

@override final  double lifetimeValue;
@override final  DateTime createdAt;

/// Create a copy of CohortAnalytics
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CohortAnalyticsCopyWith<_CohortAnalytics> get copyWith => __$CohortAnalyticsCopyWithImpl<_CohortAnalytics>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CohortAnalyticsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CohortAnalytics&&(identical(other.cohortId, cohortId) || other.cohortId == cohortId)&&(identical(other.cohortSize, cohortSize) || other.cohortSize == cohortSize)&&const DeepCollectionEquality().equals(other._retentionByWeek, _retentionByWeek)&&const DeepCollectionEquality().equals(other._engagementByWeek, _engagementByWeek)&&(identical(other.lifetimeValue, lifetimeValue) || other.lifetimeValue == lifetimeValue)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cohortId,cohortSize,const DeepCollectionEquality().hash(_retentionByWeek),const DeepCollectionEquality().hash(_engagementByWeek),lifetimeValue,createdAt);

@override
String toString() {
  return 'CohortAnalytics(cohortId: $cohortId, cohortSize: $cohortSize, retentionByWeek: $retentionByWeek, engagementByWeek: $engagementByWeek, lifetimeValue: $lifetimeValue, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$CohortAnalyticsCopyWith<$Res> implements $CohortAnalyticsCopyWith<$Res> {
  factory _$CohortAnalyticsCopyWith(_CohortAnalytics value, $Res Function(_CohortAnalytics) _then) = __$CohortAnalyticsCopyWithImpl;
@override @useResult
$Res call({
 String cohortId, int cohortSize, Map<int, double> retentionByWeek, Map<int, double> engagementByWeek, double lifetimeValue, DateTime createdAt
});




}
/// @nodoc
class __$CohortAnalyticsCopyWithImpl<$Res>
    implements _$CohortAnalyticsCopyWith<$Res> {
  __$CohortAnalyticsCopyWithImpl(this._self, this._then);

  final _CohortAnalytics _self;
  final $Res Function(_CohortAnalytics) _then;

/// Create a copy of CohortAnalytics
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cohortId = null,Object? cohortSize = null,Object? retentionByWeek = null,Object? engagementByWeek = null,Object? lifetimeValue = null,Object? createdAt = null,}) {
  return _then(_CohortAnalytics(
cohortId: null == cohortId ? _self.cohortId : cohortId // ignore: cast_nullable_to_non_nullable
as String,cohortSize: null == cohortSize ? _self.cohortSize : cohortSize // ignore: cast_nullable_to_non_nullable
as int,retentionByWeek: null == retentionByWeek ? _self._retentionByWeek : retentionByWeek // ignore: cast_nullable_to_non_nullable
as Map<int, double>,engagementByWeek: null == engagementByWeek ? _self._engagementByWeek : engagementByWeek // ignore: cast_nullable_to_non_nullable
as Map<int, double>,lifetimeValue: null == lifetimeValue ? _self.lifetimeValue : lifetimeValue // ignore: cast_nullable_to_non_nullable
as double,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$ABTestMetrics {

 String get testId; String get variant; int get impressions; int get conversions; double get conversionRate; int get totalRevenue; double get averageOrderValue; DateTime get updatedAt; double? get confidence;// 統計的信頼度
 String? get winner;
/// Create a copy of ABTestMetrics
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ABTestMetricsCopyWith<ABTestMetrics> get copyWith => _$ABTestMetricsCopyWithImpl<ABTestMetrics>(this as ABTestMetrics, _$identity);

  /// Serializes this ABTestMetrics to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ABTestMetrics&&(identical(other.testId, testId) || other.testId == testId)&&(identical(other.variant, variant) || other.variant == variant)&&(identical(other.impressions, impressions) || other.impressions == impressions)&&(identical(other.conversions, conversions) || other.conversions == conversions)&&(identical(other.conversionRate, conversionRate) || other.conversionRate == conversionRate)&&(identical(other.totalRevenue, totalRevenue) || other.totalRevenue == totalRevenue)&&(identical(other.averageOrderValue, averageOrderValue) || other.averageOrderValue == averageOrderValue)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.confidence, confidence) || other.confidence == confidence)&&(identical(other.winner, winner) || other.winner == winner));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,testId,variant,impressions,conversions,conversionRate,totalRevenue,averageOrderValue,updatedAt,confidence,winner);

@override
String toString() {
  return 'ABTestMetrics(testId: $testId, variant: $variant, impressions: $impressions, conversions: $conversions, conversionRate: $conversionRate, totalRevenue: $totalRevenue, averageOrderValue: $averageOrderValue, updatedAt: $updatedAt, confidence: $confidence, winner: $winner)';
}


}

/// @nodoc
abstract mixin class $ABTestMetricsCopyWith<$Res>  {
  factory $ABTestMetricsCopyWith(ABTestMetrics value, $Res Function(ABTestMetrics) _then) = _$ABTestMetricsCopyWithImpl;
@useResult
$Res call({
 String testId, String variant, int impressions, int conversions, double conversionRate, int totalRevenue, double averageOrderValue, DateTime updatedAt, double? confidence, String? winner
});




}
/// @nodoc
class _$ABTestMetricsCopyWithImpl<$Res>
    implements $ABTestMetricsCopyWith<$Res> {
  _$ABTestMetricsCopyWithImpl(this._self, this._then);

  final ABTestMetrics _self;
  final $Res Function(ABTestMetrics) _then;

/// Create a copy of ABTestMetrics
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? testId = null,Object? variant = null,Object? impressions = null,Object? conversions = null,Object? conversionRate = null,Object? totalRevenue = null,Object? averageOrderValue = null,Object? updatedAt = null,Object? confidence = freezed,Object? winner = freezed,}) {
  return _then(_self.copyWith(
testId: null == testId ? _self.testId : testId // ignore: cast_nullable_to_non_nullable
as String,variant: null == variant ? _self.variant : variant // ignore: cast_nullable_to_non_nullable
as String,impressions: null == impressions ? _self.impressions : impressions // ignore: cast_nullable_to_non_nullable
as int,conversions: null == conversions ? _self.conversions : conversions // ignore: cast_nullable_to_non_nullable
as int,conversionRate: null == conversionRate ? _self.conversionRate : conversionRate // ignore: cast_nullable_to_non_nullable
as double,totalRevenue: null == totalRevenue ? _self.totalRevenue : totalRevenue // ignore: cast_nullable_to_non_nullable
as int,averageOrderValue: null == averageOrderValue ? _self.averageOrderValue : averageOrderValue // ignore: cast_nullable_to_non_nullable
as double,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,confidence: freezed == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double?,winner: freezed == winner ? _self.winner : winner // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ABTestMetrics].
extension ABTestMetricsPatterns on ABTestMetrics {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ABTestMetrics value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ABTestMetrics() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ABTestMetrics value)  $default,){
final _that = this;
switch (_that) {
case _ABTestMetrics():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ABTestMetrics value)?  $default,){
final _that = this;
switch (_that) {
case _ABTestMetrics() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String testId,  String variant,  int impressions,  int conversions,  double conversionRate,  int totalRevenue,  double averageOrderValue,  DateTime updatedAt,  double? confidence,  String? winner)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ABTestMetrics() when $default != null:
return $default(_that.testId,_that.variant,_that.impressions,_that.conversions,_that.conversionRate,_that.totalRevenue,_that.averageOrderValue,_that.updatedAt,_that.confidence,_that.winner);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String testId,  String variant,  int impressions,  int conversions,  double conversionRate,  int totalRevenue,  double averageOrderValue,  DateTime updatedAt,  double? confidence,  String? winner)  $default,) {final _that = this;
switch (_that) {
case _ABTestMetrics():
return $default(_that.testId,_that.variant,_that.impressions,_that.conversions,_that.conversionRate,_that.totalRevenue,_that.averageOrderValue,_that.updatedAt,_that.confidence,_that.winner);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String testId,  String variant,  int impressions,  int conversions,  double conversionRate,  int totalRevenue,  double averageOrderValue,  DateTime updatedAt,  double? confidence,  String? winner)?  $default,) {final _that = this;
switch (_that) {
case _ABTestMetrics() when $default != null:
return $default(_that.testId,_that.variant,_that.impressions,_that.conversions,_that.conversionRate,_that.totalRevenue,_that.averageOrderValue,_that.updatedAt,_that.confidence,_that.winner);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ABTestMetrics implements ABTestMetrics {
  const _ABTestMetrics({required this.testId, required this.variant, required this.impressions, required this.conversions, required this.conversionRate, required this.totalRevenue, required this.averageOrderValue, required this.updatedAt, this.confidence, this.winner});
  factory _ABTestMetrics.fromJson(Map<String, dynamic> json) => _$ABTestMetricsFromJson(json);

@override final  String testId;
@override final  String variant;
@override final  int impressions;
@override final  int conversions;
@override final  double conversionRate;
@override final  int totalRevenue;
@override final  double averageOrderValue;
@override final  DateTime updatedAt;
@override final  double? confidence;
// 統計的信頼度
@override final  String? winner;

/// Create a copy of ABTestMetrics
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ABTestMetricsCopyWith<_ABTestMetrics> get copyWith => __$ABTestMetricsCopyWithImpl<_ABTestMetrics>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ABTestMetricsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ABTestMetrics&&(identical(other.testId, testId) || other.testId == testId)&&(identical(other.variant, variant) || other.variant == variant)&&(identical(other.impressions, impressions) || other.impressions == impressions)&&(identical(other.conversions, conversions) || other.conversions == conversions)&&(identical(other.conversionRate, conversionRate) || other.conversionRate == conversionRate)&&(identical(other.totalRevenue, totalRevenue) || other.totalRevenue == totalRevenue)&&(identical(other.averageOrderValue, averageOrderValue) || other.averageOrderValue == averageOrderValue)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.confidence, confidence) || other.confidence == confidence)&&(identical(other.winner, winner) || other.winner == winner));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,testId,variant,impressions,conversions,conversionRate,totalRevenue,averageOrderValue,updatedAt,confidence,winner);

@override
String toString() {
  return 'ABTestMetrics(testId: $testId, variant: $variant, impressions: $impressions, conversions: $conversions, conversionRate: $conversionRate, totalRevenue: $totalRevenue, averageOrderValue: $averageOrderValue, updatedAt: $updatedAt, confidence: $confidence, winner: $winner)';
}


}

/// @nodoc
abstract mixin class _$ABTestMetricsCopyWith<$Res> implements $ABTestMetricsCopyWith<$Res> {
  factory _$ABTestMetricsCopyWith(_ABTestMetrics value, $Res Function(_ABTestMetrics) _then) = __$ABTestMetricsCopyWithImpl;
@override @useResult
$Res call({
 String testId, String variant, int impressions, int conversions, double conversionRate, int totalRevenue, double averageOrderValue, DateTime updatedAt, double? confidence, String? winner
});




}
/// @nodoc
class __$ABTestMetricsCopyWithImpl<$Res>
    implements _$ABTestMetricsCopyWith<$Res> {
  __$ABTestMetricsCopyWithImpl(this._self, this._then);

  final _ABTestMetrics _self;
  final $Res Function(_ABTestMetrics) _then;

/// Create a copy of ABTestMetrics
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? testId = null,Object? variant = null,Object? impressions = null,Object? conversions = null,Object? conversionRate = null,Object? totalRevenue = null,Object? averageOrderValue = null,Object? updatedAt = null,Object? confidence = freezed,Object? winner = freezed,}) {
  return _then(_ABTestMetrics(
testId: null == testId ? _self.testId : testId // ignore: cast_nullable_to_non_nullable
as String,variant: null == variant ? _self.variant : variant // ignore: cast_nullable_to_non_nullable
as String,impressions: null == impressions ? _self.impressions : impressions // ignore: cast_nullable_to_non_nullable
as int,conversions: null == conversions ? _self.conversions : conversions // ignore: cast_nullable_to_non_nullable
as int,conversionRate: null == conversionRate ? _self.conversionRate : conversionRate // ignore: cast_nullable_to_non_nullable
as double,totalRevenue: null == totalRevenue ? _self.totalRevenue : totalRevenue // ignore: cast_nullable_to_non_nullable
as int,averageOrderValue: null == averageOrderValue ? _self.averageOrderValue : averageOrderValue // ignore: cast_nullable_to_non_nullable
as double,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,confidence: freezed == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double?,winner: freezed == winner ? _self.winner : winner // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
