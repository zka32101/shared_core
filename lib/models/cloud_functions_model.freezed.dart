// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cloud_functions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CloudFunctionConfig {

 bool get enableAutoReportGeneration; bool get enableSegmentationUpdates; bool get enableCohortAnalysis; bool get enableNotifications; int get reportGenerationIntervalDays; int get segmentationUpdateIntervalHours; int get cohortAnalysisIntervalDays; Map<String, dynamic> get notificationConfig; bool get enableChurnPrediction;
/// Create a copy of CloudFunctionConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CloudFunctionConfigCopyWith<CloudFunctionConfig> get copyWith => _$CloudFunctionConfigCopyWithImpl<CloudFunctionConfig>(this as CloudFunctionConfig, _$identity);

  /// Serializes this CloudFunctionConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CloudFunctionConfig&&(identical(other.enableAutoReportGeneration, enableAutoReportGeneration) || other.enableAutoReportGeneration == enableAutoReportGeneration)&&(identical(other.enableSegmentationUpdates, enableSegmentationUpdates) || other.enableSegmentationUpdates == enableSegmentationUpdates)&&(identical(other.enableCohortAnalysis, enableCohortAnalysis) || other.enableCohortAnalysis == enableCohortAnalysis)&&(identical(other.enableNotifications, enableNotifications) || other.enableNotifications == enableNotifications)&&(identical(other.reportGenerationIntervalDays, reportGenerationIntervalDays) || other.reportGenerationIntervalDays == reportGenerationIntervalDays)&&(identical(other.segmentationUpdateIntervalHours, segmentationUpdateIntervalHours) || other.segmentationUpdateIntervalHours == segmentationUpdateIntervalHours)&&(identical(other.cohortAnalysisIntervalDays, cohortAnalysisIntervalDays) || other.cohortAnalysisIntervalDays == cohortAnalysisIntervalDays)&&const DeepCollectionEquality().equals(other.notificationConfig, notificationConfig)&&(identical(other.enableChurnPrediction, enableChurnPrediction) || other.enableChurnPrediction == enableChurnPrediction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enableAutoReportGeneration,enableSegmentationUpdates,enableCohortAnalysis,enableNotifications,reportGenerationIntervalDays,segmentationUpdateIntervalHours,cohortAnalysisIntervalDays,const DeepCollectionEquality().hash(notificationConfig),enableChurnPrediction);

@override
String toString() {
  return 'CloudFunctionConfig(enableAutoReportGeneration: $enableAutoReportGeneration, enableSegmentationUpdates: $enableSegmentationUpdates, enableCohortAnalysis: $enableCohortAnalysis, enableNotifications: $enableNotifications, reportGenerationIntervalDays: $reportGenerationIntervalDays, segmentationUpdateIntervalHours: $segmentationUpdateIntervalHours, cohortAnalysisIntervalDays: $cohortAnalysisIntervalDays, notificationConfig: $notificationConfig, enableChurnPrediction: $enableChurnPrediction)';
}


}

