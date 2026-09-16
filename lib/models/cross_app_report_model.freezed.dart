// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cross_app_report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CrossAppReport {

 String get userId; Map<String, AppReportSummary> get appReports; DateTime get generatedAt; CrossAppStats get totalStats; String get reportPeriod;
/// Create a copy of CrossAppReport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CrossAppReportCopyWith<CrossAppReport> get copyWith => _$CrossAppReportCopyWithImpl<CrossAppReport>(this as CrossAppReport, _$identity);

  /// Serializes this CrossAppReport to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CrossAppReport&&(identical(other.userId, userId) || other.userId == userId)&&const DeepCollectionEquality().equals(other.appReports, appReports)&&(identical(other.generatedAt, generatedAt) || other.generatedAt == generatedAt)&&(identical(other.totalStats, totalStats) || other.totalStats == totalStats)&&(identical(other.reportPeriod, reportPeriod) || other.reportPeriod == reportPeriod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,const DeepCollectionEquality().hash(appReports),generatedAt,totalStats,reportPeriod);

@override
String toString() {
  return 'CrossAppReport(userId: $userId, appReports: $appReports, generatedAt: $generatedAt, totalStats: $totalStats, reportPeriod: $reportPeriod)';
}


}

/// @nodoc
abstract mixin class $CrossAppReportCopyWith<$Res>  {
  factory $CrossAppReportCopyWith(CrossAppReport value, $Res Function(CrossAppReport) _then) = _$CrossAppReportCopyWithImpl;
@useResult
$Res call({
 String userId, Map<String, AppReportSummary> appReports, DateTime generatedAt, CrossAppStats totalStats, String reportPeriod
});


$CrossAppStatsCopyWith<$Res> get totalStats;

}
/// @nodoc
class _$CrossAppReportCopyWithImpl<$Res>
    implements $CrossAppReportCopyWith<$Res> {
  _$CrossAppReportCopyWithImpl(this._self, this._then);

  final CrossAppReport _self;
  final $Res Function(CrossAppReport) _then;

/// Create a copy of CrossAppReport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? appReports = null,Object? generatedAt = null,Object? totalStats = null,Object? reportPeriod = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,appReports: null == appReports ? _self.appReports : appReports // ignore: cast_nullable_to_non_nullable
as Map<String, AppReportSummary>,generatedAt: null == generatedAt ? _self.generatedAt : generatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,totalStats: null == totalStats ? _self.totalStats : totalStats // ignore: cast_nullable_to_non_nullable
as CrossAppStats,reportPeriod: null == reportPeriod ? _self.reportPeriod : reportPeriod // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of CrossAppReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CrossAppStatsCopyWith<$Res> get totalStats {
  
  return $CrossAppStatsCopyWith<$Res>(_self.totalStats, (value) {
    return _then(_self.copyWith(totalStats: value));
  });
}
}


