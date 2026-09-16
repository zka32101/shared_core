// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_access_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QuizAccessControl {

/// ユーザー登録日
 DateTime get registeredAt;/// サブスク購読状態
 bool get isSubscribed;/// 無料期間（日数）
 int get freeTrialDays;
/// Create a copy of QuizAccessControl
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuizAccessControlCopyWith<QuizAccessControl> get copyWith => _$QuizAccessControlCopyWithImpl<QuizAccessControl>(this as QuizAccessControl, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizAccessControl&&(identical(other.registeredAt, registeredAt) || other.registeredAt == registeredAt)&&(identical(other.isSubscribed, isSubscribed) || other.isSubscribed == isSubscribed)&&(identical(other.freeTrialDays, freeTrialDays) || other.freeTrialDays == freeTrialDays));
}


@override
int get hashCode => Object.hash(runtimeType,registeredAt,isSubscribed,freeTrialDays);

@override
String toString() {
  return 'QuizAccessControl(registeredAt: $registeredAt, isSubscribed: $isSubscribed, freeTrialDays: $freeTrialDays)';
}


}

/// @nodoc
abstract mixin class $QuizAccessControlCopyWith<$Res>  {
  factory $QuizAccessControlCopyWith(QuizAccessControl value, $Res Function(QuizAccessControl) _then) = _$QuizAccessControlCopyWithImpl;
@useResult
$Res call({
 DateTime registeredAt, bool isSubscribed, int freeTrialDays
});




}
/// @nodoc
class _$QuizAccessControlCopyWithImpl<$Res>
    implements $QuizAccessControlCopyWith<$Res> {
  _$QuizAccessControlCopyWithImpl(this._self, this._then);

  final QuizAccessControl _self;
  final $Res Function(QuizAccessControl) _then;

/// Create a copy of QuizAccessControl
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? registeredAt = null,Object? isSubscribed = null,Object? freeTrialDays = null,}) {
  return _then(_self.copyWith(
registeredAt: null == registeredAt ? _self.registeredAt : registeredAt // ignore: cast_nullable_to_non_nullable
as DateTime,isSubscribed: null == isSubscribed ? _self.isSubscribed : isSubscribed // ignore: cast_nullable_to_non_nullable
as bool,freeTrialDays: null == freeTrialDays ? _self.freeTrialDays : freeTrialDays // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [QuizAccessControl].
extension QuizAccessControlPatterns on QuizAccessControl {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuizAccessControl value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuizAccessControl() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuizAccessControl value)  $default,){
final _that = this;
switch (_that) {
case _QuizAccessControl():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuizAccessControl value)?  $default,){
final _that = this;
switch (_that) {
case _QuizAccessControl() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime registeredAt,  bool isSubscribed,  int freeTrialDays)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuizAccessControl() when $default != null:
return $default(_that.registeredAt,_that.isSubscribed,_that.freeTrialDays);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime registeredAt,  bool isSubscribed,  int freeTrialDays)  $default,) {final _that = this;
switch (_that) {
case _QuizAccessControl():
return $default(_that.registeredAt,_that.isSubscribed,_that.freeTrialDays);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime registeredAt,  bool isSubscribed,  int freeTrialDays)?  $default,) {final _that = this;
switch (_that) {
case _QuizAccessControl() when $default != null:
return $default(_that.registeredAt,_that.isSubscribed,_that.freeTrialDays);case _:
  return null;

}
}

}

/// @nodoc


class _QuizAccessControl implements QuizAccessControl {
  const _QuizAccessControl({required this.registeredAt, required this.isSubscribed, this.freeTrialDays = 14});
  

/// ユーザー登録日
@override final  DateTime registeredAt;
/// サブスク購読状態
@override final  bool isSubscribed;
/// 無料期間（日数）
@override@JsonKey() final  int freeTrialDays;

/// Create a copy of QuizAccessControl
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuizAccessControlCopyWith<_QuizAccessControl> get copyWith => __$QuizAccessControlCopyWithImpl<_QuizAccessControl>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuizAccessControl&&(identical(other.registeredAt, registeredAt) || other.registeredAt == registeredAt)&&(identical(other.isSubscribed, isSubscribed) || other.isSubscribed == isSubscribed)&&(identical(other.freeTrialDays, freeTrialDays) || other.freeTrialDays == freeTrialDays));
}


@override
int get hashCode => Object.hash(runtimeType,registeredAt,isSubscribed,freeTrialDays);

