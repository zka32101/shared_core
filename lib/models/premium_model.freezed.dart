// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'premium_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PremiumState {

/// ユーザーがアクティブなサブスクリプションを持っているか
 bool get isSubscribed;/// サブスクリプションの有効期限（null の場合は無期限または未検証）
 DateTime? get subscriptionExpiryDate;/// サブスクリプション種別（'monthly', 'yearly', など）
 String? get subscriptionType;/// 最後の検証時刻
 DateTime? get lastValidatedAt;/// エラーメッセージ（検証失敗時）
 String? get error;/// ローディング状態
 bool get isLoading;
/// Create a copy of PremiumState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PremiumStateCopyWith<PremiumState> get copyWith => _$PremiumStateCopyWithImpl<PremiumState>(this as PremiumState, _$identity);

  /// Serializes this PremiumState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PremiumState&&(identical(other.isSubscribed, isSubscribed) || other.isSubscribed == isSubscribed)&&(identical(other.subscriptionExpiryDate, subscriptionExpiryDate) || other.subscriptionExpiryDate == subscriptionExpiryDate)&&(identical(other.subscriptionType, subscriptionType) || other.subscriptionType == subscriptionType)&&(identical(other.lastValidatedAt, lastValidatedAt) || other.lastValidatedAt == lastValidatedAt)&&(identical(other.error, error) || other.error == error)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isSubscribed,subscriptionExpiryDate,subscriptionType,lastValidatedAt,error,isLoading);

