// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adaptive_difficulty_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdaptiveMetrics {

 double get accuracy;// 正答率（0.0-1.0）
 double get completionRate;// 完了率（0.0-1.0）
 int get averageTimePerQuestion;// 1問あたりの平均時間（秒）
 int get totalQuestionsAnswered;// 答えた問題数
 int get correctAnswers;// 正解数
 int get wrongAnswers;// 不正解数
 DateTime get lastUpdatedAt;
/// Create a copy of AdaptiveMetrics
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdaptiveMetricsCopyWith<AdaptiveMetrics> get copyWith => _$AdaptiveMetricsCopyWithImpl<AdaptiveMetrics>(this as AdaptiveMetrics, _$identity);

  /// Serializes this AdaptiveMetrics to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdaptiveMetrics&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy)&&(identical(other.completionRate, completionRate) || other.completionRate == completionRate)&&(identical(other.averageTimePerQuestion, averageTimePerQuestion) || other.averageTimePerQuestion == averageTimePerQuestion)&&(identical(other.totalQuestionsAnswered, totalQuestionsAnswered) || other.totalQuestionsAnswered == totalQuestionsAnswered)&&(identical(other.correctAnswers, correctAnswers) || other.correctAnswers == correctAnswers)&&(identical(other.wrongAnswers, wrongAnswers) || other.wrongAnswers == wrongAnswers)&&(identical(other.lastUpdatedAt, lastUpdatedAt) || other.lastUpdatedAt == lastUpdatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accuracy,completionRate,averageTimePerQuestion,totalQuestionsAnswered,correctAnswers,wrongAnswers,lastUpdatedAt);

@override
String toString() {
  return 'AdaptiveMetrics(accuracy: $accuracy, completionRate: $completionRate, averageTimePerQuestion: $averageTimePerQuestion, totalQuestionsAnswered: $totalQuestionsAnswered, correctAnswers: $correctAnswers, wrongAnswers: $wrongAnswers, lastUpdatedAt: $lastUpdatedAt)';
}


}