@override
String toString() {
  return 'QuizAccessControl(registeredAt: $registeredAt, isSubscribed: $isSubscribed, freeTrialDays: $freeTrialDays)';
}


}

/// @nodoc
abstract mixin class _$QuizAccessControlCopyWith<$Res> implements $QuizAccessControlCopyWith<$Res> {
  factory _$QuizAccessControlCopyWith(_QuizAccessControl value, $Res Function(_QuizAccessControl) _then) = __$QuizAccessControlCopyWithImpl;
@override @useResult
$Res call({
 DateTime registeredAt, bool isSubscribed, int freeTrialDays
});




}
/// @nodoc
class __$QuizAccessControlCopyWithImpl<$Res>
    implements _$QuizAccessControlCopyWith<$Res> {
  __$QuizAccessControlCopyWithImpl(this._self, this._then);

  final _QuizAccessControl _self;
  final $Res Function(_QuizAccessControl) _then;

/// Create a copy of QuizAccessControl
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? registeredAt = null,Object? isSubscribed = null,Object? freeTrialDays = null,}) {
  return _then(_QuizAccessControl(
registeredAt: null == registeredAt ? _self.registeredAt : registeredAt // ignore: cast_nullable_to_non_nullable
as DateTime,isSubscribed: null == isSubscribed ? _self.isSubscribed : isSubscribed // ignore: cast_nullable_to_non_nullable
as bool,freeTrialDays: null == freeTrialDays ? _self.freeTrialDays : freeTrialDays // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$QuizAccessState {

/// 全問題へのアクセス可否
 bool get canAccessAllQuizzes;/// 無料期間の残り日数（-1 = 無制限またはサブスク購読者）
 int get remainingFreeDays;/// ペイウォール表示が必要か
 bool get shouldShowPaywall;/// ロック理由
 String? get lockReason;
/// Create a copy of QuizAccessState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuizAccessStateCopyWith<QuizAccessState> get copyWith => _$QuizAccessStateCopyWithImpl<QuizAccessState>(this as QuizAccessState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizAccessState&&(identical(other.canAccessAllQuizzes, canAccessAllQuizzes) || other.canAccessAllQuizzes == canAccessAllQuizzes)&&(identical(other.remainingFreeDays, remainingFreeDays) || other.remainingFreeDays == remainingFreeDays)&&(identical(other.shouldShowPaywall, shouldShowPaywall) || other.shouldShowPaywall == shouldShowPaywall)&&(identical(other.lockReason, lockReason) || other.lockReason == lockReason));
}


@override
int get hashCode => Object.hash(runtimeType,canAccessAllQuizzes,remainingFreeDays,shouldShowPaywall,lockReason);

@override
String toString() {
  return 'QuizAccessState(canAccessAllQuizzes: $canAccessAllQuizzes, remainingFreeDays: $remainingFreeDays, shouldShowPaywall: $shouldShowPaywall, lockReason: $lockReason)';
}


}

/// @nodoc
abstract mixin class $QuizAccessStateCopyWith<$Res>  {
  factory $QuizAccessStateCopyWith(QuizAccessState value, $Res Function(QuizAccessState) _then) = _$QuizAccessStateCopyWithImpl;
@useResult
$Res call({
 bool canAccessAllQuizzes, int remainingFreeDays, bool shouldShowPaywall, String? lockReason
});




}
/// @nodoc
class _$QuizAccessStateCopyWithImpl<$Res>
    implements $QuizAccessStateCopyWith<$Res> {
  _$QuizAccessStateCopyWithImpl(this._self, this._then);

  final QuizAccessState _self;
  final $Res Function(QuizAccessState) _then;

/// Create a copy of QuizAccessState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? canAccessAllQuizzes = null,Object? remainingFreeDays = null,Object? shouldShowPaywall = null,Object? lockReason = freezed,}) {
  return _then(_self.copyWith(
canAccessAllQuizzes: null == canAccessAllQuizzes ? _self.canAccessAllQuizzes : canAccessAllQuizzes // ignore: cast_nullable_to_non_nullable
as bool,remainingFreeDays: null == remainingFreeDays ? _self.remainingFreeDays : remainingFreeDays // ignore: cast_nullable_to_non_nullable
as int,shouldShowPaywall: null == shouldShowPaywall ? _self.shouldShowPaywall : shouldShowPaywall // ignore: cast_nullable_to_non_nullable
as bool,lockReason: freezed == lockReason ? _self.lockReason : lockReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [QuizAccessState].
extension QuizAccessStatePatterns on QuizAccessState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuizAccessState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuizAccessState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuizAccessState value)  $default,){
final _that = this;
switch (_that) {
case _QuizAccessState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuizAccessState value)?  $default,){
final _that = this;
switch (_that) {
case _QuizAccessState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool canAccessAllQuizzes,  int remainingFreeDays,  bool shouldShowPaywall,  String? lockReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuizAccessState() when $default != null:
return $default(_that.canAccessAllQuizzes,_that.remainingFreeDays,_that.shouldShowPaywall,_that.lockReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool canAccessAllQuizzes,  int remainingFreeDays,  bool shouldShowPaywall,  String? lockReason)  $default,) {final _that = this;
switch (_that) {
case _QuizAccessState():
return $default(_that.canAccessAllQuizzes,_that.remainingFreeDays,_that.shouldShowPaywall,_that.lockReason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool canAccessAllQuizzes,  int remainingFreeDays,  bool shouldShowPaywall,  String? lockReason)?  $default,) {final _that = this;
switch (_that) {
case _QuizAccessState() when $default != null:
return $default(_that.canAccessAllQuizzes,_that.remainingFreeDays,_that.shouldShowPaywall,_that.lockReason);case _:
  return null;

}
}

}

/// @nodoc


class _QuizAccessState implements QuizAccessState {
  const _QuizAccessState({required this.canAccessAllQuizzes, required this.remainingFreeDays, required this.shouldShowPaywall, this.lockReason});
  

/// 全問題へのアクセス可否
@override final  bool canAccessAllQuizzes;
/// 無料期間の残り日数（-1 = 無制限またはサブスク購読者）
@override final  int remainingFreeDays;
/// ペイウォール表示が必要か
@override final  bool shouldShowPaywall;
/// ロック理由
@override final  String? lockReason;

/// Create a copy of QuizAccessState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuizAccessStateCopyWith<_QuizAccessState> get copyWith => __$QuizAccessStateCopyWithImpl<_QuizAccessState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuizAccessState&&(identical(other.canAccessAllQuizzes, canAccessAllQuizzes) || other.canAccessAllQuizzes == canAccessAllQuizzes)&&(identical(other.remainingFreeDays, remainingFreeDays) || other.remainingFreeDays == remainingFreeDays)&&(identical(other.shouldShowPaywall, shouldShowPaywall) || other.shouldShowPaywall == shouldShowPaywall)&&(identical(other.lockReason, lockReason) || other.lockReason == lockReason));
}


@override
int get hashCode => Object.hash(runtimeType,canAccessAllQuizzes,remainingFreeDays,shouldShowPaywall,lockReason);

@override
String toString() {
  return 'QuizAccessState(canAccessAllQuizzes: $canAccessAllQuizzes, remainingFreeDays: $remainingFreeDays, shouldShowPaywall: $shouldShowPaywall, lockReason: $lockReason)';
}


}

/// @nodoc
abstract mixin class _$QuizAccessStateCopyWith<$Res> implements $QuizAccessStateCopyWith<$Res> {
  factory _$QuizAccessStateCopyWith(_QuizAccessState value, $Res Function(_QuizAccessState) _then) = __$QuizAccessStateCopyWithImpl;
@override @useResult
$Res call({
 bool canAccessAllQuizzes, int remainingFreeDays, bool shouldShowPaywall, String? lockReason
});




}
/// @nodoc
class __$QuizAccessStateCopyWithImpl<$Res>
    implements _$QuizAccessStateCopyWith<$Res> {
  __$QuizAccessStateCopyWithImpl(this._self, this._then);

  final _QuizAccessState _self;
  final $Res Function(_QuizAccessState) _then;

/// Create a copy of QuizAccessState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? canAccessAllQuizzes = null,Object? remainingFreeDays = null,Object? shouldShowPaywall = null,Object? lockReason = freezed,}) {
  return _then(_QuizAccessState(
canAccessAllQuizzes: null == canAccessAllQuizzes ? _self.canAccessAllQuizzes : canAccessAllQuizzes // ignore: cast_nullable_to_non_nullable
as bool,remainingFreeDays: null == remainingFreeDays ? _self.remainingFreeDays : remainingFreeDays // ignore: cast_nullable_to_non_nullable
as int,shouldShowPaywall: null == shouldShowPaywall ? _self.shouldShowPaywall : shouldShowPaywall // ignore: cast_nullable_to_non_nullable
as bool,lockReason: freezed == lockReason ? _self.lockReason : lockReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
