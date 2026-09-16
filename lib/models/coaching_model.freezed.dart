// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coaching_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CoachingSession {

 String get userId; DateTime get createdAt; DateTime get updatedAt; String get sessionId; List<String> get analyzedSubjects;// 'kokugo', 'sansu' など
 List<CoachingAdvice> get advices; LearningInsight get learningInsight; int get motivationScore;// 0-100: ユーザーのモチベーション指標
 String get coachingPhase;// 'initial', 'weakness_focus', 'strength_build', 'maintenance'
 List<String> get recommendedTopics;// 重点学習トピック
 bool get isActive;
/// Create a copy of CoachingSession
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoachingSessionCopyWith<CoachingSession> get copyWith => _$CoachingSessionCopyWithImpl<CoachingSession>(this as CoachingSession, _$identity);

  /// Serializes this CoachingSession to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoachingSession&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&const DeepCollectionEquality().equals(other.analyzedSubjects, analyzedSubjects)&&const DeepCollectionEquality().equals(other.advices, advices)&&(identical(other.learningInsight, learningInsight) || other.learningInsight == learningInsight)&&(identical(other.motivationScore, motivationScore) || other.motivationScore == motivationScore)&&(identical(other.coachingPhase, coachingPhase) || other.coachingPhase == coachingPhase)&&const DeepCollectionEquality().equals(other.recommendedTopics, recommendedTopics)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,createdAt,updatedAt,sessionId,const DeepCollectionEquality().hash(analyzedSubjects),const DeepCollectionEquality().hash(advices),learningInsight,motivationScore,coachingPhase,const DeepCollectionEquality().hash(recommendedTopics),isActive);

@override
String toString() {
  return 'CoachingSession(userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, sessionId: $sessionId, analyzedSubjects: $analyzedSubjects, advices: $advices, learningInsight: $learningInsight, motivationScore: $motivationScore, coachingPhase: $coachingPhase, recommendedTopics: $recommendedTopics, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $CoachingSessionCopyWith<$Res>  {
  factory $CoachingSessionCopyWith(CoachingSession value, $Res Function(CoachingSession) _then) = _$CoachingSessionCopyWithImpl;
@useResult
$Res call({
 String userId, DateTime createdAt, DateTime updatedAt, String sessionId, List<String> analyzedSubjects, List<CoachingAdvice> advices, LearningInsight learningInsight, int motivationScore, String coachingPhase, List<String> recommendedTopics, bool isActive
});


$LearningInsightCopyWith<$Res> get learningInsight;

}
/// @nodoc
class _$CoachingSessionCopyWithImpl<$Res>
    implements $CoachingSessionCopyWith<$Res> {
  _$CoachingSessionCopyWithImpl(this._self, this._then);

  final CoachingSession _self;
  final $Res Function(CoachingSession) _then;

/// Create a copy of CoachingSession
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? createdAt = null,Object? updatedAt = null,Object? sessionId = null,Object? analyzedSubjects = null,Object? advices = null,Object? learningInsight = null,Object? motivationScore = null,Object? coachingPhase = null,Object? recommendedTopics = null,Object? isActive = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,analyzedSubjects: null == analyzedSubjects ? _self.analyzedSubjects : analyzedSubjects // ignore: cast_nullable_to_non_nullable
as List<String>,advices: null == advices ? _self.advices : advices // ignore: cast_nullable_to_non_nullable
as List<CoachingAdvice>,learningInsight: null == learningInsight ? _self.learningInsight : learningInsight // ignore: cast_nullable_to_non_nullable
as LearningInsight,motivationScore: null == motivationScore ? _self.motivationScore : motivationScore // ignore: cast_nullable_to_non_nullable
as int,coachingPhase: null == coachingPhase ? _self.coachingPhase : coachingPhase // ignore: cast_nullable_to_non_nullable
as String,recommendedTopics: null == recommendedTopics ? _self.recommendedTopics : recommendedTopics // ignore: cast_nullable_to_non_nullable
as List<String>,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of CoachingSession
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LearningInsightCopyWith<$Res> get learningInsight {
  
  return $LearningInsightCopyWith<$Res>(_self.learningInsight, (value) {
    return _then(_self.copyWith(learningInsight: value));
  });
}
}