@override
String toString() {
  return 'PremiumState(isSubscribed: $isSubscribed, subscriptionExpiryDate: $subscriptionExpiryDate, subscriptionType: $subscriptionType, lastValidatedAt: $lastValidatedAt, error: $error, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $PremiumStateCopyWith<$Res>  {
  factory $PremiumStateCopyWith(PremiumState value, $Res Function(PremiumState) _then) = _$PremiumStateCopyWithImpl;
@useResult
$Res call({
 bool isSubscribed, DateTime? subscriptionExpiryDate, String? subscriptionType, DateTime? lastValidatedAt, String? error, bool isLoading
});




}
/// @nodoc
class _$PremiumStateCopyWithImpl<$Res>
    implements $PremiumStateCopyWith<$Res> {
  _$PremiumStateCopyWithImpl(this._self, this._then);

  final PremiumState _self;
  final $Res Function(PremiumState) _then;

/// Create a copy of PremiumState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isSubscribed = null,Object? subscriptionExpiryDate = freezed,Object? subscriptionType = freezed,Object? lastValidatedAt = freezed,Object? error = freezed,Object? isLoading = null,}) {
  return _then(_self.copyWith(
isSubscribed: null == isSubscribed ? _self.isSubscribed : isSubscribed // ignore: cast_nullable_to_non_nullable
as bool,subscriptionExpiryDate: freezed == subscriptionExpiryDate ? _self.subscriptionExpiryDate : subscriptionExpiryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,subscriptionType: freezed == subscriptionType ? _self.subscriptionType : subscriptionType // ignore: cast_nullable_to_non_nullable
as String?,lastValidatedAt: freezed == lastValidatedAt ? _self.lastValidatedAt : lastValidatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PremiumState].
extension PremiumStatePatterns on PremiumState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PremiumState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PremiumState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PremiumState value)  $default,){
final _that = this;
switch (_that) {
case _PremiumState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PremiumState value)?  $default,){
final _that = this;
switch (_that) {
case _PremiumState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isSubscribed,  DateTime? subscriptionExpiryDate,  String? subscriptionType,  DateTime? lastValidatedAt,  String? error,  bool isLoading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PremiumState() when $default != null:
return $default(_that.isSubscribed,_that.subscriptionExpiryDate,_that.subscriptionType,_that.lastValidatedAt,_that.error,_that.isLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isSubscribed,  DateTime? subscriptionExpiryDate,  String? subscriptionType,  DateTime? lastValidatedAt,  String? error,  bool isLoading)  $default,) {final _that = this;
switch (_that) {
case _PremiumState():
return $default(_that.isSubscribed,_that.subscriptionExpiryDate,_that.subscriptionType,_that.lastValidatedAt,_that.error,_that.isLoading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isSubscribed,  DateTime? subscriptionExpiryDate,  String? subscriptionType,  DateTime? lastValidatedAt,  String? error,  bool isLoading)?  $default,) {final _that = this;
switch (_that) {
case _PremiumState() when $default != null:
return $default(_that.isSubscribed,_that.subscriptionExpiryDate,_that.subscriptionType,_that.lastValidatedAt,_that.error,_that.isLoading);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PremiumState implements PremiumState {
  const _PremiumState({required this.isSubscribed, this.subscriptionExpiryDate, this.subscriptionType, this.lastValidatedAt, this.error, this.isLoading = false});
  factory _PremiumState.fromJson(Map<String, dynamic> json) => _$PremiumStateFromJson(json);

/// ユーザーがアクティブなサブスクリプションを持っているか
@override final  bool isSubscribed;
/// サブスクリプションの有効期限（null の場合は無期限または未検証）
@override final  DateTime? subscriptionExpiryDate;
/// サブスクリプション種別（'monthly', 'yearly', など）
@override final  String? subscriptionType;
/// 最後の検証時刻
@override final  DateTime? lastValidatedAt;
/// エラーメッセージ（検証失敗時）
@override final  String? error;
/// ローディング状態
@override@JsonKey() final  bool isLoading;

/// Create a copy of PremiumState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PremiumStateCopyWith<_PremiumState> get copyWith => __$PremiumStateCopyWithImpl<_PremiumState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PremiumStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PremiumState&&(identical(other.isSubscribed, isSubscribed) || other.isSubscribed == isSubscribed)&&(identical(other.subscriptionExpiryDate, subscriptionExpiryDate) || other.subscriptionExpiryDate == subscriptionExpiryDate)&&(identical(other.subscriptionType, subscriptionType) || other.subscriptionType == subscriptionType)&&(identical(other.lastValidatedAt, lastValidatedAt) || other.lastValidatedAt == lastValidatedAt)&&(identical(other.error, error) || other.error == error)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isSubscribed,subscriptionExpiryDate,subscriptionType,lastValidatedAt,error,isLoading);

@override
String toString() {
  return 'PremiumState(isSubscribed: $isSubscribed, subscriptionExpiryDate: $subscriptionExpiryDate, subscriptionType: $subscriptionType, lastValidatedAt: $lastValidatedAt, error: $error, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$PremiumStateCopyWith<$Res> implements $PremiumStateCopyWith<$Res> {
  factory _$PremiumStateCopyWith(_PremiumState value, $Res Function(_PremiumState) _then) = __$PremiumStateCopyWithImpl;
@override @useResult
$Res call({
 bool isSubscribed, DateTime? subscriptionExpiryDate, String? subscriptionType, DateTime? lastValidatedAt, String? error, bool isLoading
});




}
/// @nodoc
class __$PremiumStateCopyWithImpl<$Res>
    implements _$PremiumStateCopyWith<$Res> {
  __$PremiumStateCopyWithImpl(this._self, this._then);

  final _PremiumState _self;
  final $Res Function(_PremiumState) _then;

/// Create a copy of PremiumState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isSubscribed = null,Object? subscriptionExpiryDate = freezed,Object? subscriptionType = freezed,Object? lastValidatedAt = freezed,Object? error = freezed,Object? isLoading = null,}) {
  return _then(_PremiumState(
isSubscribed: null == isSubscribed ? _self.isSubscribed : isSubscribed // ignore: cast_nullable_to_non_nullable
as bool,subscriptionExpiryDate: freezed == subscriptionExpiryDate ? _self.subscriptionExpiryDate : subscriptionExpiryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,subscriptionType: freezed == subscriptionType ? _self.subscriptionType : subscriptionType // ignore: cast_nullable_to_non_nullable
as String?,lastValidatedAt: freezed == lastValidatedAt ? _self.lastValidatedAt : lastValidatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$SubscriptionCheckRequest {

 String get userId; String get platform;// 'android' or 'ios'
 String get packageName;
/// Create a copy of SubscriptionCheckRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscriptionCheckRequestCopyWith<SubscriptionCheckRequest> get copyWith => _$SubscriptionCheckRequestCopyWithImpl<SubscriptionCheckRequest>(this as SubscriptionCheckRequest, _$identity);

  /// Serializes this SubscriptionCheckRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionCheckRequest&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.packageName, packageName) || other.packageName == packageName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,platform,packageName);

@override
String toString() {
  return 'SubscriptionCheckRequest(userId: $userId, platform: $platform, packageName: $packageName)';
}


}

/// @nodoc
abstract mixin class $SubscriptionCheckRequestCopyWith<$Res>  {
  factory $SubscriptionCheckRequestCopyWith(SubscriptionCheckRequest value, $Res Function(SubscriptionCheckRequest) _then) = _$SubscriptionCheckRequestCopyWithImpl;
@useResult
$Res call({
 String userId, String platform, String packageName
});




}
/// @nodoc
class _$SubscriptionCheckRequestCopyWithImpl<$Res>
    implements $SubscriptionCheckRequestCopyWith<$Res> {
  _$SubscriptionCheckRequestCopyWithImpl(this._self, this._then);

  final SubscriptionCheckRequest _self;
  final $Res Function(SubscriptionCheckRequest) _then;

/// Create a copy of SubscriptionCheckRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? platform = null,Object? packageName = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String,packageName: null == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SubscriptionCheckRequest].
extension SubscriptionCheckRequestPatterns on SubscriptionCheckRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubscriptionCheckRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubscriptionCheckRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubscriptionCheckRequest value)  $default,){
final _that = this;
switch (_that) {
case _SubscriptionCheckRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubscriptionCheckRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SubscriptionCheckRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String platform,  String packageName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubscriptionCheckRequest() when $default != null:
return $default(_that.userId,_that.platform,_that.packageName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String platform,  String packageName)  $default,) {final _that = this;
switch (_that) {
case _SubscriptionCheckRequest():
return $default(_that.userId,_that.platform,_that.packageName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String platform,  String packageName)?  $default,) {final _that = this;
switch (_that) {
case _SubscriptionCheckRequest() when $default != null:
return $default(_that.userId,_that.platform,_that.packageName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubscriptionCheckRequest implements SubscriptionCheckRequest {
  const _SubscriptionCheckRequest({required this.userId, required this.platform, required this.packageName});
  factory _SubscriptionCheckRequest.fromJson(Map<String, dynamic> json) => _$SubscriptionCheckRequestFromJson(json);

@override final  String userId;
@override final  String platform;
// 'android' or 'ios'
@override final  String packageName;

/// Create a copy of SubscriptionCheckRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscriptionCheckRequestCopyWith<_SubscriptionCheckRequest> get copyWith => __$SubscriptionCheckRequestCopyWithImpl<_SubscriptionCheckRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubscriptionCheckRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscriptionCheckRequest&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.packageName, packageName) || other.packageName == packageName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,platform,packageName);

@override
String toString() {
  return 'SubscriptionCheckRequest(userId: $userId, platform: $platform, packageName: $packageName)';
}


}

/// @nodoc
abstract mixin class _$SubscriptionCheckRequestCopyWith<$Res> implements $SubscriptionCheckRequestCopyWith<$Res> {
  factory _$SubscriptionCheckRequestCopyWith(_SubscriptionCheckRequest value, $Res Function(_SubscriptionCheckRequest) _then) = __$SubscriptionCheckRequestCopyWithImpl;
@override @useResult
$Res call({
 String userId, String platform, String packageName
});




}
/// @nodoc
class __$SubscriptionCheckRequestCopyWithImpl<$Res>
    implements _$SubscriptionCheckRequestCopyWith<$Res> {
  __$SubscriptionCheckRequestCopyWithImpl(this._self, this._then);

  final _SubscriptionCheckRequest _self;
  final $Res Function(_SubscriptionCheckRequest) _then;

/// Create a copy of SubscriptionCheckRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? platform = null,Object? packageName = null,}) {
  return _then(_SubscriptionCheckRequest(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String,packageName: null == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
