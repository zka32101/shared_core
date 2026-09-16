// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ab_test_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ABTestConfig {

 String get testId;// 'ab_test_paywall_v1'
 String get testName; String get description; List<TestVariant> get variants; DateTime get startDate; DateTime? get endDate; bool get isActive; Map<String, double> get trafficAllocation;// {"control": 0.5, "variant_b": 0.3, "variant_c": 0.2}
 Map<String, dynamic> get config;
/// Create a copy of ABTestConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ABTestConfigCopyWith<ABTestConfig> get copyWith => _$ABTestConfigCopyWithImpl<ABTestConfig>(this as ABTestConfig, _$identity);

  /// Serializes this ABTestConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ABTestConfig&&(identical(other.testId, testId) || other.testId == testId)&&(identical(other.testName, testName) || other.testName == testName)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.variants, variants)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other.trafficAllocation, trafficAllocation)&&const DeepCollectionEquality().equals(other.config, config));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,testId,testName,description,const DeepCollectionEquality().hash(variants),startDate,endDate,isActive,const DeepCollectionEquality().hash(trafficAllocation),const DeepCollectionEquality().hash(config));

@override
String toString() {
  return 'ABTestConfig(testId: $testId, testName: $testName, description: $description, variants: $variants, startDate: $startDate, endDate: $endDate, isActive: $isActive, trafficAllocation: $trafficAllocation, config: $config)';
}


}

/// @nodoc
abstract mixin class $ABTestConfigCopyWith<$Res>  {
  factory $ABTestConfigCopyWith(ABTestConfig value, $Res Function(ABTestConfig) _then) = _$ABTestConfigCopyWithImpl;
@useResult
$Res call({
 String testId, String testName, String description, List<TestVariant> variants, DateTime startDate, DateTime? endDate, bool isActive, Map<String, double> trafficAllocation, Map<String, dynamic> config
});




}
/// @nodoc
class _$ABTestConfigCopyWithImpl<$Res>
    implements $ABTestConfigCopyWith<$Res> {
  _$ABTestConfigCopyWithImpl(this._self, this._then);

  final ABTestConfig _self;
  final $Res Function(ABTestConfig) _then;

/// Create a copy of ABTestConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? testId = null,Object? testName = null,Object? description = null,Object? variants = null,Object? startDate = null,Object? endDate = freezed,Object? isActive = null,Object? trafficAllocation = null,Object? config = null,}) {
  return _then(_self.copyWith(
testId: null == testId ? _self.testId : testId // ignore: cast_nullable_to_non_nullable
as String,testName: null == testName ? _self.testName : testName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,variants: null == variants ? _self.variants : variants // ignore: cast_nullable_to_non_nullable
as List<TestVariant>,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,trafficAllocation: null == trafficAllocation ? _self.trafficAllocation : trafficAllocation // ignore: cast_nullable_to_non_nullable
as Map<String, double>,config: null == config ? _self.config : config // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [ABTestConfig].
extension ABTestConfigPatterns on ABTestConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ABTestConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ABTestConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ABTestConfig value)  $default,){
final _that = this;
switch (_that) {
case _ABTestConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ABTestConfig value)?  $default,){
final _that = this;
switch (_that) {
case _ABTestConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String testId,  String testName,  String description,  List<TestVariant> variants,  DateTime startDate,  DateTime? endDate,  bool isActive,  Map<String, double> trafficAllocation,  Map<String, dynamic> config)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ABTestConfig() when $default != null:
return $default(_that.testId,_that.testName,_that.description,_that.variants,_that.startDate,_that.endDate,_that.isActive,_that.trafficAllocation,_that.config);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String testId,  String testName,  String description,  List<TestVariant> variants,  DateTime startDate,  DateTime? endDate,  bool isActive,  Map<String, double> trafficAllocation,  Map<String, dynamic> config)  $default,) {final _that = this;
switch (_that) {
case _ABTestConfig():
return $default(_that.testId,_that.testName,_that.description,_that.variants,_that.startDate,_that.endDate,_that.isActive,_that.trafficAllocation,_that.config);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String testId,  String testName,  String description,  List<TestVariant> variants,  DateTime startDate,  DateTime? endDate,  bool isActive,  Map<String, double> trafficAllocation,  Map<String, dynamic> config)?  $default,) {final _that = this;
switch (_that) {
case _ABTestConfig() when $default != null:
return $default(_that.testId,_that.testName,_that.description,_that.variants,_that.startDate,_that.endDate,_that.isActive,_that.trafficAllocation,_that.config);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ABTestConfig implements ABTestConfig {
  const _ABTestConfig({required this.testId, required this.testName, required this.description, required final  List<TestVariant> variants, required this.startDate, this.endDate, required this.isActive, required final  Map<String, double> trafficAllocation, required final  Map<String, dynamic> config}): _variants = variants,_trafficAllocation = trafficAllocation,_config = config;
  factory _ABTestConfig.fromJson(Map<String, dynamic> json) => _$ABTestConfigFromJson(json);

@override final  String testId;
// 'ab_test_paywall_v1'
@override final  String testName;
@override final  String description;
 final  List<TestVariant> _variants;
@override List<TestVariant> get variants {
  if (_variants is EqualUnmodifiableListView) return _variants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_variants);
}

@override final  DateTime startDate;
@override final  DateTime? endDate;
@override final  bool isActive;
 final  Map<String, double> _trafficAllocation;
@override Map<String, double> get trafficAllocation {
  if (_trafficAllocation is EqualUnmodifiableMapView) return _trafficAllocation;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_trafficAllocation);
}

// {"control": 0.5, "variant_b": 0.3, "variant_c": 0.2}
 final  Map<String, dynamic> _config;
// {"control": 0.5, "variant_b": 0.3, "variant_c": 0.2}
@override Map<String, dynamic> get config {
  if (_config is EqualUnmodifiableMapView) return _config;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_config);
}