/// Adds pattern-matching-related methods to [CoachingSession].
extension CoachingSessionPatterns on CoachingSession {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CoachingSession value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CoachingSession() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CoachingSession value)  $default,){
final _that = this;
switch (_that) {
case _CoachingSession():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CoachingSession value)?  $default,){
final _that = this;
switch (_that) {
case _CoachingSession() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  DateTime createdAt,  DateTime updatedAt,  String sessionId,  List<String> analyzedSubjects,  List<CoachingAdvice> advices,  LearningInsight learningInsight,  int motivationScore,  String coachingPhase,  List<String> recommendedTopics,  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CoachingSession() when $default != null:
return $default(_that.userId,_that.createdAt,_that.updatedAt,_that.sessionId,_that.analyzedSubjects,_that.advices,_that.learningInsight,_that.motivationScore,_that.coachingPhase,_that.recommendedTopics,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  DateTime createdAt,  DateTime updatedAt,  String sessionId,  List<String> analyzedSubjects,  List<CoachingAdvice> advices,  LearningInsight learningInsight,  int motivationScore,  String coachingPhase,  List<String> recommendedTopics,  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _CoachingSession():
return $default(_that.userId,_that.createdAt,_that.updatedAt,_that.sessionId,_that.analyzedSubjects,_that.advices,_that.learningInsight,_that.motivationScore,_that.coachingPhase,_that.recommendedTopics,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  DateTime createdAt,  DateTime updatedAt,  String sessionId,  List<String> analyzedSubjects,  List<CoachingAdvice> advices,  LearningInsight learningInsight,  int motivationScore,  String coachingPhase,  List<String> recommendedTopics,  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _CoachingSession() when $default != null:
return $default(_that.userId,_that.createdAt,_that.updatedAt,_that.sessionId,_that.analyzedSubjects,_that.advices,_that.learningInsight,_that.motivationScore,_that.coachingPhase,_that.recommendedTopics,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CoachingSession implements CoachingSession {
  const _CoachingSession({required this.userId, required this.createdAt, required this.updatedAt, required this.sessionId, required final  List<String> analyzedSubjects, required final  List<CoachingAdvice> advices, required this.learningInsight, required this.motivationScore, required this.coachingPhase, required final  List<String> recommendedTopics, required this.isActive}): _analyzedSubjects = analyzedSubjects,_advices = advices,_recommendedTopics = recommendedTopics;
  factory _CoachingSession.fromJson(Map<String, dynamic> json) => _$CoachingSessionFromJson(json);

@override final  String userId;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String sessionId;
 final  List<String> _analyzedSubjects;
@override List<String> get analyzedSubjects {
  if (_analyzedSubjects is EqualUnmodifiableListView) return _analyzedSubjects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_analyzedSubjects);
}

// 'kokugo', 'sansu' など
 final  List<CoachingAdvice> _advices;
// 'kokugo', 'sansu' など
@override List<CoachingAdvice> get advices {
  if (_advices is EqualUnmodifiableListView) return _advices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_advices);
}

@override final  LearningInsight learningInsight;
@override final  int motivationScore;
// 0-100: ユーザーのモチベーション指標
@override final  String coachingPhase;
// 'initial', 'weakness_focus', 'strength_build', 'maintenance'
 final  List<String> _recommendedTopics;
// 'initial', 'weakness_focus', 'strength_build', 'maintenance'
@override List<String> get recommendedTopics {
  if (_recommendedTopics is EqualUnmodifiableListView) return _recommendedTopics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recommendedTopics);
}

// 重点学習トピック
@override final  bool isActive;

/// Create a copy of CoachingSession
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoachingSessionCopyWith<_CoachingSession> get copyWith => __$CoachingSessionCopyWithImpl<_CoachingSession>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CoachingSessionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoachingSession&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&const DeepCollectionEquality().equals(other._analyzedSubjects, _analyzedSubjects)&&const DeepCollectionEquality().equals(other._advices, _advices)&&(identical(other.learningInsight, learningInsight) || other.learningInsight == learningInsight)&&(identical(other.motivationScore, motivationScore) || other.motivationScore == motivationScore)&&(identical(other.coachingPhase, coachingPhase) || other.coachingPhase == coachingPhase)&&const DeepCollectionEquality().equals(other._recommendedTopics, _recommendedTopics)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,createdAt,updatedAt,sessionId,const DeepCollectionEquality().hash(_analyzedSubjects),const DeepCollectionEquality().hash(_advices),learningInsight,motivationScore,coachingPhase,const DeepCollectionEquality().hash(_recommendedTopics),isActive);

@override
String toString() {
  return 'CoachingSession(userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, sessionId: $sessionId, analyzedSubjects: $analyzedSubjects, advices: $advices, learningInsight: $learningInsight, motivationScore: $motivationScore, coachingPhase: $coachingPhase, recommendedTopics: $recommendedTopics, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$CoachingSessionCopyWith<$Res> implements $CoachingSessionCopyWith<$Res> {
  factory _$CoachingSessionCopyWith(_CoachingSession value, $Res Function(_CoachingSession) _then) = __$CoachingSessionCopyWithImpl;
@override @useResult
$Res call({
 String userId, DateTime createdAt, DateTime updatedAt, String sessionId, List<String> analyzedSubjects, List<CoachingAdvice> advices, LearningInsight learningInsight, int motivationScore, String coachingPhase, List<String> recommendedTopics, bool isActive
});


@override $LearningInsightCopyWith<$Res> get learningInsight;

}
/// @nodoc
class __$CoachingSessionCopyWithImpl<$Res>
    implements _$CoachingSessionCopyWith<$Res> {
  __$CoachingSessionCopyWithImpl(this._self, this._then);

  final _CoachingSession _self;
  final $Res Function(_CoachingSession) _then;

/// Create a copy of CoachingSession
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? createdAt = null,Object? updatedAt = null,Object? sessionId = null,Object? analyzedSubjects = null,Object? advices = null,Object? learningInsight = null,Object? motivationScore = null,Object? coachingPhase = null,Object? recommendedTopics = null,Object? isActive = null,}) {
  return _then(_CoachingSession(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,analyzedSubjects: null == analyzedSubjects ? _self._analyzedSubjects : analyzedSubjects // ignore: cast_nullable_to_non_nullable
as List<String>,advices: null == advices ? _self._advices : advices // ignore: cast_nullable_to_non_nullable
as List<CoachingAdvice>,learningInsight: null == learningInsight ? _self.learningInsight : learningInsight // ignore: cast_nullable_to_non_nullable
as LearningInsight,motivationScore: null == motivationScore ? _self.motivationScore : motivationScore // ignore: cast_nullable_to_non_nullable
as int,coachingPhase: null == coachingPhase ? _self.coachingPhase : coachingPhase // ignore: cast_nullable_to_non_nullable
as String,recommendedTopics: null == recommendedTopics ? _self._recommendedTopics : recommendedTopics // ignore: cast_nullable_to_non_nullable
as List<String>,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of CoachingSession
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LearningInsightCopyWith<$Res> get learningInsight {
  
  return $LearningInsightCopyWith<$Res>(_self.learningInsight, (value) {
    return _then(_self.copyWith(learningInsight: value));
  });
}
}


/// @nodoc
mixin _$CoachingAdvice {

 String get adviceId; String get category;// 'weakness', 'strength', 'motivation', 'strategy'
 String get title; String get description; String get actionableHint;// 具体的な学習アクション
 int get priority;// 1-5: 優先度
 DateTime get givenAt; String get targetSubject;// 対象教科
 bool get isActedUpon;// ユーザーが実行したか
 DateTime? get actedUponAt; int get expectedImpactScore;
/// Create a copy of CoachingAdvice
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoachingAdviceCopyWith<CoachingAdvice> get copyWith => _$CoachingAdviceCopyWithImpl<CoachingAdvice>(this as CoachingAdvice, _$identity);

  /// Serializes this CoachingAdvice to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoachingAdvice&&(identical(other.adviceId, adviceId) || other.adviceId == adviceId)&&(identical(other.category, category) || other.category == category)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.actionableHint, actionableHint) || other.actionableHint == actionableHint)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.givenAt, givenAt) || other.givenAt == givenAt)&&(identical(other.targetSubject, targetSubject) || other.targetSubject == targetSubject)&&(identical(other.isActedUpon, isActedUpon) || other.isActedUpon == isActedUpon)&&(identical(other.actedUponAt, actedUponAt) || other.actedUponAt == actedUponAt)&&(identical(other.expectedImpactScore, expectedImpactScore) || other.expectedImpactScore == expectedImpactScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,adviceId,category,title,description,actionableHint,priority,givenAt,targetSubject,isActedUpon,actedUponAt,expectedImpactScore);

@override
String toString() {
  return 'CoachingAdvice(adviceId: $adviceId, category: $category, title: $title, description: $description, actionableHint: $actionableHint, priority: $priority, givenAt: $givenAt, targetSubject: $targetSubject, isActedUpon: $isActedUpon, actedUponAt: $actedUponAt, expectedImpactScore: $expectedImpactScore)';
}


}

/// @nodoc
abstract mixin class $CoachingAdviceCopyWith<$Res>  {
  factory $CoachingAdviceCopyWith(CoachingAdvice value, $Res Function(CoachingAdvice) _then) = _$CoachingAdviceCopyWithImpl;
@useResult
$Res call({
 String adviceId, String category, String title, String description, String actionableHint, int priority, DateTime givenAt, String targetSubject, bool isActedUpon, DateTime? actedUponAt, int expectedImpactScore
});




}
/// @nodoc
class _$CoachingAdviceCopyWithImpl<$Res>
    implements $CoachingAdviceCopyWith<$Res> {
  _$CoachingAdviceCopyWithImpl(this._self, this._then);

  final CoachingAdvice _self;
  final $Res Function(CoachingAdvice) _then;

/// Create a copy of CoachingAdvice
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? adviceId = null,Object? category = null,Object? title = null,Object? description = null,Object? actionableHint = null,Object? priority = null,Object? givenAt = null,Object? targetSubject = null,Object? isActedUpon = null,Object? actedUponAt = freezed,Object? expectedImpactScore = null,}) {
  return _then(_self.copyWith(
adviceId: null == adviceId ? _self.adviceId : adviceId // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,actionableHint: null == actionableHint ? _self.actionableHint : actionableHint // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as int,givenAt: null == givenAt ? _self.givenAt : givenAt // ignore: cast_nullable_to_non_nullable
as DateTime,targetSubject: null == targetSubject ? _self.targetSubject : targetSubject // ignore: cast_nullable_to_non_nullable
as String,isActedUpon: null == isActedUpon ? _self.isActedUpon : isActedUpon // ignore: cast_nullable_to_non_nullable
as bool,actedUponAt: freezed == actedUponAt ? _self.actedUponAt : actedUponAt // ignore: cast_nullable_to_non_nullable
as DateTime?,expectedImpactScore: null == expectedImpactScore ? _self.expectedImpactScore : expectedImpactScore // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CoachingAdvice].
extension CoachingAdvicePatterns on CoachingAdvice {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CoachingAdvice value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CoachingAdvice() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CoachingAdvice value)  $default,){
final _that = this;
switch (_that) {
case _CoachingAdvice():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CoachingAdvice value)?  $default,){
final _that = this;
switch (_that) {
case _CoachingAdvice() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String adviceId,  String category,  String title,  String description,  String actionableHint,  int priority,  DateTime givenAt,  String targetSubject,  bool isActedUpon,  DateTime? actedUponAt,  int expectedImpactScore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CoachingAdvice() when $default != null:
return $default(_that.adviceId,_that.category,_that.title,_that.description,_that.actionableHint,_that.priority,_that.givenAt,_that.targetSubject,_that.isActedUpon,_that.actedUponAt,_that.expectedImpactScore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String adviceId,  String category,  String title,  String description,  String actionableHint,  int priority,  DateTime givenAt,  String targetSubject,  bool isActedUpon,  DateTime? actedUponAt,  int expectedImpactScore)  $default,) {final _that = this;
switch (_that) {
case _CoachingAdvice():
return $default(_that.adviceId,_that.category,_that.title,_that.description,_that.actionableHint,_that.priority,_that.givenAt,_that.targetSubject,_that.isActedUpon,_that.actedUponAt,_that.expectedImpactScore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String adviceId,  String category,  String title,  String description,  String actionableHint,  int priority,  DateTime givenAt,  String targetSubject,  bool isActedUpon,  DateTime? actedUponAt,  int expectedImpactScore)?  $default,) {final _that = this;
switch (_that) {
case _CoachingAdvice() when $default != null:
return $default(_that.adviceId,_that.category,_that.title,_that.description,_that.actionableHint,_that.priority,_that.givenAt,_that.targetSubject,_that.isActedUpon,_that.actedUponAt,_that.expectedImpactScore);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CoachingAdvice implements CoachingAdvice {
  const _CoachingAdvice({required this.adviceId, required this.category, required this.title, required this.description, required this.actionableHint, required this.priority, required this.givenAt, required this.targetSubject, required this.isActedUpon, required this.actedUponAt, required this.expectedImpactScore});
  factory _CoachingAdvice.fromJson(Map<String, dynamic> json) => _$CoachingAdviceFromJson(json);

@override final  String adviceId;
@override final  String category;
// 'weakness', 'strength', 'motivation', 'strategy'
@override final  String title;
@override final  String description;
@override final  String actionableHint;
// 具体的な学習アクション
@override final  int priority;
// 1-5: 優先度
@override final  DateTime givenAt;
@override final  String targetSubject;
// 対象教科
@override final  bool isActedUpon;
// ユーザーが実行したか
@override final  DateTime? actedUponAt;
@override final  int expectedImpactScore;

/// Create a copy of CoachingAdvice
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoachingAdviceCopyWith<_CoachingAdvice> get copyWith => __$CoachingAdviceCopyWithImpl<_CoachingAdvice>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CoachingAdviceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoachingAdvice&&(identical(other.adviceId, adviceId) || other.adviceId == adviceId)&&(identical(other.category, category) || other.category == category)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.actionableHint, actionableHint) || other.actionableHint == actionableHint)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.givenAt, givenAt) || other.givenAt == givenAt)&&(identical(other.targetSubject, targetSubject) || other.targetSubject == targetSubject)&&(identical(other.isActedUpon, isActedUpon) || other.isActedUpon == isActedUpon)&&(identical(other.actedUponAt, actedUponAt) || other.actedUponAt == actedUponAt)&&(identical(other.expectedImpactScore, expectedImpactScore) || other.expectedImpactScore == expectedImpactScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,adviceId,category,title,description,actionableHint,priority,givenAt,targetSubject,isActedUpon,actedUponAt,expectedImpactScore);

@override
String toString() {
  return 'CoachingAdvice(adviceId: $adviceId, category: $category, title: $title, description: $description, actionableHint: $actionableHint, priority: $priority, givenAt: $givenAt, targetSubject: $targetSubject, isActedUpon: $isActedUpon, actedUponAt: $actedUponAt, expectedImpactScore: $expectedImpactScore)';
}


}

/// @nodoc
abstract mixin class _$CoachingAdviceCopyWith<$Res> implements $CoachingAdviceCopyWith<$Res> {
  factory _$CoachingAdviceCopyWith(_CoachingAdvice value, $Res Function(_CoachingAdvice) _then) = __$CoachingAdviceCopyWithImpl;
@override @useResult
$Res call({
 String adviceId, String category, String title, String description, String actionableHint, int priority, DateTime givenAt, String targetSubject, bool isActedUpon, DateTime? actedUponAt, int expectedImpactScore
});




}
/// @nodoc
class __$CoachingAdviceCopyWithImpl<$Res>
    implements _$CoachingAdviceCopyWith<$Res> {
  __$CoachingAdviceCopyWithImpl(this._self, this._then);

  final _CoachingAdvice _self;
  final $Res Function(_CoachingAdvice) _then;

/// Create a copy of CoachingAdvice
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? adviceId = null,Object? category = null,Object? title = null,Object? description = null,Object? actionableHint = null,Object? priority = null,Object? givenAt = null,Object? targetSubject = null,Object? isActedUpon = null,Object? actedUponAt = freezed,Object? expectedImpactScore = null,}) {
  return _then(_CoachingAdvice(
adviceId: null == adviceId ? _self.adviceId : adviceId // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,actionableHint: null == actionableHint ? _self.actionableHint : actionableHint // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as int,givenAt: null == givenAt ? _self.givenAt : givenAt // ignore: cast_nullable_to_non_nullable
as DateTime,targetSubject: null == targetSubject ? _self.targetSubject : targetSubject // ignore: cast_nullable_to_non_nullable
as String,isActedUpon: null == isActedUpon ? _self.isActedUpon : isActedUpon // ignore: cast_nullable_to_non_nullable
as bool,actedUponAt: freezed == actedUponAt ? _self.actedUponAt : actedUponAt // ignore: cast_nullable_to_non_nullable
as DateTime?,expectedImpactScore: null == expectedImpactScore ? _self.expectedImpactScore : expectedImpactScore // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$LearningInsight {

 String get userId; DateTime get analyzedAt; Map<String, SubjectInsight> get subjectInsights;// appId -> 分析結果
 String get overallLearningPattern;// 'bursty', 'consistent', 'irregular', 'declining'
 List<String> get strengthAreas;// 得意分野トピック
 List<String> get weaknessAreas;// 弱点分野トピック
 double get consistencyTrendScore;// -1.0 ~ 1.0: 継続度の傾向
 double get engagementTrendScore;// -1.0 ~ 1.0: エンゲージメント傾向
 String get recommendedFocusArea;// 重点学習推奨分野
 int get estimatedDaysToImprovement;// 改善予想日数
 List<String> get successPatterns;// 成功パターン
 List<String> get failurePatterns;
/// Create a copy of LearningInsight
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LearningInsightCopyWith<LearningInsight> get copyWith => _$LearningInsightCopyWithImpl<LearningInsight>(this as LearningInsight, _$identity);

  /// Serializes this LearningInsight to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LearningInsight&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.analyzedAt, analyzedAt) || other.analyzedAt == analyzedAt)&&const DeepCollectionEquality().equals(other.subjectInsights, subjectInsights)&&(identical(other.overallLearningPattern, overallLearningPattern) || other.overallLearningPattern == overallLearningPattern)&&const DeepCollectionEquality().equals(other.strengthAreas, strengthAreas)&&const DeepCollectionEquality().equals(other.weaknessAreas, weaknessAreas)&&(identical(other.consistencyTrendScore, consistencyTrendScore) || other.consistencyTrendScore == consistencyTrendScore)&&(identical(other.engagementTrendScore, engagementTrendScore) || other.engagementTrendScore == engagementTrendScore)&&(identical(other.recommendedFocusArea, recommendedFocusArea) || other.recommendedFocusArea == recommendedFocusArea)&&(identical(other.estimatedDaysToImprovement, estimatedDaysToImprovement) || other.estimatedDaysToImprovement == estimatedDaysToImprovement)&&const DeepCollectionEquality().equals(other.successPatterns, successPatterns)&&const DeepCollectionEquality().equals(other.failurePatterns, failurePatterns));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,analyzedAt,const DeepCollectionEquality().hash(subjectInsights),overallLearningPattern,const DeepCollectionEquality().hash(strengthAreas),const DeepCollectionEquality().hash(weaknessAreas),consistencyTrendScore,engagementTrendScore,recommendedFocusArea,estimatedDaysToImprovement,const DeepCollectionEquality().hash(successPatterns),const DeepCollectionEquality().hash(failurePatterns));

@override
String toString() {
  return 'LearningInsight(userId: $userId, analyzedAt: $analyzedAt, subjectInsights: $subjectInsights, overallLearningPattern: $overallLearningPattern, strengthAreas: $strengthAreas, weaknessAreas: $weaknessAreas, consistencyTrendScore: $consistencyTrendScore, engagementTrendScore: $engagementTrendScore, recommendedFocusArea: $recommendedFocusArea, estimatedDaysToImprovement: $estimatedDaysToImprovement, successPatterns: $successPatterns, failurePatterns: $failurePatterns)';
}


}

/// @nodoc
abstract mixin class $LearningInsightCopyWith<$Res>  {
  factory $LearningInsightCopyWith(LearningInsight value, $Res Function(LearningInsight) _then) = _$LearningInsightCopyWithImpl;
@useResult
$Res call({
 String userId, DateTime analyzedAt, Map<String, SubjectInsight> subjectInsights, String overallLearningPattern, List<String> strengthAreas, List<String> weaknessAreas, double consistencyTrendScore, double engagementTrendScore, String recommendedFocusArea, int estimatedDaysToImprovement, List<String> successPatterns, List<String> failurePatterns
});




}
/// @nodoc
class _$LearningInsightCopyWithImpl<$Res>
    implements $LearningInsightCopyWith<$Res> {
  _$LearningInsightCopyWithImpl(this._self, this._then);

  final LearningInsight _self;
  final $Res Function(LearningInsight) _then;

/// Create a copy of LearningInsight
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? analyzedAt = null,Object? subjectInsights = null,Object? overallLearningPattern = null,Object? strengthAreas = null,Object? weaknessAreas = null,Object? consistencyTrendScore = null,Object? engagementTrendScore = null,Object? recommendedFocusArea = null,Object? estimatedDaysToImprovement = null,Object? successPatterns = null,Object? failurePatterns = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,analyzedAt: null == analyzedAt ? _self.analyzedAt : analyzedAt // ignore: cast_nullable_to_non_nullable
as DateTime,subjectInsights: null == subjectInsights ? _self.subjectInsights : subjectInsights // ignore: cast_nullable_to_non_nullable
as Map<String, SubjectInsight>,overallLearningPattern: null == overallLearningPattern ? _self.overallLearningPattern : overallLearningPattern // ignore: cast_nullable_to_non_nullable
as String,strengthAreas: null == strengthAreas ? _self.strengthAreas : strengthAreas // ignore: cast_nullable_to_non_nullable
as List<String>,weaknessAreas: null == weaknessAreas ? _self.weaknessAreas : weaknessAreas // ignore: cast_nullable_to_non_nullable
as List<String>,consistencyTrendScore: null == consistencyTrendScore ? _self.consistencyTrendScore : consistencyTrendScore // ignore: cast_nullable_to_non_nullable
as double,engagementTrendScore: null == engagementTrendScore ? _self.engagementTrendScore : engagementTrendScore // ignore: cast_nullable_to_non_nullable
as double,recommendedFocusArea: null == recommendedFocusArea ? _self.recommendedFocusArea : recommendedFocusArea // ignore: cast_nullable_to_non_nullable
as String,estimatedDaysToImprovement: null == estimatedDaysToImprovement ? _self.estimatedDaysToImprovement : estimatedDaysToImprovement // ignore: cast_nullable_to_non_nullable
as int,successPatterns: null == successPatterns ? _self.successPatterns : successPatterns // ignore: cast_nullable_to_non_nullable
as List<String>,failurePatterns: null == failurePatterns ? _self.failurePatterns : failurePatterns // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [LearningInsight].
extension LearningInsightPatterns on LearningInsight {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LearningInsight value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LearningInsight() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LearningInsight value)  $default,){
final _that = this;
switch (_that) {
case _LearningInsight():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LearningInsight value)?  $default,){
final _that = this;
switch (_that) {
case _LearningInsight() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  DateTime analyzedAt,  Map<String, SubjectInsight> subjectInsights,  String overallLearningPattern,  List<String> strengthAreas,  List<String> weaknessAreas,  double consistencyTrendScore,  double engagementTrendScore,  String recommendedFocusArea,  int estimatedDaysToImprovement,  List<String> successPatterns,  List<String> failurePatterns)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LearningInsight() when $default != null:
return $default(_that.userId,_that.analyzedAt,_that.subjectInsights,_that.overallLearningPattern,_that.strengthAreas,_that.weaknessAreas,_that.consistencyTrendScore,_that.engagementTrendScore,_that.recommendedFocusArea,_that.estimatedDaysToImprovement,_that.successPatterns,_that.failurePatterns);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  DateTime analyzedAt,  Map<String, SubjectInsight> subjectInsights,  String overallLearningPattern,  List<String> strengthAreas,  List<String> weaknessAreas,  double consistencyTrendScore,  double engagementTrendScore,  String recommendedFocusArea,  int estimatedDaysToImprovement,  List<String> successPatterns,  List<String> failurePatterns)  $default,) {final _that = this;
switch (_that) {
case _LearningInsight():
return $default(_that.userId,_that.analyzedAt,_that.subjectInsights,_that.overallLearningPattern,_that.strengthAreas,_that.weaknessAreas,_that.consistencyTrendScore,_that.engagementTrendScore,_that.recommendedFocusArea,_that.estimatedDaysToImprovement,_that.successPatterns,_that.failurePatterns);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  DateTime analyzedAt,  Map<String, SubjectInsight> subjectInsights,  String overallLearningPattern,  List<String> strengthAreas,  List<String> weaknessAreas,  double consistencyTrendScore,  double engagementTrendScore,  String recommendedFocusArea,  int estimatedDaysToImprovement,  List<String> successPatterns,  List<String> failurePatterns)?  $default,) {final _that = this;
switch (_that) {
case _LearningInsight() when $default != null:
return $default(_that.userId,_that.analyzedAt,_that.subjectInsights,_that.overallLearningPattern,_that.strengthAreas,_that.weaknessAreas,_that.consistencyTrendScore,_that.engagementTrendScore,_that.recommendedFocusArea,_that.estimatedDaysToImprovement,_that.successPatterns,_that.failurePatterns);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LearningInsight implements LearningInsight {
  const _LearningInsight({required this.userId, required this.analyzedAt, required final  Map<String, SubjectInsight> subjectInsights, required this.overallLearningPattern, required final  List<String> strengthAreas, required final  List<String> weaknessAreas, required this.consistencyTrendScore, required this.engagementTrendScore, required this.recommendedFocusArea, required this.estimatedDaysToImprovement, required final  List<String> successPatterns, required final  List<String> failurePatterns}): _subjectInsights = subjectInsights,_strengthAreas = strengthAreas,_weaknessAreas = weaknessAreas,_successPatterns = successPatterns,_failurePatterns = failurePatterns;
  factory _LearningInsight.fromJson(Map<String, dynamic> json) => _$LearningInsightFromJson(json);

@override final  String userId;
@override final  DateTime analyzedAt;
 final  Map<String, SubjectInsight> _subjectInsights;
@override Map<String, SubjectInsight> get subjectInsights {
  if (_subjectInsights is EqualUnmodifiableMapView) return _subjectInsights;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_subjectInsights);
}

// appId -> 分析結果
@override final  String overallLearningPattern;
// 'bursty', 'consistent', 'irregular', 'declining'
 final  List<String> _strengthAreas;
// 'bursty', 'consistent', 'irregular', 'declining'
@override List<String> get strengthAreas {
  if (_strengthAreas is EqualUnmodifiableListView) return _strengthAreas;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_strengthAreas);
}

// 得意分野トピック
 final  List<String> _weaknessAreas;
// 得意分野トピック
@override List<String> get weaknessAreas {
  if (_weaknessAreas is EqualUnmodifiableListView) return _weaknessAreas;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_weaknessAreas);
}

// 弱点分野トピック
@override final  double consistencyTrendScore;
// -1.0 ~ 1.0: 継続度の傾向
@override final  double engagementTrendScore;
// -1.0 ~ 1.0: エンゲージメント傾向
@override final  String recommendedFocusArea;
// 重点学習推奨分野
@override final  int estimatedDaysToImprovement;
// 改善予想日数
 final  List<String> _successPatterns;
// 改善予想日数
@override List<String> get successPatterns {
  if (_successPatterns is EqualUnmodifiableListView) return _successPatterns;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_successPatterns);
}

// 成功パターン
 final  List<String> _failurePatterns;
// 成功パターン
@override List<String> get failurePatterns {
  if (_failurePatterns is EqualUnmodifiableListView) return _failurePatterns;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_failurePatterns);
}


/// Create a copy of LearningInsight
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LearningInsightCopyWith<_LearningInsight> get copyWith => __$LearningInsightCopyWithImpl<_LearningInsight>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LearningInsightToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LearningInsight&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.analyzedAt, analyzedAt) || other.analyzedAt == analyzedAt)&&const DeepCollectionEquality().equals(other._subjectInsights, _subjectInsights)&&(identical(other.overallLearningPattern, overallLearningPattern) || other.overallLearningPattern == overallLearningPattern)&&const DeepCollectionEquality().equals(other._strengthAreas, _strengthAreas)&&const DeepCollectionEquality().equals(other._weaknessAreas, _weaknessAreas)&&(identical(other.consistencyTrendScore, consistencyTrendScore) || other.consistencyTrendScore == consistencyTrendScore)&&(identical(other.engagementTrendScore, engagementTrendScore) || other.engagementTrendScore == engagementTrendScore)&&(identical(other.recommendedFocusArea, recommendedFocusArea) || other.recommendedFocusArea == recommendedFocusArea)&&(identical(other.estimatedDaysToImprovement, estimatedDaysToImprovement) || other.estimatedDaysToImprovement == estimatedDaysToImprovement)&&const DeepCollectionEquality().equals(other._successPatterns, _successPatterns)&&const DeepCollectionEquality().equals(other._failurePatterns, _failurePatterns));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,analyzedAt,const DeepCollectionEquality().hash(_subjectInsights),overallLearningPattern,const DeepCollectionEquality().hash(_strengthAreas),const DeepCollectionEquality().hash(_weaknessAreas),consistencyTrendScore,engagementTrendScore,recommendedFocusArea,estimatedDaysToImprovement,const DeepCollectionEquality().hash(_successPatterns),const DeepCollectionEquality().hash(_failurePatterns));