/// @nodoc
abstract mixin class $AdaptiveMetricsCopyWith<$Res>  {
  factory $AdaptiveMetricsCopyWith(AdaptiveMetrics value, $Res Function(AdaptiveMetrics) _then) = _$AdaptiveMetricsCopyWithImpl;
@useResult
$Res call({
 double accuracy, double completionRate, int averageTimePerQuestion, int totalQuestionsAnswered, int correctAnswers, int wrongAnswers, DateTime lastUpdatedAt
});




}
/// @nodoc
class _$AdaptiveMetricsCopyWithImpl<$Res>
    implements $AdaptiveMetricsCopyWith<$Res> {
  _$AdaptiveMetricsCopyWithImpl(this._self, this._then);

  final AdaptiveMetrics _self;
  final $Res Function(AdaptiveMetrics) _then;

/// Create a copy of AdaptiveMetrics
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accuracy = null,Object? completionRate = null,Object? averageTimePerQuestion = null,Object? totalQuestionsAnswered = null,Object? correctAnswers = null,Object? wrongAnswers = null,Object? lastUpdatedAt = null,}) {
  return _then(_self.copyWith(
accuracy: null == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as double,completionRate: null == completionRate ? _self.completionRate : completionRate // ignore: cast_nullable_to_non_nullable
as double,averageTimePerQuestion: null == averageTimePerQuestion ? _self.averageTimePerQuestion : averageTimePerQuestion // ignore: cast_nullable_to_non_nullable
as int,totalQuestionsAnswered: null == totalQuestionsAnswered ? _self.totalQuestionsAnswered : totalQuestionsAnswered // ignore: cast_nullable_to_non_nullable
as int,correctAnswers: null == correctAnswers ? _self.correctAnswers : correctAnswers // ignore: cast_nullable_to_non_nullable
as int,wrongAnswers: null == wrongAnswers ? _self.wrongAnswers : wrongAnswers // ignore: cast_nullable_to_non_nullable
as int,lastUpdatedAt: null == lastUpdatedAt ? _self.lastUpdatedAt : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [AdaptiveMetrics].
extension AdaptiveMetricsPatterns on AdaptiveMetrics {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdaptiveMetrics value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdaptiveMetrics() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdaptiveMetrics value)  $default,){
final _that = this;
switch (_that) {
case _AdaptiveMetrics():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdaptiveMetrics value)?  $default,){
final _that = this;
switch (_that) {
case _AdaptiveMetrics() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double accuracy,  double completionRate,  int averageTimePerQuestion,  int totalQuestionsAnswered,  int correctAnswers,  int wrongAnswers,  DateTime lastUpdatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdaptiveMetrics() when $default != null:
return $default(_that.accuracy,_that.completionRate,_that.averageTimePerQuestion,_that.totalQuestionsAnswered,_that.correctAnswers,_that.wrongAnswers,_that.lastUpdatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double accuracy,  double completionRate,  int averageTimePerQuestion,  int totalQuestionsAnswered,  int correctAnswers,  int wrongAnswers,  DateTime lastUpdatedAt)  $default,) {final _that = this;
switch (_that) {
case _AdaptiveMetrics():
return $default(_that.accuracy,_that.completionRate,_that.averageTimePerQuestion,_that.totalQuestionsAnswered,_that.correctAnswers,_that.wrongAnswers,_that.lastUpdatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double accuracy,  double completionRate,  int averageTimePerQuestion,  int totalQuestionsAnswered,  int correctAnswers,  int wrongAnswers,  DateTime lastUpdatedAt)?  $default,) {final _that = this;
switch (_that) {
case _AdaptiveMetrics() when $default != null:
return $default(_that.accuracy,_that.completionRate,_that.averageTimePerQuestion,_that.totalQuestionsAnswered,_that.correctAnswers,_that.wrongAnswers,_that.lastUpdatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdaptiveMetrics implements AdaptiveMetrics {
  const _AdaptiveMetrics({required this.accuracy, required this.completionRate, required this.averageTimePerQuestion, required this.totalQuestionsAnswered, required this.correctAnswers, required this.wrongAnswers, required this.lastUpdatedAt});
  factory _AdaptiveMetrics.fromJson(Map<String, dynamic> json) => _$AdaptiveMetricsFromJson(json);

@override final  double accuracy;
// 正答率（0.0-1.0）
@override final  double completionRate;
// 完了率（0.0-1.0）
@override final  int averageTimePerQuestion;
// 1問あたりの平均時間（秒）
@override final  int totalQuestionsAnswered;
// 答えた問題数
@override final  int correctAnswers;
// 正解数
@override final  int wrongAnswers;
// 不正解数
@override final  DateTime lastUpdatedAt;

/// Create a copy of AdaptiveMetrics
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdaptiveMetricsCopyWith<_AdaptiveMetrics> get copyWith => __$AdaptiveMetricsCopyWithImpl<_AdaptiveMetrics>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdaptiveMetricsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdaptiveMetrics&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy)&&(identical(other.completionRate, completionRate) || other.completionRate == completionRate)&&(identical(other.averageTimePerQuestion, averageTimePerQuestion) || other.averageTimePerQuestion == averageTimePerQuestion)&&(identical(other.totalQuestionsAnswered, totalQuestionsAnswered) || other.totalQuestionsAnswered == totalQuestionsAnswered)&&(identical(other.correctAnswers, correctAnswers) || other.correctAnswers == correctAnswers)&&(identical(other.wrongAnswers, wrongAnswers) || other.wrongAnswers == wrongAnswers)&&(identical(other.lastUpdatedAt, lastUpdatedAt) || other.lastUpdatedAt == lastUpdatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accuracy,completionRate,averageTimePerQuestion,totalQuestionsAnswered,correctAnswers,wrongAnswers,lastUpdatedAt);

@override
String toString() {
  return 'AdaptiveMetrics(accuracy: $accuracy, completionRate: $completionRate, averageTimePerQuestion: $averageTimePerQuestion, totalQuestionsAnswered: $totalQuestionsAnswered, correctAnswers: $correctAnswers, wrongAnswers: $wrongAnswers, lastUpdatedAt: $lastUpdatedAt)';
}


}

/// @nodoc
abstract mixin class _$AdaptiveMetricsCopyWith<$Res> implements $AdaptiveMetricsCopyWith<$Res> {
  factory _$AdaptiveMetricsCopyWith(_AdaptiveMetrics value, $Res Function(_AdaptiveMetrics) _then) = __$AdaptiveMetricsCopyWithImpl;
@override @useResult
$Res call({
 double accuracy, double completionRate, int averageTimePerQuestion, int totalQuestionsAnswered, int correctAnswers, int wrongAnswers, DateTime lastUpdatedAt
});




}
/// @nodoc
class __$AdaptiveMetricsCopyWithImpl<$Res>
    implements _$AdaptiveMetricsCopyWith<$Res> {
  __$AdaptiveMetricsCopyWithImpl(this._self, this._then);

  final _AdaptiveMetrics _self;
  final $Res Function(_AdaptiveMetrics) _then;

/// Create a copy of AdaptiveMetrics
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accuracy = null,Object? completionRate = null,Object? averageTimePerQuestion = null,Object? totalQuestionsAnswered = null,Object? correctAnswers = null,Object? wrongAnswers = null,Object? lastUpdatedAt = null,}) {
  return _then(_AdaptiveMetrics(
accuracy: null == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as double,completionRate: null == completionRate ? _self.completionRate : completionRate // ignore: cast_nullable_to_non_nullable
as double,averageTimePerQuestion: null == averageTimePerQuestion ? _self.averageTimePerQuestion : averageTimePerQuestion // ignore: cast_nullable_to_non_nullable
as int,totalQuestionsAnswered: null == totalQuestionsAnswered ? _self.totalQuestionsAnswered : totalQuestionsAnswered // ignore: cast_nullable_to_non_nullable
as int,correctAnswers: null == correctAnswers ? _self.correctAnswers : correctAnswers // ignore: cast_nullable_to_non_nullable
as int,wrongAnswers: null == wrongAnswers ? _self.wrongAnswers : wrongAnswers // ignore: cast_nullable_to_non_nullable
as int,lastUpdatedAt: null == lastUpdatedAt ? _self.lastUpdatedAt : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$UserAdaptiveDifficulty {

 String get userId; String get appId;// アプリID（kokugo, sansu等）
 DifficultyLevel get currentLevel;// 現在の難易度
 DifficultyLevel get recommendedLevel;// 推奨難易度
 AdaptiveMetrics get metrics;// パフォーマンス指標
 int get adjustmentCount;// 調整回数
 DateTime? get lastAdjustedAt;// 最終調整日時
 bool get isAutoAdjust;// 自動調整有効
 double get confidenceScore;
/// Create a copy of UserAdaptiveDifficulty
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserAdaptiveDifficultyCopyWith<UserAdaptiveDifficulty> get copyWith => _$UserAdaptiveDifficultyCopyWithImpl<UserAdaptiveDifficulty>(this as UserAdaptiveDifficulty, _$identity);

  /// Serializes this UserAdaptiveDifficulty to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserAdaptiveDifficulty&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.appId, appId) || other.appId == appId)&&(identical(other.currentLevel, currentLevel) || other.currentLevel == currentLevel)&&(identical(other.recommendedLevel, recommendedLevel) || other.recommendedLevel == recommendedLevel)&&(identical(other.metrics, metrics) || other.metrics == metrics)&&(identical(other.adjustmentCount, adjustmentCount) || other.adjustmentCount == adjustmentCount)&&(identical(other.lastAdjustedAt, lastAdjustedAt) || other.lastAdjustedAt == lastAdjustedAt)&&(identical(other.isAutoAdjust, isAutoAdjust) || other.isAutoAdjust == isAutoAdjust)&&(identical(other.confidenceScore, confidenceScore) || other.confidenceScore == confidenceScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,appId,currentLevel,recommendedLevel,metrics,adjustmentCount,lastAdjustedAt,isAutoAdjust,confidenceScore);

@override
String toString() {
  return 'UserAdaptiveDifficulty(userId: $userId, appId: $appId, currentLevel: $currentLevel, recommendedLevel: $recommendedLevel, metrics: $metrics, adjustmentCount: $adjustmentCount, lastAdjustedAt: $lastAdjustedAt, isAutoAdjust: $isAutoAdjust, confidenceScore: $confidenceScore)';
}


}

/// @nodoc
abstract mixin class $UserAdaptiveDifficultyCopyWith<$Res>  {
  factory $UserAdaptiveDifficultyCopyWith(UserAdaptiveDifficulty value, $Res Function(UserAdaptiveDifficulty) _then) = _$UserAdaptiveDifficultyCopyWithImpl;
@useResult
$Res call({
 String userId, String appId, DifficultyLevel currentLevel, DifficultyLevel recommendedLevel, AdaptiveMetrics metrics, int adjustmentCount, DateTime? lastAdjustedAt, bool isAutoAdjust, double confidenceScore
});


$AdaptiveMetricsCopyWith<$Res> get metrics;

}
/// @nodoc
class _$UserAdaptiveDifficultyCopyWithImpl<$Res>
    implements $UserAdaptiveDifficultyCopyWith<$Res> {
  _$UserAdaptiveDifficultyCopyWithImpl(this._self, this._then);

  final UserAdaptiveDifficulty _self;
  final $Res Function(UserAdaptiveDifficulty) _then;

/// Create a copy of UserAdaptiveDifficulty
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? appId = null,Object? currentLevel = null,Object? recommendedLevel = null,Object? metrics = null,Object? adjustmentCount = null,Object? lastAdjustedAt = freezed,Object? isAutoAdjust = null,Object? confidenceScore = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,appId: null == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as String,currentLevel: null == currentLevel ? _self.currentLevel : currentLevel // ignore: cast_nullable_to_non_nullable
as DifficultyLevel,recommendedLevel: null == recommendedLevel ? _self.recommendedLevel : recommendedLevel // ignore: cast_nullable_to_non_nullable
as DifficultyLevel,metrics: null == metrics ? _self.metrics : metrics // ignore: cast_nullable_to_non_nullable
as AdaptiveMetrics,adjustmentCount: null == adjustmentCount ? _self.adjustmentCount : adjustmentCount // ignore: cast_nullable_to_non_nullable
as int,lastAdjustedAt: freezed == lastAdjustedAt ? _self.lastAdjustedAt : lastAdjustedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isAutoAdjust: null == isAutoAdjust ? _self.isAutoAdjust : isAutoAdjust // ignore: cast_nullable_to_non_nullable
as bool,confidenceScore: null == confidenceScore ? _self.confidenceScore : confidenceScore // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of UserAdaptiveDifficulty
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdaptiveMetricsCopyWith<$Res> get metrics {
  
  return $AdaptiveMetricsCopyWith<$Res>(_self.metrics, (value) {
    return _then(_self.copyWith(metrics: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserAdaptiveDifficulty].
extension UserAdaptiveDifficultyPatterns on UserAdaptiveDifficulty {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserAdaptiveDifficulty value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserAdaptiveDifficulty() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserAdaptiveDifficulty value)  $default,){
final _that = this;
switch (_that) {
case _UserAdaptiveDifficulty():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserAdaptiveDifficulty value)?  $default,){
final _that = this;
switch (_that) {
case _UserAdaptiveDifficulty() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String appId,  DifficultyLevel currentLevel,  DifficultyLevel recommendedLevel,  AdaptiveMetrics metrics,  int adjustmentCount,  DateTime? lastAdjustedAt,  bool isAutoAdjust,  double confidenceScore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserAdaptiveDifficulty() when $default != null:
return $default(_that.userId,_that.appId,_that.currentLevel,_that.recommendedLevel,_that.metrics,_that.adjustmentCount,_that.lastAdjustedAt,_that.isAutoAdjust,_that.confidenceScore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String appId,  DifficultyLevel currentLevel,  DifficultyLevel recommendedLevel,  AdaptiveMetrics metrics,  int adjustmentCount,  DateTime? lastAdjustedAt,  bool isAutoAdjust,  double confidenceScore)  $default,) {final _that = this;
switch (_that) {
case _UserAdaptiveDifficulty():
return $default(_that.userId,_that.appId,_that.currentLevel,_that.recommendedLevel,_that.metrics,_that.adjustmentCount,_that.lastAdjustedAt,_that.isAutoAdjust,_that.confidenceScore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String appId,  DifficultyLevel currentLevel,  DifficultyLevel recommendedLevel,  AdaptiveMetrics metrics,  int adjustmentCount,  DateTime? lastAdjustedAt,  bool isAutoAdjust,  double confidenceScore)?  $default,) {final _that = this;
switch (_that) {
case _UserAdaptiveDifficulty() when $default != null:
return $default(_that.userId,_that.appId,_that.currentLevel,_that.recommendedLevel,_that.metrics,_that.adjustmentCount,_that.lastAdjustedAt,_that.isAutoAdjust,_that.confidenceScore);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserAdaptiveDifficulty implements UserAdaptiveDifficulty {
  const _UserAdaptiveDifficulty({required this.userId, required this.appId, required this.currentLevel, required this.recommendedLevel, required this.metrics, required this.adjustmentCount, required this.lastAdjustedAt, required this.isAutoAdjust, required this.confidenceScore});
  factory _UserAdaptiveDifficulty.fromJson(Map<String, dynamic> json) => _$UserAdaptiveDifficultyFromJson(json);

@override final  String userId;
@override final  String appId;
// アプリID（kokugo, sansu等）
@override final  DifficultyLevel currentLevel;
// 現在の難易度
@override final  DifficultyLevel recommendedLevel;
// 推奨難易度
@override final  AdaptiveMetrics metrics;
// パフォーマンス指標
@override final  int adjustmentCount;
// 調整回数
@override final  DateTime? lastAdjustedAt;
// 最終調整日時
@override final  bool isAutoAdjust;
// 自動調整有効
@override final  double confidenceScore;

/// Create a copy of UserAdaptiveDifficulty
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserAdaptiveDifficultyCopyWith<_UserAdaptiveDifficulty> get copyWith => __$UserAdaptiveDifficultyCopyWithImpl<_UserAdaptiveDifficulty>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserAdaptiveDifficultyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserAdaptiveDifficulty&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.appId, appId) || other.appId == appId)&&(identical(other.currentLevel, currentLevel) || other.currentLevel == currentLevel)&&(identical(other.recommendedLevel, recommendedLevel) || other.recommendedLevel == recommendedLevel)&&(identical(other.metrics, metrics) || other.metrics == metrics)&&(identical(other.adjustmentCount, adjustmentCount) || other.adjustmentCount == adjustmentCount)&&(identical(other.lastAdjustedAt, lastAdjustedAt) || other.lastAdjustedAt == lastAdjustedAt)&&(identical(other.isAutoAdjust, isAutoAdjust) || other.isAutoAdjust == isAutoAdjust)&&(identical(other.confidenceScore, confidenceScore) || other.confidenceScore == confidenceScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,appId,currentLevel,recommendedLevel,metrics,adjustmentCount,lastAdjustedAt,isAutoAdjust,confidenceScore);

@override
String toString() {
  return 'UserAdaptiveDifficulty(userId: $userId, appId: $appId, currentLevel: $currentLevel, recommendedLevel: $recommendedLevel, metrics: $metrics, adjustmentCount: $adjustmentCount, lastAdjustedAt: $lastAdjustedAt, isAutoAdjust: $isAutoAdjust, confidenceScore: $confidenceScore)';
}


}

/// @nodoc
abstract mixin class _$UserAdaptiveDifficultyCopyWith<$Res> implements $UserAdaptiveDifficultyCopyWith<$Res> {
  factory _$UserAdaptiveDifficultyCopyWith(_UserAdaptiveDifficulty value, $Res Function(_UserAdaptiveDifficulty) _then) = __$UserAdaptiveDifficultyCopyWithImpl;
@override @useResult
$Res call({
 String userId, String appId, DifficultyLevel currentLevel, DifficultyLevel recommendedLevel, AdaptiveMetrics metrics, int adjustmentCount, DateTime? lastAdjustedAt, bool isAutoAdjust, double confidenceScore
});


@override $AdaptiveMetricsCopyWith<$Res> get metrics;

}
/// @nodoc
class __$UserAdaptiveDifficultyCopyWithImpl<$Res>
    implements _$UserAdaptiveDifficultyCopyWith<$Res> {
  __$UserAdaptiveDifficultyCopyWithImpl(this._self, this._then);

  final _UserAdaptiveDifficulty _self;
  final $Res Function(_UserAdaptiveDifficulty) _then;

/// Create a copy of UserAdaptiveDifficulty
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? appId = null,Object? currentLevel = null,Object? recommendedLevel = null,Object? metrics = null,Object? adjustmentCount = null,Object? lastAdjustedAt = freezed,Object? isAutoAdjust = null,Object? confidenceScore = null,}) {
  return _then(_UserAdaptiveDifficulty(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,appId: null == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as String,currentLevel: null == currentLevel ? _self.currentLevel : currentLevel // ignore: cast_nullable_to_non_nullable
as DifficultyLevel,recommendedLevel: null == recommendedLevel ? _self.recommendedLevel : recommendedLevel // ignore: cast_nullable_to_non_nullable
as DifficultyLevel,metrics: null == metrics ? _self.metrics : metrics // ignore: cast_nullable_to_non_nullable
as AdaptiveMetrics,adjustmentCount: null == adjustmentCount ? _self.adjustmentCount : adjustmentCount // ignore: cast_nullable_to_non_nullable
as int,lastAdjustedAt: freezed == lastAdjustedAt ? _self.lastAdjustedAt : lastAdjustedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isAutoAdjust: null == isAutoAdjust ? _self.isAutoAdjust : isAutoAdjust // ignore: cast_nullable_to_non_nullable
as bool,confidenceScore: null == confidenceScore ? _self.confidenceScore : confidenceScore // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of UserAdaptiveDifficulty
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdaptiveMetricsCopyWith<$Res> get metrics {
  
  return $AdaptiveMetricsCopyWith<$Res>(_self.metrics, (value) {
    return _then(_self.copyWith(metrics: value));
  });
}
}


/// @nodoc
mixin _$DifficultyAdjustmentHistory {

 String get userId; String get appId; DifficultyLevel get previousLevel; DifficultyLevel get newLevel; String get reason;// 調整理由（例: 'high_accuracy'）
 DateTime get adjustedAt; double get metricsSnapshot;
/// Create a copy of DifficultyAdjustmentHistory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DifficultyAdjustmentHistoryCopyWith<DifficultyAdjustmentHistory> get copyWith => _$DifficultyAdjustmentHistoryCopyWithImpl<DifficultyAdjustmentHistory>(this as DifficultyAdjustmentHistory, _$identity);

  /// Serializes this DifficultyAdjustmentHistory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DifficultyAdjustmentHistory&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.appId, appId) || other.appId == appId)&&(identical(other.previousLevel, previousLevel) || other.previousLevel == previousLevel)&&(identical(other.newLevel, newLevel) || other.newLevel == newLevel)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.adjustedAt, adjustedAt) || other.adjustedAt == adjustedAt)&&(identical(other.metricsSnapshot, metricsSnapshot) || other.metricsSnapshot == metricsSnapshot));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,appId,previousLevel,newLevel,reason,adjustedAt,metricsSnapshot);

@override
String toString() {
  return 'DifficultyAdjustmentHistory(userId: $userId, appId: $appId, previousLevel: $previousLevel, newLevel: $newLevel, reason: $reason, adjustedAt: $adjustedAt, metricsSnapshot: $metricsSnapshot)';
}


}

/// @nodoc
abstract mixin class $DifficultyAdjustmentHistoryCopyWith<$Res>  {
  factory $DifficultyAdjustmentHistoryCopyWith(DifficultyAdjustmentHistory value, $Res Function(DifficultyAdjustmentHistory) _then) = _$DifficultyAdjustmentHistoryCopyWithImpl;
@useResult
$Res call({
 String userId, String appId, DifficultyLevel previousLevel, DifficultyLevel newLevel, String reason, DateTime adjustedAt, double metricsSnapshot
});




}
/// @nodoc
class _$DifficultyAdjustmentHistoryCopyWithImpl<$Res>
    implements $DifficultyAdjustmentHistoryCopyWith<$Res> {
  _$DifficultyAdjustmentHistoryCopyWithImpl(this._self, this._then);

  final DifficultyAdjustmentHistory _self;
  final $Res Function(DifficultyAdjustmentHistory) _then;

/// Create a copy of DifficultyAdjustmentHistory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? appId = null,Object? previousLevel = null,Object? newLevel = null,Object? reason = null,Object? adjustedAt = null,Object? metricsSnapshot = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,appId: null == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as String,previousLevel: null == previousLevel ? _self.previousLevel : previousLevel // ignore: cast_nullable_to_non_nullable
as DifficultyLevel,newLevel: null == newLevel ? _self.newLevel : newLevel // ignore: cast_nullable_to_non_nullable
as DifficultyLevel,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,adjustedAt: null == adjustedAt ? _self.adjustedAt : adjustedAt // ignore: cast_nullable_to_non_nullable
as DateTime,metricsSnapshot: null == metricsSnapshot ? _self.metricsSnapshot : metricsSnapshot // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [DifficultyAdjustmentHistory].
extension DifficultyAdjustmentHistoryPatterns on DifficultyAdjustmentHistory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DifficultyAdjustmentHistory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DifficultyAdjustmentHistory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DifficultyAdjustmentHistory value)  $default,){
final _that = this;
switch (_that) {
case _DifficultyAdjustmentHistory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DifficultyAdjustmentHistory value)?  $default,){
final _that = this;
switch (_that) {
case _DifficultyAdjustmentHistory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String appId,  DifficultyLevel previousLevel,  DifficultyLevel newLevel,  String reason,  DateTime adjustedAt,  double metricsSnapshot)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DifficultyAdjustmentHistory() when $default != null:
return $default(_that.userId,_that.appId,_that.previousLevel,_that.newLevel,_that.reason,_that.adjustedAt,_that.metricsSnapshot);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String appId,  DifficultyLevel previousLevel,  DifficultyLevel newLevel,  String reason,  DateTime adjustedAt,  double metricsSnapshot)  $default,) {final _that = this;
switch (_that) {
case _DifficultyAdjustmentHistory():
return $default(_that.userId,_that.appId,_that.previousLevel,_that.newLevel,_that.reason,_that.adjustedAt,_that.metricsSnapshot);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String appId,  DifficultyLevel previousLevel,  DifficultyLevel newLevel,  String reason,  DateTime adjustedAt,  double metricsSnapshot)?  $default,) {final _that = this;
switch (_that) {
case _DifficultyAdjustmentHistory() when $default != null:
return $default(_that.userId,_that.appId,_that.previousLevel,_that.newLevel,_that.reason,_that.adjustedAt,_that.metricsSnapshot);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DifficultyAdjustmentHistory implements DifficultyAdjustmentHistory {
  const _DifficultyAdjustmentHistory({required this.userId, required this.appId, required this.previousLevel, required this.newLevel, required this.reason, required this.adjustedAt, required this.metricsSnapshot});
  factory _DifficultyAdjustmentHistory.fromJson(Map<String, dynamic> json) => _$DifficultyAdjustmentHistoryFromJson(json);

@override final  String userId;
@override final  String appId;
@override final  DifficultyLevel previousLevel;
@override final  DifficultyLevel newLevel;
@override final  String reason;
// 調整理由（例: 'high_accuracy'）
@override final  DateTime adjustedAt;
@override final  double metricsSnapshot;

/// Create a copy of DifficultyAdjustmentHistory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DifficultyAdjustmentHistoryCopyWith<_DifficultyAdjustmentHistory> get copyWith => __$DifficultyAdjustmentHistoryCopyWithImpl<_DifficultyAdjustmentHistory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DifficultyAdjustmentHistoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DifficultyAdjustmentHistory&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.appId, appId) || other.appId == appId)&&(identical(other.previousLevel, previousLevel) || other.previousLevel == previousLevel)&&(identical(other.newLevel, newLevel) || other.newLevel == newLevel)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.adjustedAt, adjustedAt) || other.adjustedAt == adjustedAt)&&(identical(other.metricsSnapshot, metricsSnapshot) || other.metricsSnapshot == metricsSnapshot));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,appId,previousLevel,newLevel,reason,adjustedAt,metricsSnapshot);

@override
String toString() {
  return 'DifficultyAdjustmentHistory(userId: $userId, appId: $appId, previousLevel: $previousLevel, newLevel: $newLevel, reason: $reason, adjustedAt: $adjustedAt, metricsSnapshot: $metricsSnapshot)';
}


}

/// @nodoc
abstract mixin class _$DifficultyAdjustmentHistoryCopyWith<$Res> implements $DifficultyAdjustmentHistoryCopyWith<$Res> {
  factory _$DifficultyAdjustmentHistoryCopyWith(_DifficultyAdjustmentHistory value, $Res Function(_DifficultyAdjustmentHistory) _then) = __$DifficultyAdjustmentHistoryCopyWithImpl;
@override @useResult
$Res call({
 String userId, String appId, DifficultyLevel previousLevel, DifficultyLevel newLevel, String reason, DateTime adjustedAt, double metricsSnapshot
});




}
/// @nodoc
class __$DifficultyAdjustmentHistoryCopyWithImpl<$Res>
    implements _$DifficultyAdjustmentHistoryCopyWith<$Res> {
  __$DifficultyAdjustmentHistoryCopyWithImpl(this._self, this._then);

  final _DifficultyAdjustmentHistory _self;
  final $Res Function(_DifficultyAdjustmentHistory) _then;

/// Create a copy of DifficultyAdjustmentHistory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? appId = null,Object? previousLevel = null,Object? newLevel = null,Object? reason = null,Object? adjustedAt = null,Object? metricsSnapshot = null,}) {
  return _then(_DifficultyAdjustmentHistory(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,appId: null == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as String,previousLevel: null == previousLevel ? _self.previousLevel : previousLevel // ignore: cast_nullable_to_non_nullable
as DifficultyLevel,newLevel: null == newLevel ? _self.newLevel : newLevel // ignore: cast_nullable_to_non_nullable
as DifficultyLevel,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,adjustedAt: null == adjustedAt ? _self.adjustedAt : adjustedAt // ignore: cast_nullable_to_non_nullable
as DateTime,metricsSnapshot: null == metricsSnapshot ? _self.metricsSnapshot : metricsSnapshot // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$AdaptiveDifficultyConfig {

 bool get enableAutoAdjust;// 自動調整を有効
 int get adjustmentIntervalDays;// 調整間隔（日数）
 double get highAccuracyThreshold;// 高い正答率と判定する閾値
 double get lowAccuracyThreshold;// 低い正答率と判定する閾値
 double get completionThreshold;// 完了率の目標
 int get minQuestionsBeforeAdjust;// 調整前に答える最小問題数
 Map<String, double> get difficultyMultipliers;
/// Create a copy of AdaptiveDifficultyConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdaptiveDifficultyConfigCopyWith<AdaptiveDifficultyConfig> get copyWith => _$AdaptiveDifficultyConfigCopyWithImpl<AdaptiveDifficultyConfig>(this as AdaptiveDifficultyConfig, _$identity);

  /// Serializes this AdaptiveDifficultyConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdaptiveDifficultyConfig&&(identical(other.enableAutoAdjust, enableAutoAdjust) || other.enableAutoAdjust == enableAutoAdjust)&&(identical(other.adjustmentIntervalDays, adjustmentIntervalDays) || other.adjustmentIntervalDays == adjustmentIntervalDays)&&(identical(other.highAccuracyThreshold, highAccuracyThreshold) || other.highAccuracyThreshold == highAccuracyThreshold)&&(identical(other.lowAccuracyThreshold, lowAccuracyThreshold) || other.lowAccuracyThreshold == lowAccuracyThreshold)&&(identical(other.completionThreshold, completionThreshold) || other.completionThreshold == completionThreshold)&&(identical(other.minQuestionsBeforeAdjust, minQuestionsBeforeAdjust) || other.minQuestionsBeforeAdjust == minQuestionsBeforeAdjust)&&const DeepCollectionEquality().equals(other.difficultyMultipliers, difficultyMultipliers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enableAutoAdjust,adjustmentIntervalDays,highAccuracyThreshold,lowAccuracyThreshold,completionThreshold,minQuestionsBeforeAdjust,const DeepCollectionEquality().hash(difficultyMultipliers));

@override
String toString() {
  return 'AdaptiveDifficultyConfig(enableAutoAdjust: $enableAutoAdjust, adjustmentIntervalDays: $adjustmentIntervalDays, highAccuracyThreshold: $highAccuracyThreshold, lowAccuracyThreshold: $lowAccuracyThreshold, completionThreshold: $completionThreshold, minQuestionsBeforeAdjust: $minQuestionsBeforeAdjust, difficultyMultipliers: $difficultyMultipliers)';
}


}

/// @nodoc
abstract mixin class $AdaptiveDifficultyConfigCopyWith<$Res>  {
  factory $AdaptiveDifficultyConfigCopyWith(AdaptiveDifficultyConfig value, $Res Function(AdaptiveDifficultyConfig) _then) = _$AdaptiveDifficultyConfigCopyWithImpl;
@useResult
$Res call({
 bool enableAutoAdjust, int adjustmentIntervalDays, double highAccuracyThreshold, double lowAccuracyThreshold, double completionThreshold, int minQuestionsBeforeAdjust, Map<String, double> difficultyMultipliers
});




}
/// @nodoc
class _$AdaptiveDifficultyConfigCopyWithImpl<$Res>
    implements $AdaptiveDifficultyConfigCopyWith<$Res> {
  _$AdaptiveDifficultyConfigCopyWithImpl(this._self, this._then);

  final AdaptiveDifficultyConfig _self;
  final $Res Function(AdaptiveDifficultyConfig) _then;

/// Create a copy of AdaptiveDifficultyConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? enableAutoAdjust = null,Object? adjustmentIntervalDays = null,Object? highAccuracyThreshold = null,Object? lowAccuracyThreshold = null,Object? completionThreshold = null,Object? minQuestionsBeforeAdjust = null,Object? difficultyMultipliers = null,}) {
  return _then(_self.copyWith(
enableAutoAdjust: null == enableAutoAdjust ? _self.enableAutoAdjust : enableAutoAdjust // ignore: cast_nullable_to_non_nullable
as bool,adjustmentIntervalDays: null == adjustmentIntervalDays ? _self.adjustmentIntervalDays : adjustmentIntervalDays // ignore: cast_nullable_to_non_nullable
as int,highAccuracyThreshold: null == highAccuracyThreshold ? _self.highAccuracyThreshold : highAccuracyThreshold // ignore: cast_nullable_to_non_nullable
as double,lowAccuracyThreshold: null == lowAccuracyThreshold ? _self.lowAccuracyThreshold : lowAccuracyThreshold // ignore: cast_nullable_to_non_nullable
as double,completionThreshold: null == completionThreshold ? _self.completionThreshold : completionThreshold // ignore: cast_nullable_to_non_nullable
as double,minQuestionsBeforeAdjust: null == minQuestionsBeforeAdjust ? _self.minQuestionsBeforeAdjust : minQuestionsBeforeAdjust // ignore: cast_nullable_to_non_nullable
as int,difficultyMultipliers: null == difficultyMultipliers ? _self.difficultyMultipliers : difficultyMultipliers // ignore: cast_nullable_to_non_nullable
as Map<String, double>,
  ));
}

}


/// Adds pattern-matching-related methods to [AdaptiveDifficultyConfig].
extension AdaptiveDifficultyConfigPatterns on AdaptiveDifficultyConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdaptiveDifficultyConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdaptiveDifficultyConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdaptiveDifficultyConfig value)  $default,){
final _that = this;
switch (_that) {
case _AdaptiveDifficultyConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdaptiveDifficultyConfig value)?  $default,){
final _that = this;
switch (_that) {
case _AdaptiveDifficultyConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool enableAutoAdjust,  int adjustmentIntervalDays,  double highAccuracyThreshold,  double lowAccuracyThreshold,  double completionThreshold,  int minQuestionsBeforeAdjust,  Map<String, double> difficultyMultipliers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdaptiveDifficultyConfig() when $default != null:
return $default(_that.enableAutoAdjust,_that.adjustmentIntervalDays,_that.highAccuracyThreshold,_that.lowAccuracyThreshold,_that.completionThreshold,_that.minQuestionsBeforeAdjust,_that.difficultyMultipliers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool enableAutoAdjust,  int adjustmentIntervalDays,  double highAccuracyThreshold,  double lowAccuracyThreshold,  double completionThreshold,  int minQuestionsBeforeAdjust,  Map<String, double> difficultyMultipliers)  $default,) {final _that = this;
switch (_that) {
case _AdaptiveDifficultyConfig():
return $default(_that.enableAutoAdjust,_that.adjustmentIntervalDays,_that.highAccuracyThreshold,_that.lowAccuracyThreshold,_that.completionThreshold,_that.minQuestionsBeforeAdjust,_that.difficultyMultipliers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool enableAutoAdjust,  int adjustmentIntervalDays,  double highAccuracyThreshold,  double lowAccuracyThreshold,  double completionThreshold,  int minQuestionsBeforeAdjust,  Map<String, double> difficultyMultipliers)?  $default,) {final _that = this;
switch (_that) {
case _AdaptiveDifficultyConfig() when $default != null:
return $default(_that.enableAutoAdjust,_that.adjustmentIntervalDays,_that.highAccuracyThreshold,_that.lowAccuracyThreshold,_that.completionThreshold,_that.minQuestionsBeforeAdjust,_that.difficultyMultipliers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdaptiveDifficultyConfig implements AdaptiveDifficultyConfig {
  const _AdaptiveDifficultyConfig({required this.enableAutoAdjust, required this.adjustmentIntervalDays, required this.highAccuracyThreshold, required this.lowAccuracyThreshold, required this.completionThreshold, required this.minQuestionsBeforeAdjust, required final  Map<String, double> difficultyMultipliers}): _difficultyMultipliers = difficultyMultipliers;
  factory _AdaptiveDifficultyConfig.fromJson(Map<String, dynamic> json) => _$AdaptiveDifficultyConfigFromJson(json);

@override final  bool enableAutoAdjust;
// 自動調整を有効
@override final  int adjustmentIntervalDays;
// 調整間隔（日数）
@override final  double highAccuracyThreshold;
// 高い正答率と判定する閾値
@override final  double lowAccuracyThreshold;
// 低い正答率と判定する閾値
@override final  double completionThreshold;
// 完了率の目標
@override final  int minQuestionsBeforeAdjust;
// 調整前に答える最小問題数
 final  Map<String, double> _difficultyMultipliers;
// 調整前に答える最小問題数
@override Map<String, double> get difficultyMultipliers {
  if (_difficultyMultipliers is EqualUnmodifiableMapView) return _difficultyMultipliers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_difficultyMultipliers);
}


/// Create a copy of AdaptiveDifficultyConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdaptiveDifficultyConfigCopyWith<_AdaptiveDifficultyConfig> get copyWith => __$AdaptiveDifficultyConfigCopyWithImpl<_AdaptiveDifficultyConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdaptiveDifficultyConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdaptiveDifficultyConfig&&(identical(other.enableAutoAdjust, enableAutoAdjust) || other.enableAutoAdjust == enableAutoAdjust)&&(identical(other.adjustmentIntervalDays, adjustmentIntervalDays) || other.adjustmentIntervalDays == adjustmentIntervalDays)&&(identical(other.highAccuracyThreshold, highAccuracyThreshold) || other.highAccuracyThreshold == highAccuracyThreshold)&&(identical(other.lowAccuracyThreshold, lowAccuracyThreshold) || other.lowAccuracyThreshold == lowAccuracyThreshold)&&(identical(other.completionThreshold, completionThreshold) || other.completionThreshold == completionThreshold)&&(identical(other.minQuestionsBeforeAdjust, minQuestionsBeforeAdjust) || other.minQuestionsBeforeAdjust == minQuestionsBeforeAdjust)&&const DeepCollectionEquality().equals(other._difficultyMultipliers, _difficultyMultipliers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enableAutoAdjust,adjustmentIntervalDays,highAccuracyThreshold,lowAccuracyThreshold,completionThreshold,minQuestionsBeforeAdjust,const DeepCollectionEquality().hash(_difficultyMultipliers));

@override
String toString() {
  return 'AdaptiveDifficultyConfig(enableAutoAdjust: $enableAutoAdjust, adjustmentIntervalDays: $adjustmentIntervalDays, highAccuracyThreshold: $highAccuracyThreshold, lowAccuracyThreshold: $lowAccuracyThreshold, completionThreshold: $completionThreshold, minQuestionsBeforeAdjust: $minQuestionsBeforeAdjust, difficultyMultipliers: $difficultyMultipliers)';
}


}

/// @nodoc
abstract mixin class _$AdaptiveDifficultyConfigCopyWith<$Res> implements $AdaptiveDifficultyConfigCopyWith<$Res> {
  factory _$AdaptiveDifficultyConfigCopyWith(_AdaptiveDifficultyConfig value, $Res Function(_AdaptiveDifficultyConfig) _then) = __$AdaptiveDifficultyConfigCopyWithImpl;
@override @useResult
$Res call({
 bool enableAutoAdjust, int adjustmentIntervalDays, double highAccuracyThreshold, double lowAccuracyThreshold, double completionThreshold, int minQuestionsBeforeAdjust, Map<String, double> difficultyMultipliers
});




}
/// @nodoc
class __$AdaptiveDifficultyConfigCopyWithImpl<$Res>
    implements _$AdaptiveDifficultyConfigCopyWith<$Res> {
  __$AdaptiveDifficultyConfigCopyWithImpl(this._self, this._then);

  final _AdaptiveDifficultyConfig _self;
  final $Res Function(_AdaptiveDifficultyConfig) _then;

/// Create a copy of AdaptiveDifficultyConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? enableAutoAdjust = null,Object? adjustmentIntervalDays = null,Object? highAccuracyThreshold = null,Object? lowAccuracyThreshold = null,Object? completionThreshold = null,Object? minQuestionsBeforeAdjust = null,Object? difficultyMultipliers = null,}) {
  return _then(_AdaptiveDifficultyConfig(
enableAutoAdjust: null == enableAutoAdjust ? _self.enableAutoAdjust : enableAutoAdjust // ignore: cast_nullable_to_non_nullable
as bool,adjustmentIntervalDays: null == adjustmentIntervalDays ? _self.adjustmentIntervalDays : adjustmentIntervalDays // ignore: cast_nullable_to_non_nullable
as int,highAccuracyThreshold: null == highAccuracyThreshold ? _self.highAccuracyThreshold : highAccuracyThreshold // ignore: cast_nullable_to_non_nullable
as double,lowAccuracyThreshold: null == lowAccuracyThreshold ? _self.lowAccuracyThreshold : lowAccuracyThreshold // ignore: cast_nullable_to_non_nullable
as double,completionThreshold: null == completionThreshold ? _self.completionThreshold : completionThreshold // ignore: cast_nullable_to_non_nullable
as double,minQuestionsBeforeAdjust: null == minQuestionsBeforeAdjust ? _self.minQuestionsBeforeAdjust : minQuestionsBeforeAdjust // ignore: cast_nullable_to_non_nullable
as int,difficultyMultipliers: null == difficultyMultipliers ? _self._difficultyMultipliers : difficultyMultipliers // ignore: cast_nullable_to_non_nullable
as Map<String, double>,
  ));
}


}


/// @nodoc
mixin _$DifficultyRecommendation {

 DifficultyLevel get recommendedLevel; double get confidence;// 推奨の確信度（0.0-1.0）
 String get reason;// 推奨理由
 List<String> get indicators;// 判定指標リスト
 DateTime get calculatedAt;
/// Create a copy of DifficultyRecommendation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DifficultyRecommendationCopyWith<DifficultyRecommendation> get copyWith => _$DifficultyRecommendationCopyWithImpl<DifficultyRecommendation>(this as DifficultyRecommendation, _$identity);

  /// Serializes this DifficultyRecommendation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DifficultyRecommendation&&(identical(other.recommendedLevel, recommendedLevel) || other.recommendedLevel == recommendedLevel)&&(identical(other.confidence, confidence) || other.confidence == confidence)&&(identical(other.reason, reason) || other.reason == reason)&&const DeepCollectionEquality().equals(other.indicators, indicators)&&(identical(other.calculatedAt, calculatedAt) || other.calculatedAt == calculatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recommendedLevel,confidence,reason,const DeepCollectionEquality().hash(indicators),calculatedAt);

@override
String toString() {
  return 'DifficultyRecommendation(recommendedLevel: $recommendedLevel, confidence: $confidence, reason: $reason, indicators: $indicators, calculatedAt: $calculatedAt)';
}


}

/// @nodoc
abstract mixin class $DifficultyRecommendationCopyWith<$Res>  {
  factory $DifficultyRecommendationCopyWith(DifficultyRecommendation value, $Res Function(DifficultyRecommendation) _then) = _$DifficultyRecommendationCopyWithImpl;
@useResult
$Res call({
 DifficultyLevel recommendedLevel, double confidence, String reason, List<String> indicators, DateTime calculatedAt
});




}
/// @nodoc
class _$DifficultyRecommendationCopyWithImpl<$Res>
    implements $DifficultyRecommendationCopyWith<$Res> {
  _$DifficultyRecommendationCopyWithImpl(this._self, this._then);

  final DifficultyRecommendation _self;
  final $Res Function(DifficultyRecommendation) _then;

/// Create a copy of DifficultyRecommendation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? recommendedLevel = null,Object? confidence = null,Object? reason = null,Object? indicators = null,Object? calculatedAt = null,}) {
  return _then(_self.copyWith(
recommendedLevel: null == recommendedLevel ? _self.recommendedLevel : recommendedLevel // ignore: cast_nullable_to_non_nullable
as DifficultyLevel,confidence: null == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,indicators: null == indicators ? _self.indicators : indicators // ignore: cast_nullable_to_non_nullable
as List<String>,calculatedAt: null == calculatedAt ? _self.calculatedAt : calculatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [DifficultyRecommendation].
extension DifficultyRecommendationPatterns on DifficultyRecommendation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DifficultyRecommendation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DifficultyRecommendation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DifficultyRecommendation value)  $default,){
final _that = this;
switch (_that) {
case _DifficultyRecommendation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DifficultyRecommendation value)?  $default,){
final _that = this;
switch (_that) {
case _DifficultyRecommendation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DifficultyLevel recommendedLevel,  double confidence,  String reason,  List<String> indicators,  DateTime calculatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DifficultyRecommendation() when $default != null:
return $default(_that.recommendedLevel,_that.confidence,_that.reason,_that.indicators,_that.calculatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DifficultyLevel recommendedLevel,  double confidence,  String reason,  List<String> indicators,  DateTime calculatedAt)  $default,) {final _that = this;
switch (_that) {
case _DifficultyRecommendation():
return $default(_that.recommendedLevel,_that.confidence,_that.reason,_that.indicators,_that.calculatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DifficultyLevel recommendedLevel,  double confidence,  String reason,  List<String> indicators,  DateTime calculatedAt)?  $default,) {final _that = this;
switch (_that) {
case _DifficultyRecommendation() when $default != null:
return $default(_that.recommendedLevel,_that.confidence,_that.reason,_that.indicators,_that.calculatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DifficultyRecommendation implements DifficultyRecommendation {
  const _DifficultyRecommendation({required this.recommendedLevel, required this.confidence, required this.reason, required final  List<String> indicators, required this.calculatedAt}): _indicators = indicators;
  factory _DifficultyRecommendation.fromJson(Map<String, dynamic> json) => _$DifficultyRecommendationFromJson(json);

@override final  DifficultyLevel recommendedLevel;
@override final  double confidence;
// 推奨の確信度（0.0-1.0）
@override final  String reason;
// 推奨理由
 final  List<String> _indicators;
// 推奨理由
@override List<String> get indicators {
  if (_indicators is EqualUnmodifiableListView) return _indicators;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_indicators);
}

// 判定指標リスト
@override final  DateTime calculatedAt;

/// Create a copy of DifficultyRecommendation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DifficultyRecommendationCopyWith<_DifficultyRecommendation> get copyWith => __$DifficultyRecommendationCopyWithImpl<_DifficultyRecommendation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DifficultyRecommendationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DifficultyRecommendation&&(identical(other.recommendedLevel, recommendedLevel) || other.recommendedLevel == recommendedLevel)&&(identical(other.confidence, confidence) || other.confidence == confidence)&&(identical(other.reason, reason) || other.reason == reason)&&const DeepCollectionEquality().equals(other._indicators, _indicators)&&(identical(other.calculatedAt, calculatedAt) || other.calculatedAt == calculatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recommendedLevel,confidence,reason,const DeepCollectionEquality().hash(_indicators),calculatedAt);

@override
String toString() {
  return 'DifficultyRecommendation(recommendedLevel: $recommendedLevel, confidence: $confidence, reason: $reason, indicators: $indicators, calculatedAt: $calculatedAt)';
}


}

/// @nodoc
abstract mixin class _$DifficultyRecommendationCopyWith<$Res> implements $DifficultyRecommendationCopyWith<$Res> {
  factory _$DifficultyRecommendationCopyWith(_DifficultyRecommendation value, $Res Function(_DifficultyRecommendation) _then) = __$DifficultyRecommendationCopyWithImpl;
@override @useResult
$Res call({
 DifficultyLevel recommendedLevel, double confidence, String reason, List<String> indicators, DateTime calculatedAt
});




}
/// @nodoc
class __$DifficultyRecommendationCopyWithImpl<$Res>
    implements _$DifficultyRecommendationCopyWith<$Res> {
  __$DifficultyRecommendationCopyWithImpl(this._self, this._then);

  final _DifficultyRecommendation _self;
  final $Res Function(_DifficultyRecommendation) _then;

/// Create a copy of DifficultyRecommendation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? recommendedLevel = null,Object? confidence = null,Object? reason = null,Object? indicators = null,Object? calculatedAt = null,}) {
  return _then(_DifficultyRecommendation(
recommendedLevel: null == recommendedLevel ? _self.recommendedLevel : recommendedLevel // ignore: cast_nullable_to_non_nullable
as DifficultyLevel,confidence: null == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,indicators: null == indicators ? _self._indicators : indicators // ignore: cast_nullable_to_non_nullable
as List<String>,calculatedAt: null == calculatedAt ? _self.calculatedAt : calculatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$DifficultyPerformanceStats {

 DifficultyLevel get level; double get avgAccuracy;// 平均正答率
 double get avgCompletionTime;// 平均完了時間
 int get totalAttempts;// 総試行回数
 int get successfulAttempts;// 成功試行回数
 DateTime? get lastUsedAt;
/// Create a copy of DifficultyPerformanceStats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DifficultyPerformanceStatsCopyWith<DifficultyPerformanceStats> get copyWith => _$DifficultyPerformanceStatsCopyWithImpl<DifficultyPerformanceStats>(this as DifficultyPerformanceStats, _$identity);

  /// Serializes this DifficultyPerformanceStats to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DifficultyPerformanceStats&&(identical(other.level, level) || other.level == level)&&(identical(other.avgAccuracy, avgAccuracy) || other.avgAccuracy == avgAccuracy)&&(identical(other.avgCompletionTime, avgCompletionTime) || other.avgCompletionTime == avgCompletionTime)&&(identical(other.totalAttempts, totalAttempts) || other.totalAttempts == totalAttempts)&&(identical(other.successfulAttempts, successfulAttempts) || other.successfulAttempts == successfulAttempts)&&(identical(other.lastUsedAt, lastUsedAt) || other.lastUsedAt == lastUsedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,level,avgAccuracy,avgCompletionTime,totalAttempts,successfulAttempts,lastUsedAt);

@override
String toString() {
  return 'DifficultyPerformanceStats(level: $level, avgAccuracy: $avgAccuracy, avgCompletionTime: $avgCompletionTime, totalAttempts: $totalAttempts, successfulAttempts: $successfulAttempts, lastUsedAt: $lastUsedAt)';
}


}

/// @nodoc
abstract mixin class $DifficultyPerformanceStatsCopyWith<$Res>  {
  factory $DifficultyPerformanceStatsCopyWith(DifficultyPerformanceStats value, $Res Function(DifficultyPerformanceStats) _then) = _$DifficultyPerformanceStatsCopyWithImpl;
@useResult
$Res call({
 DifficultyLevel level, double avgAccuracy, double avgCompletionTime, int totalAttempts, int successfulAttempts, DateTime? lastUsedAt
});




}
/// @nodoc
class _$DifficultyPerformanceStatsCopyWithImpl<$Res>
    implements $DifficultyPerformanceStatsCopyWith<$Res> {
  _$DifficultyPerformanceStatsCopyWithImpl(this._self, this._then);

  final DifficultyPerformanceStats _self;
  final $Res Function(DifficultyPerformanceStats) _then;

/// Create a copy of DifficultyPerformanceStats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? level = null,Object? avgAccuracy = null,Object? avgCompletionTime = null,Object? totalAttempts = null,Object? successfulAttempts = null,Object? lastUsedAt = freezed,}) {
  return _then(_self.copyWith(
level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as DifficultyLevel,avgAccuracy: null == avgAccuracy ? _self.avgAccuracy : avgAccuracy // ignore: cast_nullable_to_non_nullable
as double,avgCompletionTime: null == avgCompletionTime ? _self.avgCompletionTime : avgCompletionTime // ignore: cast_nullable_to_non_nullable
as double,totalAttempts: null == totalAttempts ? _self.totalAttempts : totalAttempts // ignore: cast_nullable_to_non_nullable
as int,successfulAttempts: null == successfulAttempts ? _self.successfulAttempts : successfulAttempts // ignore: cast_nullable_to_non_nullable
as int,lastUsedAt: freezed == lastUsedAt ? _self.lastUsedAt : lastUsedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [DifficultyPerformanceStats].
extension DifficultyPerformanceStatsPatterns on DifficultyPerformanceStats {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DifficultyPerformanceStats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DifficultyPerformanceStats() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DifficultyPerformanceStats value)  $default,){
final _that = this;
switch (_that) {
case _DifficultyPerformanceStats():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DifficultyPerformanceStats value)?  $default,){
final _that = this;
switch (_that) {
case _DifficultyPerformanceStats() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DifficultyLevel level,  double avgAccuracy,  double avgCompletionTime,  int totalAttempts,  int successfulAttempts,  DateTime? lastUsedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DifficultyPerformanceStats() when $default != null:
return $default(_that.level,_that.avgAccuracy,_that.avgCompletionTime,_that.totalAttempts,_that.successfulAttempts,_that.lastUsedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DifficultyLevel level,  double avgAccuracy,  double avgCompletionTime,  int totalAttempts,  int successfulAttempts,  DateTime? lastUsedAt)  $default,) {final _that = this;
switch (_that) {
case _DifficultyPerformanceStats():
return $default(_that.level,_that.avgAccuracy,_that.avgCompletionTime,_that.totalAttempts,_that.successfulAttempts,_that.lastUsedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DifficultyLevel level,  double avgAccuracy,  double avgCompletionTime,  int totalAttempts,  int successfulAttempts,  DateTime? lastUsedAt)?  $default,) {final _that = this;
switch (_that) {
case _DifficultyPerformanceStats() when $default != null:
return $default(_that.level,_that.avgAccuracy,_that.avgCompletionTime,_that.totalAttempts,_that.successfulAttempts,_that.lastUsedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DifficultyPerformanceStats implements DifficultyPerformanceStats {
  const _DifficultyPerformanceStats({required this.level, required this.avgAccuracy, required this.avgCompletionTime, required this.totalAttempts, required this.successfulAttempts, required this.lastUsedAt});
  factory _DifficultyPerformanceStats.fromJson(Map<String, dynamic> json) => _$DifficultyPerformanceStatsFromJson(json);

@override final  DifficultyLevel level;
@override final  double avgAccuracy;
// 平均正答率
@override final  double avgCompletionTime;
// 平均完了時間
@override final  int totalAttempts;
// 総試行回数
@override final  int successfulAttempts;
// 成功試行回数
@override final  DateTime? lastUsedAt;

/// Create a copy of DifficultyPerformanceStats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DifficultyPerformanceStatsCopyWith<_DifficultyPerformanceStats> get copyWith => __$DifficultyPerformanceStatsCopyWithImpl<_DifficultyPerformanceStats>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DifficultyPerformanceStatsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DifficultyPerformanceStats&&(identical(other.level, level) || other.level == level)&&(identical(other.avgAccuracy, avgAccuracy) || other.avgAccuracy == avgAccuracy)&&(identical(other.avgCompletionTime, avgCompletionTime) || other.avgCompletionTime == avgCompletionTime)&&(identical(other.totalAttempts, totalAttempts) || other.totalAttempts == totalAttempts)&&(identical(other.successfulAttempts, successfulAttempts) || other.successfulAttempts == successfulAttempts)&&(identical(other.lastUsedAt, lastUsedAt) || other.lastUsedAt == lastUsedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,level,avgAccuracy,avgCompletionTime,totalAttempts,successfulAttempts,lastUsedAt);

@override
String toString() {
  return 'DifficultyPerformanceStats(level: $level, avgAccuracy: $avgAccuracy, avgCompletionTime: $avgCompletionTime, totalAttempts: $totalAttempts, successfulAttempts: $successfulAttempts, lastUsedAt: $lastUsedAt)';
}


}

/// @nodoc
abstract mixin class _$DifficultyPerformanceStatsCopyWith<$Res> implements $DifficultyPerformanceStatsCopyWith<$Res> {
  factory _$DifficultyPerformanceStatsCopyWith(_DifficultyPerformanceStats value, $Res Function(_DifficultyPerformanceStats) _then) = __$DifficultyPerformanceStatsCopyWithImpl;
@override @useResult
$Res call({
 DifficultyLevel level, double avgAccuracy, double avgCompletionTime, int totalAttempts, int successfulAttempts, DateTime? lastUsedAt
});




}
/// @nodoc
class __$DifficultyPerformanceStatsCopyWithImpl<$Res>
    implements _$DifficultyPerformanceStatsCopyWith<$Res> {
  __$DifficultyPerformanceStatsCopyWithImpl(this._self, this._then);

  final _DifficultyPerformanceStats _self;
  final $Res Function(_DifficultyPerformanceStats) _then;

/// Create a copy of DifficultyPerformanceStats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? level = null,Object? avgAccuracy = null,Object? avgCompletionTime = null,Object? totalAttempts = null,Object? successfulAttempts = null,Object? lastUsedAt = freezed,}) {
  return _then(_DifficultyPerformanceStats(
level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as DifficultyLevel,avgAccuracy: null == avgAccuracy ? _self.avgAccuracy : avgAccuracy // ignore: cast_nullable_to_non_nullable
as double,avgCompletionTime: null == avgCompletionTime ? _self.avgCompletionTime : avgCompletionTime // ignore: cast_nullable_to_non_nullable
as double,totalAttempts: null == totalAttempts ? _self.totalAttempts : totalAttempts // ignore: cast_nullable_to_non_nullable
as int,successfulAttempts: null == successfulAttempts ? _self.successfulAttempts : successfulAttempts // ignore: cast_nullable_to_non_nullable
as int,lastUsedAt: freezed == lastUsedAt ? _self.lastUsedAt : lastUsedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$UserLearningPattern {

 String get userId; String get appId; Map<String, DifficultyPerformanceStats> get performanceByLevel; DifficultyLevel get mostCommonLevel;// 最もよく選ぶ難易度
 DifficultyLevel get mostSuccessfulLevel;// 最も成功する難易度
 double get learningVelocity;// 学習速度（1.0 = 標準）
 DateTime get analyzedAt;
/// Create a copy of UserLearningPattern
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserLearningPatternCopyWith<UserLearningPattern> get copyWith => _$UserLearningPatternCopyWithImpl<UserLearningPattern>(this as UserLearningPattern, _$identity);

  /// Serializes this UserLearningPattern to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserLearningPattern&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.appId, appId) || other.appId == appId)&&const DeepCollectionEquality().equals(other.performanceByLevel, performanceByLevel)&&(identical(other.mostCommonLevel, mostCommonLevel) || other.mostCommonLevel == mostCommonLevel)&&(identical(other.mostSuccessfulLevel, mostSuccessfulLevel) || other.mostSuccessfulLevel == mostSuccessfulLevel)&&(identical(other.learningVelocity, learningVelocity) || other.learningVelocity == learningVelocity)&&(identical(other.analyzedAt, analyzedAt) || other.analyzedAt == analyzedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,appId,const DeepCollectionEquality().hash(performanceByLevel),mostCommonLevel,mostSuccessfulLevel,learningVelocity,analyzedAt);

@override
String toString() {
  return 'UserLearningPattern(userId: $userId, appId: $appId, performanceByLevel: $performanceByLevel, mostCommonLevel: $mostCommonLevel, mostSuccessfulLevel: $mostSuccessfulLevel, learningVelocity: $learningVelocity, analyzedAt: $analyzedAt)';
}


}

/// @nodoc
abstract mixin class $UserLearningPatternCopyWith<$Res>  {
  factory $UserLearningPatternCopyWith(UserLearningPattern value, $Res Function(UserLearningPattern) _then) = _$UserLearningPatternCopyWithImpl;
@useResult
$Res call({
 String userId, String appId, Map<String, DifficultyPerformanceStats> performanceByLevel, DifficultyLevel mostCommonLevel, DifficultyLevel mostSuccessfulLevel, double learningVelocity, DateTime analyzedAt
});




}
/// @nodoc
class _$UserLearningPatternCopyWithImpl<$Res>
    implements $UserLearningPatternCopyWith<$Res> {
  _$UserLearningPatternCopyWithImpl(this._self, this._then);

  final UserLearningPattern _self;
  final $Res Function(UserLearningPattern) _then;

/// Create a copy of UserLearningPattern
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? appId = null,Object? performanceByLevel = null,Object? mostCommonLevel = null,Object? mostSuccessfulLevel = null,Object? learningVelocity = null,Object? analyzedAt = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,appId: null == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as String,performanceByLevel: null == performanceByLevel ? _self.performanceByLevel : performanceByLevel // ignore: cast_nullable_to_non_nullable
as Map<String, DifficultyPerformanceStats>,mostCommonLevel: null == mostCommonLevel ? _self.mostCommonLevel : mostCommonLevel // ignore: cast_nullable_to_non_nullable
as DifficultyLevel,mostSuccessfulLevel: null == mostSuccessfulLevel ? _self.mostSuccessfulLevel : mostSuccessfulLevel // ignore: cast_nullable_to_non_nullable
as DifficultyLevel,learningVelocity: null == learningVelocity ? _self.learningVelocity : learningVelocity // ignore: cast_nullable_to_non_nullable
as double,analyzedAt: null == analyzedAt ? _self.analyzedAt : analyzedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [UserLearningPattern].
extension UserLearningPatternPatterns on UserLearningPattern {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserLearningPattern value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserLearningPattern() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserLearningPattern value)  $default,){
final _that = this;
switch (_that) {
case _UserLearningPattern():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserLearningPattern value)?  $default,){
final _that = this;
switch (_that) {
case _UserLearningPattern() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String appId,  Map<String, DifficultyPerformanceStats> performanceByLevel,  DifficultyLevel mostCommonLevel,  DifficultyLevel mostSuccessfulLevel,  double learningVelocity,  DateTime analyzedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserLearningPattern() when $default != null:
return $default(_that.userId,_that.appId,_that.performanceByLevel,_that.mostCommonLevel,_that.mostSuccessfulLevel,_that.learningVelocity,_that.analyzedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String appId,  Map<String, DifficultyPerformanceStats> performanceByLevel,  DifficultyLevel mostCommonLevel,  DifficultyLevel mostSuccessfulLevel,  double learningVelocity,  DateTime analyzedAt)  $default,) {final _that = this;
switch (_that) {
case _UserLearningPattern():
return $default(_that.userId,_that.appId,_that.performanceByLevel,_that.mostCommonLevel,_that.mostSuccessfulLevel,_that.learningVelocity,_that.analyzedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String appId,  Map<String, DifficultyPerformanceStats> performanceByLevel,  DifficultyLevel mostCommonLevel,  DifficultyLevel mostSuccessfulLevel,  double learningVelocity,  DateTime analyzedAt)?  $default,) {final _that = this;
switch (_that) {
case _UserLearningPattern() when $default != null:
return $default(_that.userId,_that.appId,_that.performanceByLevel,_that.mostCommonLevel,_that.mostSuccessfulLevel,_that.learningVelocity,_that.analyzedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserLearningPattern implements UserLearningPattern {
  const _UserLearningPattern({required this.userId, required this.appId, required final  Map<String, DifficultyPerformanceStats> performanceByLevel, required this.mostCommonLevel, required this.mostSuccessfulLevel, required this.learningVelocity, required this.analyzedAt}): _performanceByLevel = performanceByLevel;
  factory _UserLearningPattern.fromJson(Map<String, dynamic> json) => _$UserLearningPatternFromJson(json);

@override final  String userId;
@override final  String appId;
 final  Map<String, DifficultyPerformanceStats> _performanceByLevel;
@override Map<String, DifficultyPerformanceStats> get performanceByLevel {
  if (_performanceByLevel is EqualUnmodifiableMapView) return _performanceByLevel;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_performanceByLevel);
}

@override final  DifficultyLevel mostCommonLevel;
// 最もよく選ぶ難易度
@override final  DifficultyLevel mostSuccessfulLevel;
// 最も成功する難易度
@override final  double learningVelocity;
// 学習速度（1.0 = 標準）
@override final  DateTime analyzedAt;

/// Create a copy of UserLearningPattern
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserLearningPatternCopyWith<_UserLearningPattern> get copyWith => __$UserLearningPatternCopyWithImpl<_UserLearningPattern>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserLearningPatternToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserLearningPattern&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.appId, appId) || other.appId == appId)&&const DeepCollectionEquality().equals(other._performanceByLevel, _performanceByLevel)&&(identical(other.mostCommonLevel, mostCommonLevel) || other.mostCommonLevel == mostCommonLevel)&&(identical(other.mostSuccessfulLevel, mostSuccessfulLevel) || other.mostSuccessfulLevel == mostSuccessfulLevel)&&(identical(other.learningVelocity, learningVelocity) || other.learningVelocity == learningVelocity)&&(identical(other.analyzedAt, analyzedAt) || other.analyzedAt == analyzedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,appId,const DeepCollectionEquality().hash(_performanceByLevel),mostCommonLevel,mostSuccessfulLevel,learningVelocity,analyzedAt);

@override
String toString() {
  return 'UserLearningPattern(userId: $userId, appId: $appId, performanceByLevel: $performanceByLevel, mostCommonLevel: $mostCommonLevel, mostSuccessfulLevel: $mostSuccessfulLevel, learningVelocity: $learningVelocity, analyzedAt: $analyzedAt)';
}


}

/// @nodoc
abstract mixin class _$UserLearningPatternCopyWith<$Res> implements $UserLearningPatternCopyWith<$Res> {
  factory _$UserLearningPatternCopyWith(_UserLearningPattern value, $Res Function(_UserLearningPattern) _then) = __$UserLearningPatternCopyWithImpl;
@override @useResult
$Res call({
 String userId, String appId, Map<String, DifficultyPerformanceStats> performanceByLevel, DifficultyLevel mostCommonLevel, DifficultyLevel mostSuccessfulLevel, double learningVelocity, DateTime analyzedAt
});




}
/// @nodoc
class __$UserLearningPatternCopyWithImpl<$Res>
    implements _$UserLearningPatternCopyWith<$Res> {
  __$UserLearningPatternCopyWithImpl(this._self, this._then);

  final _UserLearningPattern _self;
  final $Res Function(_UserLearningPattern) _then;

/// Create a copy of UserLearningPattern
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? appId = null,Object? performanceByLevel = null,Object? mostCommonLevel = null,Object? mostSuccessfulLevel = null,Object? learningVelocity = null,Object? analyzedAt = null,}) {
  return _then(_UserLearningPattern(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,appId: null == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as String,performanceByLevel: null == performanceByLevel ? _self._performanceByLevel : performanceByLevel // ignore: cast_nullable_to_non_nullable
as Map<String, DifficultyPerformanceStats>,mostCommonLevel: null == mostCommonLevel ? _self.mostCommonLevel : mostCommonLevel // ignore: cast_nullable_to_non_nullable
as DifficultyLevel,mostSuccessfulLevel: null == mostSuccessfulLevel ? _self.mostSuccessfulLevel : mostSuccessfulLevel // ignore: cast_nullable_to_non_nullable
as DifficultyLevel,learningVelocity: null == learningVelocity ? _self.learningVelocity : learningVelocity // ignore: cast_nullable_to_non_nullable
as double,analyzedAt: null == analyzedAt ? _self.analyzedAt : analyzedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