/// Create a copy of ABTestConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ABTestConfigCopyWith<_ABTestConfig> get copyWith => __$ABTestConfigCopyWithImpl<_ABTestConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ABTestConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ABTestConfig&&(identical(other.testId, testId) || other.testId == testId)&&(identical(other.testName, testName) || other.testName == testName)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._variants, _variants)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other._trafficAllocation, _trafficAllocation)&&const DeepCollectionEquality().equals(other._config, _config));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,testId,testName,description,const DeepCollectionEquality().hash(_variants),startDate,endDate,isActive,const DeepCollectionEquality().hash(_trafficAllocation),const DeepCollectionEquality().hash(_config));

@override
String toString() {
  return 'ABTestConfig(testId: $testId, testName: $testName, description: $description, variants: $variants, startDate: $startDate, endDate: $endDate, isActive: $isActive, trafficAllocation: $trafficAllocation, config: $config)';
}


}

/// @nodoc
abstract mixin class _$ABTestConfigCopyWith<$Res> implements $ABTestConfigCopyWith<$Res> {
  factory _$ABTestConfigCopyWith(_ABTestConfig value, $Res Function(_ABTestConfig) _then) = __$ABTestConfigCopyWithImpl;
@override @useResult
$Res call({
 String testId, String testName, String description, List<TestVariant> variants, DateTime startDate, DateTime? endDate, bool isActive, Map<String, double> trafficAllocation, Map<String, dynamic> config
});




}
/// @nodoc
class __$ABTestConfigCopyWithImpl<$Res>
    implements _$ABTestConfigCopyWith<$Res> {
  __$ABTestConfigCopyWithImpl(this._self, this._then);

  final _ABTestConfig _self;
  final $Res Function(_ABTestConfig) _then;

/// Create a copy of ABTestConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? testId = null,Object? testName = null,Object? description = null,Object? variants = null,Object? startDate = null,Object? endDate = freezed,Object? isActive = null,Object? trafficAllocation = null,Object? config = null,}) {
  return _then(_ABTestConfig(
testId: null == testId ? _self.testId : testId // ignore: cast_nullable_to_non_nullable
as String,testName: null == testName ? _self.testName : testName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,variants: null == variants ? _self._variants : variants // ignore: cast_nullable_to_non_nullable
as List<TestVariant>,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,trafficAllocation: null == trafficAllocation ? _self._trafficAllocation : trafficAllocation // ignore: cast_nullable_to_non_nullable
as Map<String, double>,config: null == config ? _self._config : config // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$ABTestAssignment {

 String get userId; String get testId; TestVariant get assignedVariant; DateTime get assignedAt; bool get isSticky;
/// Create a copy of ABTestAssignment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ABTestAssignmentCopyWith<ABTestAssignment> get copyWith => _$ABTestAssignmentCopyWithImpl<ABTestAssignment>(this as ABTestAssignment, _$identity);

  /// Serializes this ABTestAssignment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ABTestAssignment&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.testId, testId) || other.testId == testId)&&(identical(other.assignedVariant, assignedVariant) || other.assignedVariant == assignedVariant)&&(identical(other.assignedAt, assignedAt) || other.assignedAt == assignedAt)&&(identical(other.isSticky, isSticky) || other.isSticky == isSticky));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,testId,assignedVariant,assignedAt,isSticky);

@override
String toString() {
  return 'ABTestAssignment(userId: $userId, testId: $testId, assignedVariant: $assignedVariant, assignedAt: $assignedAt, isSticky: $isSticky)';
}


}

/// @nodoc
abstract mixin class $ABTestAssignmentCopyWith<$Res>  {
  factory $ABTestAssignmentCopyWith(ABTestAssignment value, $Res Function(ABTestAssignment) _then) = _$ABTestAssignmentCopyWithImpl;
@useResult
$Res call({
 String userId, String testId, TestVariant assignedVariant, DateTime assignedAt, bool isSticky
});




}
/// @nodoc
class _$ABTestAssignmentCopyWithImpl<$Res>
    implements $ABTestAssignmentCopyWith<$Res> {
  _$ABTestAssignmentCopyWithImpl(this._self, this._then);

  final ABTestAssignment _self;
  final $Res Function(ABTestAssignment) _then;

/// Create a copy of ABTestAssignment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? testId = null,Object? assignedVariant = null,Object? assignedAt = null,Object? isSticky = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,testId: null == testId ? _self.testId : testId // ignore: cast_nullable_to_non_nullable
as String,assignedVariant: null == assignedVariant ? _self.assignedVariant : assignedVariant // ignore: cast_nullable_to_non_nullable
as TestVariant,assignedAt: null == assignedAt ? _self.assignedAt : assignedAt // ignore: cast_nullable_to_non_nullable
as DateTime,isSticky: null == isSticky ? _self.isSticky : isSticky // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ABTestAssignment].
extension ABTestAssignmentPatterns on ABTestAssignment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ABTestAssignment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ABTestAssignment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ABTestAssignment value)  $default,){
final _that = this;
switch (_that) {
case _ABTestAssignment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ABTestAssignment value)?  $default,){
final _that = this;
switch (_that) {
case _ABTestAssignment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String testId,  TestVariant assignedVariant,  DateTime assignedAt,  bool isSticky)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ABTestAssignment() when $default != null:
return $default(_that.userId,_that.testId,_that.assignedVariant,_that.assignedAt,_that.isSticky);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String testId,  TestVariant assignedVariant,  DateTime assignedAt,  bool isSticky)  $default,) {final _that = this;
switch (_that) {
case _ABTestAssignment():
return $default(_that.userId,_that.testId,_that.assignedVariant,_that.assignedAt,_that.isSticky);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String testId,  TestVariant assignedVariant,  DateTime assignedAt,  bool isSticky)?  $default,) {final _that = this;
switch (_that) {
case _ABTestAssignment() when $default != null:
return $default(_that.userId,_that.testId,_that.assignedVariant,_that.assignedAt,_that.isSticky);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ABTestAssignment implements ABTestAssignment {
  const _ABTestAssignment({required this.userId, required this.testId, required this.assignedVariant, required this.assignedAt, required this.isSticky});
  factory _ABTestAssignment.fromJson(Map<String, dynamic> json) => _$ABTestAssignmentFromJson(json);

@override final  String userId;
@override final  String testId;
@override final  TestVariant assignedVariant;
@override final  DateTime assignedAt;
@override final  bool isSticky;

/// Create a copy of ABTestAssignment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ABTestAssignmentCopyWith<_ABTestAssignment> get copyWith => __$ABTestAssignmentCopyWithImpl<_ABTestAssignment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ABTestAssignmentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ABTestAssignment&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.testId, testId) || other.testId == testId)&&(identical(other.assignedVariant, assignedVariant) || other.assignedVariant == assignedVariant)&&(identical(other.assignedAt, assignedAt) || other.assignedAt == assignedAt)&&(identical(other.isSticky, isSticky) || other.isSticky == isSticky));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,testId,assignedVariant,assignedAt,isSticky);

@override
String toString() {
  return 'ABTestAssignment(userId: $userId, testId: $testId, assignedVariant: $assignedVariant, assignedAt: $assignedAt, isSticky: $isSticky)';
}


}

/// @nodoc
abstract mixin class _$ABTestAssignmentCopyWith<$Res> implements $ABTestAssignmentCopyWith<$Res> {
  factory _$ABTestAssignmentCopyWith(_ABTestAssignment value, $Res Function(_ABTestAssignment) _then) = __$ABTestAssignmentCopyWithImpl;
@override @useResult
$Res call({
 String userId, String testId, TestVariant assignedVariant, DateTime assignedAt, bool isSticky
});




}
/// @nodoc
class __$ABTestAssignmentCopyWithImpl<$Res>
    implements _$ABTestAssignmentCopyWith<$Res> {
  __$ABTestAssignmentCopyWithImpl(this._self, this._then);

  final _ABTestAssignment _self;
  final $Res Function(_ABTestAssignment) _then;

/// Create a copy of ABTestAssignment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? testId = null,Object? assignedVariant = null,Object? assignedAt = null,Object? isSticky = null,}) {
  return _then(_ABTestAssignment(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,testId: null == testId ? _self.testId : testId // ignore: cast_nullable_to_non_nullable
as String,assignedVariant: null == assignedVariant ? _self.assignedVariant : assignedVariant // ignore: cast_nullable_to_non_nullable
as TestVariant,assignedAt: null == assignedAt ? _self.assignedAt : assignedAt // ignore: cast_nullable_to_non_nullable
as DateTime,isSticky: null == isSticky ? _self.isSticky : isSticky // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$ABTestEvent {

 String get userId; String get testId; TestVariant get variant; TestMetric get metric; int get value;// impression:1, conversion:revenue_amount
 DateTime get eventTime; Map<String, dynamic>? get customData;
/// Create a copy of ABTestEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ABTestEventCopyWith<ABTestEvent> get copyWith => _$ABTestEventCopyWithImpl<ABTestEvent>(this as ABTestEvent, _$identity);

  /// Serializes this ABTestEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ABTestEvent&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.testId, testId) || other.testId == testId)&&(identical(other.variant, variant) || other.variant == variant)&&(identical(other.metric, metric) || other.metric == metric)&&(identical(other.value, value) || other.value == value)&&(identical(other.eventTime, eventTime) || other.eventTime == eventTime)&&const DeepCollectionEquality().equals(other.customData, customData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,testId,variant,metric,value,eventTime,const DeepCollectionEquality().hash(customData));

@override
String toString() {
  return 'ABTestEvent(userId: $userId, testId: $testId, variant: $variant, metric: $metric, value: $value, eventTime: $eventTime, customData: $customData)';
}


}

/// @nodoc
abstract mixin class $ABTestEventCopyWith<$Res>  {
  factory $ABTestEventCopyWith(ABTestEvent value, $Res Function(ABTestEvent) _then) = _$ABTestEventCopyWithImpl;
@useResult
$Res call({
 String userId, String testId, TestVariant variant, TestMetric metric, int value, DateTime eventTime, Map<String, dynamic>? customData
});




}
/// @nodoc
class _$ABTestEventCopyWithImpl<$Res>
    implements $ABTestEventCopyWith<$Res> {
  _$ABTestEventCopyWithImpl(this._self, this._then);

  final ABTestEvent _self;
  final $Res Function(ABTestEvent) _then;

/// Create a copy of ABTestEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? testId = null,Object? variant = null,Object? metric = null,Object? value = null,Object? eventTime = null,Object? customData = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,testId: null == testId ? _self.testId : testId // ignore: cast_nullable_to_non_nullable
as String,variant: null == variant ? _self.variant : variant // ignore: cast_nullable_to_non_nullable
as TestVariant,metric: null == metric ? _self.metric : metric // ignore: cast_nullable_to_non_nullable
as TestMetric,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,eventTime: null == eventTime ? _self.eventTime : eventTime // ignore: cast_nullable_to_non_nullable
as DateTime,customData: freezed == customData ? _self.customData : customData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ABTestEvent].
extension ABTestEventPatterns on ABTestEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ABTestEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ABTestEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ABTestEvent value)  $default,){
final _that = this;
switch (_that) {
case _ABTestEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ABTestEvent value)?  $default,){
final _that = this;
switch (_that) {
case _ABTestEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String testId,  TestVariant variant,  TestMetric metric,  int value,  DateTime eventTime,  Map<String, dynamic>? customData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ABTestEvent() when $default != null:
return $default(_that.userId,_that.testId,_that.variant,_that.metric,_that.value,_that.eventTime,_that.customData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String testId,  TestVariant variant,  TestMetric metric,  int value,  DateTime eventTime,  Map<String, dynamic>? customData)  $default,) {final _that = this;
switch (_that) {
case _ABTestEvent():
return $default(_that.userId,_that.testId,_that.variant,_that.metric,_that.value,_that.eventTime,_that.customData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String testId,  TestVariant variant,  TestMetric metric,  int value,  DateTime eventTime,  Map<String, dynamic>? customData)?  $default,) {final _that = this;
switch (_that) {
case _ABTestEvent() when $default != null:
return $default(_that.userId,_that.testId,_that.variant,_that.metric,_that.value,_that.eventTime,_that.customData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ABTestEvent implements ABTestEvent {
  const _ABTestEvent({required this.userId, required this.testId, required this.variant, required this.metric, required this.value, required this.eventTime, final  Map<String, dynamic>? customData}): _customData = customData;
  factory _ABTestEvent.fromJson(Map<String, dynamic> json) => _$ABTestEventFromJson(json);

@override final  String userId;
@override final  String testId;
@override final  TestVariant variant;
@override final  TestMetric metric;
@override final  int value;
// impression:1, conversion:revenue_amount
@override final  DateTime eventTime;
 final  Map<String, dynamic>? _customData;
@override Map<String, dynamic>? get customData {
  final value = _customData;
  if (value == null) return null;
  if (_customData is EqualUnmodifiableMapView) return _customData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of ABTestEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ABTestEventCopyWith<_ABTestEvent> get copyWith => __$ABTestEventCopyWithImpl<_ABTestEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ABTestEventToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ABTestEvent&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.testId, testId) || other.testId == testId)&&(identical(other.variant, variant) || other.variant == variant)&&(identical(other.metric, metric) || other.metric == metric)&&(identical(other.value, value) || other.value == value)&&(identical(other.eventTime, eventTime) || other.eventTime == eventTime)&&const DeepCollectionEquality().equals(other._customData, _customData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,testId,variant,metric,value,eventTime,const DeepCollectionEquality().hash(_customData));

@override
String toString() {
  return 'ABTestEvent(userId: $userId, testId: $testId, variant: $variant, metric: $metric, value: $value, eventTime: $eventTime, customData: $customData)';
}


}

/// @nodoc
abstract mixin class _$ABTestEventCopyWith<$Res> implements $ABTestEventCopyWith<$Res> {
  factory _$ABTestEventCopyWith(_ABTestEvent value, $Res Function(_ABTestEvent) _then) = __$ABTestEventCopyWithImpl;
@override @useResult
$Res call({
 String userId, String testId, TestVariant variant, TestMetric metric, int value, DateTime eventTime, Map<String, dynamic>? customData
});




}
/// @nodoc
class __$ABTestEventCopyWithImpl<$Res>
    implements _$ABTestEventCopyWith<$Res> {
  __$ABTestEventCopyWithImpl(this._self, this._then);

  final _ABTestEvent _self;
  final $Res Function(_ABTestEvent) _then;

/// Create a copy of ABTestEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? testId = null,Object? variant = null,Object? metric = null,Object? value = null,Object? eventTime = null,Object? customData = freezed,}) {
  return _then(_ABTestEvent(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,testId: null == testId ? _self.testId : testId // ignore: cast_nullable_to_non_nullable
as String,variant: null == variant ? _self.variant : variant // ignore: cast_nullable_to_non_nullable
as TestVariant,metric: null == metric ? _self.metric : metric // ignore: cast_nullable_to_non_nullable
as TestMetric,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,eventTime: null == eventTime ? _self.eventTime : eventTime // ignore: cast_nullable_to_non_nullable
as DateTime,customData: freezed == customData ? _self._customData : customData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$ABTestResult {

 String get testId; TestVariant get variant; int get impressions; int get conversions; double get conversionRate; int get totalRevenue; double get averageOrderValue; DateTime get updatedAt;
/// Create a copy of ABTestResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ABTestResultCopyWith<ABTestResult> get copyWith => _$ABTestResultCopyWithImpl<ABTestResult>(this as ABTestResult, _$identity);

  /// Serializes this ABTestResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ABTestResult&&(identical(other.testId, testId) || other.testId == testId)&&(identical(other.variant, variant) || other.variant == variant)&&(identical(other.impressions, impressions) || other.impressions == impressions)&&(identical(other.conversions, conversions) || other.conversions == conversions)&&(identical(other.conversionRate, conversionRate) || other.conversionRate == conversionRate)&&(identical(other.totalRevenue, totalRevenue) || other.totalRevenue == totalRevenue)&&(identical(other.averageOrderValue, averageOrderValue) || other.averageOrderValue == averageOrderValue)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,testId,variant,impressions,conversions,conversionRate,totalRevenue,averageOrderValue,updatedAt);

@override
String toString() {
  return 'ABTestResult(testId: $testId, variant: $variant, impressions: $impressions, conversions: $conversions, conversionRate: $conversionRate, totalRevenue: $totalRevenue, averageOrderValue: $averageOrderValue, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ABTestResultCopyWith<$Res>  {
  factory $ABTestResultCopyWith(ABTestResult value, $Res Function(ABTestResult) _then) = _$ABTestResultCopyWithImpl;
@useResult
$Res call({
 String testId, TestVariant variant, int impressions, int conversions, double conversionRate, int totalRevenue, double averageOrderValue, DateTime updatedAt
});




}
/// @nodoc
class _$ABTestResultCopyWithImpl<$Res>
    implements $ABTestResultCopyWith<$Res> {
  _$ABTestResultCopyWithImpl(this._self, this._then);

  final ABTestResult _self;
  final $Res Function(ABTestResult) _then;

/// Create a copy of ABTestResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? testId = null,Object? variant = null,Object? impressions = null,Object? conversions = null,Object? conversionRate = null,Object? totalRevenue = null,Object? averageOrderValue = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
testId: null == testId ? _self.testId : testId // ignore: cast_nullable_to_non_nullable
as String,variant: null == variant ? _self.variant : variant // ignore: cast_nullable_to_non_nullable
as TestVariant,impressions: null == impressions ? _self.impressions : impressions // ignore: cast_nullable_to_non_nullable
as int,conversions: null == conversions ? _self.conversions : conversions // ignore: cast_nullable_to_non_nullable
as int,conversionRate: null == conversionRate ? _self.conversionRate : conversionRate // ignore: cast_nullable_to_non_nullable
as double,totalRevenue: null == totalRevenue ? _self.totalRevenue : totalRevenue // ignore: cast_nullable_to_non_nullable
as int,averageOrderValue: null == averageOrderValue ? _self.averageOrderValue : averageOrderValue // ignore: cast_nullable_to_non_nullable
as double,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ABTestResult].
extension ABTestResultPatterns on ABTestResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ABTestResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ABTestResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ABTestResult value)  $default,){
final _that = this;
switch (_that) {
case _ABTestResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ABTestResult value)?  $default,){
final _that = this;
switch (_that) {
case _ABTestResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String testId,  TestVariant variant,  int impressions,  int conversions,  double conversionRate,  int totalRevenue,  double averageOrderValue,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ABTestResult() when $default != null:
return $default(_that.testId,_that.variant,_that.impressions,_that.conversions,_that.conversionRate,_that.totalRevenue,_that.averageOrderValue,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String testId,  TestVariant variant,  int impressions,  int conversions,  double conversionRate,  int totalRevenue,  double averageOrderValue,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ABTestResult():
return $default(_that.testId,_that.variant,_that.impressions,_that.conversions,_that.conversionRate,_that.totalRevenue,_that.averageOrderValue,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String testId,  TestVariant variant,  int impressions,  int conversions,  double conversionRate,  int totalRevenue,  double averageOrderValue,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ABTestResult() when $default != null:
return $default(_that.testId,_that.variant,_that.impressions,_that.conversions,_that.conversionRate,_that.totalRevenue,_that.averageOrderValue,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ABTestResult implements ABTestResult {
  const _ABTestResult({required this.testId, required this.variant, required this.impressions, required this.conversions, required this.conversionRate, required this.totalRevenue, required this.averageOrderValue, required this.updatedAt});
  factory _ABTestResult.fromJson(Map<String, dynamic> json) => _$ABTestResultFromJson(json);

@override final  String testId;
@override final  TestVariant variant;
@override final  int impressions;
@override final  int conversions;
@override final  double conversionRate;
@override final  int totalRevenue;
@override final  double averageOrderValue;
@override final  DateTime updatedAt;

/// Create a copy of ABTestResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ABTestResultCopyWith<_ABTestResult> get copyWith => __$ABTestResultCopyWithImpl<_ABTestResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ABTestResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ABTestResult&&(identical(other.testId, testId) || other.testId == testId)&&(identical(other.variant, variant) || other.variant == variant)&&(identical(other.impressions, impressions) || other.impressions == impressions)&&(identical(other.conversions, conversions) || other.conversions == conversions)&&(identical(other.conversionRate, conversionRate) || other.conversionRate == conversionRate)&&(identical(other.totalRevenue, totalRevenue) || other.totalRevenue == totalRevenue)&&(identical(other.averageOrderValue, averageOrderValue) || other.averageOrderValue == averageOrderValue)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,testId,variant,impressions,conversions,conversionRate,totalRevenue,averageOrderValue,updatedAt);

@override
String toString() {
  return 'ABTestResult(testId: $testId, variant: $variant, impressions: $impressions, conversions: $conversions, conversionRate: $conversionRate, totalRevenue: $totalRevenue, averageOrderValue: $averageOrderValue, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ABTestResultCopyWith<$Res> implements $ABTestResultCopyWith<$Res> {
  factory _$ABTestResultCopyWith(_ABTestResult value, $Res Function(_ABTestResult) _then) = __$ABTestResultCopyWithImpl;
@override @useResult
$Res call({
 String testId, TestVariant variant, int impressions, int conversions, double conversionRate, int totalRevenue, double averageOrderValue, DateTime updatedAt
});




}
/// @nodoc
class __$ABTestResultCopyWithImpl<$Res>
    implements _$ABTestResultCopyWith<$Res> {
  __$ABTestResultCopyWithImpl(this._self, this._then);

  final _ABTestResult _self;
  final $Res Function(_ABTestResult) _then;

/// Create a copy of ABTestResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? testId = null,Object? variant = null,Object? impressions = null,Object? conversions = null,Object? conversionRate = null,Object? totalRevenue = null,Object? averageOrderValue = null,Object? updatedAt = null,}) {
  return _then(_ABTestResult(
testId: null == testId ? _self.testId : testId // ignore: cast_nullable_to_non_nullable
as String,variant: null == variant ? _self.variant : variant // ignore: cast_nullable_to_non_nullable
as TestVariant,impressions: null == impressions ? _self.impressions : impressions // ignore: cast_nullable_to_non_nullable
as int,conversions: null == conversions ? _self.conversions : conversions // ignore: cast_nullable_to_non_nullable
as int,conversionRate: null == conversionRate ? _self.conversionRate : conversionRate // ignore: cast_nullable_to_non_nullable
as double,totalRevenue: null == totalRevenue ? _self.totalRevenue : totalRevenue // ignore: cast_nullable_to_non_nullable
as int,averageOrderValue: null == averageOrderValue ? _self.averageOrderValue : averageOrderValue // ignore: cast_nullable_to_non_nullable
as double,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$PopulationStats {

 int get totalUsers; int get activeUsers; int get churned; double get churnRate; Map<String, int> get segmentDistribution;// {newUser: 100, active: 500, vip: 50}
 DateTime get sampledAt;
/// Create a copy of PopulationStats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PopulationStatsCopyWith<PopulationStats> get copyWith => _$PopulationStatsCopyWithImpl<PopulationStats>(this as PopulationStats, _$identity);

  /// Serializes this PopulationStats to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PopulationStats&&(identical(other.totalUsers, totalUsers) || other.totalUsers == totalUsers)&&(identical(other.activeUsers, activeUsers) || other.activeUsers == activeUsers)&&(identical(other.churned, churned) || other.churned == churned)&&(identical(other.churnRate, churnRate) || other.churnRate == churnRate)&&const DeepCollectionEquality().equals(other.segmentDistribution, segmentDistribution)&&(identical(other.sampledAt, sampledAt) || other.sampledAt == sampledAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalUsers,activeUsers,churned,churnRate,const DeepCollectionEquality().hash(segmentDistribution),sampledAt);

@override
String toString() {
  return 'PopulationStats(totalUsers: $totalUsers, activeUsers: $activeUsers, churned: $churned, churnRate: $churnRate, segmentDistribution: $segmentDistribution, sampledAt: $sampledAt)';
}


}

/// @nodoc
abstract mixin class $PopulationStatsCopyWith<$Res>  {
  factory $PopulationStatsCopyWith(PopulationStats value, $Res Function(PopulationStats) _then) = _$PopulationStatsCopyWithImpl;
@useResult
$Res call({
 int totalUsers, int activeUsers, int churned, double churnRate, Map<String, int> segmentDistribution, DateTime sampledAt
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
@pragma('vm:prefer-inline') @override $Res call({Object? totalUsers = null,Object? activeUsers = null,Object? churned = null,Object? churnRate = null,Object? segmentDistribution = null,Object? sampledAt = null,}) {
  return _then(_self.copyWith(
totalUsers: null == totalUsers ? _self.totalUsers : totalUsers // ignore: cast_nullable_to_non_nullable
as int,activeUsers: null == activeUsers ? _self.activeUsers : activeUsers // ignore: cast_nullable_to_non_nullable
as int,churned: null == churned ? _self.churned : churned // ignore: cast_nullable_to_non_nullable
as int,churnRate: null == churnRate ? _self.churnRate : churnRate // ignore: cast_nullable_to_non_nullable
as double,segmentDistribution: null == segmentDistribution ? _self.segmentDistribution : segmentDistribution // ignore: cast_nullable_to_non_nullable
as Map<String, int>,sampledAt: null == sampledAt ? _self.sampledAt : sampledAt // ignore: cast_nullable_to_non_nullable
as DateTime,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalUsers,  int activeUsers,  int churned,  double churnRate,  Map<String, int> segmentDistribution,  DateTime sampledAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PopulationStats() when $default != null:
return $default(_that.totalUsers,_that.activeUsers,_that.churned,_that.churnRate,_that.segmentDistribution,_that.sampledAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalUsers,  int activeUsers,  int churned,  double churnRate,  Map<String, int> segmentDistribution,  DateTime sampledAt)  $default,) {final _that = this;
switch (_that) {
case _PopulationStats():
return $default(_that.totalUsers,_that.activeUsers,_that.churned,_that.churnRate,_that.segmentDistribution,_that.sampledAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalUsers,  int activeUsers,  int churned,  double churnRate,  Map<String, int> segmentDistribution,  DateTime sampledAt)?  $default,) {final _that = this;
switch (_that) {
case _PopulationStats() when $default != null:
return $default(_that.totalUsers,_that.activeUsers,_that.churned,_that.churnRate,_that.segmentDistribution,_that.sampledAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PopulationStats implements PopulationStats {
  const _PopulationStats({required this.totalUsers, required this.activeUsers, required this.churned, required this.churnRate, required final  Map<String, int> segmentDistribution, required this.sampledAt}): _segmentDistribution = segmentDistribution;
  factory _PopulationStats.fromJson(Map<String, dynamic> json) => _$PopulationStatsFromJson(json);

@override final  int totalUsers;
@override final  int activeUsers;
@override final  int churned;
@override final  double churnRate;
 final  Map<String, int> _segmentDistribution;
@override Map<String, int> get segmentDistribution {
  if (_segmentDistribution is EqualUnmodifiableMapView) return _segmentDistribution;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_segmentDistribution);
}

// {newUser: 100, active: 500, vip: 50}
@override final  DateTime sampledAt;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PopulationStats&&(identical(other.totalUsers, totalUsers) || other.totalUsers == totalUsers)&&(identical(other.activeUsers, activeUsers) || other.activeUsers == activeUsers)&&(identical(other.churned, churned) || other.churned == churned)&&(identical(other.churnRate, churnRate) || other.churnRate == churnRate)&&const DeepCollectionEquality().equals(other._segmentDistribution, _segmentDistribution)&&(identical(other.sampledAt, sampledAt) || other.sampledAt == sampledAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalUsers,activeUsers,churned,churnRate,const DeepCollectionEquality().hash(_segmentDistribution),sampledAt);

@override
String toString() {
  return 'PopulationStats(totalUsers: $totalUsers, activeUsers: $activeUsers, churned: $churned, churnRate: $churnRate, segmentDistribution: $segmentDistribution, sampledAt: $sampledAt)';
}


}

/// @nodoc
abstract mixin class _$PopulationStatsCopyWith<$Res> implements $PopulationStatsCopyWith<$Res> {
  factory _$PopulationStatsCopyWith(_PopulationStats value, $Res Function(_PopulationStats) _then) = __$PopulationStatsCopyWithImpl;
@override @useResult
$Res call({
 int totalUsers, int activeUsers, int churned, double churnRate, Map<String, int> segmentDistribution, DateTime sampledAt
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
@override @pragma('vm:prefer-inline') $Res call({Object? totalUsers = null,Object? activeUsers = null,Object? churned = null,Object? churnRate = null,Object? segmentDistribution = null,Object? sampledAt = null,}) {
  return _then(_PopulationStats(
totalUsers: null == totalUsers ? _self.totalUsers : totalUsers // ignore: cast_nullable_to_non_nullable
as int,activeUsers: null == activeUsers ? _self.activeUsers : activeUsers // ignore: cast_nullable_to_non_nullable
as int,churned: null == churned ? _self.churned : churned // ignore: cast_nullable_to_non_nullable
as int,churnRate: null == churnRate ? _self.churnRate : churnRate // ignore: cast_nullable_to_non_nullable
as double,segmentDistribution: null == segmentDistribution ? _self._segmentDistribution : segmentDistribution // ignore: cast_nullable_to_non_nullable
as Map<String, int>,sampledAt: null == sampledAt ? _self.sampledAt : sampledAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc
mixin _$ABTestState {

 Map<String, ABTestResult> get results; Map<String, TestVariant> get userAssignments; bool get isLoading; String? get error;
/// Create a copy of ABTestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ABTestStateCopyWith<ABTestState> get copyWith => _$ABTestStateCopyWithImpl<ABTestState>(this as ABTestState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ABTestState&&const DeepCollectionEquality().equals(other.results, results)&&const DeepCollectionEquality().equals(other.userAssignments, userAssignments)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(results),const DeepCollectionEquality().hash(userAssignments),isLoading,error);

@override
String toString() {
  return 'ABTestState(results: $results, userAssignments: $userAssignments, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class $ABTestStateCopyWith<$Res>  {
  factory $ABTestStateCopyWith(ABTestState value, $Res Function(ABTestState) _then) = _$ABTestStateCopyWithImpl;
@useResult
$Res call({
 Map<String, ABTestResult> results, Map<String, TestVariant> userAssignments, bool isLoading, String? error
});




}
/// @nodoc
class _$ABTestStateCopyWithImpl<$Res>
    implements $ABTestStateCopyWith<$Res> {
  _$ABTestStateCopyWithImpl(this._self, this._then);

  final ABTestState _self;
  final $Res Function(ABTestState) _then;

/// Create a copy of ABTestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? results = null,Object? userAssignments = null,Object? isLoading = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as Map<String, ABTestResult>,userAssignments: null == userAssignments ? _self.userAssignments : userAssignments // ignore: cast_nullable_to_non_nullable
as Map<String, TestVariant>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ABTestState].
extension ABTestStatePatterns on ABTestState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ABTestState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ABTestState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ABTestState value)  $default,){
final _that = this;
switch (_that) {
case _ABTestState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ABTestState value)?  $default,){
final _that = this;
switch (_that) {
case _ABTestState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, ABTestResult> results,  Map<String, TestVariant> userAssignments,  bool isLoading,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ABTestState() when $default != null:
return $default(_that.results,_that.userAssignments,_that.isLoading,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, ABTestResult> results,  Map<String, TestVariant> userAssignments,  bool isLoading,  String? error)  $default,) {final _that = this;
switch (_that) {
case _ABTestState():
return $default(_that.results,_that.userAssignments,_that.isLoading,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, ABTestResult> results,  Map<String, TestVariant> userAssignments,  bool isLoading,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _ABTestState() when $default != null:
return $default(_that.results,_that.userAssignments,_that.isLoading,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _ABTestState implements ABTestState {
  const _ABTestState({final  Map<String, ABTestResult> results = const {}, final  Map<String, TestVariant> userAssignments = const {}, this.isLoading = false, this.error}): _results = results,_userAssignments = userAssignments;
  

 final  Map<String, ABTestResult> _results;
@override@JsonKey() Map<String, ABTestResult> get results {
  if (_results is EqualUnmodifiableMapView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_results);
}

 final  Map<String, TestVariant> _userAssignments;
@override@JsonKey() Map<String, TestVariant> get userAssignments {
  if (_userAssignments is EqualUnmodifiableMapView) return _userAssignments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_userAssignments);
}

@override@JsonKey() final  bool isLoading;
@override final  String? error;

/// Create a copy of ABTestState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ABTestStateCopyWith<_ABTestState> get copyWith => __$ABTestStateCopyWithImpl<_ABTestState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ABTestState&&const DeepCollectionEquality().equals(other._results, _results)&&const DeepCollectionEquality().equals(other._userAssignments, _userAssignments)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_results),const DeepCollectionEquality().hash(_userAssignments),isLoading,error);

@override
String toString() {
  return 'ABTestState(results: $results, userAssignments: $userAssignments, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class _$ABTestStateCopyWith<$Res> implements $ABTestStateCopyWith<$Res> {
  factory _$ABTestStateCopyWith(_ABTestState value, $Res Function(_ABTestState) _then) = __$ABTestStateCopyWithImpl;
@override @useResult
$Res call({
 Map<String, ABTestResult> results, Map<String, TestVariant> userAssignments, bool isLoading, String? error
});




}
/// @nodoc
class __$ABTestStateCopyWithImpl<$Res>
    implements _$ABTestStateCopyWith<$Res> {
  __$ABTestStateCopyWithImpl(this._self, this._then);

  final _ABTestState _self;
  final $Res Function(_ABTestState) _then;

/// Create a copy of ABTestState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? results = null,Object? userAssignments = null,Object? isLoading = null,Object? error = freezed,}) {
  return _then(_ABTestState(
results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as Map<String, ABTestResult>,userAssignments: null == userAssignments ? _self._userAssignments : userAssignments // ignore: cast_nullable_to_non_nullable
as Map<String, TestVariant>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