/// @nodoc
abstract mixin class $CloudFunctionConfigCopyWith<$Res>  {
  factory $CloudFunctionConfigCopyWith(CloudFunctionConfig value, $Res Function(CloudFunctionConfig) _then) = _$CloudFunctionConfigCopyWithImpl;
@useResult
$Res call({
 bool enableAutoReportGeneration, bool enableSegmentationUpdates, bool enableCohortAnalysis, bool enableNotifications, int reportGenerationIntervalDays, int segmentationUpdateIntervalHours, int cohortAnalysisIntervalDays, Map<String, dynamic> notificationConfig, bool enableChurnPrediction
});




}
/// @nodoc
class _$CloudFunctionConfigCopyWithImpl<$Res>
    implements $CloudFunctionConfigCopyWith<$Res> {
  _$CloudFunctionConfigCopyWithImpl(this._self, this._then);

  final CloudFunctionConfig _self;
  final $Res Function(CloudFunctionConfig) _then;

/// Create a copy of CloudFunctionConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? enableAutoReportGeneration = null,Object? enableSegmentationUpdates = null,Object? enableCohortAnalysis = null,Object? enableNotifications = null,Object? reportGenerationIntervalDays = null,Object? segmentationUpdateIntervalHours = null,Object? cohortAnalysisIntervalDays = null,Object? notificationConfig = null,Object? enableChurnPrediction = null,}) {
  return _then(_self.copyWith(
enableAutoReportGeneration: null == enableAutoReportGeneration ? _self.enableAutoReportGeneration : enableAutoReportGeneration // ignore: cast_nullable_to_non_nullable
as bool,enableSegmentationUpdates: null == enableSegmentationUpdates ? _self.enableSegmentationUpdates : enableSegmentationUpdates // ignore: cast_nullable_to_non_nullable
as bool,enableCohortAnalysis: null == enableCohortAnalysis ? _self.enableCohortAnalysis : enableCohortAnalysis // ignore: cast_nullable_to_non_nullable
as bool,enableNotifications: null == enableNotifications ? _self.enableNotifications : enableNotifications // ignore: cast_nullable_to_non_nullable
as bool,reportGenerationIntervalDays: null == reportGenerationIntervalDays ? _self.reportGenerationIntervalDays : reportGenerationIntervalDays // ignore: cast_nullable_to_non_nullable
as int,segmentationUpdateIntervalHours: null == segmentationUpdateIntervalHours ? _self.segmentationUpdateIntervalHours : segmentationUpdateIntervalHours // ignore: cast_nullable_to_non_nullable
as int,cohortAnalysisIntervalDays: null == cohortAnalysisIntervalDays ? _self.cohortAnalysisIntervalDays : cohortAnalysisIntervalDays // ignore: cast_nullable_to_non_nullable
as int,notificationConfig: null == notificationConfig ? _self.notificationConfig : notificationConfig // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,enableChurnPrediction: null == enableChurnPrediction ? _self.enableChurnPrediction : enableChurnPrediction // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CloudFunctionConfig].
extension CloudFunctionConfigPatterns on CloudFunctionConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CloudFunctionConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CloudFunctionConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CloudFunctionConfig value)  $default,){
final _that = this;
switch (_that) {
case _CloudFunctionConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CloudFunctionConfig value)?  $default,){
final _that = this;
switch (_that) {
case _CloudFunctionConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool enableAutoReportGeneration,  bool enableSegmentationUpdates,  bool enableCohortAnalysis,  bool enableNotifications,  int reportGenerationIntervalDays,  int segmentationUpdateIntervalHours,  int cohortAnalysisIntervalDays,  Map<String, dynamic> notificationConfig,  bool enableChurnPrediction)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CloudFunctionConfig() when $default != null:
return $default(_that.enableAutoReportGeneration,_that.enableSegmentationUpdates,_that.enableCohortAnalysis,_that.enableNotifications,_that.reportGenerationIntervalDays,_that.segmentationUpdateIntervalHours,_that.cohortAnalysisIntervalDays,_that.notificationConfig,_that.enableChurnPrediction);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool enableAutoReportGeneration,  bool enableSegmentationUpdates,  bool enableCohortAnalysis,  bool enableNotifications,  int reportGenerationIntervalDays,  int segmentationUpdateIntervalHours,  int cohortAnalysisIntervalDays,  Map<String, dynamic> notificationConfig,  bool enableChurnPrediction)  $default,) {final _that = this;
switch (_that) {
case _CloudFunctionConfig():
return $default(_that.enableAutoReportGeneration,_that.enableSegmentationUpdates,_that.enableCohortAnalysis,_that.enableNotifications,_that.reportGenerationIntervalDays,_that.segmentationUpdateIntervalHours,_that.cohortAnalysisIntervalDays,_that.notificationConfig,_that.enableChurnPrediction);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool enableAutoReportGeneration,  bool enableSegmentationUpdates,  bool enableCohortAnalysis,  bool enableNotifications,  int reportGenerationIntervalDays,  int segmentationUpdateIntervalHours,  int cohortAnalysisIntervalDays,  Map<String, dynamic> notificationConfig,  bool enableChurnPrediction)?  $default,) {final _that = this;
switch (_that) {
case _CloudFunctionConfig() when $default != null:
return $default(_that.enableAutoReportGeneration,_that.enableSegmentationUpdates,_that.enableCohortAnalysis,_that.enableNotifications,_that.reportGenerationIntervalDays,_that.segmentationUpdateIntervalHours,_that.cohortAnalysisIntervalDays,_that.notificationConfig,_that.enableChurnPrediction);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CloudFunctionConfig implements CloudFunctionConfig {
  const _CloudFunctionConfig({required this.enableAutoReportGeneration, required this.enableSegmentationUpdates, required this.enableCohortAnalysis, required this.enableNotifications, required this.reportGenerationIntervalDays, required this.segmentationUpdateIntervalHours, required this.cohortAnalysisIntervalDays, required final  Map<String, dynamic> notificationConfig, required this.enableChurnPrediction}): _notificationConfig = notificationConfig;
  factory _CloudFunctionConfig.fromJson(Map<String, dynamic> json) => _$CloudFunctionConfigFromJson(json);

@override final  bool enableAutoReportGeneration;
@override final  bool enableSegmentationUpdates;
@override final  bool enableCohortAnalysis;
@override final  bool enableNotifications;
@override final  int reportGenerationIntervalDays;
@override final  int segmentationUpdateIntervalHours;
@override final  int cohortAnalysisIntervalDays;
 final  Map<String, dynamic> _notificationConfig;
@override Map<String, dynamic> get notificationConfig {
  if (_notificationConfig is EqualUnmodifiableMapView) return _notificationConfig;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_notificationConfig);
}

@override final  bool enableChurnPrediction;

/// Create a copy of CloudFunctionConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CloudFunctionConfigCopyWith<_CloudFunctionConfig> get copyWith => __$CloudFunctionConfigCopyWithImpl<_CloudFunctionConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CloudFunctionConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CloudFunctionConfig&&(identical(other.enableAutoReportGeneration, enableAutoReportGeneration) || other.enableAutoReportGeneration == enableAutoReportGeneration)&&(identical(other.enableSegmentationUpdates, enableSegmentationUpdates) || other.enableSegmentationUpdates == enableSegmentationUpdates)&&(identical(other.enableCohortAnalysis, enableCohortAnalysis) || other.enableCohortAnalysis == enableCohortAnalysis)&&(identical(other.enableNotifications, enableNotifications) || other.enableNotifications == enableNotifications)&&(identical(other.reportGenerationIntervalDays, reportGenerationIntervalDays) || other.reportGenerationIntervalDays == reportGenerationIntervalDays)&&(identical(other.segmentationUpdateIntervalHours, segmentationUpdateIntervalHours) || other.segmentationUpdateIntervalHours == segmentationUpdateIntervalHours)&&(identical(other.cohortAnalysisIntervalDays, cohortAnalysisIntervalDays) || other.cohortAnalysisIntervalDays == cohortAnalysisIntervalDays)&&const DeepCollectionEquality().equals(other._notificationConfig, _notificationConfig)&&(identical(other.enableChurnPrediction, enableChurnPrediction) || other.enableChurnPrediction == enableChurnPrediction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enableAutoReportGeneration,enableSegmentationUpdates,enableCohortAnalysis,enableNotifications,reportGenerationIntervalDays,segmentationUpdateIntervalHours,cohortAnalysisIntervalDays,const DeepCollectionEquality().hash(_notificationConfig),enableChurnPrediction);

@override
String toString() {
  return 'CloudFunctionConfig(enableAutoReportGeneration: $enableAutoReportGeneration, enableSegmentationUpdates: $enableSegmentationUpdates, enableCohortAnalysis: $enableCohortAnalysis, enableNotifications: $enableNotifications, reportGenerationIntervalDays: $reportGenerationIntervalDays, segmentationUpdateIntervalHours: $segmentationUpdateIntervalHours, cohortAnalysisIntervalDays: $cohortAnalysisIntervalDays, notificationConfig: $notificationConfig, enableChurnPrediction: $enableChurnPrediction)';
}


}

/// @nodoc
abstract mixin class _$CloudFunctionConfigCopyWith<$Res> implements $CloudFunctionConfigCopyWith<$Res> {
  factory _$CloudFunctionConfigCopyWith(_CloudFunctionConfig value, $Res Function(_CloudFunctionConfig) _then) = __$CloudFunctionConfigCopyWithImpl;
@override @useResult
$Res call({
 bool enableAutoReportGeneration, bool enableSegmentationUpdates, bool enableCohortAnalysis, bool enableNotifications, int reportGenerationIntervalDays, int segmentationUpdateIntervalHours, int cohortAnalysisIntervalDays, Map<String, dynamic> notificationConfig, bool enableChurnPrediction
});




}
/// @nodoc
class __$CloudFunctionConfigCopyWithImpl<$Res>
    implements _$CloudFunctionConfigCopyWith<$Res> {
  __$CloudFunctionConfigCopyWithImpl(this._self, this._then);

  final _CloudFunctionConfig _self;
  final $Res Function(_CloudFunctionConfig) _then;

/// Create a copy of CloudFunctionConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? enableAutoReportGeneration = null,Object? enableSegmentationUpdates = null,Object? enableCohortAnalysis = null,Object? enableNotifications = null,Object? reportGenerationIntervalDays = null,Object? segmentationUpdateIntervalHours = null,Object? cohortAnalysisIntervalDays = null,Object? notificationConfig = null,Object? enableChurnPrediction = null,}) {
  return _then(_CloudFunctionConfig(
enableAutoReportGeneration: null == enableAutoReportGeneration ? _self.enableAutoReportGeneration : enableAutoReportGeneration // ignore: cast_nullable_to_non_nullable
as bool,enableSegmentationUpdates: null == enableSegmentationUpdates ? _self.enableSegmentationUpdates : enableSegmentationUpdates // ignore: cast_nullable_to_non_nullable
as bool,enableCohortAnalysis: null == enableCohortAnalysis ? _self.enableCohortAnalysis : enableCohortAnalysis // ignore: cast_nullable_to_non_nullable
as bool,enableNotifications: null == enableNotifications ? _self.enableNotifications : enableNotifications // ignore: cast_nullable_to_non_nullable
as bool,reportGenerationIntervalDays: null == reportGenerationIntervalDays ? _self.reportGenerationIntervalDays : reportGenerationIntervalDays // ignore: cast_nullable_to_non_nullable
as int,segmentationUpdateIntervalHours: null == segmentationUpdateIntervalHours ? _self.segmentationUpdateIntervalHours : segmentationUpdateIntervalHours // ignore: cast_nullable_to_non_nullable
as int,cohortAnalysisIntervalDays: null == cohortAnalysisIntervalDays ? _self.cohortAnalysisIntervalDays : cohortAnalysisIntervalDays // ignore: cast_nullable_to_non_nullable
as int,notificationConfig: null == notificationConfig ? _self._notificationConfig : notificationConfig // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,enableChurnPrediction: null == enableChurnPrediction ? _self.enableChurnPrediction : enableChurnPrediction // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$SegmentationResult {

 String get userId; String get previousSegment; String get newSegment; int get engagementScore; int get retentionScore; double get churnRiskScore; DateTime get analyzedAt;
/// Create a copy of SegmentationResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SegmentationResultCopyWith<SegmentationResult> get copyWith => _$SegmentationResultCopyWithImpl<SegmentationResult>(this as SegmentationResult, _$identity);

  /// Serializes this SegmentationResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SegmentationResult&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.previousSegment, previousSegment) || other.previousSegment == previousSegment)&&(identical(other.newSegment, newSegment) || other.newSegment == newSegment)&&(identical(other.engagementScore, engagementScore) || other.engagementScore == engagementScore)&&(identical(other.retentionScore, retentionScore) || other.retentionScore == retentionScore)&&(identical(other.churnRiskScore, churnRiskScore) || other.churnRiskScore == churnRiskScore)&&(identical(other.analyzedAt, analyzedAt) || other.analyzedAt == analyzedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,previousSegment,newSegment,engagementScore,retentionScore,churnRiskScore,analyzedAt);

@override
String toString() {
  return 'SegmentationResult(userId: $userId, previousSegment: $previousSegment, newSegment: $newSegment, engagementScore: $engagementScore, retentionScore: $retentionScore, churnRiskScore: $churnRiskScore, analyzedAt: $analyzedAt)';
}


}

/// @nodoc
abstract mixin class $SegmentationResultCopyWith<$Res>  {
  factory $SegmentationResultCopyWith(SegmentationResult value, $Res Function(SegmentationResult) _then) = _$SegmentationResultCopyWithImpl;
@useResult
$Res call({
 String userId, String previousSegment, String newSegment, int engagementScore, int retentionScore, double churnRiskScore, DateTime analyzedAt
});




}
/// @nodoc
class _$SegmentationResultCopyWithImpl<$Res>
    implements $SegmentationResultCopyWith<$Res> {
  _$SegmentationResultCopyWithImpl(this._self, this._then);

  final SegmentationResult _self;
  final $Res Function(SegmentationResult) _then;

/// Create a copy of SegmentationResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? previousSegment = null,Object? newSegment = null,Object? engagementScore = null,Object? retentionScore = null,Object? churnRiskScore = null,Object? analyzedAt = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,previousSegment: null == previousSegment ? _self.previousSegment : previousSegment // ignore: cast_nullable_to_non_nullable
as String,newSegment: null == newSegment ? _self.newSegment : newSegment // ignore: cast_nullable_to_non_nullable
as String,engagementScore: null == engagementScore ? _self.engagementScore : engagementScore // ignore: cast_nullable_to_non_nullable
as int,retentionScore: null == retentionScore ? _self.retentionScore : retentionScore // ignore: cast_nullable_to_non_nullable
as int,churnRiskScore: null == churnRiskScore ? _self.churnRiskScore : churnRiskScore // ignore: cast_nullable_to_non_nullable
as double,analyzedAt: null == analyzedAt ? _self.analyzedAt : analyzedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [SegmentationResult].
extension SegmentationResultPatterns on SegmentationResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SegmentationResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SegmentationResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SegmentationResult value)  $default,){
final _that = this;
switch (_that) {
case _SegmentationResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SegmentationResult value)?  $default,){
final _that = this;
switch (_that) {
case _SegmentationResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String previousSegment,  String newSegment,  int engagementScore,  int retentionScore,  double churnRiskScore,  DateTime analyzedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SegmentationResult() when $default != null:
return $default(_that.userId,_that.previousSegment,_that.newSegment,_that.engagementScore,_that.retentionScore,_that.churnRiskScore,_that.analyzedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String previousSegment,  String newSegment,  int engagementScore,  int retentionScore,  double churnRiskScore,  DateTime analyzedAt)  $default,) {final _that = this;
switch (_that) {
case _SegmentationResult():
return $default(_that.userId,_that.previousSegment,_that.newSegment,_that.engagementScore,_that.retentionScore,_that.churnRiskScore,_that.analyzedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String previousSegment,  String newSegment,  int engagementScore,  int retentionScore,  double churnRiskScore,  DateTime analyzedAt)?  $default,) {final _that = this;
switch (_that) {
case _SegmentationResult() when $default != null:
return $default(_that.userId,_that.previousSegment,_that.newSegment,_that.engagementScore,_that.retentionScore,_that.churnRiskScore,_that.analyzedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SegmentationResult implements SegmentationResult {
  const _SegmentationResult({required this.userId, required this.previousSegment, required this.newSegment, required this.engagementScore, required this.retentionScore, required this.churnRiskScore, required this.analyzedAt});
  factory _SegmentationResult.fromJson(Map<String, dynamic> json) => _$SegmentationResultFromJson(json);

@override final  String userId;
@override final  String previousSegment;
@override final  String newSegment;
@override final  int engagementScore;
@override final  int retentionScore;
@override final  double churnRiskScore;
@override final  DateTime analyzedAt;

/// Create a copy of SegmentationResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SegmentationResultCopyWith<_SegmentationResult> get copyWith => __$SegmentationResultCopyWithImpl<_SegmentationResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SegmentationResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SegmentationResult&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.previousSegment, previousSegment) || other.previousSegment == previousSegment)&&(identical(other.newSegment, newSegment) || other.newSegment == newSegment)&&(identical(other.engagementScore, engagementScore) || other.engagementScore == engagementScore)&&(identical(other.retentionScore, retentionScore) || other.retentionScore == retentionScore)&&(identical(other.churnRiskScore, churnRiskScore) || other.churnRiskScore == churnRiskScore)&&(identical(other.analyzedAt, analyzedAt) || other.analyzedAt == analyzedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,previousSegment,newSegment,engagementScore,retentionScore,churnRiskScore,analyzedAt);

@override
String toString() {
  return 'SegmentationResult(userId: $userId, previousSegment: $previousSegment, newSegment: $newSegment, engagementScore: $engagementScore, retentionScore: $retentionScore, churnRiskScore: $churnRiskScore, analyzedAt: $analyzedAt)';
}


}

/// @nodoc
abstract mixin class _$SegmentationResultCopyWith<$Res> implements $SegmentationResultCopyWith<$Res> {
  factory _$SegmentationResultCopyWith(_SegmentationResult value, $Res Function(_SegmentationResult) _then) = __$SegmentationResultCopyWithImpl;
@override @useResult
$Res call({
 String userId, String previousSegment, String newSegment, int engagementScore, int retentionScore, double churnRiskScore, DateTime analyzedAt
});




}
/// @nodoc
class __$SegmentationResultCopyWithImpl<$Res>
    implements _$SegmentationResultCopyWith<$Res> {
  __$SegmentationResultCopyWithImpl(this._self, this._then);

  final _SegmentationResult _self;
  final $Res Function(_SegmentationResult) _then;

/// Create a copy of SegmentationResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? previousSegment = null,Object? newSegment = null,Object? engagementScore = null,Object? retentionScore = null,Object? churnRiskScore = null,Object? analyzedAt = null,}) {
  return _then(_SegmentationResult(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,previousSegment: null == previousSegment ? _self.previousSegment : previousSegment // ignore: cast_nullable_to_non_nullable
as String,newSegment: null == newSegment ? _self.newSegment : newSegment // ignore: cast_nullable_to_non_nullable
as String,engagementScore: null == engagementScore ? _self.engagementScore : engagementScore // ignore: cast_nullable_to_non_nullable
as int,retentionScore: null == retentionScore ? _self.retentionScore : retentionScore // ignore: cast_nullable_to_non_nullable
as int,churnRiskScore: null == churnRiskScore ? _self.churnRiskScore : churnRiskScore // ignore: cast_nullable_to_non_nullable
as double,analyzedAt: null == analyzedAt ? _self.analyzedAt : analyzedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$CohortAnalysisResult {

 String get cohortId; DateTime get cohortStartDate; int get totalUsersInCohort; Map<int, int> get retentionByDaysSinceSignup; Map<int, double> get engagementByWeek; double get avgSessionDurationMinutes; int get totalQuizzesCompleted; double get avgAccuracy; DateTime get analyzedAt;
/// Create a copy of CohortAnalysisResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CohortAnalysisResultCopyWith<CohortAnalysisResult> get copyWith => _$CohortAnalysisResultCopyWithImpl<CohortAnalysisResult>(this as CohortAnalysisResult, _$identity);

  /// Serializes this CohortAnalysisResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CohortAnalysisResult&&(identical(other.cohortId, cohortId) || other.cohortId == cohortId)&&(identical(other.cohortStartDate, cohortStartDate) || other.cohortStartDate == cohortStartDate)&&(identical(other.totalUsersInCohort, totalUsersInCohort) || other.totalUsersInCohort == totalUsersInCohort)&&const DeepCollectionEquality().equals(other.retentionByDaysSinceSignup, retentionByDaysSinceSignup)&&const DeepCollectionEquality().equals(other.engagementByWeek, engagementByWeek)&&(identical(other.avgSessionDurationMinutes, avgSessionDurationMinutes) || other.avgSessionDurationMinutes == avgSessionDurationMinutes)&&(identical(other.totalQuizzesCompleted, totalQuizzesCompleted) || other.totalQuizzesCompleted == totalQuizzesCompleted)&&(identical(other.avgAccuracy, avgAccuracy) || other.avgAccuracy == avgAccuracy)&&(identical(other.analyzedAt, analyzedAt) || other.analyzedAt == analyzedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cohortId,cohortStartDate,totalUsersInCohort,const DeepCollectionEquality().hash(retentionByDaysSinceSignup),const DeepCollectionEquality().hash(engagementByWeek),avgSessionDurationMinutes,totalQuizzesCompleted,avgAccuracy,analyzedAt);

@override
String toString() {
  return 'CohortAnalysisResult(cohortId: $cohortId, cohortStartDate: $cohortStartDate, totalUsersInCohort: $totalUsersInCohort, retentionByDaysSinceSignup: $retentionByDaysSinceSignup, engagementByWeek: $engagementByWeek, avgSessionDurationMinutes: $avgSessionDurationMinutes, totalQuizzesCompleted: $totalQuizzesCompleted, avgAccuracy: $avgAccuracy, analyzedAt: $analyzedAt)';
}


}

/// @nodoc
abstract mixin class $CohortAnalysisResultCopyWith<$Res>  {
  factory $CohortAnalysisResultCopyWith(CohortAnalysisResult value, $Res Function(CohortAnalysisResult) _then) = _$CohortAnalysisResultCopyWithImpl;
@useResult
$Res call({
 String cohortId, DateTime cohortStartDate, int totalUsersInCohort, Map<int, int> retentionByDaysSinceSignup, Map<int, double> engagementByWeek, double avgSessionDurationMinutes, int totalQuizzesCompleted, double avgAccuracy, DateTime analyzedAt
});




}
/// @nodoc
class _$CohortAnalysisResultCopyWithImpl<$Res>
    implements $CohortAnalysisResultCopyWith<$Res> {
  _$CohortAnalysisResultCopyWithImpl(this._self, this._then);

  final CohortAnalysisResult _self;
  final $Res Function(CohortAnalysisResult) _then;

/// Create a copy of CohortAnalysisResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cohortId = null,Object? cohortStartDate = null,Object? totalUsersInCohort = null,Object? retentionByDaysSinceSignup = null,Object? engagementByWeek = null,Object? avgSessionDurationMinutes = null,Object? totalQuizzesCompleted = null,Object? avgAccuracy = null,Object? analyzedAt = null,}) {
  return _then(_self.copyWith(
cohortId: null == cohortId ? _self.cohortId : cohortId // ignore: cast_nullable_to_non_nullable
as String,cohortStartDate: null == cohortStartDate ? _self.cohortStartDate : cohortStartDate // ignore: cast_nullable_to_non_nullable
as DateTime,totalUsersInCohort: null == totalUsersInCohort ? _self.totalUsersInCohort : totalUsersInCohort // ignore: cast_nullable_to_non_nullable
as int,retentionByDaysSinceSignup: null == retentionByDaysSinceSignup ? _self.retentionByDaysSinceSignup : retentionByDaysSinceSignup // ignore: cast_nullable_to_non_nullable
as Map<int, int>,engagementByWeek: null == engagementByWeek ? _self.engagementByWeek : engagementByWeek // ignore: cast_nullable_to_non_nullable
as Map<int, double>,avgSessionDurationMinutes: null == avgSessionDurationMinutes ? _self.avgSessionDurationMinutes : avgSessionDurationMinutes // ignore: cast_nullable_to_non_nullable
as double,totalQuizzesCompleted: null == totalQuizzesCompleted ? _self.totalQuizzesCompleted : totalQuizzesCompleted // ignore: cast_nullable_to_non_nullable
as int,avgAccuracy: null == avgAccuracy ? _self.avgAccuracy : avgAccuracy // ignore: cast_nullable_to_non_nullable
as double,analyzedAt: null == analyzedAt ? _self.analyzedAt : analyzedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [CohortAnalysisResult].
extension CohortAnalysisResultPatterns on CohortAnalysisResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CohortAnalysisResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CohortAnalysisResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CohortAnalysisResult value)  $default,){
final _that = this;
switch (_that) {
case _CohortAnalysisResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CohortAnalysisResult value)?  $default,){
final _that = this;
switch (_that) {
case _CohortAnalysisResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String cohortId,  DateTime cohortStartDate,  int totalUsersInCohort,  Map<int, int> retentionByDaysSinceSignup,  Map<int, double> engagementByWeek,  double avgSessionDurationMinutes,  int totalQuizzesCompleted,  double avgAccuracy,  DateTime analyzedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CohortAnalysisResult() when $default != null:
return $default(_that.cohortId,_that.cohortStartDate,_that.totalUsersInCohort,_that.retentionByDaysSinceSignup,_that.engagementByWeek,_that.avgSessionDurationMinutes,_that.totalQuizzesCompleted,_that.avgAccuracy,_that.analyzedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String cohortId,  DateTime cohortStartDate,  int totalUsersInCohort,  Map<int, int> retentionByDaysSinceSignup,  Map<int, double> engagementByWeek,  double avgSessionDurationMinutes,  int totalQuizzesCompleted,  double avgAccuracy,  DateTime analyzedAt)  $default,) {final _that = this;
switch (_that) {
case _CohortAnalysisResult():
return $default(_that.cohortId,_that.cohortStartDate,_that.totalUsersInCohort,_that.retentionByDaysSinceSignup,_that.engagementByWeek,_that.avgSessionDurationMinutes,_that.totalQuizzesCompleted,_that.avgAccuracy,_that.analyzedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String cohortId,  DateTime cohortStartDate,  int totalUsersInCohort,  Map<int, int> retentionByDaysSinceSignup,  Map<int, double> engagementByWeek,  double avgSessionDurationMinutes,  int totalQuizzesCompleted,  double avgAccuracy,  DateTime analyzedAt)?  $default,) {final _that = this;
switch (_that) {
case _CohortAnalysisResult() when $default != null:
return $default(_that.cohortId,_that.cohortStartDate,_that.totalUsersInCohort,_that.retentionByDaysSinceSignup,_that.engagementByWeek,_that.avgSessionDurationMinutes,_that.totalQuizzesCompleted,_that.avgAccuracy,_that.analyzedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CohortAnalysisResult implements CohortAnalysisResult {
  const _CohortAnalysisResult({required this.cohortId, required this.cohortStartDate, required this.totalUsersInCohort, required final  Map<int, int> retentionByDaysSinceSignup, required final  Map<int, double> engagementByWeek, required this.avgSessionDurationMinutes, required this.totalQuizzesCompleted, required this.avgAccuracy, required this.analyzedAt}): _retentionByDaysSinceSignup = retentionByDaysSinceSignup,_engagementByWeek = engagementByWeek;
  factory _CohortAnalysisResult.fromJson(Map<String, dynamic> json) => _$CohortAnalysisResultFromJson(json);

@override final  String cohortId;
@override final  DateTime cohortStartDate;
@override final  int totalUsersInCohort;
 final  Map<int, int> _retentionByDaysSinceSignup;
@override Map<int, int> get retentionByDaysSinceSignup {
  if (_retentionByDaysSinceSignup is EqualUnmodifiableMapView) return _retentionByDaysSinceSignup;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_retentionByDaysSinceSignup);
}

 final  Map<int, double> _engagementByWeek;
@override Map<int, double> get engagementByWeek {
  if (_engagementByWeek is EqualUnmodifiableMapView) return _engagementByWeek;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_engagementByWeek);
}

@override final  double avgSessionDurationMinutes;
@override final  int totalQuizzesCompleted;
@override final  double avgAccuracy;
@override final  DateTime analyzedAt;

/// Create a copy of CohortAnalysisResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CohortAnalysisResultCopyWith<_CohortAnalysisResult> get copyWith => __$CohortAnalysisResultCopyWithImpl<_CohortAnalysisResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CohortAnalysisResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CohortAnalysisResult&&(identical(other.cohortId, cohortId) || other.cohortId == cohortId)&&(identical(other.cohortStartDate, cohortStartDate) || other.cohortStartDate == cohortStartDate)&&(identical(other.totalUsersInCohort, totalUsersInCohort) || other.totalUsersInCohort == totalUsersInCohort)&&const DeepCollectionEquality().equals(other._retentionByDaysSinceSignup, _retentionByDaysSinceSignup)&&const DeepCollectionEquality().equals(other._engagementByWeek, _engagementByWeek)&&(identical(other.avgSessionDurationMinutes, avgSessionDurationMinutes) || other.avgSessionDurationMinutes == avgSessionDurationMinutes)&&(identical(other.totalQuizzesCompleted, totalQuizzesCompleted) || other.totalQuizzesCompleted == totalQuizzesCompleted)&&(identical(other.avgAccuracy, avgAccuracy) || other.avgAccuracy == avgAccuracy)&&(identical(other.analyzedAt, analyzedAt) || other.analyzedAt == analyzedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cohortId,cohortStartDate,totalUsersInCohort,const DeepCollectionEquality().hash(_retentionByDaysSinceSignup),const DeepCollectionEquality().hash(_engagementByWeek),avgSessionDurationMinutes,totalQuizzesCompleted,avgAccuracy,analyzedAt);

@override
String toString() {
  return 'CohortAnalysisResult(cohortId: $cohortId, cohortStartDate: $cohortStartDate, totalUsersInCohort: $totalUsersInCohort, retentionByDaysSinceSignup: $retentionByDaysSinceSignup, engagementByWeek: $engagementByWeek, avgSessionDurationMinutes: $avgSessionDurationMinutes, totalQuizzesCompleted: $totalQuizzesCompleted, avgAccuracy: $avgAccuracy, analyzedAt: $analyzedAt)';
}


}

/// @nodoc
abstract mixin class _$CohortAnalysisResultCopyWith<$Res> implements $CohortAnalysisResultCopyWith<$Res> {
  factory _$CohortAnalysisResultCopyWith(_CohortAnalysisResult value, $Res Function(_CohortAnalysisResult) _then) = __$CohortAnalysisResultCopyWithImpl;
@override @useResult
$Res call({
 String cohortId, DateTime cohortStartDate, int totalUsersInCohort, Map<int, int> retentionByDaysSinceSignup, Map<int, double> engagementByWeek, double avgSessionDurationMinutes, int totalQuizzesCompleted, double avgAccuracy, DateTime analyzedAt
});




}
/// @nodoc
class __$CohortAnalysisResultCopyWithImpl<$Res>
    implements _$CohortAnalysisResultCopyWith<$Res> {
  __$CohortAnalysisResultCopyWithImpl(this._self, this._then);

  final _CohortAnalysisResult _self;
  final $Res Function(_CohortAnalysisResult) _then;

/// Create a copy of CohortAnalysisResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cohortId = null,Object? cohortStartDate = null,Object? totalUsersInCohort = null,Object? retentionByDaysSinceSignup = null,Object? engagementByWeek = null,Object? avgSessionDurationMinutes = null,Object? totalQuizzesCompleted = null,Object? avgAccuracy = null,Object? analyzedAt = null,}) {
  return _then(_CohortAnalysisResult(
cohortId: null == cohortId ? _self.cohortId : cohortId // ignore: cast_nullable_to_non_nullable
as String,cohortStartDate: null == cohortStartDate ? _self.cohortStartDate : cohortStartDate // ignore: cast_nullable_to_non_nullable
as DateTime,totalUsersInCohort: null == totalUsersInCohort ? _self.totalUsersInCohort : totalUsersInCohort // ignore: cast_nullable_to_non_nullable
as int,retentionByDaysSinceSignup: null == retentionByDaysSinceSignup ? _self._retentionByDaysSinceSignup : retentionByDaysSinceSignup // ignore: cast_nullable_to_non_nullable
as Map<int, int>,engagementByWeek: null == engagementByWeek ? _self._engagementByWeek : engagementByWeek // ignore: cast_nullable_to_non_nullable
as Map<int, double>,avgSessionDurationMinutes: null == avgSessionDurationMinutes ? _self.avgSessionDurationMinutes : avgSessionDurationMinutes // ignore: cast_nullable_to_non_nullable
as double,totalQuizzesCompleted: null == totalQuizzesCompleted ? _self.totalQuizzesCompleted : totalQuizzesCompleted // ignore: cast_nullable_to_non_nullable
as int,avgAccuracy: null == avgAccuracy ? _self.avgAccuracy : avgAccuracy // ignore: cast_nullable_to_non_nullable
as double,analyzedAt: null == analyzedAt ? _self.analyzedAt : analyzedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$NotificationPayload {

 String get userId; String get notificationType; String get title; String get body; Map<String, dynamic> get data; DateTime get scheduledAt; bool get isScheduled;
/// Create a copy of NotificationPayload
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationPayloadCopyWith<NotificationPayload> get copyWith => _$NotificationPayloadCopyWithImpl<NotificationPayload>(this as NotificationPayload, _$identity);

  /// Serializes this NotificationPayload to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationPayload&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.notificationType, notificationType) || other.notificationType == notificationType)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.scheduledAt, scheduledAt) || other.scheduledAt == scheduledAt)&&(identical(other.isScheduled, isScheduled) || other.isScheduled == isScheduled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,notificationType,title,body,const DeepCollectionEquality().hash(data),scheduledAt,isScheduled);

@override
String toString() {
  return 'NotificationPayload(userId: $userId, notificationType: $notificationType, title: $title, body: $body, data: $data, scheduledAt: $scheduledAt, isScheduled: $isScheduled)';
}


}

/// @nodoc
abstract mixin class $NotificationPayloadCopyWith<$Res>  {
  factory $NotificationPayloadCopyWith(NotificationPayload value, $Res Function(NotificationPayload) _then) = _$NotificationPayloadCopyWithImpl;
@useResult
$Res call({
 String userId, String notificationType, String title, String body, Map<String, dynamic> data, DateTime scheduledAt, bool isScheduled
});




}
/// @nodoc
class _$NotificationPayloadCopyWithImpl<$Res>
    implements $NotificationPayloadCopyWith<$Res> {
  _$NotificationPayloadCopyWithImpl(this._self, this._then);

  final NotificationPayload _self;
  final $Res Function(NotificationPayload) _then;

/// Create a copy of NotificationPayload
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? notificationType = null,Object? title = null,Object? body = null,Object? data = null,Object? scheduledAt = null,Object? isScheduled = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,notificationType: null == notificationType ? _self.notificationType : notificationType // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,scheduledAt: null == scheduledAt ? _self.scheduledAt : scheduledAt // ignore: cast_nullable_to_non_nullable
as DateTime,isScheduled: null == isScheduled ? _self.isScheduled : isScheduled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationPayload].
extension NotificationPayloadPatterns on NotificationPayload {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationPayload value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationPayload() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationPayload value)  $default,){
final _that = this;
switch (_that) {
case _NotificationPayload():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationPayload value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationPayload() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String notificationType,  String title,  String body,  Map<String, dynamic> data,  DateTime scheduledAt,  bool isScheduled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationPayload() when $default != null:
return $default(_that.userId,_that.notificationType,_that.title,_that.body,_that.data,_that.scheduledAt,_that.isScheduled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String notificationType,  String title,  String body,  Map<String, dynamic> data,  DateTime scheduledAt,  bool isScheduled)  $default,) {final _that = this;
switch (_that) {
case _NotificationPayload():
return $default(_that.userId,_that.notificationType,_that.title,_that.body,_that.data,_that.scheduledAt,_that.isScheduled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String notificationType,  String title,  String body,  Map<String, dynamic> data,  DateTime scheduledAt,  bool isScheduled)?  $default,) {final _that = this;
switch (_that) {
case _NotificationPayload() when $default != null:
return $default(_that.userId,_that.notificationType,_that.title,_that.body,_that.data,_that.scheduledAt,_that.isScheduled);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationPayload implements NotificationPayload {
  const _NotificationPayload({required this.userId, required this.notificationType, required this.title, required this.body, required final  Map<String, dynamic> data, required this.scheduledAt, required this.isScheduled}): _data = data;
  factory _NotificationPayload.fromJson(Map<String, dynamic> json) => _$NotificationPayloadFromJson(json);

@override final  String userId;
@override final  String notificationType;
@override final  String title;
@override final  String body;
 final  Map<String, dynamic> _data;
@override Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}

@override final  DateTime scheduledAt;
@override final  bool isScheduled;

/// Create a copy of NotificationPayload
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationPayloadCopyWith<_NotificationPayload> get copyWith => __$NotificationPayloadCopyWithImpl<_NotificationPayload>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationPayloadToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationPayload&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.notificationType, notificationType) || other.notificationType == notificationType)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.scheduledAt, scheduledAt) || other.scheduledAt == scheduledAt)&&(identical(other.isScheduled, isScheduled) || other.isScheduled == isScheduled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,notificationType,title,body,const DeepCollectionEquality().hash(_data),scheduledAt,isScheduled);

@override
String toString() {
  return 'NotificationPayload(userId: $userId, notificationType: $notificationType, title: $title, body: $body, data: $data, scheduledAt: $scheduledAt, isScheduled: $isScheduled)';
}


}

/// @nodoc
abstract mixin class _$NotificationPayloadCopyWith<$Res> implements $NotificationPayloadCopyWith<$Res> {
  factory _$NotificationPayloadCopyWith(_NotificationPayload value, $Res Function(_NotificationPayload) _then) = __$NotificationPayloadCopyWithImpl;
@override @useResult
$Res call({
 String userId, String notificationType, String title, String body, Map<String, dynamic> data, DateTime scheduledAt, bool isScheduled
});




}
/// @nodoc
class __$NotificationPayloadCopyWithImpl<$Res>
    implements _$NotificationPayloadCopyWith<$Res> {
  __$NotificationPayloadCopyWithImpl(this._self, this._then);

  final _NotificationPayload _self;
  final $Res Function(_NotificationPayload) _then;

/// Create a copy of NotificationPayload
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? notificationType = null,Object? title = null,Object? body = null,Object? data = null,Object? scheduledAt = null,Object? isScheduled = null,}) {
  return _then(_NotificationPayload(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,notificationType: null == notificationType ? _self.notificationType : notificationType // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,scheduledAt: null == scheduledAt ? _self.scheduledAt : scheduledAt // ignore: cast_nullable_to_non_nullable
as DateTime,isScheduled: null == isScheduled ? _self.isScheduled : isScheduled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$FunctionExecutionLog {

 String get functionId; FunctionType get functionType; DateTime get executedAt; String get status; int get processedUsers; int get failedUsers; int get durationSeconds; String? get errorMessage;
/// Create a copy of FunctionExecutionLog
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FunctionExecutionLogCopyWith<FunctionExecutionLog> get copyWith => _$FunctionExecutionLogCopyWithImpl<FunctionExecutionLog>(this as FunctionExecutionLog, _$identity);

  /// Serializes this FunctionExecutionLog to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FunctionExecutionLog&&(identical(other.functionId, functionId) || other.functionId == functionId)&&(identical(other.functionType, functionType) || other.functionType == functionType)&&(identical(other.executedAt, executedAt) || other.executedAt == executedAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.processedUsers, processedUsers) || other.processedUsers == processedUsers)&&(identical(other.failedUsers, failedUsers) || other.failedUsers == failedUsers)&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,functionId,functionType,executedAt,status,processedUsers,failedUsers,durationSeconds,errorMessage);

@override
String toString() {
  return 'FunctionExecutionLog(functionId: $functionId, functionType: $functionType, executedAt: $executedAt, status: $status, processedUsers: $processedUsers, failedUsers: $failedUsers, durationSeconds: $durationSeconds, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $FunctionExecutionLogCopyWith<$Res>  {
  factory $FunctionExecutionLogCopyWith(FunctionExecutionLog value, $Res Function(FunctionExecutionLog) _then) = _$FunctionExecutionLogCopyWithImpl;
@useResult
$Res call({
 String functionId, FunctionType functionType, DateTime executedAt, String status, int processedUsers, int failedUsers, int durationSeconds, String? errorMessage
});




}
/// @nodoc
class _$FunctionExecutionLogCopyWithImpl<$Res>
    implements $FunctionExecutionLogCopyWith<$Res> {
  _$FunctionExecutionLogCopyWithImpl(this._self, this._then);

  final FunctionExecutionLog _self;
  final $Res Function(FunctionExecutionLog) _then;

/// Create a copy of FunctionExecutionLog
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? functionId = null,Object? functionType = null,Object? executedAt = null,Object? status = null,Object? processedUsers = null,Object? failedUsers = null,Object? durationSeconds = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
functionId: null == functionId ? _self.functionId : functionId // ignore: cast_nullable_to_non_nullable
as String,functionType: null == functionType ? _self.functionType : functionType // ignore: cast_nullable_to_non_nullable
as FunctionType,executedAt: null == executedAt ? _self.executedAt : executedAt // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,processedUsers: null == processedUsers ? _self.processedUsers : processedUsers // ignore: cast_nullable_to_non_nullable
as int,failedUsers: null == failedUsers ? _self.failedUsers : failedUsers // ignore: cast_nullable_to_non_nullable
as int,durationSeconds: null == durationSeconds ? _self.durationSeconds : durationSeconds // ignore: cast_nullable_to_non_nullable
as int,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FunctionExecutionLog].
extension FunctionExecutionLogPatterns on FunctionExecutionLog {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FunctionExecutionLog value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FunctionExecutionLog() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FunctionExecutionLog value)  $default,){
final _that = this;
switch (_that) {
case _FunctionExecutionLog():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FunctionExecutionLog value)?  $default,){
final _that = this;
switch (_that) {
case _FunctionExecutionLog() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String functionId,  FunctionType functionType,  DateTime executedAt,  String status,  int processedUsers,  int failedUsers,  int durationSeconds,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FunctionExecutionLog() when $default != null:
return $default(_that.functionId,_that.functionType,_that.executedAt,_that.status,_that.processedUsers,_that.failedUsers,_that.durationSeconds,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String functionId,  FunctionType functionType,  DateTime executedAt,  String status,  int processedUsers,  int failedUsers,  int durationSeconds,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _FunctionExecutionLog():
return $default(_that.functionId,_that.functionType,_that.executedAt,_that.status,_that.processedUsers,_that.failedUsers,_that.durationSeconds,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String functionId,  FunctionType functionType,  DateTime executedAt,  String status,  int processedUsers,  int failedUsers,  int durationSeconds,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _FunctionExecutionLog() when $default != null:
return $default(_that.functionId,_that.functionType,_that.executedAt,_that.status,_that.processedUsers,_that.failedUsers,_that.durationSeconds,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FunctionExecutionLog implements FunctionExecutionLog {
  const _FunctionExecutionLog({required this.functionId, required this.functionType, required this.executedAt, required this.status, required this.processedUsers, required this.failedUsers, required this.durationSeconds, this.errorMessage});
  factory _FunctionExecutionLog.fromJson(Map<String, dynamic> json) => _$FunctionExecutionLogFromJson(json);

@override final  String functionId;
@override final  FunctionType functionType;
@override final  DateTime executedAt;
@override final  String status;
@override final  int processedUsers;
@override final  int failedUsers;
@override final  int durationSeconds;
@override final  String? errorMessage;

/// Create a copy of FunctionExecutionLog
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FunctionExecutionLogCopyWith<_FunctionExecutionLog> get copyWith => __$FunctionExecutionLogCopyWithImpl<_FunctionExecutionLog>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FunctionExecutionLogToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FunctionExecutionLog&&(identical(other.functionId, functionId) || other.functionId == functionId)&&(identical(other.functionType, functionType) || other.functionType == functionType)&&(identical(other.executedAt, executedAt) || other.executedAt == executedAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.processedUsers, processedUsers) || other.processedUsers == processedUsers)&&(identical(other.failedUsers, failedUsers) || other.failedUsers == failedUsers)&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,functionId,functionType,executedAt,status,processedUsers,failedUsers,durationSeconds,errorMessage);

@override
String toString() {
  return 'FunctionExecutionLog(functionId: $functionId, functionType: $functionType, executedAt: $executedAt, status: $status, processedUsers: $processedUsers, failedUsers: $failedUsers, durationSeconds: $durationSeconds, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$FunctionExecutionLogCopyWith<$Res> implements $FunctionExecutionLogCopyWith<$Res> {
  factory _$FunctionExecutionLogCopyWith(_FunctionExecutionLog value, $Res Function(_FunctionExecutionLog) _then) = __$FunctionExecutionLogCopyWithImpl;
@override @useResult
$Res call({
 String functionId, FunctionType functionType, DateTime executedAt, String status, int processedUsers, int failedUsers, int durationSeconds, String? errorMessage
});




}
/// @nodoc
class __$FunctionExecutionLogCopyWithImpl<$Res>
    implements _$FunctionExecutionLogCopyWith<$Res> {
  __$FunctionExecutionLogCopyWithImpl(this._self, this._then);

  final _FunctionExecutionLog _self;
  final $Res Function(_FunctionExecutionLog) _then;

/// Create a copy of FunctionExecutionLog
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? functionId = null,Object? functionType = null,Object? executedAt = null,Object? status = null,Object? processedUsers = null,Object? failedUsers = null,Object? durationSeconds = null,Object? errorMessage = freezed,}) {
  return _then(_FunctionExecutionLog(
functionId: null == functionId ? _self.functionId : functionId // ignore: cast_nullable_to_non_nullable
as String,functionType: null == functionType ? _self.functionType : functionType // ignore: cast_nullable_to_non_nullable
as FunctionType,executedAt: null == executedAt ? _self.executedAt : executedAt // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,processedUsers: null == processedUsers ? _self.processedUsers : processedUsers // ignore: cast_nullable_to_non_nullable
as int,failedUsers: null == failedUsers ? _self.failedUsers : failedUsers // ignore: cast_nullable_to_non_nullable
as int,durationSeconds: null == durationSeconds ? _self.durationSeconds : durationSeconds // ignore: cast_nullable_to_non_nullable
as int,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ChurnPrediction {

 String get userId; double get churnRiskScore; String get riskLevel; List<String> get riskIndicators; DateTime get predictedChurnDate; List<String> get recommendedActions; DateTime get analyzedAt;
/// Create a copy of ChurnPrediction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChurnPredictionCopyWith<ChurnPrediction> get copyWith => _$ChurnPredictionCopyWithImpl<ChurnPrediction>(this as ChurnPrediction, _$identity);

  /// Serializes this ChurnPrediction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChurnPrediction&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.churnRiskScore, churnRiskScore) || other.churnRiskScore == churnRiskScore)&&(identical(other.riskLevel, riskLevel) || other.riskLevel == riskLevel)&&const DeepCollectionEquality().equals(other.riskIndicators, riskIndicators)&&(identical(other.predictedChurnDate, predictedChurnDate) || other.predictedChurnDate == predictedChurnDate)&&const DeepCollectionEquality().equals(other.recommendedActions, recommendedActions)&&(identical(other.analyzedAt, analyzedAt) || other.analyzedAt == analyzedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,churnRiskScore,riskLevel,const DeepCollectionEquality().hash(riskIndicators),predictedChurnDate,const DeepCollectionEquality().hash(recommendedActions),analyzedAt);

@override
String toString() {
  return 'ChurnPrediction(userId: $userId, churnRiskScore: $churnRiskScore, riskLevel: $riskLevel, riskIndicators: $riskIndicators, predictedChurnDate: $predictedChurnDate, recommendedActions: $recommendedActions, analyzedAt: $analyzedAt)';
}


}

/// @nodoc
abstract mixin class $ChurnPredictionCopyWith<$Res>  {
  factory $ChurnPredictionCopyWith(ChurnPrediction value, $Res Function(ChurnPrediction) _then) = _$ChurnPredictionCopyWithImpl;
@useResult
$Res call({
 String userId, double churnRiskScore, String riskLevel, List<String> riskIndicators, DateTime predictedChurnDate, List<String> recommendedActions, DateTime analyzedAt
});




}
/// @nodoc
class _$ChurnPredictionCopyWithImpl<$Res>
    implements $ChurnPredictionCopyWith<$Res> {
  _$ChurnPredictionCopyWithImpl(this._self, this._then);

  final ChurnPrediction _self;
  final $Res Function(ChurnPrediction) _then;

/// Create a copy of ChurnPrediction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? churnRiskScore = null,Object? riskLevel = null,Object? riskIndicators = null,Object? predictedChurnDate = null,Object? recommendedActions = null,Object? analyzedAt = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,churnRiskScore: null == churnRiskScore ? _self.churnRiskScore : churnRiskScore // ignore: cast_nullable_to_non_nullable
as double,riskLevel: null == riskLevel ? _self.riskLevel : riskLevel // ignore: cast_nullable_to_non_nullable
as String,riskIndicators: null == riskIndicators ? _self.riskIndicators : riskIndicators // ignore: cast_nullable_to_non_nullable
as List<String>,predictedChurnDate: null == predictedChurnDate ? _self.predictedChurnDate : predictedChurnDate // ignore: cast_nullable_to_non_nullable
as DateTime,recommendedActions: null == recommendedActions ? _self.recommendedActions : recommendedActions // ignore: cast_nullable_to_non_nullable
as List<String>,analyzedAt: null == analyzedAt ? _self.analyzedAt : analyzedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ChurnPrediction].
extension ChurnPredictionPatterns on ChurnPrediction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChurnPrediction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChurnPrediction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChurnPrediction value)  $default,){
final _that = this;
switch (_that) {
case _ChurnPrediction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChurnPrediction value)?  $default,){
final _that = this;
switch (_that) {
case _ChurnPrediction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  double churnRiskScore,  String riskLevel,  List<String> riskIndicators,  DateTime predictedChurnDate,  List<String> recommendedActions,  DateTime analyzedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChurnPrediction() when $default != null:
return $default(_that.userId,_that.churnRiskScore,_that.riskLevel,_that.riskIndicators,_that.predictedChurnDate,_that.recommendedActions,_that.analyzedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  double churnRiskScore,  String riskLevel,  List<String> riskIndicators,  DateTime predictedChurnDate,  List<String> recommendedActions,  DateTime analyzedAt)  $default,) {final _that = this;
switch (_that) {
case _ChurnPrediction():
return $default(_that.userId,_that.churnRiskScore,_that.riskLevel,_that.riskIndicators,_that.predictedChurnDate,_that.recommendedActions,_that.analyzedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  double churnRiskScore,  String riskLevel,  List<String> riskIndicators,  DateTime predictedChurnDate,  List<String> recommendedActions,  DateTime analyzedAt)?  $default,) {final _that = this;
switch (_that) {
case _ChurnPrediction() when $default != null:
return $default(_that.userId,_that.churnRiskScore,_that.riskLevel,_that.riskIndicators,_that.predictedChurnDate,_that.recommendedActions,_that.analyzedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChurnPrediction implements ChurnPrediction {
  const _ChurnPrediction({required this.userId, required this.churnRiskScore, required this.riskLevel, required final  List<String> riskIndicators, required this.predictedChurnDate, required final  List<String> recommendedActions, required this.analyzedAt}): _riskIndicators = riskIndicators,_recommendedActions = recommendedActions;
  factory _ChurnPrediction.fromJson(Map<String, dynamic> json) => _$ChurnPredictionFromJson(json);

@override final  String userId;
@override final  double churnRiskScore;
@override final  String riskLevel;
 final  List<String> _riskIndicators;
@override List<String> get riskIndicators {
  if (_riskIndicators is EqualUnmodifiableListView) return _riskIndicators;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_riskIndicators);
}

@override final  DateTime predictedChurnDate;
 final  List<String> _recommendedActions;
@override List<String> get recommendedActions {
  if (_recommendedActions is EqualUnmodifiableListView) return _recommendedActions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recommendedActions);
}

@override final  DateTime analyzedAt;

/// Create a copy of ChurnPrediction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChurnPredictionCopyWith<_ChurnPrediction> get copyWith => __$ChurnPredictionCopyWithImpl<_ChurnPrediction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChurnPredictionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChurnPrediction&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.churnRiskScore, churnRiskScore) || other.churnRiskScore == churnRiskScore)&&(identical(other.riskLevel, riskLevel) || other.riskLevel == riskLevel)&&const DeepCollectionEquality().equals(other._riskIndicators, _riskIndicators)&&(identical(other.predictedChurnDate, predictedChurnDate) || other.predictedChurnDate == predictedChurnDate)&&const DeepCollectionEquality().equals(other._recommendedActions, _recommendedActions)&&(identical(other.analyzedAt, analyzedAt) || other.analyzedAt == analyzedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,churnRiskScore,riskLevel,const DeepCollectionEquality().hash(_riskIndicators),predictedChurnDate,const DeepCollectionEquality().hash(_recommendedActions),analyzedAt);

@override
String toString() {
  return 'ChurnPrediction(userId: $userId, churnRiskScore: $churnRiskScore, riskLevel: $riskLevel, riskIndicators: $riskIndicators, predictedChurnDate: $predictedChurnDate, recommendedActions: $recommendedActions, analyzedAt: $analyzedAt)';
}


}

/// @nodoc
abstract mixin class _$ChurnPredictionCopyWith<$Res> implements $ChurnPredictionCopyWith<$Res> {
  factory _$ChurnPredictionCopyWith(_ChurnPrediction value, $Res Function(_ChurnPrediction) _then) = __$ChurnPredictionCopyWithImpl;
@override @useResult
$Res call({
 String userId, double churnRiskScore, String riskLevel, List<String> riskIndicators, DateTime predictedChurnDate, List<String> recommendedActions, DateTime analyzedAt
});




}
/// @nodoc
class __$ChurnPredictionCopyWithImpl<$Res>
    implements _$ChurnPredictionCopyWith<$Res> {
  __$ChurnPredictionCopyWithImpl(this._self, this._then);

  final _ChurnPrediction _self;
  final $Res Function(_ChurnPrediction) _then;

/// Create a copy of ChurnPrediction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? churnRiskScore = null,Object? riskLevel = null,Object? riskIndicators = null,Object? predictedChurnDate = null,Object? recommendedActions = null,Object? analyzedAt = null,}) {
  return _then(_ChurnPrediction(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,churnRiskScore: null == churnRiskScore ? _self.churnRiskScore : churnRiskScore // ignore: cast_nullable_to_non_nullable
as double,riskLevel: null == riskLevel ? _self.riskLevel : riskLevel // ignore: cast_nullable_to_non_nullable
as String,riskIndicators: null == riskIndicators ? _self._riskIndicators : riskIndicators // ignore: cast_nullable_to_non_nullable
as List<String>,predictedChurnDate: null == predictedChurnDate ? _self.predictedChurnDate : predictedChurnDate // ignore: cast_nullable_to_non_nullable
as DateTime,recommendedActions: null == recommendedActions ? _self._recommendedActions : recommendedActions // ignore: cast_nullable_to_non_nullable
as List<String>,analyzedAt: null == analyzedAt ? _self.analyzedAt : analyzedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
