// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubscriptionConfig {

/// Google Play Billing API キー
 String get googleKey;/// Apple App Store Server API キー
 String get appleKey;/// プレミアム Entitlement ID
 String get premiumEntitlementId;/// ロギングレベル
 bool get enableDebugLogging;
/// Create a copy of SubscriptionConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscriptionConfigCopyWith<SubscriptionConfig> get copyWith => _$SubscriptionConfigCopyWithImpl<SubscriptionConfig>(this as SubscriptionConfig, _$identity);

  /// Serializes this SubscriptionConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionConfig&&(identical(other.googleKey, googleKey) || other.googleKey == googleKey)&&(identical(other.appleKey, appleKey) || other.appleKey == appleKey)&&(identical(other.premiumEntitlementId, premiumEntitlementId) || other.premiumEntitlementId == premiumEntitlementId)&&(identical(other.enableDebugLogging, enableDebugLogging) || other.enableDebugLogging == enableDebugLogging));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,googleKey,appleKey,premiumEntitlementId,enableDebugLogging);

@override
String toString() {
  return 'SubscriptionConfig(googleKey: $googleKey, appleKey: $appleKey, premiumEntitlementId: $premiumEntitlementId, enableDebugLogging: $enableDebugLogging)';
}


}

/// @nodoc
abstract mixin class $SubscriptionConfigCopyWith<$Res>  {
  factory $SubscriptionConfigCopyWith(SubscriptionConfig value, $Res Function(SubscriptionConfig) _then) = _$SubscriptionConfigCopyWithImpl;
@useResult
$Res call({
 String googleKey, String appleKey, String premiumEntitlementId, bool enableDebugLogging
});




}
/// @nodoc
class _$SubscriptionConfigCopyWithImpl<$Res>
    implements $SubscriptionConfigCopyWith<$Res> {
  _$SubscriptionConfigCopyWithImpl(this._self, this._then);

  final SubscriptionConfig _self;
  final $Res Function(SubscriptionConfig) _then;

/// Create a copy of SubscriptionConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? googleKey = null,Object? appleKey = null,Object? premiumEntitlementId = null,Object? enableDebugLogging = null,}) {
  return _then(_self.copyWith(
googleKey: null == googleKey ? _self.googleKey : googleKey // ignore: cast_nullable_to_non_nullable
as String,appleKey: null == appleKey ? _self.appleKey : appleKey // ignore: cast_nullable_to_non_nullable
as String,premiumEntitlementId: null == premiumEntitlementId ? _self.premiumEntitlementId : premiumEntitlementId // ignore: cast_nullable_to_non_nullable
as String,enableDebugLogging: null == enableDebugLogging ? _self.enableDebugLogging : enableDebugLogging // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SubscriptionConfig].
extension SubscriptionConfigPatterns on SubscriptionConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubscriptionConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubscriptionConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubscriptionConfig value)  $default,){
final _that = this;
switch (_that) {
case _SubscriptionConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubscriptionConfig value)?  $default,){
final _that = this;
switch (_that) {
case _SubscriptionConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String googleKey,  String appleKey,  String premiumEntitlementId,  bool enableDebugLogging)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubscriptionConfig() when $default != null:
return $default(_that.googleKey,_that.appleKey,_that.premiumEntitlementId,_that.enableDebugLogging);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String googleKey,  String appleKey,  String premiumEntitlementId,  bool enableDebugLogging)  $default,) {final _that = this;
switch (_that) {
case _SubscriptionConfig():
return $default(_that.googleKey,_that.appleKey,_that.premiumEntitlementId,_that.enableDebugLogging);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String googleKey,  String appleKey,  String premiumEntitlementId,  bool enableDebugLogging)?  $default,) {final _that = this;
switch (_that) {
case _SubscriptionConfig() when $default != null:
return $default(_that.googleKey,_that.appleKey,_that.premiumEntitlementId,_that.enableDebugLogging);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubscriptionConfig implements SubscriptionConfig {
  const _SubscriptionConfig({required this.googleKey, required this.appleKey, this.premiumEntitlementId = 'premium', this.enableDebugLogging = false});
  factory _SubscriptionConfig.fromJson(Map<String, dynamic> json) => _$SubscriptionConfigFromJson(json);

/// Google Play Billing API キー
@override final  String googleKey;
/// Apple App Store Server API キー
@override final  String appleKey;
/// プレミアム Entitlement ID
@override@JsonKey() final  String premiumEntitlementId;
/// ロギングレベル
@override@JsonKey() final  bool enableDebugLogging;

/// Create a copy of SubscriptionConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscriptionConfigCopyWith<_SubscriptionConfig> get copyWith => __$SubscriptionConfigCopyWithImpl<_SubscriptionConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubscriptionConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscriptionConfig&&(identical(other.googleKey, googleKey) || other.googleKey == googleKey)&&(identical(other.appleKey, appleKey) || other.appleKey == appleKey)&&(identical(other.premiumEntitlementId, premiumEntitlementId) || other.premiumEntitlementId == premiumEntitlementId)&&(identical(other.enableDebugLogging, enableDebugLogging) || other.enableDebugLogging == enableDebugLogging));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,googleKey,appleKey,premiumEntitlementId,enableDebugLogging);

@override
String toString() {
  return 'SubscriptionConfig(googleKey: $googleKey, appleKey: $appleKey, premiumEntitlementId: $premiumEntitlementId, enableDebugLogging: $enableDebugLogging)';
}


}

/// @nodoc
abstract mixin class _$SubscriptionConfigCopyWith<$Res> implements $SubscriptionConfigCopyWith<$Res> {
  factory _$SubscriptionConfigCopyWith(_SubscriptionConfig value, $Res Function(_SubscriptionConfig) _then) = __$SubscriptionConfigCopyWithImpl;
@override @useResult
$Res call({
 String googleKey, String appleKey, String premiumEntitlementId, bool enableDebugLogging
});




}
/// @nodoc
class __$SubscriptionConfigCopyWithImpl<$Res>
    implements _$SubscriptionConfigCopyWith<$Res> {
  __$SubscriptionConfigCopyWithImpl(this._self, this._then);

  final _SubscriptionConfig _self;
  final $Res Function(_SubscriptionConfig) _then;

/// Create a copy of SubscriptionConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? googleKey = null,Object? appleKey = null,Object? premiumEntitlementId = null,Object? enableDebugLogging = null,}) {
  return _then(_SubscriptionConfig(
googleKey: null == googleKey ? _self.googleKey : googleKey // ignore: cast_nullable_to_non_nullable
as String,appleKey: null == appleKey ? _self.appleKey : appleKey // ignore: cast_nullable_to_non_nullable
as String,premiumEntitlementId: null == premiumEntitlementId ? _self.premiumEntitlementId : premiumEntitlementId // ignore: cast_nullable_to_non_nullable
as String,enableDebugLogging: null == enableDebugLogging ? _self.enableDebugLogging : enableDebugLogging // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