@override
String toString() {
  return 'LearningInsight(userId: $userId, analyzedAt: $analyzedAt, subjectInsights: $subjectInsights, overallLearningPattern: $overallLearningPattern, strengthAreas: $strengthAreas, weaknessAreas: $weaknessAreas, consistencyTrendScore: $consistencyTrendScore, engagementTrendScore: $engagementTrendScore, recommendedFocusArea: $recommendedFocusArea, estimatedDaysToImprovement: $estimatedDaysToImprovement, successPatterns: $successPatterns, failurePatterns: $failurePatterns)';
}


}

/// @nodoc
abstract mixin class _$LearningInsightCopyWith<$Res> implements $LearningInsightCopyWith<$Res> {
  factory _$LearningInsightCopyWith(_LearningInsight value, $Res Function(_LearningInsight) _then) = __$LearningInsightCopyWithImpl;
@override @useResult
$Res call({
 String userId, DateTime analyzedAt, Map<String, SubjectInsight> subjectInsights, String overallLearningPattern, List<String> strengthAreas, List<String> weaknessAreas, double consistencyTrendScore, double engagementTrendScore, String recommendedFocusArea, int estimatedDaysToImprovement, List<String> successPatterns, List<String> failurePatterns
});




}
/// @nodoc
class __$LearningInsightCopyWithImpl<$Res>
    implements _$LearningInsightCopyWith<$Res> {
  __$LearningInsightCopyWithImpl(this._self, this._then);

  final _LearningInsight _self;
  final $Res Function(_LearningInsight) _then;

/// Create a copy of LearningInsight
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? analyzedAt = null,Object? subjectInsights = null,Object? overallLearningPattern = null,Object? strengthAreas = null,Object? weaknessAreas = null,Object? consistencyTrendScore = null,Object? engagementTrendScore = null,Object? recommendedFocusArea = null,Object? estimatedDaysToImprovement = null,Object? successPatterns = null,Object? failurePatterns = null,}) {
  return _then(_LearningInsight(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,analyzedAt: null == analyzedAt ? _self.analyzedAt : analyzedAt // ignore: cast_nullable_to_non_nullable
as DateTime,subjectInsights: null == subjectInsights ? _self._subjectInsights : subjectInsights // ignore: cast_nullable_to_non_nullable
as Map<String, SubjectInsight>,overallLearningPattern: null == overallLearningPattern ? _self.overallLearningPattern : overallLearningPattern // ignore: cast_nullable_to_non_nullable
as String,strengthAreas: null == strengthAreas ? _self._strengthAreas : strengthAreas // ignore: cast_nullable_to_non_nullable
as List<String>,weaknessAreas: null == weaknessAreas ? _self._weaknessAreas : weaknessAreas // ignore: cast_nullable_to_non_nullable
as List<String>,consistencyTrendScore: null == consistencyTrendScore ? _self.consistencyTrendScore : consistencyTrendScore // ignore: cast_nullable_to_non_nullable
as double,engagementTrendScore: null == engagementTrendScore ? _self.engagementTrendScore : engagementTrendScore // ignore: cast_nullable_to_non_nullable
as double,recommendedFocusArea: null == recommendedFocusArea ? _self.recommendedFocusArea : recommendedFocusArea // ignore: cast_nullable_to_non_nullable
as String,estimatedDaysToImprovement: null == estimatedDaysToImprovement ? _self.estimatedDaysToImprovement : estimatedDaysToImprovement // ignore: cast_nullable_to_non_nullable
as int,successPatterns: null == successPatterns ? _self._successPatterns : successPatterns // ignore: cast_nullable_to_non_nullable
as List<String>,failurePatterns: null == failurePatterns ? _self._failurePatterns : failurePatterns // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$SubjectInsight {

 String get appId; String get appName; double get currentAccuracy; double get accuracyTrend;// -1.0 ~ 1.0: 精度の傾向
 int get totalLearningMinutes; int get averageSessionDuration;// 平均セッション時間（分）
 List<TopicStrength> get topicStrengths;// トピック別強度
 List<String> get strugglingTopics;// つまづきトピック
 int get daysSinceLastSession; int get consecutiveDaysLearned; double get estimatedReadiness;
/// Create a copy of SubjectInsight
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubjectInsightCopyWith<SubjectInsight> get copyWith => _$SubjectInsightCopyWithImpl<SubjectInsight>(this as SubjectInsight, _$identity);

  /// Serializes this SubjectInsight to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubjectInsight&&(identical(other.appId, appId) || other.appId == appId)&&(identical(other.appName, appName) || other.appName == appName)&&(identical(other.currentAccuracy, currentAccuracy) || other.currentAccuracy == currentAccuracy)&&(identical(other.accuracyTrend, accuracyTrend) || other.accuracyTrend == accuracyTrend)&&(identical(other.totalLearningMinutes, totalLearningMinutes) || other.totalLearningMinutes == totalLearningMinutes)&&(identical(other.averageSessionDuration, averageSessionDuration) || other.averageSessionDuration == averageSessionDuration)&&const DeepCollectionEquality().equals(other.topicStrengths, topicStrengths)&&const DeepCollectionEquality().equals(other.strugglingTopics, strugglingTopics)&&(identical(other.daysSinceLastSession, daysSinceLastSession) || other.daysSinceLastSession == daysSinceLastSession)&&(identical(other.consecutiveDaysLearned, consecutiveDaysLearned) || other.consecutiveDaysLearned == consecutiveDaysLearned)&&(identical(other.estimatedReadiness, estimatedReadiness) || other.estimatedReadiness == estimatedReadiness));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,appId,appName,currentAccuracy,accuracyTrend,totalLearningMinutes,averageSessionDuration,const DeepCollectionEquality().hash(topicStrengths),const DeepCollectionEquality().hash(strugglingTopics),daysSinceLastSession,consecutiveDaysLearned,estimatedReadiness);

@override
String toString() {
  return 'SubjectInsight(appId: $appId, appName: $appName, currentAccuracy: $currentAccuracy, accuracyTrend: $accuracyTrend, totalLearningMinutes: $totalLearningMinutes, averageSessionDuration: $averageSessionDuration, topicStrengths: $topicStrengths, strugglingTopics: $strugglingTopics, daysSinceLastSession: $daysSinceLastSession, consecutiveDaysLearned: $consecutiveDaysLearned, estimatedReadiness: $estimatedReadiness)';
}


}

/// @nodoc
abstract mixin class $SubjectInsightCopyWith<$Res>  {
  factory $SubjectInsightCopyWith(SubjectInsight value, $Res Function(SubjectInsight) _then) = _$SubjectInsightCopyWithImpl;
@useResult
$Res call({
 String appId, String appName, double currentAccuracy, double accuracyTrend, int totalLearningMinutes, int averageSessionDuration, List<TopicStrength> topicStrengths, List<String> strugglingTopics, int daysSinceLastSession, int consecutiveDaysLearned, double estimatedReadiness
});




}
/// @nodoc
class _$SubjectInsightCopyWithImpl<$Res>
    implements $SubjectInsightCopyWith<$Res> {
  _$SubjectInsightCopyWithImpl(this._self, this._then);

  final SubjectInsight _self;
  final $Res Function(SubjectInsight) _then;

/// Create a copy of SubjectInsight
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? appId = null,Object? appName = null,Object? currentAccuracy = null,Object? accuracyTrend = null,Object? totalLearningMinutes = null,Object? averageSessionDuration = null,Object? topicStrengths = null,Object? strugglingTopics = null,Object? daysSinceLastSession = null,Object? consecutiveDaysLearned = null,Object? estimatedReadiness = null,}) {
  return _then(_self.copyWith(
appId: null == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as String,appName: null == appName ? _self.appName : appName // ignore: cast_nullable_to_non_nullable
as String,currentAccuracy: null == currentAccuracy ? _self.currentAccuracy : currentAccuracy // ignore: cast_nullable_to_non_nullable
as double,accuracyTrend: null == accuracyTrend ? _self.accuracyTrend : accuracyTrend // ignore: cast_nullable_to_non_nullable
as double,totalLearningMinutes: null == totalLearningMinutes ? _self.totalLearningMinutes : totalLearningMinutes // ignore: cast_nullable_to_non_nullable
as int,averageSessionDuration: null == averageSessionDuration ? _self.averageSessionDuration : averageSessionDuration // ignore: cast_nullable_to_non_nullable
as int,topicStrengths: null == topicStrengths ? _self.topicStrengths : topicStrengths // ignore: cast_nullable_to_non_nullable
as List<TopicStrength>,strugglingTopics: null == strugglingTopics ? _self.strugglingTopics : strugglingTopics // ignore: cast_nullable_to_non_nullable
as List<String>,daysSinceLastSession: null == daysSinceLastSession ? _self.daysSinceLastSession : daysSinceLastSession // ignore: cast_nullable_to_non_nullable
as int,consecutiveDaysLearned: null == consecutiveDaysLearned ? _self.consecutiveDaysLearned : consecutiveDaysLearned // ignore: cast_nullable_to_non_nullable
as int,estimatedReadiness: null == estimatedReadiness ? _self.estimatedReadiness : estimatedReadiness // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [SubjectInsight].
extension SubjectInsightPatterns on SubjectInsight {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubjectInsight value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubjectInsight() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubjectInsight value)  $default,){
final _that = this;
switch (_that) {
case _SubjectInsight():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubjectInsight value)?  $default,){
final _that = this;
switch (_that) {
case _SubjectInsight() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String appId,  String appName,  double currentAccuracy,  double accuracyTrend,  int totalLearningMinutes,  int averageSessionDuration,  List<TopicStrength> topicStrengths,  List<String> strugglingTopics,  int daysSinceLastSession,  int consecutiveDaysLearned,  double estimatedReadiness)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubjectInsight() when $default != null:
return $default(_that.appId,_that.appName,_that.currentAccuracy,_that.accuracyTrend,_that.totalLearningMinutes,_that.averageSessionDuration,_that.topicStrengths,_that.strugglingTopics,_that.daysSinceLastSession,_that.consecutiveDaysLearned,_that.estimatedReadiness);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String appId,  String appName,  double currentAccuracy,  double accuracyTrend,  int totalLearningMinutes,  int averageSessionDuration,  List<TopicStrength> topicStrengths,  List<String> strugglingTopics,  int daysSinceLastSession,  int consecutiveDaysLearned,  double estimatedReadiness)  $default,) {final _that = this;
switch (_that) {
case _SubjectInsight():
return $default(_that.appId,_that.appName,_that.currentAccuracy,_that.accuracyTrend,_that.totalLearningMinutes,_that.averageSessionDuration,_that.topicStrengths,_that.strugglingTopics,_that.daysSinceLastSession,_that.consecutiveDaysLearned,_that.estimatedReadiness);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String appId,  String appName,  double currentAccuracy,  double accuracyTrend,  int totalLearningMinutes,  int averageSessionDuration,  List<TopicStrength> topicStrengths,  List<String> strugglingTopics,  int daysSinceLastSession,  int consecutiveDaysLearned,  double estimatedReadiness)?  $default,) {final _that = this;
switch (_that) {
case _SubjectInsight() when $default != null:
return $default(_that.appId,_that.appName,_that.currentAccuracy,_that.accuracyTrend,_that.totalLearningMinutes,_that.averageSessionDuration,_that.topicStrengths,_that.strugglingTopics,_that.daysSinceLastSession,_that.consecutiveDaysLearned,_that.estimatedReadiness);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubjectInsight implements SubjectInsight {
  const _SubjectInsight({required this.appId, required this.appName, required this.currentAccuracy, required this.accuracyTrend, required this.totalLearningMinutes, required this.averageSessionDuration, required final  List<TopicStrength> topicStrengths, required final  List<String> strugglingTopics, required this.daysSinceLastSession, required this.consecutiveDaysLearned, required this.estimatedReadiness}): _topicStrengths = topicStrengths,_strugglingTopics = strugglingTopics;
  factory _SubjectInsight.fromJson(Map<String, dynamic> json) => _$SubjectInsightFromJson(json);

@override final  String appId;
@override final  String appName;
@override final  double currentAccuracy;
@override final  double accuracyTrend;
// -1.0 ~ 1.0: 精度の傾向
@override final  int totalLearningMinutes;
@override final  int averageSessionDuration;
// 平均セッション時間（分）
 final  List<TopicStrength> _topicStrengths;
// 平均セッション時間（分）
@override List<TopicStrength> get topicStrengths {
  if (_topicStrengths is EqualUnmodifiableListView) return _topicStrengths;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topicStrengths);
}

// トピック別強度
 final  List<String> _strugglingTopics;
// トピック別強度
@override List<String> get strugglingTopics {
  if (_strugglingTopics is EqualUnmodifiableListView) return _strugglingTopics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_strugglingTopics);
}

// つまづきトピック
@override final  int daysSinceLastSession;
@override final  int consecutiveDaysLearned;
@override final  double estimatedReadiness;

/// Create a copy of SubjectInsight
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubjectInsightCopyWith<_SubjectInsight> get copyWith => __$SubjectInsightCopyWithImpl<_SubjectInsight>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubjectInsightToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubjectInsight&&(identical(other.appId, appId) || other.appId == appId)&&(identical(other.appName, appName) || other.appName == appName)&&(identical(other.currentAccuracy, currentAccuracy) || other.currentAccuracy == currentAccuracy)&&(identical(other.accuracyTrend, accuracyTrend) || other.accuracyTrend == accuracyTrend)&&(identical(other.totalLearningMinutes, totalLearningMinutes) || other.totalLearningMinutes == totalLearningMinutes)&&(identical(other.averageSessionDuration, averageSessionDuration) || other.averageSessionDuration == averageSessionDuration)&&const DeepCollectionEquality().equals(other._topicStrengths, _topicStrengths)&&const DeepCollectionEquality().equals(other._strugglingTopics, _strugglingTopics)&&(identical(other.daysSinceLastSession, daysSinceLastSession) || other.daysSinceLastSession == daysSinceLastSession)&&(identical(other.consecutiveDaysLearned, consecutiveDaysLearned) || other.consecutiveDaysLearned == consecutiveDaysLearned)&&(identical(other.estimatedReadiness, estimatedReadiness) || other.estimatedReadiness == estimatedReadiness));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,appId,appName,currentAccuracy,accuracyTrend,totalLearningMinutes,averageSessionDuration,const DeepCollectionEquality().hash(_topicStrengths),const DeepCollectionEquality().hash(_strugglingTopics),daysSinceLastSession,consecutiveDaysLearned,estimatedReadiness);

@override
String toString() {
  return 'SubjectInsight(appId: $appId, appName: $appName, currentAccuracy: $currentAccuracy, accuracyTrend: $accuracyTrend, totalLearningMinutes: $totalLearningMinutes, averageSessionDuration: $averageSessionDuration, topicStrengths: $topicStrengths, strugglingTopics: $strugglingTopics, daysSinceLastSession: $daysSinceLastSession, consecutiveDaysLearned: $consecutiveDaysLearned, estimatedReadiness: $estimatedReadiness)';
}


}