/// Adds pattern-matching-related methods to [CrossAppReport].
extension CrossAppReportPatterns on CrossAppReport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CrossAppReport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CrossAppReport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CrossAppReport value)  $default,){
final _that = this;
switch (_that) {
case _CrossAppReport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CrossAppReport value)?  $default,){
final _that = this;
switch (_that) {
case _CrossAppReport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  Map<String, AppReportSummary> appReports,  DateTime generatedAt,  CrossAppStats totalStats,  String reportPeriod)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CrossAppReport() when $default != null:
return $default(_that.userId,_that.appReports,_that.generatedAt,_that.totalStats,_that.reportPeriod);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  Map<String, AppReportSummary> appReports,  DateTime generatedAt,  CrossAppStats totalStats,  String reportPeriod)  $default,) {final _that = this;
switch (_that) {
case _CrossAppReport():
return $default(_that.userId,_that.appReports,_that.generatedAt,_that.totalStats,_that.reportPeriod);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  Map<String, AppReportSummary> appReports,  DateTime generatedAt,  CrossAppStats totalStats,  String reportPeriod)?  $default,) {final _that = this;
switch (_that) {
case _CrossAppReport() when $default != null:
return $default(_that.userId,_that.appReports,_that.generatedAt,_that.totalStats,_that.reportPeriod);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CrossAppReport implements CrossAppReport {
  const _CrossAppReport({required this.userId, required final  Map<String, AppReportSummary> appReports, required this.generatedAt, required this.totalStats, required this.reportPeriod}): _appReports = appReports;
  factory _CrossAppReport.fromJson(Map<String, dynamic> json) => _$CrossAppReportFromJson(json);

@override final  String userId;
 final  Map<String, AppReportSummary> _appReports;
@override Map<String, AppReportSummary> get appReports {
  if (_appReports is EqualUnmodifiableMapView) return _appReports;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_appReports);
}

@override final  DateTime generatedAt;
@override final  CrossAppStats totalStats;
@override final  String reportPeriod;

/// Create a copy of CrossAppReport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CrossAppReportCopyWith<_CrossAppReport> get copyWith => __$CrossAppReportCopyWithImpl<_CrossAppReport>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CrossAppReportToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CrossAppReport&&(identical(other.userId, userId) || other.userId == userId)&&const DeepCollectionEquality().equals(other._appReports, _appReports)&&(identical(other.generatedAt, generatedAt) || other.generatedAt == generatedAt)&&(identical(other.totalStats, totalStats) || other.totalStats == totalStats)&&(identical(other.reportPeriod, reportPeriod) || other.reportPeriod == reportPeriod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,const DeepCollectionEquality().hash(_appReports),generatedAt,totalStats,reportPeriod);

@override
String toString() {
  return 'CrossAppReport(userId: $userId, appReports: $appReports, generatedAt: $generatedAt, totalStats: $totalStats, reportPeriod: $reportPeriod)';
}


}

/// @nodoc
abstract mixin class _$CrossAppReportCopyWith<$Res> implements $CrossAppReportCopyWith<$Res> {
  factory _$CrossAppReportCopyWith(_CrossAppReport value, $Res Function(_CrossAppReport) _then) = __$CrossAppReportCopyWithImpl;
@override @useResult
$Res call({
 String userId, Map<String, AppReportSummary> appReports, DateTime generatedAt, CrossAppStats totalStats, String reportPeriod
});


@override $CrossAppStatsCopyWith<$Res> get totalStats;

}
/// @nodoc
class __$CrossAppReportCopyWithImpl<$Res>
    implements _$CrossAppReportCopyWith<$Res> {
  __$CrossAppReportCopyWithImpl(this._self, this._then);

  final _CrossAppReport _self;
  final $Res Function(_CrossAppReport) _then;

/// Create a copy of CrossAppReport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? appReports = null,Object? generatedAt = null,Object? totalStats = null,Object? reportPeriod = null,}) {
  return _then(_CrossAppReport(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,appReports: null == appReports ? _self._appReports : appReports // ignore: cast_nullable_to_non_nullable
as Map<String, AppReportSummary>,generatedAt: null == generatedAt ? _self.generatedAt : generatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,totalStats: null == totalStats ? _self.totalStats : totalStats // ignore: cast_nullable_to_non_nullable
as CrossAppStats,reportPeriod: null == reportPeriod ? _self.reportPeriod : reportPeriod // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of CrossAppReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CrossAppStatsCopyWith<$Res> get totalStats {
  
  return $CrossAppStatsCopyWith<$Res>(_self.totalStats, (value) {
    return _then(_self.copyWith(totalStats: value));
  });
}
}


/// @nodoc
mixin _$AppReportSummary {

 String get appId;// 'kokugo', 'sansu', 'eigo', etc.
 String get appName; int get totalLearningMinutes; double get averageAccuracy; int get quizzesCompleted; int get badgesEarned; int get coinsEarned; double get growthTrend;// -1.0 to 1.0
 String get performanceLevel;
/// Create a copy of AppReportSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppReportSummaryCopyWith<AppReportSummary> get copyWith => _$AppReportSummaryCopyWithImpl<AppReportSummary>(this as AppReportSummary, _$identity);

  /// Serializes this AppReportSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppReportSummary&&(identical(other.appId, appId) || other.appId == appId)&&(identical(other.appName, appName) || other.appName == appName)&&(identical(other.totalLearningMinutes, totalLearningMinutes) || other.totalLearningMinutes == totalLearningMinutes)&&(identical(other.averageAccuracy, averageAccuracy) || other.averageAccuracy == averageAccuracy)&&(identical(other.quizzesCompleted, quizzesCompleted) || other.quizzesCompleted == quizzesCompleted)&&(identical(other.badgesEarned, badgesEarned) || other.badgesEarned == badgesEarned)&&(identical(other.coinsEarned, coinsEarned) || other.coinsEarned == coinsEarned)&&(identical(other.growthTrend, growthTrend) || other.growthTrend == growthTrend)&&(identical(other.performanceLevel, performanceLevel) || other.performanceLevel == performanceLevel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,appId,appName,totalLearningMinutes,averageAccuracy,quizzesCompleted,badgesEarned,coinsEarned,growthTrend,performanceLevel);

@override
String toString() {
  return 'AppReportSummary(appId: $appId, appName: $appName, totalLearningMinutes: $totalLearningMinutes, averageAccuracy: $averageAccuracy, quizzesCompleted: $quizzesCompleted, badgesEarned: $badgesEarned, coinsEarned: $coinsEarned, growthTrend: $growthTrend, performanceLevel: $performanceLevel)';
}


}

/// @nodoc
abstract mixin class $AppReportSummaryCopyWith<$Res>  {
  factory $AppReportSummaryCopyWith(AppReportSummary value, $Res Function(AppReportSummary) _then) = _$AppReportSummaryCopyWithImpl;
@useResult
$Res call({
 String appId, String appName, int totalLearningMinutes, double averageAccuracy, int quizzesCompleted, int badgesEarned, int coinsEarned, double growthTrend, String performanceLevel
});




}
/// @nodoc
class _$AppReportSummaryCopyWithImpl<$Res>
    implements $AppReportSummaryCopyWith<$Res> {
  _$AppReportSummaryCopyWithImpl(this._self, this._then);

  final AppReportSummary _self;
  final $Res Function(AppReportSummary) _then;

/// Create a copy of AppReportSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? appId = null,Object? appName = null,Object? totalLearningMinutes = null,Object? averageAccuracy = null,Object? quizzesCompleted = null,Object? badgesEarned = null,Object? coinsEarned = null,Object? growthTrend = null,Object? performanceLevel = null,}) {
  return _then(_self.copyWith(
appId: null == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as String,appName: null == appName ? _self.appName : appName // ignore: cast_nullable_to_non_nullable
as String,totalLearningMinutes: null == totalLearningMinutes ? _self.totalLearningMinutes : totalLearningMinutes // ignore: cast_nullable_to_non_nullable
as int,averageAccuracy: null == averageAccuracy ? _self.averageAccuracy : averageAccuracy // ignore: cast_nullable_to_non_nullable
as double,quizzesCompleted: null == quizzesCompleted ? _self.quizzesCompleted : quizzesCompleted // ignore: cast_nullable_to_non_nullable
as int,badgesEarned: null == badgesEarned ? _self.badgesEarned : badgesEarned // ignore: cast_nullable_to_non_nullable
as int,coinsEarned: null == coinsEarned ? _self.coinsEarned : coinsEarned // ignore: cast_nullable_to_non_nullable
as int,growthTrend: null == growthTrend ? _self.growthTrend : growthTrend // ignore: cast_nullable_to_non_nullable
as double,performanceLevel: null == performanceLevel ? _self.performanceLevel : performanceLevel // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AppReportSummary].
extension AppReportSummaryPatterns on AppReportSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppReportSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppReportSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppReportSummary value)  $default,){
final _that = this;
switch (_that) {
case _AppReportSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppReportSummary value)?  $default,){
final _that = this;
switch (_that) {
case _AppReportSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String appId,  String appName,  int totalLearningMinutes,  double averageAccuracy,  int quizzesCompleted,  int badgesEarned,  int coinsEarned,  double growthTrend,  String performanceLevel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppReportSummary() when $default != null:
return $default(_that.appId,_that.appName,_that.totalLearningMinutes,_that.averageAccuracy,_that.quizzesCompleted,_that.badgesEarned,_that.coinsEarned,_that.growthTrend,_that.performanceLevel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String appId,  String appName,  int totalLearningMinutes,  double averageAccuracy,  int quizzesCompleted,  int badgesEarned,  int coinsEarned,  double growthTrend,  String performanceLevel)  $default,) {final _that = this;
switch (_that) {
case _AppReportSummary():
return $default(_that.appId,_that.appName,_that.totalLearningMinutes,_that.averageAccuracy,_that.quizzesCompleted,_that.badgesEarned,_that.coinsEarned,_that.growthTrend,_that.performanceLevel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String appId,  String appName,  int totalLearningMinutes,  double averageAccuracy,  int quizzesCompleted,  int badgesEarned,  int coinsEarned,  double growthTrend,  String performanceLevel)?  $default,) {final _that = this;
switch (_that) {
case _AppReportSummary() when $default != null:
return $default(_that.appId,_that.appName,_that.totalLearningMinutes,_that.averageAccuracy,_that.quizzesCompleted,_that.badgesEarned,_that.coinsEarned,_that.growthTrend,_that.performanceLevel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppReportSummary implements AppReportSummary {
  const _AppReportSummary({required this.appId, required this.appName, required this.totalLearningMinutes, required this.averageAccuracy, required this.quizzesCompleted, required this.badgesEarned, required this.coinsEarned, required this.growthTrend, required this.performanceLevel});
  factory _AppReportSummary.fromJson(Map<String, dynamic> json) => _$AppReportSummaryFromJson(json);

@override final  String appId;
// 'kokugo', 'sansu', 'eigo', etc.
@override final  String appName;
@override final  int totalLearningMinutes;
@override final  double averageAccuracy;
@override final  int quizzesCompleted;
@override final  int badgesEarned;
@override final  int coinsEarned;
@override final  double growthTrend;
// -1.0 to 1.0
@override final  String performanceLevel;

/// Create a copy of AppReportSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppReportSummaryCopyWith<_AppReportSummary> get copyWith => __$AppReportSummaryCopyWithImpl<_AppReportSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppReportSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppReportSummary&&(identical(other.appId, appId) || other.appId == appId)&&(identical(other.appName, appName) || other.appName == appName)&&(identical(other.totalLearningMinutes, totalLearningMinutes) || other.totalLearningMinutes == totalLearningMinutes)&&(identical(other.averageAccuracy, averageAccuracy) || other.averageAccuracy == averageAccuracy)&&(identical(other.quizzesCompleted, quizzesCompleted) || other.quizzesCompleted == quizzesCompleted)&&(identical(other.badgesEarned, badgesEarned) || other.badgesEarned == badgesEarned)&&(identical(other.coinsEarned, coinsEarned) || other.coinsEarned == coinsEarned)&&(identical(other.growthTrend, growthTrend) || other.growthTrend == growthTrend)&&(identical(other.performanceLevel, performanceLevel) || other.performanceLevel == performanceLevel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,appId,appName,totalLearningMinutes,averageAccuracy,quizzesCompleted,badgesEarned,coinsEarned,growthTrend,performanceLevel);

@override
String toString() {
  return 'AppReportSummary(appId: $appId, appName: $appName, totalLearningMinutes: $totalLearningMinutes, averageAccuracy: $averageAccuracy, quizzesCompleted: $quizzesCompleted, badgesEarned: $badgesEarned, coinsEarned: $coinsEarned, growthTrend: $growthTrend, performanceLevel: $performanceLevel)';
}


}

/// @nodoc
abstract mixin class _$AppReportSummaryCopyWith<$Res> implements $AppReportSummaryCopyWith<$Res> {
  factory _$AppReportSummaryCopyWith(_AppReportSummary value, $Res Function(_AppReportSummary) _then) = __$AppReportSummaryCopyWithImpl;
@override @useResult
$Res call({
 String appId, String appName, int totalLearningMinutes, double averageAccuracy, int quizzesCompleted, int badgesEarned, int coinsEarned, double growthTrend, String performanceLevel
});




}
/// @nodoc
class __$AppReportSummaryCopyWithImpl<$Res>
    implements _$AppReportSummaryCopyWith<$Res> {
  __$AppReportSummaryCopyWithImpl(this._self, this._then);

  final _AppReportSummary _self;
  final $Res Function(_AppReportSummary) _then;

/// Create a copy of AppReportSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? appId = null,Object? appName = null,Object? totalLearningMinutes = null,Object? averageAccuracy = null,Object? quizzesCompleted = null,Object? badgesEarned = null,Object? coinsEarned = null,Object? growthTrend = null,Object? performanceLevel = null,}) {
  return _then(_AppReportSummary(
appId: null == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as String,appName: null == appName ? _self.appName : appName // ignore: cast_nullable_to_non_nullable
as String,totalLearningMinutes: null == totalLearningMinutes ? _self.totalLearningMinutes : totalLearningMinutes // ignore: cast_nullable_to_non_nullable
as int,averageAccuracy: null == averageAccuracy ? _self.averageAccuracy : averageAccuracy // ignore: cast_nullable_to_non_nullable
as double,quizzesCompleted: null == quizzesCompleted ? _self.quizzesCompleted : quizzesCompleted // ignore: cast_nullable_to_non_nullable
as int,badgesEarned: null == badgesEarned ? _self.badgesEarned : badgesEarned // ignore: cast_nullable_to_non_nullable
as int,coinsEarned: null == coinsEarned ? _self.coinsEarned : coinsEarned // ignore: cast_nullable_to_non_nullable
as int,growthTrend: null == growthTrend ? _self.growthTrend : growthTrend // ignore: cast_nullable_to_non_nullable
as double,performanceLevel: null == performanceLevel ? _self.performanceLevel : performanceLevel // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$CrossAppStats {

 int get totalLearningMinutes; int get totalQuizzesCompleted; double get overallAverageAccuracy; int get totalBadgesEarned; int get totalCoinsEarned; int get appsActive;// 何個のアプリで学習したか
 List<String> get topPerformingApps;// パフォーマンス上位3アプリ
 String get overallPerformance;// 'excellent', 'good', 'average', 'needs_improvement'
 double get consistencyScore;// 0-100: 継続度
 int get consecutiveDaysLearning;
/// Create a copy of CrossAppStats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CrossAppStatsCopyWith<CrossAppStats> get copyWith => _$CrossAppStatsCopyWithImpl<CrossAppStats>(this as CrossAppStats, _$identity);

  /// Serializes this CrossAppStats to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CrossAppStats&&(identical(other.totalLearningMinutes, totalLearningMinutes) || other.totalLearningMinutes == totalLearningMinutes)&&(identical(other.totalQuizzesCompleted, totalQuizzesCompleted) || other.totalQuizzesCompleted == totalQuizzesCompleted)&&(identical(other.overallAverageAccuracy, overallAverageAccuracy) || other.overallAverageAccuracy == overallAverageAccuracy)&&(identical(other.totalBadgesEarned, totalBadgesEarned) || other.totalBadgesEarned == totalBadgesEarned)&&(identical(other.totalCoinsEarned, totalCoinsEarned) || other.totalCoinsEarned == totalCoinsEarned)&&(identical(other.appsActive, appsActive) || other.appsActive == appsActive)&&const DeepCollectionEquality().equals(other.topPerformingApps, topPerformingApps)&&(identical(other.overallPerformance, overallPerformance) || other.overallPerformance == overallPerformance)&&(identical(other.consistencyScore, consistencyScore) || other.consistencyScore == consistencyScore)&&(identical(other.consecutiveDaysLearning, consecutiveDaysLearning) || other.consecutiveDaysLearning == consecutiveDaysLearning));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalLearningMinutes,totalQuizzesCompleted,overallAverageAccuracy,totalBadgesEarned,totalCoinsEarned,appsActive,const DeepCollectionEquality().hash(topPerformingApps),overallPerformance,consistencyScore,consecutiveDaysLearning);

@override
String toString() {
  return 'CrossAppStats(totalLearningMinutes: $totalLearningMinutes, totalQuizzesCompleted: $totalQuizzesCompleted, overallAverageAccuracy: $overallAverageAccuracy, totalBadgesEarned: $totalBadgesEarned, totalCoinsEarned: $totalCoinsEarned, appsActive: $appsActive, topPerformingApps: $topPerformingApps, overallPerformance: $overallPerformance, consistencyScore: $consistencyScore, consecutiveDaysLearning: $consecutiveDaysLearning)';
}


}

/// @nodoc
abstract mixin class $CrossAppStatsCopyWith<$Res>  {
  factory $CrossAppStatsCopyWith(CrossAppStats value, $Res Function(CrossAppStats) _then) = _$CrossAppStatsCopyWithImpl;
@useResult
$Res call({
 int totalLearningMinutes, int totalQuizzesCompleted, double overallAverageAccuracy, int totalBadgesEarned, int totalCoinsEarned, int appsActive, List<String> topPerformingApps, String overallPerformance, double consistencyScore, int consecutiveDaysLearning
});




}
/// @nodoc
class _$CrossAppStatsCopyWithImpl<$Res>
    implements $CrossAppStatsCopyWith<$Res> {
  _$CrossAppStatsCopyWithImpl(this._self, this._then);

  final CrossAppStats _self;
  final $Res Function(CrossAppStats) _then;

/// Create a copy of CrossAppStats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalLearningMinutes = null,Object? totalQuizzesCompleted = null,Object? overallAverageAccuracy = null,Object? totalBadgesEarned = null,Object? totalCoinsEarned = null,Object? appsActive = null,Object? topPerformingApps = null,Object? overallPerformance = null,Object? consistencyScore = null,Object? consecutiveDaysLearning = null,}) {
  return _then(_self.copyWith(
totalLearningMinutes: null == totalLearningMinutes ? _self.totalLearningMinutes : totalLearningMinutes // ignore: cast_nullable_to_non_nullable
as int,totalQuizzesCompleted: null == totalQuizzesCompleted ? _self.totalQuizzesCompleted : totalQuizzesCompleted // ignore: cast_nullable_to_non_nullable
as int,overallAverageAccuracy: null == overallAverageAccuracy ? _self.overallAverageAccuracy : overallAverageAccuracy // ignore: cast_nullable_to_non_nullable
as double,totalBadgesEarned: null == totalBadgesEarned ? _self.totalBadgesEarned : totalBadgesEarned // ignore: cast_nullable_to_non_nullable
as int,totalCoinsEarned: null == totalCoinsEarned ? _self.totalCoinsEarned : totalCoinsEarned // ignore: cast_nullable_to_non_nullable
as int,appsActive: null == appsActive ? _self.appsActive : appsActive // ignore: cast_nullable_to_non_nullable
as int,topPerformingApps: null == topPerformingApps ? _self.topPerformingApps : topPerformingApps // ignore: cast_nullable_to_non_nullable
as List<String>,overallPerformance: null == overallPerformance ? _self.overallPerformance : overallPerformance // ignore: cast_nullable_to_non_nullable
as String,consistencyScore: null == consistencyScore ? _self.consistencyScore : consistencyScore // ignore: cast_nullable_to_non_nullable
as double,consecutiveDaysLearning: null == consecutiveDaysLearning ? _self.consecutiveDaysLearning : consecutiveDaysLearning // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CrossAppStats].
extension CrossAppStatsPatterns on CrossAppStats {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CrossAppStats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CrossAppStats() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CrossAppStats value)  $default,){
final _that = this;
switch (_that) {
case _CrossAppStats():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CrossAppStats value)?  $default,){
final _that = this;
switch (_that) {
case _CrossAppStats() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalLearningMinutes,  int totalQuizzesCompleted,  double overallAverageAccuracy,  int totalBadgesEarned,  int totalCoinsEarned,  int appsActive,  List<String> topPerformingApps,  String overallPerformance,  double consistencyScore,  int consecutiveDaysLearning)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CrossAppStats() when $default != null:
return $default(_that.totalLearningMinutes,_that.totalQuizzesCompleted,_that.overallAverageAccuracy,_that.totalBadgesEarned,_that.totalCoinsEarned,_that.appsActive,_that.topPerformingApps,_that.overallPerformance,_that.consistencyScore,_that.consecutiveDaysLearning);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalLearningMinutes,  int totalQuizzesCompleted,  double overallAverageAccuracy,  int totalBadgesEarned,  int totalCoinsEarned,  int appsActive,  List<String> topPerformingApps,  String overallPerformance,  double consistencyScore,  int consecutiveDaysLearning)  $default,) {final _that = this;
switch (_that) {
case _CrossAppStats():
return $default(_that.totalLearningMinutes,_that.totalQuizzesCompleted,_that.overallAverageAccuracy,_that.totalBadgesEarned,_that.totalCoinsEarned,_that.appsActive,_that.topPerformingApps,_that.overallPerformance,_that.consistencyScore,_that.consecutiveDaysLearning);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalLearningMinutes,  int totalQuizzesCompleted,  double overallAverageAccuracy,  int totalBadgesEarned,  int totalCoinsEarned,  int appsActive,  List<String> topPerformingApps,  String overallPerformance,  double consistencyScore,  int consecutiveDaysLearning)?  $default,) {final _that = this;
switch (_that) {
case _CrossAppStats() when $default != null:
return $default(_that.totalLearningMinutes,_that.totalQuizzesCompleted,_that.overallAverageAccuracy,_that.totalBadgesEarned,_that.totalCoinsEarned,_that.appsActive,_that.topPerformingApps,_that.overallPerformance,_that.consistencyScore,_that.consecutiveDaysLearning);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CrossAppStats implements CrossAppStats {
  const _CrossAppStats({required this.totalLearningMinutes, required this.totalQuizzesCompleted, required this.overallAverageAccuracy, required this.totalBadgesEarned, required this.totalCoinsEarned, required this.appsActive, required final  List<String> topPerformingApps, required this.overallPerformance, required this.consistencyScore, required this.consecutiveDaysLearning}): _topPerformingApps = topPerformingApps;
  factory _CrossAppStats.fromJson(Map<String, dynamic> json) => _$CrossAppStatsFromJson(json);

@override final  int totalLearningMinutes;
@override final  int totalQuizzesCompleted;
@override final  double overallAverageAccuracy;
@override final  int totalBadgesEarned;
@override final  int totalCoinsEarned;
@override final  int appsActive;
// 何個のアプリで学習したか
 final  List<String> _topPerformingApps;
// 何個のアプリで学習したか
@override List<String> get topPerformingApps {
  if (_topPerformingApps is EqualUnmodifiableListView) return _topPerformingApps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topPerformingApps);
}

// パフォーマンス上位3アプリ
@override final  String overallPerformance;
// 'excellent', 'good', 'average', 'needs_improvement'
@override final  double consistencyScore;
// 0-100: 継続度
@override final  int consecutiveDaysLearning;

/// Create a copy of CrossAppStats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CrossAppStatsCopyWith<_CrossAppStats> get copyWith => __$CrossAppStatsCopyWithImpl<_CrossAppStats>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CrossAppStatsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CrossAppStats&&(identical(other.totalLearningMinutes, totalLearningMinutes) || other.totalLearningMinutes == totalLearningMinutes)&&(identical(other.totalQuizzesCompleted, totalQuizzesCompleted) || other.totalQuizzesCompleted == totalQuizzesCompleted)&&(identical(other.overallAverageAccuracy, overallAverageAccuracy) || other.overallAverageAccuracy == overallAverageAccuracy)&&(identical(other.totalBadgesEarned, totalBadgesEarned) || other.totalBadgesEarned == totalBadgesEarned)&&(identical(other.totalCoinsEarned, totalCoinsEarned) || other.totalCoinsEarned == totalCoinsEarned)&&(identical(other.appsActive, appsActive) || other.appsActive == appsActive)&&const DeepCollectionEquality().equals(other._topPerformingApps, _topPerformingApps)&&(identical(other.overallPerformance, overallPerformance) || other.overallPerformance == overallPerformance)&&(identical(other.consistencyScore, consistencyScore) || other.consistencyScore == consistencyScore)&&(identical(other.consecutiveDaysLearning, consecutiveDaysLearning) || other.consecutiveDaysLearning == consecutiveDaysLearning));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalLearningMinutes,totalQuizzesCompleted,overallAverageAccuracy,totalBadgesEarned,totalCoinsEarned,appsActive,const DeepCollectionEquality().hash(_topPerformingApps),overallPerformance,consistencyScore,consecutiveDaysLearning);

@override
String toString() {
  return 'CrossAppStats(totalLearningMinutes: $totalLearningMinutes, totalQuizzesCompleted: $totalQuizzesCompleted, overallAverageAccuracy: $overallAverageAccuracy, totalBadgesEarned: $totalBadgesEarned, totalCoinsEarned: $totalCoinsEarned, appsActive: $appsActive, topPerformingApps: $topPerformingApps, overallPerformance: $overallPerformance, consistencyScore: $consistencyScore, consecutiveDaysLearning: $consecutiveDaysLearning)';
}


}

/// @nodoc
abstract mixin class _$CrossAppStatsCopyWith<$Res> implements $CrossAppStatsCopyWith<$Res> {
  factory _$CrossAppStatsCopyWith(_CrossAppStats value, $Res Function(_CrossAppStats) _then) = __$CrossAppStatsCopyWithImpl;
@override @useResult
$Res call({
 int totalLearningMinutes, int totalQuizzesCompleted, double overallAverageAccuracy, int totalBadgesEarned, int totalCoinsEarned, int appsActive, List<String> topPerformingApps, String overallPerformance, double consistencyScore, int consecutiveDaysLearning
});




}
/// @nodoc
class __$CrossAppStatsCopyWithImpl<$Res>
    implements _$CrossAppStatsCopyWith<$Res> {
  __$CrossAppStatsCopyWithImpl(this._self, this._then);

  final _CrossAppStats _self;
  final $Res Function(_CrossAppStats) _then;

/// Create a copy of CrossAppStats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalLearningMinutes = null,Object? totalQuizzesCompleted = null,Object? overallAverageAccuracy = null,Object? totalBadgesEarned = null,Object? totalCoinsEarned = null,Object? appsActive = null,Object? topPerformingApps = null,Object? overallPerformance = null,Object? consistencyScore = null,Object? consecutiveDaysLearning = null,}) {
  return _then(_CrossAppStats(
totalLearningMinutes: null == totalLearningMinutes ? _self.totalLearningMinutes : totalLearningMinutes // ignore: cast_nullable_to_non_nullable
as int,totalQuizzesCompleted: null == totalQuizzesCompleted ? _self.totalQuizzesCompleted : totalQuizzesCompleted // ignore: cast_nullable_to_non_nullable
as int,overallAverageAccuracy: null == overallAverageAccuracy ? _self.overallAverageAccuracy : overallAverageAccuracy // ignore: cast_nullable_to_non_nullable
as double,totalBadgesEarned: null == totalBadgesEarned ? _self.totalBadgesEarned : totalBadgesEarned // ignore: cast_nullable_to_non_nullable
as int,totalCoinsEarned: null == totalCoinsEarned ? _self.totalCoinsEarned : totalCoinsEarned // ignore: cast_nullable_to_non_nullable
as int,appsActive: null == appsActive ? _self.appsActive : appsActive // ignore: cast_nullable_to_non_nullable
as int,topPerformingApps: null == topPerformingApps ? _self._topPerformingApps : topPerformingApps // ignore: cast_nullable_to_non_nullable
as List<String>,overallPerformance: null == overallPerformance ? _self.overallPerformance : overallPerformance // ignore: cast_nullable_to_non_nullable
as String,consistencyScore: null == consistencyScore ? _self.consistencyScore : consistencyScore // ignore: cast_nullable_to_non_nullable
as double,consecutiveDaysLearning: null == consecutiveDaysLearning ? _self.consecutiveDaysLearning : consecutiveDaysLearning // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$WeeklyReportComparison {

 DateTime get startDate; DateTime get endDate; Map<String, DailyAppStats> get dailyStats; String get bestDay;// 最も学習した日
 int get bestDayMinutes;
/// Create a copy of WeeklyReportComparison
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeeklyReportComparisonCopyWith<WeeklyReportComparison> get copyWith => _$WeeklyReportComparisonCopyWithImpl<WeeklyReportComparison>(this as WeeklyReportComparison, _$identity);

  /// Serializes this WeeklyReportComparison to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeeklyReportComparison&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&const DeepCollectionEquality().equals(other.dailyStats, dailyStats)&&(identical(other.bestDay, bestDay) || other.bestDay == bestDay)&&(identical(other.bestDayMinutes, bestDayMinutes) || other.bestDayMinutes == bestDayMinutes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,startDate,endDate,const DeepCollectionEquality().hash(dailyStats),bestDay,bestDayMinutes);

@override
String toString() {
  return 'WeeklyReportComparison(startDate: $startDate, endDate: $endDate, dailyStats: $dailyStats, bestDay: $bestDay, bestDayMinutes: $bestDayMinutes)';
}


}

/// @nodoc
abstract mixin class $WeeklyReportComparisonCopyWith<$Res>  {
  factory $WeeklyReportComparisonCopyWith(WeeklyReportComparison value, $Res Function(WeeklyReportComparison) _then) = _$WeeklyReportComparisonCopyWithImpl;
@useResult
$Res call({
 DateTime startDate, DateTime endDate, Map<String, DailyAppStats> dailyStats, String bestDay, int bestDayMinutes
});




}
/// @nodoc
class _$WeeklyReportComparisonCopyWithImpl<$Res>
    implements $WeeklyReportComparisonCopyWith<$Res> {
  _$WeeklyReportComparisonCopyWithImpl(this._self, this._then);

  final WeeklyReportComparison _self;
  final $Res Function(WeeklyReportComparison) _then;

/// Create a copy of WeeklyReportComparison
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? startDate = null,Object? endDate = null,Object? dailyStats = null,Object? bestDay = null,Object? bestDayMinutes = null,}) {
  return _then(_self.copyWith(
startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,dailyStats: null == dailyStats ? _self.dailyStats : dailyStats // ignore: cast_nullable_to_non_nullable
as Map<String, DailyAppStats>,bestDay: null == bestDay ? _self.bestDay : bestDay // ignore: cast_nullable_to_non_nullable
as String,bestDayMinutes: null == bestDayMinutes ? _self.bestDayMinutes : bestDayMinutes // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [WeeklyReportComparison].
extension WeeklyReportComparisonPatterns on WeeklyReportComparison {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeeklyReportComparison value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeeklyReportComparison() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeeklyReportComparison value)  $default,){
final _that = this;
switch (_that) {
case _WeeklyReportComparison():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeeklyReportComparison value)?  $default,){
final _that = this;
switch (_that) {
case _WeeklyReportComparison() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime startDate,  DateTime endDate,  Map<String, DailyAppStats> dailyStats,  String bestDay,  int bestDayMinutes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeeklyReportComparison() when $default != null:
return $default(_that.startDate,_that.endDate,_that.dailyStats,_that.bestDay,_that.bestDayMinutes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime startDate,  DateTime endDate,  Map<String, DailyAppStats> dailyStats,  String bestDay,  int bestDayMinutes)  $default,) {final _that = this;
switch (_that) {
case _WeeklyReportComparison():
return $default(_that.startDate,_that.endDate,_that.dailyStats,_that.bestDay,_that.bestDayMinutes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime startDate,  DateTime endDate,  Map<String, DailyAppStats> dailyStats,  String bestDay,  int bestDayMinutes)?  $default,) {final _that = this;
switch (_that) {
case _WeeklyReportComparison() when $default != null:
return $default(_that.startDate,_that.endDate,_that.dailyStats,_that.bestDay,_that.bestDayMinutes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeeklyReportComparison implements WeeklyReportComparison {
  const _WeeklyReportComparison({required this.startDate, required this.endDate, required final  Map<String, DailyAppStats> dailyStats, required this.bestDay, required this.bestDayMinutes}): _dailyStats = dailyStats;
  factory _WeeklyReportComparison.fromJson(Map<String, dynamic> json) => _$WeeklyReportComparisonFromJson(json);

@override final  DateTime startDate;
@override final  DateTime endDate;
 final  Map<String, DailyAppStats> _dailyStats;
@override Map<String, DailyAppStats> get dailyStats {
  if (_dailyStats is EqualUnmodifiableMapView) return _dailyStats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_dailyStats);
}

@override final  String bestDay;
// 最も学習した日
@override final  int bestDayMinutes;

/// Create a copy of WeeklyReportComparison
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeeklyReportComparisonCopyWith<_WeeklyReportComparison> get copyWith => __$WeeklyReportComparisonCopyWithImpl<_WeeklyReportComparison>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeeklyReportComparisonToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeeklyReportComparison&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&const DeepCollectionEquality().equals(other._dailyStats, _dailyStats)&&(identical(other.bestDay, bestDay) || other.bestDay == bestDay)&&(identical(other.bestDayMinutes, bestDayMinutes) || other.bestDayMinutes == bestDayMinutes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,startDate,endDate,const DeepCollectionEquality().hash(_dailyStats),bestDay,bestDayMinutes);

@override
String toString() {
  return 'WeeklyReportComparison(startDate: $startDate, endDate: $endDate, dailyStats: $dailyStats, bestDay: $bestDay, bestDayMinutes: $bestDayMinutes)';
}


}

/// @nodoc
abstract mixin class _$WeeklyReportComparisonCopyWith<$Res> implements $WeeklyReportComparisonCopyWith<$Res> {
  factory _$WeeklyReportComparisonCopyWith(_WeeklyReportComparison value, $Res Function(_WeeklyReportComparison) _then) = __$WeeklyReportComparisonCopyWithImpl;
@override @useResult
$Res call({
 DateTime startDate, DateTime endDate, Map<String, DailyAppStats> dailyStats, String bestDay, int bestDayMinutes
});




}
/// @nodoc
class __$WeeklyReportComparisonCopyWithImpl<$Res>
    implements _$WeeklyReportComparisonCopyWith<$Res> {
  __$WeeklyReportComparisonCopyWithImpl(this._self, this._then);

  final _WeeklyReportComparison _self;
  final $Res Function(_WeeklyReportComparison) _then;

/// Create a copy of WeeklyReportComparison
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? startDate = null,Object? endDate = null,Object? dailyStats = null,Object? bestDay = null,Object? bestDayMinutes = null,}) {
  return _then(_WeeklyReportComparison(
startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,dailyStats: null == dailyStats ? _self._dailyStats : dailyStats // ignore: cast_nullable_to_non_nullable
as Map<String, DailyAppStats>,bestDay: null == bestDay ? _self.bestDay : bestDay // ignore: cast_nullable_to_non_nullable
as String,bestDayMinutes: null == bestDayMinutes ? _self.bestDayMinutes : bestDayMinutes // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$DailyAppStats {

 DateTime get date; Map<String, int> get appLearningMinutes;// appId -> minutes
 int get totalMinutes;
/// Create a copy of DailyAppStats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyAppStatsCopyWith<DailyAppStats> get copyWith => _$DailyAppStatsCopyWithImpl<DailyAppStats>(this as DailyAppStats, _$identity);

  /// Serializes this DailyAppStats to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyAppStats&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other.appLearningMinutes, appLearningMinutes)&&(identical(other.totalMinutes, totalMinutes) || other.totalMinutes == totalMinutes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,const DeepCollectionEquality().hash(appLearningMinutes),totalMinutes);

@override
String toString() {
  return 'DailyAppStats(date: $date, appLearningMinutes: $appLearningMinutes, totalMinutes: $totalMinutes)';
}


}

/// @nodoc
abstract mixin class $DailyAppStatsCopyWith<$Res>  {
  factory $DailyAppStatsCopyWith(DailyAppStats value, $Res Function(DailyAppStats) _then) = _$DailyAppStatsCopyWithImpl;
@useResult
$Res call({
 DateTime date, Map<String, int> appLearningMinutes, int totalMinutes
});




}
/// @nodoc
class _$DailyAppStatsCopyWithImpl<$Res>
    implements $DailyAppStatsCopyWith<$Res> {
  _$DailyAppStatsCopyWithImpl(this._self, this._then);

  final DailyAppStats _self;
  final $Res Function(DailyAppStats) _then;

/// Create a copy of DailyAppStats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? appLearningMinutes = null,Object? totalMinutes = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,appLearningMinutes: null == appLearningMinutes ? _self.appLearningMinutes : appLearningMinutes // ignore: cast_nullable_to_non_nullable
as Map<String, int>,totalMinutes: null == totalMinutes ? _self.totalMinutes : totalMinutes // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DailyAppStats].
extension DailyAppStatsPatterns on DailyAppStats {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyAppStats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyAppStats() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyAppStats value)  $default,){
final _that = this;
switch (_that) {
case _DailyAppStats():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyAppStats value)?  $default,){
final _that = this;
switch (_that) {
case _DailyAppStats() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime date,  Map<String, int> appLearningMinutes,  int totalMinutes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyAppStats() when $default != null:
return $default(_that.date,_that.appLearningMinutes,_that.totalMinutes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime date,  Map<String, int> appLearningMinutes,  int totalMinutes)  $default,) {final _that = this;
switch (_that) {
case _DailyAppStats():
return $default(_that.date,_that.appLearningMinutes,_that.totalMinutes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime date,  Map<String, int> appLearningMinutes,  int totalMinutes)?  $default,) {final _that = this;
switch (_that) {
case _DailyAppStats() when $default != null:
return $default(_that.date,_that.appLearningMinutes,_that.totalMinutes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DailyAppStats implements DailyAppStats {
  const _DailyAppStats({required this.date, required final  Map<String, int> appLearningMinutes, required this.totalMinutes}): _appLearningMinutes = appLearningMinutes;
  factory _DailyAppStats.fromJson(Map<String, dynamic> json) => _$DailyAppStatsFromJson(json);

@override final  DateTime date;
 final  Map<String, int> _appLearningMinutes;
@override Map<String, int> get appLearningMinutes {
  if (_appLearningMinutes is EqualUnmodifiableMapView) return _appLearningMinutes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_appLearningMinutes);
}

// appId -> minutes
@override final  int totalMinutes;

/// Create a copy of DailyAppStats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyAppStatsCopyWith<_DailyAppStats> get copyWith => __$DailyAppStatsCopyWithImpl<_DailyAppStats>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyAppStatsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyAppStats&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other._appLearningMinutes, _appLearningMinutes)&&(identical(other.totalMinutes, totalMinutes) || other.totalMinutes == totalMinutes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,const DeepCollectionEquality().hash(_appLearningMinutes),totalMinutes);

@override
String toString() {
  return 'DailyAppStats(date: $date, appLearningMinutes: $appLearningMinutes, totalMinutes: $totalMinutes)';
}


}

/// @nodoc
abstract mixin class _$DailyAppStatsCopyWith<$Res> implements $DailyAppStatsCopyWith<$Res> {
  factory _$DailyAppStatsCopyWith(_DailyAppStats value, $Res Function(_DailyAppStats) _then) = __$DailyAppStatsCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, Map<String, int> appLearningMinutes, int totalMinutes
});




}
/// @nodoc
class __$DailyAppStatsCopyWithImpl<$Res>
    implements _$DailyAppStatsCopyWith<$Res> {
  __$DailyAppStatsCopyWithImpl(this._self, this._then);

  final _DailyAppStats _self;
  final $Res Function(_DailyAppStats) _then;

/// Create a copy of DailyAppStats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? appLearningMinutes = null,Object? totalMinutes = null,}) {
  return _then(_DailyAppStats(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,appLearningMinutes: null == appLearningMinutes ? _self._appLearningMinutes : appLearningMinutes // ignore: cast_nullable_to_non_nullable
as Map<String, int>,totalMinutes: null == totalMinutes ? _self.totalMinutes : totalMinutes // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$MonthlyReportComparison {

 int get month; int get year; Map<String, AppMonthlyStats> get appMonthlyStats; CrossAppStats get monthlyAggregates; List<String> get achievements;
/// Create a copy of MonthlyReportComparison
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MonthlyReportComparisonCopyWith<MonthlyReportComparison> get copyWith => _$MonthlyReportComparisonCopyWithImpl<MonthlyReportComparison>(this as MonthlyReportComparison, _$identity);

  /// Serializes this MonthlyReportComparison to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MonthlyReportComparison&&(identical(other.month, month) || other.month == month)&&(identical(other.year, year) || other.year == year)&&const DeepCollectionEquality().equals(other.appMonthlyStats, appMonthlyStats)&&(identical(other.monthlyAggregates, monthlyAggregates) || other.monthlyAggregates == monthlyAggregates)&&const DeepCollectionEquality().equals(other.achievements, achievements));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,month,year,const DeepCollectionEquality().hash(appMonthlyStats),monthlyAggregates,const DeepCollectionEquality().hash(achievements));

@override
String toString() {
  return 'MonthlyReportComparison(month: $month, year: $year, appMonthlyStats: $appMonthlyStats, monthlyAggregates: $monthlyAggregates, achievements: $achievements)';
}


}

/// @nodoc
abstract mixin class $MonthlyReportComparisonCopyWith<$Res>  {
  factory $MonthlyReportComparisonCopyWith(MonthlyReportComparison value, $Res Function(MonthlyReportComparison) _then) = _$MonthlyReportComparisonCopyWithImpl;
@useResult
$Res call({
 int month, int year, Map<String, AppMonthlyStats> appMonthlyStats, CrossAppStats monthlyAggregates, List<String> achievements
});


$CrossAppStatsCopyWith<$Res> get monthlyAggregates;

}
/// @nodoc
class _$MonthlyReportComparisonCopyWithImpl<$Res>
    implements $MonthlyReportComparisonCopyWith<$Res> {
  _$MonthlyReportComparisonCopyWithImpl(this._self, this._then);

  final MonthlyReportComparison _self;
  final $Res Function(MonthlyReportComparison) _then;

/// Create a copy of MonthlyReportComparison
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? month = null,Object? year = null,Object? appMonthlyStats = null,Object? monthlyAggregates = null,Object? achievements = null,}) {
  return _then(_self.copyWith(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,appMonthlyStats: null == appMonthlyStats ? _self.appMonthlyStats : appMonthlyStats // ignore: cast_nullable_to_non_nullable
as Map<String, AppMonthlyStats>,monthlyAggregates: null == monthlyAggregates ? _self.monthlyAggregates : monthlyAggregates // ignore: cast_nullable_to_non_nullable
as CrossAppStats,achievements: null == achievements ? _self.achievements : achievements // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of MonthlyReportComparison
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CrossAppStatsCopyWith<$Res> get monthlyAggregates {
  
  return $CrossAppStatsCopyWith<$Res>(_self.monthlyAggregates, (value) {
    return _then(_self.copyWith(monthlyAggregates: value));
  });
}
}


/// Adds pattern-matching-related methods to [MonthlyReportComparison].
extension MonthlyReportComparisonPatterns on MonthlyReportComparison {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MonthlyReportComparison value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MonthlyReportComparison() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MonthlyReportComparison value)  $default,){
final _that = this;
switch (_that) {
case _MonthlyReportComparison():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MonthlyReportComparison value)?  $default,){
final _that = this;
switch (_that) {
case _MonthlyReportComparison() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int month,  int year,  Map<String, AppMonthlyStats> appMonthlyStats,  CrossAppStats monthlyAggregates,  List<String> achievements)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MonthlyReportComparison() when $default != null:
return $default(_that.month,_that.year,_that.appMonthlyStats,_that.monthlyAggregates,_that.achievements);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int month,  int year,  Map<String, AppMonthlyStats> appMonthlyStats,  CrossAppStats monthlyAggregates,  List<String> achievements)  $default,) {final _that = this;
switch (_that) {
case _MonthlyReportComparison():
return $default(_that.month,_that.year,_that.appMonthlyStats,_that.monthlyAggregates,_that.achievements);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int month,  int year,  Map<String, AppMonthlyStats> appMonthlyStats,  CrossAppStats monthlyAggregates,  List<String> achievements)?  $default,) {final _that = this;
switch (_that) {
case _MonthlyReportComparison() when $default != null:
return $default(_that.month,_that.year,_that.appMonthlyStats,_that.monthlyAggregates,_that.achievements);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MonthlyReportComparison implements MonthlyReportComparison {
  const _MonthlyReportComparison({required this.month, required this.year, required final  Map<String, AppMonthlyStats> appMonthlyStats, required this.monthlyAggregates, required final  List<String> achievements}): _appMonthlyStats = appMonthlyStats,_achievements = achievements;
  factory _MonthlyReportComparison.fromJson(Map<String, dynamic> json) => _$MonthlyReportComparisonFromJson(json);

@override final  int month;
@override final  int year;
 final  Map<String, AppMonthlyStats> _appMonthlyStats;
@override Map<String, AppMonthlyStats> get appMonthlyStats {
  if (_appMonthlyStats is EqualUnmodifiableMapView) return _appMonthlyStats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_appMonthlyStats);
}

@override final  CrossAppStats monthlyAggregates;
 final  List<String> _achievements;
@override List<String> get achievements {
  if (_achievements is EqualUnmodifiableListView) return _achievements;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_achievements);
}


/// Create a copy of MonthlyReportComparison
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MonthlyReportComparisonCopyWith<_MonthlyReportComparison> get copyWith => __$MonthlyReportComparisonCopyWithImpl<_MonthlyReportComparison>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MonthlyReportComparisonToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MonthlyReportComparison&&(identical(other.month, month) || other.month == month)&&(identical(other.year, year) || other.year == year)&&const DeepCollectionEquality().equals(other._appMonthlyStats, _appMonthlyStats)&&(identical(other.monthlyAggregates, monthlyAggregates) || other.monthlyAggregates == monthlyAggregates)&&const DeepCollectionEquality().equals(other._achievements, _achievements));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,month,year,const DeepCollectionEquality().hash(_appMonthlyStats),monthlyAggregates,const DeepCollectionEquality().hash(_achievements));

@override
String toString() {
  return 'MonthlyReportComparison(month: $month, year: $year, appMonthlyStats: $appMonthlyStats, monthlyAggregates: $monthlyAggregates, achievements: $achievements)';
}


}

/// @nodoc
abstract mixin class _$MonthlyReportComparisonCopyWith<$Res> implements $MonthlyReportComparisonCopyWith<$Res> {
  factory _$MonthlyReportComparisonCopyWith(_MonthlyReportComparison value, $Res Function(_MonthlyReportComparison) _then) = __$MonthlyReportComparisonCopyWithImpl;
@override @useResult
$Res call({
 int month, int year, Map<String, AppMonthlyStats> appMonthlyStats, CrossAppStats monthlyAggregates, List<String> achievements
});


@override $CrossAppStatsCopyWith<$Res> get monthlyAggregates;

}
/// @nodoc
class __$MonthlyReportComparisonCopyWithImpl<$Res>
    implements _$MonthlyReportComparisonCopyWith<$Res> {
  __$MonthlyReportComparisonCopyWithImpl(this._self, this._then);

  final _MonthlyReportComparison _self;
  final $Res Function(_MonthlyReportComparison) _then;

/// Create a copy of MonthlyReportComparison
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? month = null,Object? year = null,Object? appMonthlyStats = null,Object? monthlyAggregates = null,Object? achievements = null,}) {
  return _then(_MonthlyReportComparison(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,appMonthlyStats: null == appMonthlyStats ? _self._appMonthlyStats : appMonthlyStats // ignore: cast_nullable_to_non_nullable
as Map<String, AppMonthlyStats>,monthlyAggregates: null == monthlyAggregates ? _self.monthlyAggregates : monthlyAggregates // ignore: cast_nullable_to_non_nullable
as CrossAppStats,achievements: null == achievements ? _self._achievements : achievements // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of MonthlyReportComparison
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CrossAppStatsCopyWith<$Res> get monthlyAggregates {
  
  return $CrossAppStatsCopyWith<$Res>(_self.monthlyAggregates, (value) {
    return _then(_self.copyWith(monthlyAggregates: value));
  });
}
}


/// @nodoc
mixin _$AppMonthlyStats {

 String get appId; int get totalLearningMinutes; double get averageAccuracy; int get quizzesCompleted; int get badgesEarned; double get improvementRate;// 前月比 (%)
 List<String> get topicsLearned;
/// Create a copy of AppMonthlyStats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppMonthlyStatsCopyWith<AppMonthlyStats> get copyWith => _$AppMonthlyStatsCopyWithImpl<AppMonthlyStats>(this as AppMonthlyStats, _$identity);

  /// Serializes this AppMonthlyStats to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppMonthlyStats&&(identical(other.appId, appId) || other.appId == appId)&&(identical(other.totalLearningMinutes, totalLearningMinutes) || other.totalLearningMinutes == totalLearningMinutes)&&(identical(other.averageAccuracy, averageAccuracy) || other.averageAccuracy == averageAccuracy)&&(identical(other.quizzesCompleted, quizzesCompleted) || other.quizzesCompleted == quizzesCompleted)&&(identical(other.badgesEarned, badgesEarned) || other.badgesEarned == badgesEarned)&&(identical(other.improvementRate, improvementRate) || other.improvementRate == improvementRate)&&const DeepCollectionEquality().equals(other.topicsLearned, topicsLearned));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,appId,totalLearningMinutes,averageAccuracy,quizzesCompleted,badgesEarned,improvementRate,const DeepCollectionEquality().hash(topicsLearned));

@override
String toString() {
  return 'AppMonthlyStats(appId: $appId, totalLearningMinutes: $totalLearningMinutes, averageAccuracy: $averageAccuracy, quizzesCompleted: $quizzesCompleted, badgesEarned: $badgesEarned, improvementRate: $improvementRate, topicsLearned: $topicsLearned)';
}


}

/// @nodoc
abstract mixin class $AppMonthlyStatsCopyWith<$Res>  {
  factory $AppMonthlyStatsCopyWith(AppMonthlyStats value, $Res Function(AppMonthlyStats) _then) = _$AppMonthlyStatsCopyWithImpl;
@useResult
$Res call({
 String appId, int totalLearningMinutes, double averageAccuracy, int quizzesCompleted, int badgesEarned, double improvementRate, List<String> topicsLearned
});




}
/// @nodoc
class _$AppMonthlyStatsCopyWithImpl<$Res>
    implements $AppMonthlyStatsCopyWith<$Res> {
  _$AppMonthlyStatsCopyWithImpl(this._self, this._then);

  final AppMonthlyStats _self;
  final $Res Function(AppMonthlyStats) _then;

/// Create a copy of AppMonthlyStats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? appId = null,Object? totalLearningMinutes = null,Object? averageAccuracy = null,Object? quizzesCompleted = null,Object? badgesEarned = null,Object? improvementRate = null,Object? topicsLearned = null,}) {
  return _then(_self.copyWith(
appId: null == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as String,totalLearningMinutes: null == totalLearningMinutes ? _self.totalLearningMinutes : totalLearningMinutes // ignore: cast_nullable_to_non_nullable
as int,averageAccuracy: null == averageAccuracy ? _self.averageAccuracy : averageAccuracy // ignore: cast_nullable_to_non_nullable
as double,quizzesCompleted: null == quizzesCompleted ? _self.quizzesCompleted : quizzesCompleted // ignore: cast_nullable_to_non_nullable
as int,badgesEarned: null == badgesEarned ? _self.badgesEarned : badgesEarned // ignore: cast_nullable_to_non_nullable
as int,improvementRate: null == improvementRate ? _self.improvementRate : improvementRate // ignore: cast_nullable_to_non_nullable
as double,topicsLearned: null == topicsLearned ? _self.topicsLearned : topicsLearned // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [AppMonthlyStats].
extension AppMonthlyStatsPatterns on AppMonthlyStats {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppMonthlyStats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppMonthlyStats() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppMonthlyStats value)  $default,){
final _that = this;
switch (_that) {
case _AppMonthlyStats():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppMonthlyStats value)?  $default,){
final _that = this;
switch (_that) {
case _AppMonthlyStats() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String appId,  int totalLearningMinutes,  double averageAccuracy,  int quizzesCompleted,  int badgesEarned,  double improvementRate,  List<String> topicsLearned)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppMonthlyStats() when $default != null:
return $default(_that.appId,_that.totalLearningMinutes,_that.averageAccuracy,_that.quizzesCompleted,_that.badgesEarned,_that.improvementRate,_that.topicsLearned);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String appId,  int totalLearningMinutes,  double averageAccuracy,  int quizzesCompleted,  int badgesEarned,  double improvementRate,  List<String> topicsLearned)  $default,) {final _that = this;
switch (_that) {
case _AppMonthlyStats():
return $default(_that.appId,_that.totalLearningMinutes,_that.averageAccuracy,_that.quizzesCompleted,_that.badgesEarned,_that.improvementRate,_that.topicsLearned);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String appId,  int totalLearningMinutes,  double averageAccuracy,  int quizzesCompleted,  int badgesEarned,  double improvementRate,  List<String> topicsLearned)?  $default,) {final _that = this;
switch (_that) {
case _AppMonthlyStats() when $default != null:
return $default(_that.appId,_that.totalLearningMinutes,_that.averageAccuracy,_that.quizzesCompleted,_that.badgesEarned,_that.improvementRate,_that.topicsLearned);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppMonthlyStats implements AppMonthlyStats {
  const _AppMonthlyStats({required this.appId, required this.totalLearningMinutes, required this.averageAccuracy, required this.quizzesCompleted, required this.badgesEarned, required this.improvementRate, required final  List<String> topicsLearned}): _topicsLearned = topicsLearned;
  factory _AppMonthlyStats.fromJson(Map<String, dynamic> json) => _$AppMonthlyStatsFromJson(json);

@override final  String appId;
@override final  int totalLearningMinutes;
@override final  double averageAccuracy;
@override final  int quizzesCompleted;
@override final  int badgesEarned;
@override final  double improvementRate;
// 前月比 (%)
 final  List<String> _topicsLearned;
// 前月比 (%)
@override List<String> get topicsLearned {
  if (_topicsLearned is EqualUnmodifiableListView) return _topicsLearned;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topicsLearned);
}


/// Create a copy of AppMonthlyStats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppMonthlyStatsCopyWith<_AppMonthlyStats> get copyWith => __$AppMonthlyStatsCopyWithImpl<_AppMonthlyStats>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppMonthlyStatsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppMonthlyStats&&(identical(other.appId, appId) || other.appId == appId)&&(identical(other.totalLearningMinutes, totalLearningMinutes) || other.totalLearningMinutes == totalLearningMinutes)&&(identical(other.averageAccuracy, averageAccuracy) || other.averageAccuracy == averageAccuracy)&&(identical(other.quizzesCompleted, quizzesCompleted) || other.quizzesCompleted == quizzesCompleted)&&(identical(other.badgesEarned, badgesEarned) || other.badgesEarned == badgesEarned)&&(identical(other.improvementRate, improvementRate) || other.improvementRate == improvementRate)&&const DeepCollectionEquality().equals(other._topicsLearned, _topicsLearned));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,appId,totalLearningMinutes,averageAccuracy,quizzesCompleted,badgesEarned,improvementRate,const DeepCollectionEquality().hash(_topicsLearned));

@override
String toString() {
  return 'AppMonthlyStats(appId: $appId, totalLearningMinutes: $totalLearningMinutes, averageAccuracy: $averageAccuracy, quizzesCompleted: $quizzesCompleted, badgesEarned: $badgesEarned, improvementRate: $improvementRate, topicsLearned: $topicsLearned)';
}


}

/// @nodoc
abstract mixin class _$AppMonthlyStatsCopyWith<$Res> implements $AppMonthlyStatsCopyWith<$Res> {
  factory _$AppMonthlyStatsCopyWith(_AppMonthlyStats value, $Res Function(_AppMonthlyStats) _then) = __$AppMonthlyStatsCopyWithImpl;
@override @useResult
$Res call({
 String appId, int totalLearningMinutes, double averageAccuracy, int quizzesCompleted, int badgesEarned, double improvementRate, List<String> topicsLearned
});




}
/// @nodoc
class __$AppMonthlyStatsCopyWithImpl<$Res>
    implements _$AppMonthlyStatsCopyWith<$Res> {
  __$AppMonthlyStatsCopyWithImpl(this._self, this._then);

  final _AppMonthlyStats _self;
  final $Res Function(_AppMonthlyStats) _then;

/// Create a copy of AppMonthlyStats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? appId = null,Object? totalLearningMinutes = null,Object? averageAccuracy = null,Object? quizzesCompleted = null,Object? badgesEarned = null,Object? improvementRate = null,Object? topicsLearned = null,}) {
  return _then(_AppMonthlyStats(
appId: null == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as String,totalLearningMinutes: null == totalLearningMinutes ? _self.totalLearningMinutes : totalLearningMinutes // ignore: cast_nullable_to_non_nullable
as int,averageAccuracy: null == averageAccuracy ? _self.averageAccuracy : averageAccuracy // ignore: cast_nullable_to_non_nullable
as double,quizzesCompleted: null == quizzesCompleted ? _self.quizzesCompleted : quizzesCompleted // ignore: cast_nullable_to_non_nullable
as int,badgesEarned: null == badgesEarned ? _self.badgesEarned : badgesEarned // ignore: cast_nullable_to_non_nullable
as int,improvementRate: null == improvementRate ? _self.improvementRate : improvementRate // ignore: cast_nullable_to_non_nullable
as double,topicsLearned: null == topicsLearned ? _self._topicsLearned : topicsLearned // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