/// @nodoc
abstract mixin class _$SubjectInsightCopyWith<$Res> implements $SubjectInsightCopyWith<$Res> {
  factory _$SubjectInsightCopyWith(_SubjectInsight value, $Res Function(_SubjectInsight) _then) = __$SubjectInsightCopyWithImpl;
@override @useResult
$Res call({
 String appId, String appName, double currentAccuracy, double accuracyTrend, int totalLearningMinutes, int averageSessionDuration, List<TopicStrength> topicStrengths, List<String> strugglingTopics, int daysSinceLastSession, int consecutiveDaysLearned, double estimatedReadiness
});




}
/// @nodoc
class __$SubjectInsightCopyWithImpl<$Res>
    implements _$SubjectInsightCopyWith<$Res> {
  __$SubjectInsightCopyWithImpl(this._self, this._then);

  final _SubjectInsight _self;
  final $Res Function(_SubjectInsight) _then;

/// Create a copy of SubjectInsight
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? appId = null,Object? appName = null,Object? currentAccuracy = null,Object? accuracyTrend = null,Object? totalLearningMinutes = null,Object? averageSessionDuration = null,Object? topicStrengths = null,Object? strugglingTopics = null,Object? daysSinceLastSession = null,Object? consecutiveDaysLearned = null,Object? estimatedReadiness = null,}) {
  return _then(_SubjectInsight(
appId: null == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as String,appName: null == appName ? _self.appName : appName // ignore: cast_nullable_to_non_nullable
as String,currentAccuracy: null == currentAccuracy ? _self.currentAccuracy : currentAccuracy // ignore: cast_nullable_to_non_nullable
as double,accuracyTrend: null == accuracyTrend ? _self.accuracyTrend : accuracyTrend // ignore: cast_nullable_to_non_nullable
as double,totalLearningMinutes: null == totalLearningMinutes ? _self.totalLearningMinutes : totalLearningMinutes // ignore: cast_nullable_to_non_nullable
as int,averageSessionDuration: null == averageSessionDuration ? _self.averageSessionDuration : averageSessionDuration // ignore: cast_nullable_to_non_nullable
as int,topicStrengths: null == topicStrengths ? _self._topicStrengths : topicStrengths // ignore: cast_nullable_to_non_nullable
as List<TopicStrength>,strugglingTopics: null == strugglingTopics ? _self._strugglingTopics : strugglingTopics // ignore: cast_nullable_to_non_nullable
as List<String>,daysSinceLastSession: null == daysSinceLastSession ? _self.daysSinceLastSession : daysSinceLastSession // ignore: cast_nullable_to_non_nullable
as int,consecutiveDaysLearned: null == consecutiveDaysLearned ? _self.consecutiveDaysLearned : consecutiveDaysLearned // ignore: cast_nullable_to_non_nullable
as int,estimatedReadiness: null == estimatedReadiness ? _self.estimatedReadiness : estimatedReadiness // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$TopicStrength {

 String get topicId; String get topicName; double get masteryLevel;// 0-100: 習熟度
 int get questionsAttempted; int get questionsCorrect; double get timeSpentMinutes;
/// Create a copy of TopicStrength
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopicStrengthCopyWith<TopicStrength> get copyWith => _$TopicStrengthCopyWithImpl<TopicStrength>(this as TopicStrength, _$identity);

  /// Serializes this TopicStrength to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopicStrength&&(identical(other.topicId, topicId) || other.topicId == topicId)&&(identical(other.topicName, topicName) || other.topicName == topicName)&&(identical(other.masteryLevel, masteryLevel) || other.masteryLevel == masteryLevel)&&(identical(other.questionsAttempted, questionsAttempted) || other.questionsAttempted == questionsAttempted)&&(identical(other.questionsCorrect, questionsCorrect) || other.questionsCorrect == questionsCorrect)&&(identical(other.timeSpentMinutes, timeSpentMinutes) || other.timeSpentMinutes == timeSpentMinutes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,topicId,topicName,masteryLevel,questionsAttempted,questionsCorrect,timeSpentMinutes);

@override
String toString() {
  return 'TopicStrength(topicId: $topicId, topicName: $topicName, masteryLevel: $masteryLevel, questionsAttempted: $questionsAttempted, questionsCorrect: $questionsCorrect, timeSpentMinutes: $timeSpentMinutes)';
}


}

/// @nodoc
abstract mixin class $TopicStrengthCopyWith<$Res>  {
  factory $TopicStrengthCopyWith(TopicStrength value, $Res Function(TopicStrength) _then) = _$TopicStrengthCopyWithImpl;
@useResult
$Res call({
 String topicId, String topicName, double masteryLevel, int questionsAttempted, int questionsCorrect, double timeSpentMinutes
});




}
/// @nodoc
class _$TopicStrengthCopyWithImpl<$Res>
    implements $TopicStrengthCopyWith<$Res> {
  _$TopicStrengthCopyWithImpl(this._self, this._then);

  final TopicStrength _self;
  final $Res Function(TopicStrength) _then;

/// Create a copy of TopicStrength
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? topicId = null,Object? topicName = null,Object? masteryLevel = null,Object? questionsAttempted = null,Object? questionsCorrect = null,Object? timeSpentMinutes = null,}) {
  return _then(_self.copyWith(
topicId: null == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String,topicName: null == topicName ? _self.topicName : topicName // ignore: cast_nullable_to_non_nullable
as String,masteryLevel: null == masteryLevel ? _self.masteryLevel : masteryLevel // ignore: cast_nullable_to_non_nullable
as double,questionsAttempted: null == questionsAttempted ? _self.questionsAttempted : questionsAttempted // ignore: cast_nullable_to_non_nullable
as int,questionsCorrect: null == questionsCorrect ? _self.questionsCorrect : questionsCorrect // ignore: cast_nullable_to_non_nullable
as int,timeSpentMinutes: null == timeSpentMinutes ? _self.timeSpentMinutes : timeSpentMinutes // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [TopicStrength].
extension TopicStrengthPatterns on TopicStrength {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopicStrength value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopicStrength() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopicStrength value)  $default,){
final _that = this;
switch (_that) {
case _TopicStrength():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopicStrength value)?  $default,){
final _that = this;
switch (_that) {
case _TopicStrength() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String topicId,  String topicName,  double masteryLevel,  int questionsAttempted,  int questionsCorrect,  double timeSpentMinutes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopicStrength() when $default != null:
return $default(_that.topicId,_that.topicName,_that.masteryLevel,_that.questionsAttempted,_that.questionsCorrect,_that.timeSpentMinutes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String topicId,  String topicName,  double masteryLevel,  int questionsAttempted,  int questionsCorrect,  double timeSpentMinutes)  $default,) {final _that = this;
switch (_that) {
case _TopicStrength():
return $default(_that.topicId,_that.topicName,_that.masteryLevel,_that.questionsAttempted,_that.questionsCorrect,_that.timeSpentMinutes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String topicId,  String topicName,  double masteryLevel,  int questionsAttempted,  int questionsCorrect,  double timeSpentMinutes)?  $default,) {final _that = this;
switch (_that) {
case _TopicStrength() when $default != null:
return $default(_that.topicId,_that.topicName,_that.masteryLevel,_that.questionsAttempted,_that.questionsCorrect,_that.timeSpentMinutes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TopicStrength implements TopicStrength {
  const _TopicStrength({required this.topicId, required this.topicName, required this.masteryLevel, required this.questionsAttempted, required this.questionsCorrect, required this.timeSpentMinutes});
  factory _TopicStrength.fromJson(Map<String, dynamic> json) => _$TopicStrengthFromJson(json);

@override final  String topicId;
@override final  String topicName;
@override final  double masteryLevel;
// 0-100: 習熟度
@override final  int questionsAttempted;
@override final  int questionsCorrect;
@override final  double timeSpentMinutes;

/// Create a copy of TopicStrength
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopicStrengthCopyWith<_TopicStrength> get copyWith => __$TopicStrengthCopyWithImpl<_TopicStrength>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopicStrengthToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopicStrength&&(identical(other.topicId, topicId) || other.topicId == topicId)&&(identical(other.topicName, topicName) || other.topicName == topicName)&&(identical(other.masteryLevel, masteryLevel) || other.masteryLevel == masteryLevel)&&(identical(other.questionsAttempted, questionsAttempted) || other.questionsAttempted == questionsAttempted)&&(identical(other.questionsCorrect, questionsCorrect) || other.questionsCorrect == questionsCorrect)&&(identical(other.timeSpentMinutes, timeSpentMinutes) || other.timeSpentMinutes == timeSpentMinutes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,topicId,topicName,masteryLevel,questionsAttempted,questionsCorrect,timeSpentMinutes);

@override
String toString() {
  return 'TopicStrength(topicId: $topicId, topicName: $topicName, masteryLevel: $masteryLevel, questionsAttempted: $questionsAttempted, questionsCorrect: $questionsCorrect, timeSpentMinutes: $timeSpentMinutes)';
}


}

/// @nodoc
abstract mixin class _$TopicStrengthCopyWith<$Res> implements $TopicStrengthCopyWith<$Res> {
  factory _$TopicStrengthCopyWith(_TopicStrength value, $Res Function(_TopicStrength) _then) = __$TopicStrengthCopyWithImpl;
@override @useResult
$Res call({
 String topicId, String topicName, double masteryLevel, int questionsAttempted, int questionsCorrect, double timeSpentMinutes
});




}
/// @nodoc
class __$TopicStrengthCopyWithImpl<$Res>
    implements _$TopicStrengthCopyWith<$Res> {
  __$TopicStrengthCopyWithImpl(this._self, this._then);

  final _TopicStrength _self;
  final $Res Function(_TopicStrength) _then;

/// Create a copy of TopicStrength
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? topicId = null,Object? topicName = null,Object? masteryLevel = null,Object? questionsAttempted = null,Object? questionsCorrect = null,Object? timeSpentMinutes = null,}) {
  return _then(_TopicStrength(
topicId: null == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String,topicName: null == topicName ? _self.topicName : topicName // ignore: cast_nullable_to_non_nullable
as String,masteryLevel: null == masteryLevel ? _self.masteryLevel : masteryLevel // ignore: cast_nullable_to_non_nullable
as double,questionsAttempted: null == questionsAttempted ? _self.questionsAttempted : questionsAttempted // ignore: cast_nullable_to_non_nullable
as int,questionsCorrect: null == questionsCorrect ? _self.questionsCorrect : questionsCorrect // ignore: cast_nullable_to_non_nullable
as int,timeSpentMinutes: null == timeSpentMinutes ? _self.timeSpentMinutes : timeSpentMinutes // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$CoachingGoal {

 String get goalId; String get userId; String get targetSubject; String get goal;// 'improve_accuracy', 'consistent_learning', 'learn_new_topic'
 double get targetValue;// 目標値（精度% または 日数など）
 DateTime get createdAt; DateTime get deadline; double get currentProgress;// 0-100
 bool get isCompleted; DateTime? get completedAt; List<String> get relatedAdvices;
/// Create a copy of CoachingGoal
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoachingGoalCopyWith<CoachingGoal> get copyWith => _$CoachingGoalCopyWithImpl<CoachingGoal>(this as CoachingGoal, _$identity);

  /// Serializes this CoachingGoal to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoachingGoal&&(identical(other.goalId, goalId) || other.goalId == goalId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.targetSubject, targetSubject) || other.targetSubject == targetSubject)&&(identical(other.goal, goal) || other.goal == goal)&&(identical(other.targetValue, targetValue) || other.targetValue == targetValue)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.deadline, deadline) || other.deadline == deadline)&&(identical(other.currentProgress, currentProgress) || other.currentProgress == currentProgress)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&const DeepCollectionEquality().equals(other.relatedAdvices, relatedAdvices));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,goalId,userId,targetSubject,goal,targetValue,createdAt,deadline,currentProgress,isCompleted,completedAt,const DeepCollectionEquality().hash(relatedAdvices));

@override
String toString() {
  return 'CoachingGoal(goalId: $goalId, userId: $userId, targetSubject: $targetSubject, goal: $goal, targetValue: $targetValue, createdAt: $createdAt, deadline: $deadline, currentProgress: $currentProgress, isCompleted: $isCompleted, completedAt: $completedAt, relatedAdvices: $relatedAdvices)';
}


}

/// @nodoc
abstract mixin class $CoachingGoalCopyWith<$Res>  {
  factory $CoachingGoalCopyWith(CoachingGoal value, $Res Function(CoachingGoal) _then) = _$CoachingGoalCopyWithImpl;
@useResult
$Res call({
 String goalId, String userId, String targetSubject, String goal, double targetValue, DateTime createdAt, DateTime deadline, double currentProgress, bool isCompleted, DateTime? completedAt, List<String> relatedAdvices
});




}
/// @nodoc
class _$CoachingGoalCopyWithImpl<$Res>
    implements $CoachingGoalCopyWith<$Res> {
  _$CoachingGoalCopyWithImpl(this._self, this._then);

  final CoachingGoal _self;
  final $Res Function(CoachingGoal) _then;

/// Create a copy of CoachingGoal
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? goalId = null,Object? userId = null,Object? targetSubject = null,Object? goal = null,Object? targetValue = null,Object? createdAt = null,Object? deadline = null,Object? currentProgress = null,Object? isCompleted = null,Object? completedAt = freezed,Object? relatedAdvices = null,}) {
  return _then(_self.copyWith(
goalId: null == goalId ? _self.goalId : goalId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,targetSubject: null == targetSubject ? _self.targetSubject : targetSubject // ignore: cast_nullable_to_non_nullable
as String,goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as String,targetValue: null == targetValue ? _self.targetValue : targetValue // ignore: cast_nullable_to_non_nullable
as double,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,deadline: null == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as DateTime,currentProgress: null == currentProgress ? _self.currentProgress : currentProgress // ignore: cast_nullable_to_non_nullable
as double,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,relatedAdvices: null == relatedAdvices ? _self.relatedAdvices : relatedAdvices // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [CoachingGoal].
extension CoachingGoalPatterns on CoachingGoal {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CoachingGoal value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CoachingGoal() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CoachingGoal value)  $default,){
final _that = this;
switch (_that) {
case _CoachingGoal():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CoachingGoal value)?  $default,){
final _that = this;
switch (_that) {
case _CoachingGoal() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String goalId,  String userId,  String targetSubject,  String goal,  double targetValue,  DateTime createdAt,  DateTime deadline,  double currentProgress,  bool isCompleted,  DateTime? completedAt,  List<String> relatedAdvices)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CoachingGoal() when $default != null:
return $default(_that.goalId,_that.userId,_that.targetSubject,_that.goal,_that.targetValue,_that.createdAt,_that.deadline,_that.currentProgress,_that.isCompleted,_that.completedAt,_that.relatedAdvices);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String goalId,  String userId,  String targetSubject,  String goal,  double targetValue,  DateTime createdAt,  DateTime deadline,  double currentProgress,  bool isCompleted,  DateTime? completedAt,  List<String> relatedAdvices)  $default,) {final _that = this;
switch (_that) {
case _CoachingGoal():
return $default(_that.goalId,_that.userId,_that.targetSubject,_that.goal,_that.targetValue,_that.createdAt,_that.deadline,_that.currentProgress,_that.isCompleted,_that.completedAt,_that.relatedAdvices);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String goalId,  String userId,  String targetSubject,  String goal,  double targetValue,  DateTime createdAt,  DateTime deadline,  double currentProgress,  bool isCompleted,  DateTime? completedAt,  List<String> relatedAdvices)?  $default,) {final _that = this;
switch (_that) {
case _CoachingGoal() when $default != null:
return $default(_that.goalId,_that.userId,_that.targetSubject,_that.goal,_that.targetValue,_that.createdAt,_that.deadline,_that.currentProgress,_that.isCompleted,_that.completedAt,_that.relatedAdvices);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CoachingGoal implements CoachingGoal {
  const _CoachingGoal({required this.goalId, required this.userId, required this.targetSubject, required this.goal, required this.targetValue, required this.createdAt, required this.deadline, required this.currentProgress, required this.isCompleted, required this.completedAt, required final  List<String> relatedAdvices}): _relatedAdvices = relatedAdvices;
  factory _CoachingGoal.fromJson(Map<String, dynamic> json) => _$CoachingGoalFromJson(json);

@override final  String goalId;
@override final  String userId;
@override final  String targetSubject;
@override final  String goal;
// 'improve_accuracy', 'consistent_learning', 'learn_new_topic'
@override final  double targetValue;
// 目標値（精度% または 日数など）
@override final  DateTime createdAt;
@override final  DateTime deadline;
@override final  double currentProgress;
// 0-100
@override final  bool isCompleted;
@override final  DateTime? completedAt;
 final  List<String> _relatedAdvices;
@override List<String> get relatedAdvices {
  if (_relatedAdvices is EqualUnmodifiableListView) return _relatedAdvices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relatedAdvices);
}


/// Create a copy of CoachingGoal
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoachingGoalCopyWith<_CoachingGoal> get copyWith => __$CoachingGoalCopyWithImpl<_CoachingGoal>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CoachingGoalToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoachingGoal&&(identical(other.goalId, goalId) || other.goalId == goalId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.targetSubject, targetSubject) || other.targetSubject == targetSubject)&&(identical(other.goal, goal) || other.goal == goal)&&(identical(other.targetValue, targetValue) || other.targetValue == targetValue)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.deadline, deadline) || other.deadline == deadline)&&(identical(other.currentProgress, currentProgress) || other.currentProgress == currentProgress)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&const DeepCollectionEquality().equals(other._relatedAdvices, _relatedAdvices));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,goalId,userId,targetSubject,goal,targetValue,createdAt,deadline,currentProgress,isCompleted,completedAt,const DeepCollectionEquality().hash(_relatedAdvices));

@override
String toString() {
  return 'CoachingGoal(goalId: $goalId, userId: $userId, targetSubject: $targetSubject, goal: $goal, targetValue: $targetValue, createdAt: $createdAt, deadline: $deadline, currentProgress: $currentProgress, isCompleted: $isCompleted, completedAt: $completedAt, relatedAdvices: $relatedAdvices)';
}


}

/// @nodoc
abstract mixin class _$CoachingGoalCopyWith<$Res> implements $CoachingGoalCopyWith<$Res> {
  factory _$CoachingGoalCopyWith(_CoachingGoal value, $Res Function(_CoachingGoal) _then) = __$CoachingGoalCopyWithImpl;
@override @useResult
$Res call({
 String goalId, String userId, String targetSubject, String goal, double targetValue, DateTime createdAt, DateTime deadline, double currentProgress, bool isCompleted, DateTime? completedAt, List<String> relatedAdvices
});




}
/// @nodoc
class __$CoachingGoalCopyWithImpl<$Res>
    implements _$CoachingGoalCopyWith<$Res> {
  __$CoachingGoalCopyWithImpl(this._self, this._then);

  final _CoachingGoal _self;
  final $Res Function(_CoachingGoal) _then;

/// Create a copy of CoachingGoal
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? goalId = null,Object? userId = null,Object? targetSubject = null,Object? goal = null,Object? targetValue = null,Object? createdAt = null,Object? deadline = null,Object? currentProgress = null,Object? isCompleted = null,Object? completedAt = freezed,Object? relatedAdvices = null,}) {
  return _then(_CoachingGoal(
goalId: null == goalId ? _self.goalId : goalId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,targetSubject: null == targetSubject ? _self.targetSubject : targetSubject // ignore: cast_nullable_to_non_nullable
as String,goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as String,targetValue: null == targetValue ? _self.targetValue : targetValue // ignore: cast_nullable_to_non_nullable
as double,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,deadline: null == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as DateTime,currentProgress: null == currentProgress ? _self.currentProgress : currentProgress // ignore: cast_nullable_to_non_nullable
as double,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,relatedAdvices: null == relatedAdvices ? _self._relatedAdvices : relatedAdvices // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$CoachingFeedback {

 String get feedbackId; String get userId; String get adviceId; DateTime get givenAt; bool get wasHelpful; int get helpfulnessScore;// 1-5
 String get userFeedback;// ユーザーの感想
 DateTime? get feedbackAt;
/// Create a copy of CoachingFeedback
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoachingFeedbackCopyWith<CoachingFeedback> get copyWith => _$CoachingFeedbackCopyWithImpl<CoachingFeedback>(this as CoachingFeedback, _$identity);

  /// Serializes this CoachingFeedback to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoachingFeedback&&(identical(other.feedbackId, feedbackId) || other.feedbackId == feedbackId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.adviceId, adviceId) || other.adviceId == adviceId)&&(identical(other.givenAt, givenAt) || other.givenAt == givenAt)&&(identical(other.wasHelpful, wasHelpful) || other.wasHelpful == wasHelpful)&&(identical(other.helpfulnessScore, helpfulnessScore) || other.helpfulnessScore == helpfulnessScore)&&(identical(other.userFeedback, userFeedback) || other.userFeedback == userFeedback)&&(identical(other.feedbackAt, feedbackAt) || other.feedbackAt == feedbackAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,feedbackId,userId,adviceId,givenAt,wasHelpful,helpfulnessScore,userFeedback,feedbackAt);

@override
String toString() {
  return 'CoachingFeedback(feedbackId: $feedbackId, userId: $userId, adviceId: $adviceId, givenAt: $givenAt, wasHelpful: $wasHelpful, helpfulnessScore: $helpfulnessScore, userFeedback: $userFeedback, feedbackAt: $feedbackAt)';
}


}

/// @nodoc
abstract mixin class $CoachingFeedbackCopyWith<$Res>  {
  factory $CoachingFeedbackCopyWith(CoachingFeedback value, $Res Function(CoachingFeedback) _then) = _$CoachingFeedbackCopyWithImpl;
@useResult
$Res call({
 String feedbackId, String userId, String adviceId, DateTime givenAt, bool wasHelpful, int helpfulnessScore, String userFeedback, DateTime? feedbackAt
});




}
/// @nodoc
class _$CoachingFeedbackCopyWithImpl<$Res>
    implements $CoachingFeedbackCopyWith<$Res> {
  _$CoachingFeedbackCopyWithImpl(this._self, this._then);

  final CoachingFeedback _self;
  final $Res Function(CoachingFeedback) _then;

/// Create a copy of CoachingFeedback
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? feedbackId = null,Object? userId = null,Object? adviceId = null,Object? givenAt = null,Object? wasHelpful = null,Object? helpfulnessScore = null,Object? userFeedback = null,Object? feedbackAt = freezed,}) {
  return _then(_self.copyWith(
feedbackId: null == feedbackId ? _self.feedbackId : feedbackId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,adviceId: null == adviceId ? _self.adviceId : adviceId // ignore: cast_nullable_to_non_nullable
as String,givenAt: null == givenAt ? _self.givenAt : givenAt // ignore: cast_nullable_to_non_nullable
as DateTime,wasHelpful: null == wasHelpful ? _self.wasHelpful : wasHelpful // ignore: cast_nullable_to_non_nullable
as bool,helpfulnessScore: null == helpfulnessScore ? _self.helpfulnessScore : helpfulnessScore // ignore: cast_nullable_to_non_nullable
as int,userFeedback: null == userFeedback ? _self.userFeedback : userFeedback // ignore: cast_nullable_to_non_nullable
as String,feedbackAt: freezed == feedbackAt ? _self.feedbackAt : feedbackAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [CoachingFeedback].
extension CoachingFeedbackPatterns on CoachingFeedback {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CoachingFeedback value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CoachingFeedback() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CoachingFeedback value)  $default,){
final _that = this;
switch (_that) {
case _CoachingFeedback():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CoachingFeedback value)?  $default,){
final _that = this;
switch (_that) {
case _CoachingFeedback() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String feedbackId,  String userId,  String adviceId,  DateTime givenAt,  bool wasHelpful,  int helpfulnessScore,  String userFeedback,  DateTime? feedbackAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CoachingFeedback() when $default != null:
return $default(_that.feedbackId,_that.userId,_that.adviceId,_that.givenAt,_that.wasHelpful,_that.helpfulnessScore,_that.userFeedback,_that.feedbackAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String feedbackId,  String userId,  String adviceId,  DateTime givenAt,  bool wasHelpful,  int helpfulnessScore,  String userFeedback,  DateTime? feedbackAt)  $default,) {final _that = this;
switch (_that) {
case _CoachingFeedback():
return $default(_that.feedbackId,_that.userId,_that.adviceId,_that.givenAt,_that.wasHelpful,_that.helpfulnessScore,_that.userFeedback,_that.feedbackAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String feedbackId,  String userId,  String adviceId,  DateTime givenAt,  bool wasHelpful,  int helpfulnessScore,  String userFeedback,  DateTime? feedbackAt)?  $default,) {final _that = this;
switch (_that) {
case _CoachingFeedback() when $default != null:
return $default(_that.feedbackId,_that.userId,_that.adviceId,_that.givenAt,_that.wasHelpful,_that.helpfulnessScore,_that.userFeedback,_that.feedbackAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CoachingFeedback implements CoachingFeedback {
  const _CoachingFeedback({required this.feedbackId, required this.userId, required this.adviceId, required this.givenAt, required this.wasHelpful, required this.helpfulnessScore, required this.userFeedback, required this.feedbackAt});
  factory _CoachingFeedback.fromJson(Map<String, dynamic> json) => _$CoachingFeedbackFromJson(json);

@override final  String feedbackId;
@override final  String userId;
@override final  String adviceId;
@override final  DateTime givenAt;
@override final  bool wasHelpful;
@override final  int helpfulnessScore;
// 1-5
@override final  String userFeedback;
// ユーザーの感想
@override final  DateTime? feedbackAt;

/// Create a copy of CoachingFeedback
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoachingFeedbackCopyWith<_CoachingFeedback> get copyWith => __$CoachingFeedbackCopyWithImpl<_CoachingFeedback>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CoachingFeedbackToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoachingFeedback&&(identical(other.feedbackId, feedbackId) || other.feedbackId == feedbackId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.adviceId, adviceId) || other.adviceId == adviceId)&&(identical(other.givenAt, givenAt) || other.givenAt == givenAt)&&(identical(other.wasHelpful, wasHelpful) || other.wasHelpful == wasHelpful)&&(identical(other.helpfulnessScore, helpfulnessScore) || other.helpfulnessScore == helpfulnessScore)&&(identical(other.userFeedback, userFeedback) || other.userFeedback == userFeedback)&&(identical(other.feedbackAt, feedbackAt) || other.feedbackAt == feedbackAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,feedbackId,userId,adviceId,givenAt,wasHelpful,helpfulnessScore,userFeedback,feedbackAt);

@override
String toString() {
  return 'CoachingFeedback(feedbackId: $feedbackId, userId: $userId, adviceId: $adviceId, givenAt: $givenAt, wasHelpful: $wasHelpful, helpfulnessScore: $helpfulnessScore, userFeedback: $userFeedback, feedbackAt: $feedbackAt)';
}


}

/// @nodoc
abstract mixin class _$CoachingFeedbackCopyWith<$Res> implements $CoachingFeedbackCopyWith<$Res> {
  factory _$CoachingFeedbackCopyWith(_CoachingFeedback value, $Res Function(_CoachingFeedback) _then) = __$CoachingFeedbackCopyWithImpl;
@override @useResult
$Res call({
 String feedbackId, String userId, String adviceId, DateTime givenAt, bool wasHelpful, int helpfulnessScore, String userFeedback, DateTime? feedbackAt
});




}
/// @nodoc
class __$CoachingFeedbackCopyWithImpl<$Res>
    implements _$CoachingFeedbackCopyWith<$Res> {
  __$CoachingFeedbackCopyWithImpl(this._self, this._then);

  final _CoachingFeedback _self;
  final $Res Function(_CoachingFeedback) _then;

/// Create a copy of CoachingFeedback
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? feedbackId = null,Object? userId = null,Object? adviceId = null,Object? givenAt = null,Object? wasHelpful = null,Object? helpfulnessScore = null,Object? userFeedback = null,Object? feedbackAt = freezed,}) {
  return _then(_CoachingFeedback(
feedbackId: null == feedbackId ? _self.feedbackId : feedbackId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,adviceId: null == adviceId ? _self.adviceId : adviceId // ignore: cast_nullable_to_non_nullable
as String,givenAt: null == givenAt ? _self.givenAt : givenAt // ignore: cast_nullable_to_non_nullable
as DateTime,wasHelpful: null == wasHelpful ? _self.wasHelpful : wasHelpful // ignore: cast_nullable_to_non_nullable
as bool,helpfulnessScore: null == helpfulnessScore ? _self.helpfulnessScore : helpfulnessScore // ignore: cast_nullable_to_non_nullable
as int,userFeedback: null == userFeedback ? _self.userFeedback : userFeedback // ignore: cast_nullable_to_non_nullable
as String,feedbackAt: freezed == feedbackAt ? _self.feedbackAt : feedbackAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$AICoachPrompt {

 String get userId; List<String> get subjectIds; LearningInsight get insight; List<CoachingGoal> get activeGoals; int get maxAdvices; String get coachingStyle;
/// Create a copy of AICoachPrompt
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AICoachPromptCopyWith<AICoachPrompt> get copyWith => _$AICoachPromptCopyWithImpl<AICoachPrompt>(this as AICoachPrompt, _$identity);

  /// Serializes this AICoachPrompt to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AICoachPrompt&&(identical(other.userId, userId) || other.userId == userId)&&const DeepCollectionEquality().equals(other.subjectIds, subjectIds)&&(identical(other.insight, insight) || other.insight == insight)&&const DeepCollectionEquality().equals(other.activeGoals, activeGoals)&&(identical(other.maxAdvices, maxAdvices) || other.maxAdvices == maxAdvices)&&(identical(other.coachingStyle, coachingStyle) || other.coachingStyle == coachingStyle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,const DeepCollectionEquality().hash(subjectIds),insight,const DeepCollectionEquality().hash(activeGoals),maxAdvices,coachingStyle);

@override
String toString() {
  return 'AICoachPrompt(userId: $userId, subjectIds: $subjectIds, insight: $insight, activeGoals: $activeGoals, maxAdvices: $maxAdvices, coachingStyle: $coachingStyle)';
}


}

/// @nodoc
abstract mixin class $AICoachPromptCopyWith<$Res>  {
  factory $AICoachPromptCopyWith(AICoachPrompt value, $Res Function(AICoachPrompt) _then) = _$AICoachPromptCopyWithImpl;
@useResult
$Res call({
 String userId, List<String> subjectIds, LearningInsight insight, List<CoachingGoal> activeGoals, int maxAdvices, String coachingStyle
});


$LearningInsightCopyWith<$Res> get insight;

}
/// @nodoc
class _$AICoachPromptCopyWithImpl<$Res>
    implements $AICoachPromptCopyWith<$Res> {
  _$AICoachPromptCopyWithImpl(this._self, this._then);

  final AICoachPrompt _self;
  final $Res Function(AICoachPrompt) _then;

/// Create a copy of AICoachPrompt
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? subjectIds = null,Object? insight = null,Object? activeGoals = null,Object? maxAdvices = null,Object? coachingStyle = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,subjectIds: null == subjectIds ? _self.subjectIds : subjectIds // ignore: cast_nullable_to_non_nullable
as List<String>,insight: null == insight ? _self.insight : insight // ignore: cast_nullable_to_non_nullable
as LearningInsight,activeGoals: null == activeGoals ? _self.activeGoals : activeGoals // ignore: cast_nullable_to_non_nullable
as List<CoachingGoal>,maxAdvices: null == maxAdvices ? _self.maxAdvices : maxAdvices // ignore: cast_nullable_to_non_nullable
as int,coachingStyle: null == coachingStyle ? _self.coachingStyle : coachingStyle // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of AICoachPrompt
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LearningInsightCopyWith<$Res> get insight {
  
  return $LearningInsightCopyWith<$Res>(_self.insight, (value) {
    return _then(_self.copyWith(insight: value));
  });
}
}


/// Adds pattern-matching-related methods to [AICoachPrompt].
extension AICoachPromptPatterns on AICoachPrompt {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AICoachPrompt value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AICoachPrompt() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AICoachPrompt value)  $default,){
final _that = this;
switch (_that) {
case _AICoachPrompt():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AICoachPrompt value)?  $default,){
final _that = this;
switch (_that) {
case _AICoachPrompt() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  List<String> subjectIds,  LearningInsight insight,  List<CoachingGoal> activeGoals,  int maxAdvices,  String coachingStyle)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AICoachPrompt() when $default != null:
return $default(_that.userId,_that.subjectIds,_that.insight,_that.activeGoals,_that.maxAdvices,_that.coachingStyle);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  List<String> subjectIds,  LearningInsight insight,  List<CoachingGoal> activeGoals,  int maxAdvices,  String coachingStyle)  $default,) {final _that = this;
switch (_that) {
case _AICoachPrompt():
return $default(_that.userId,_that.subjectIds,_that.insight,_that.activeGoals,_that.maxAdvices,_that.coachingStyle);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  List<String> subjectIds,  LearningInsight insight,  List<CoachingGoal> activeGoals,  int maxAdvices,  String coachingStyle)?  $default,) {final _that = this;
switch (_that) {
case _AICoachPrompt() when $default != null:
return $default(_that.userId,_that.subjectIds,_that.insight,_that.activeGoals,_that.maxAdvices,_that.coachingStyle);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AICoachPrompt implements AICoachPrompt {
  const _AICoachPrompt({required this.userId, required final  List<String> subjectIds, required this.insight, required final  List<CoachingGoal> activeGoals, required this.maxAdvices, required this.coachingStyle}): _subjectIds = subjectIds,_activeGoals = activeGoals;
  factory _AICoachPrompt.fromJson(Map<String, dynamic> json) => _$AICoachPromptFromJson(json);

@override final  String userId;
 final  List<String> _subjectIds;
@override List<String> get subjectIds {
  if (_subjectIds is EqualUnmodifiableListView) return _subjectIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subjectIds);
}

@override final  LearningInsight insight;
 final  List<CoachingGoal> _activeGoals;
@override List<CoachingGoal> get activeGoals {
  if (_activeGoals is EqualUnmodifiableListView) return _activeGoals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_activeGoals);
}

@override final  int maxAdvices;
@override final  String coachingStyle;

/// Create a copy of AICoachPrompt
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AICoachPromptCopyWith<_AICoachPrompt> get copyWith => __$AICoachPromptCopyWithImpl<_AICoachPrompt>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AICoachPromptToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AICoachPrompt&&(identical(other.userId, userId) || other.userId == userId)&&const DeepCollectionEquality().equals(other._subjectIds, _subjectIds)&&(identical(other.insight, insight) || other.insight == insight)&&const DeepCollectionEquality().equals(other._activeGoals, _activeGoals)&&(identical(other.maxAdvices, maxAdvices) || other.maxAdvices == maxAdvices)&&(identical(other.coachingStyle, coachingStyle) || other.coachingStyle == coachingStyle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,const DeepCollectionEquality().hash(_subjectIds),insight,const DeepCollectionEquality().hash(_activeGoals),maxAdvices,coachingStyle);

@override
String toString() {
  return 'AICoachPrompt(userId: $userId, subjectIds: $subjectIds, insight: $insight, activeGoals: $activeGoals, maxAdvices: $maxAdvices, coachingStyle: $coachingStyle)';
}


}

/// @nodoc
abstract mixin class _$AICoachPromptCopyWith<$Res> implements $AICoachPromptCopyWith<$Res> {
  factory _$AICoachPromptCopyWith(_AICoachPrompt value, $Res Function(_AICoachPrompt) _then) = __$AICoachPromptCopyWithImpl;
@override @useResult
$Res call({
 String userId, List<String> subjectIds, LearningInsight insight, List<CoachingGoal> activeGoals, int maxAdvices, String coachingStyle
});


@override $LearningInsightCopyWith<$Res> get insight;

}
/// @nodoc
class __$AICoachPromptCopyWithImpl<$Res>
    implements _$AICoachPromptCopyWith<$Res> {
  __$AICoachPromptCopyWithImpl(this._self, this._then);

  final _AICoachPrompt _self;
  final $Res Function(_AICoachPrompt) _then;

/// Create a copy of AICoachPrompt
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? subjectIds = null,Object? insight = null,Object? activeGoals = null,Object? maxAdvices = null,Object? coachingStyle = null,}) {
  return _then(_AICoachPrompt(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,subjectIds: null == subjectIds ? _self._subjectIds : subjectIds // ignore: cast_nullable_to_non_nullable
as List<String>,insight: null == insight ? _self.insight : insight // ignore: cast_nullable_to_non_nullable
as LearningInsight,activeGoals: null == activeGoals ? _self._activeGoals : activeGoals // ignore: cast_nullable_to_non_nullable
as List<CoachingGoal>,maxAdvices: null == maxAdvices ? _self.maxAdvices : maxAdvices // ignore: cast_nullable_to_non_nullable
as int,coachingStyle: null == coachingStyle ? _self.coachingStyle : coachingStyle // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of AICoachPrompt
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LearningInsightCopyWith<$Res> get insight {
  
  return $LearningInsightCopyWith<$Res>(_self.insight, (value) {
    return _then(_self.copyWith(insight: value));
  });
}
}


/// @nodoc
mixin _$CoachingAnalyticsEvent {

 String get userId; String get sessionId; String get eventType;// 'advice_given', 'advice_acted', 'goal_achieved', 'feedback_provided'
 DateTime get eventTime; Map<String, dynamic> get eventData;
/// Create a copy of CoachingAnalyticsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoachingAnalyticsEventCopyWith<CoachingAnalyticsEvent> get copyWith => _$CoachingAnalyticsEventCopyWithImpl<CoachingAnalyticsEvent>(this as CoachingAnalyticsEvent, _$identity);

  /// Serializes this CoachingAnalyticsEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoachingAnalyticsEvent&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.eventType, eventType) || other.eventType == eventType)&&(identical(other.eventTime, eventTime) || other.eventTime == eventTime)&&const DeepCollectionEquality().equals(other.eventData, eventData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,sessionId,eventType,eventTime,const DeepCollectionEquality().hash(eventData));

@override
String toString() {
  return 'CoachingAnalyticsEvent(userId: $userId, sessionId: $sessionId, eventType: $eventType, eventTime: $eventTime, eventData: $eventData)';
}


}

/// @nodoc
abstract mixin class $CoachingAnalyticsEventCopyWith<$Res>  {
  factory $CoachingAnalyticsEventCopyWith(CoachingAnalyticsEvent value, $Res Function(CoachingAnalyticsEvent) _then) = _$CoachingAnalyticsEventCopyWithImpl;
@useResult
$Res call({
 String userId, String sessionId, String eventType, DateTime eventTime, Map<String, dynamic> eventData
});




}
/// @nodoc
class _$CoachingAnalyticsEventCopyWithImpl<$Res>
    implements $CoachingAnalyticsEventCopyWith<$Res> {
  _$CoachingAnalyticsEventCopyWithImpl(this._self, this._then);

  final CoachingAnalyticsEvent _self;
  final $Res Function(CoachingAnalyticsEvent) _then;

/// Create a copy of CoachingAnalyticsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? sessionId = null,Object? eventType = null,Object? eventTime = null,Object? eventData = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,eventType: null == eventType ? _self.eventType : eventType // ignore: cast_nullable_to_non_nullable
as String,eventTime: null == eventTime ? _self.eventTime : eventTime // ignore: cast_nullable_to_non_nullable
as DateTime,eventData: null == eventData ? _self.eventData : eventData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [CoachingAnalyticsEvent].
extension CoachingAnalyticsEventPatterns on CoachingAnalyticsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CoachingAnalyticsEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CoachingAnalyticsEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CoachingAnalyticsEvent value)  $default,){
final _that = this;
switch (_that) {
case _CoachingAnalyticsEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CoachingAnalyticsEvent value)?  $default,){
final _that = this;
switch (_that) {
case _CoachingAnalyticsEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String sessionId,  String eventType,  DateTime eventTime,  Map<String, dynamic> eventData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CoachingAnalyticsEvent() when $default != null:
return $default(_that.userId,_that.sessionId,_that.eventType,_that.eventTime,_that.eventData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String sessionId,  String eventType,  DateTime eventTime,  Map<String, dynamic> eventData)  $default,) {final _that = this;
switch (_that) {
case _CoachingAnalyticsEvent():
return $default(_that.userId,_that.sessionId,_that.eventType,_that.eventTime,_that.eventData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String sessionId,  String eventType,  DateTime eventTime,  Map<String, dynamic> eventData)?  $default,) {final _that = this;
switch (_that) {
case _CoachingAnalyticsEvent() when $default != null:
return $default(_that.userId,_that.sessionId,_that.eventType,_that.eventTime,_that.eventData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CoachingAnalyticsEvent implements CoachingAnalyticsEvent {
  const _CoachingAnalyticsEvent({required this.userId, required this.sessionId, required this.eventType, required this.eventTime, required final  Map<String, dynamic> eventData}): _eventData = eventData;
  factory _CoachingAnalyticsEvent.fromJson(Map<String, dynamic> json) => _$CoachingAnalyticsEventFromJson(json);

@override final  String userId;
@override final  String sessionId;
@override final  String eventType;
// 'advice_given', 'advice_acted', 'goal_achieved', 'feedback_provided'
@override final  DateTime eventTime;
 final  Map<String, dynamic> _eventData;
@override Map<String, dynamic> get eventData {
  if (_eventData is EqualUnmodifiableMapView) return _eventData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_eventData);
}


/// Create a copy of CoachingAnalyticsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoachingAnalyticsEventCopyWith<_CoachingAnalyticsEvent> get copyWith => __$CoachingAnalyticsEventCopyWithImpl<_CoachingAnalyticsEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CoachingAnalyticsEventToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoachingAnalyticsEvent&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.eventType, eventType) || other.eventType == eventType)&&(identical(other.eventTime, eventTime) || other.eventTime == eventTime)&&const DeepCollectionEquality().equals(other._eventData, _eventData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,sessionId,eventType,eventTime,const DeepCollectionEquality().hash(_eventData));

@override
String toString() {
  return 'CoachingAnalyticsEvent(userId: $userId, sessionId: $sessionId, eventType: $eventType, eventTime: $eventTime, eventData: $eventData)';
}


}

/// @nodoc
abstract mixin class _$CoachingAnalyticsEventCopyWith<$Res> implements $CoachingAnalyticsEventCopyWith<$Res> {
  factory _$CoachingAnalyticsEventCopyWith(_CoachingAnalyticsEvent value, $Res Function(_CoachingAnalyticsEvent) _then) = __$CoachingAnalyticsEventCopyWithImpl;
@override @useResult
$Res call({
 String userId, String sessionId, String eventType, DateTime eventTime, Map<String, dynamic> eventData
});




}
/// @nodoc
class __$CoachingAnalyticsEventCopyWithImpl<$Res>
    implements _$CoachingAnalyticsEventCopyWith<$Res> {
  __$CoachingAnalyticsEventCopyWithImpl(this._self, this._then);

  final _CoachingAnalyticsEvent _self;
  final $Res Function(_CoachingAnalyticsEvent) _then;

/// Create a copy of CoachingAnalyticsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? sessionId = null,Object? eventType = null,Object? eventTime = null,Object? eventData = null,}) {
  return _then(_CoachingAnalyticsEvent(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,eventType: null == eventType ? _self.eventType : eventType // ignore: cast_nullable_to_non_nullable
as String,eventTime: null == eventTime ? _self.eventTime : eventTime // ignore: cast_nullable_to_non_nullable
as DateTime,eventData: null == eventData ? _self._eventData : eventData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
