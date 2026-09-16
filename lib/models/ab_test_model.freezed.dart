// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ab_test_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ABTestConfig _$ABTestConfigFromJson(Map<String, dynamic> json) {
  return _ABTestConfig.fromJson(json);
}

/// @nodoc
mixin _$ABTestConfig {
  String get testId =>
      throw _privateConstructorUsedError; // 'ab_test_paywall_v1'
  String get testName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<TestVariant> get variants => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  Map<String, double> get trafficAllocation =>
      throw _privateConstructorUsedError; // {"control": 0.5, "variant_b": 0.3, "variant_c": 0.2}
  Map<String, dynamic> get config => throw _privateConstructorUsedError;

  /// Serializes this ABTestConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ABTestConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ABTestConfigCopyWith<ABTestConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ABTestConfigCopyWith<$Res> {
  factory $ABTestConfigCopyWith(
    ABTestConfig value,
    $Res Function(ABTestConfig) then,
  ) = _$ABTestConfigCopyWithImpl<$Res, ABTestConfig>;
  @useResult
  $Res call({
    String testId,
    String testName,
    String description,
    List<TestVariant> variants,
    DateTime startDate,
    DateTime? endDate,
    bool isActive,
    Map<String, double> trafficAllocation,
    Map<String, dynamic> config,
  });
}

/// @nodoc
class _$ABTestConfigCopyWithImpl<$Res, $Val extends ABTestConfig>
    implements $ABTestConfigCopyWith<$Res> {
  _$ABTestConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ABTestConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testId = null,
    Object? testName = null,
    Object? description = null,
    Object? variants = null,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? isActive = null,
    Object? trafficAllocation = null,
    Object? config = null,
  }) {
    return _then(
      _value.copyWith(
            testId: null == testId
                ? _value.testId
                : testId // ignore: cast_nullable_to_non_nullable
                      as String,
            testName: null == testName
                ? _value.testName
                : testName // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            variants: null == variants
                ? _value.variants
                : variants // ignore: cast_nullable_to_non_nullable
                      as List<TestVariant>,
            startDate: null == startDate
                ? _value.startDate
                : startDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            endDate: freezed == endDate
                ? _value.endDate
                : endDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            trafficAllocation: null == trafficAllocation
                ? _value.trafficAllocation
                : trafficAllocation // ignore: cast_nullable_to_non_nullable
                      as Map<String, double>,
            config: null == config
                ? _value.config
                : config // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ABTestConfigImplCopyWith<$Res>
    implements $ABTestConfigCopyWith<$Res> {
  factory _$$ABTestConfigImplCopyWith(
    _$ABTestConfigImpl value,
    $Res Function(_$ABTestConfigImpl) then,
  ) = __$$ABTestConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String testId,
    String testName,
    String description,
    List<TestVariant> variants,
    DateTime startDate,
    DateTime? endDate,
    bool isActive,
    Map<String, double> trafficAllocation,
    Map<String, dynamic> config,
  });
}

/// @nodoc
class __$$ABTestConfigImplCopyWithImpl<$Res>
    extends _$ABTestConfigCopyWithImpl<$Res, _$ABTestConfigImpl>
    implements _$$ABTestConfigImplCopyWith<$Res> {
  __$$ABTestConfigImplCopyWithImpl(
    _$ABTestConfigImpl _value,
    $Res Function(_$ABTestConfigImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ABTestConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testId = null,
    Object? testName = null,
    Object? description = null,
    Object? variants = null,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? isActive = null,
    Object? trafficAllocation = null,
    Object? config = null,
  }) {
    return _then(
      _$ABTestConfigImpl(
        testId: null == testId
            ? _value.testId
            : testId // ignore: cast_nullable_to_non_nullable
                  as String,
        testName: null == testName
            ? _value.testName
            : testName // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        variants: null == variants
            ? _value._variants
            : variants // ignore: cast_nullable_to_non_nullable
                  as List<TestVariant>,
        startDate: null == startDate
            ? _value.startDate
            : startDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        endDate: freezed == endDate
            ? _value.endDate
            : endDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        trafficAllocation: null == trafficAllocation
            ? _value._trafficAllocation
            : trafficAllocation // ignore: cast_nullable_to_non_nullable
                  as Map<String, double>,
        config: null == config
            ? _value._config
            : config // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ABTestConfigImpl implements _ABTestConfig {
  const _$ABTestConfigImpl({
    required this.testId,
    required this.testName,
    required this.description,
    required final List<TestVariant> variants,
    required this.startDate,
    this.endDate,
    required this.isActive,
    required final Map<String, double> trafficAllocation,
    required final Map<String, dynamic> config,
  }) : _variants = variants,
       _trafficAllocation = trafficAllocation,
       _config = config;

  factory _$ABTestConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$ABTestConfigImplFromJson(json);

  @override
  final String testId;
  // 'ab_test_paywall_v1'
  @override
  final String testName;
  @override
  final String description;
  final List<TestVariant> _variants;
  @override
  List<TestVariant> get variants {
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variants);
  }

  @override
  final DateTime startDate;
  @override
  final DateTime? endDate;
  @override
  final bool isActive;
  final Map<String, double> _trafficAllocation;
  @override
  Map<String, double> get trafficAllocation {
    if (_trafficAllocation is EqualUnmodifiableMapView)
      return _trafficAllocation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_trafficAllocation);
  }

  // {"control": 0.5, "variant_b": 0.3, "variant_c": 0.2}
  final Map<String, dynamic> _config;
  // {"control": 0.5, "variant_b": 0.3, "variant_c": 0.2}
  @override
  Map<String, dynamic> get config {
    if (_config is EqualUnmodifiableMapView) return _config;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_config);
  }

  @override
  String toString() {
    return 'ABTestConfig(testId: $testId, testName: $testName, description: $description, variants: $variants, startDate: $startDate, endDate: $endDate, isActive: $isActive, trafficAllocation: $trafficAllocation, config: $config)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ABTestConfigImpl &&
            (identical(other.testId, testId) || other.testId == testId) &&
            (identical(other.testName, testName) ||
                other.testName == testName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._variants, _variants) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality().equals(
              other._trafficAllocation,
              _trafficAllocation,
            ) &&
            const DeepCollectionEquality().equals(other._config, _config));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    testId,
    testName,
    description,
    const DeepCollectionEquality().hash(_variants),
    startDate,
    endDate,
    isActive,
    const DeepCollectionEquality().hash(_trafficAllocation),
    const DeepCollectionEquality().hash(_config),
  );

  /// Create a copy of ABTestConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ABTestConfigImplCopyWith<_$ABTestConfigImpl> get copyWith =>
      __$$ABTestConfigImplCopyWithImpl<_$ABTestConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ABTestConfigImplToJson(this);
  }
}

abstract class _ABTestConfig implements ABTestConfig {
  const factory _ABTestConfig({
    required final String testId,
    required final String testName,
    required final String description,
    required final List<TestVariant> variants,
    required final DateTime startDate,
    final DateTime? endDate,
    required final bool isActive,
    required final Map<String, double> trafficAllocation,
    required final Map<String, dynamic> config,
  }) = _$ABTestConfigImpl;

  factory _ABTestConfig.fromJson(Map<String, dynamic> json) =
      _$ABTestConfigImpl.fromJson;

  @override
  String get testId; // 'ab_test_paywall_v1'
  @override
  String get testName;
  @override
  String get description;
  @override
  List<TestVariant> get variants;
  @override
  DateTime get startDate;
  @override
  DateTime? get endDate;
  @override
  bool get isActive;
  @override
  Map<String, double> get trafficAllocation; // {"control": 0.5, "variant_b": 0.3, "variant_c": 0.2}
  @override
  Map<String, dynamic> get config;

  /// Create a copy of ABTestConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ABTestConfigImplCopyWith<_$ABTestConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ABTestAssignment _$ABTestAssignmentFromJson(Map<String, dynamic> json) {
  return _ABTestAssignment.fromJson(json);
}

/// @nodoc
mixin _$ABTestAssignment {
  String get userId => throw _privateConstructorUsedError;
  String get testId => throw _privateConstructorUsedError;
  TestVariant get assignedVariant => throw _privateConstructorUsedError;
  DateTime get assignedAt => throw _privateConstructorUsedError;
  bool get isSticky => throw _privateConstructorUsedError;

  /// Serializes this ABTestAssignment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ABTestAssignment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ABTestAssignmentCopyWith<ABTestAssignment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ABTestAssignmentCopyWith<$Res> {
  factory $ABTestAssignmentCopyWith(
    ABTestAssignment value,
    $Res Function(ABTestAssignment) then,
  ) = _$ABTestAssignmentCopyWithImpl<$Res, ABTestAssignment>;
  @useResult
  $Res call({
    String userId,
    String testId,
    TestVariant assignedVariant,
    DateTime assignedAt,
    bool isSticky,
  });
}

/// @nodoc
class _$ABTestAssignmentCopyWithImpl<$Res, $Val extends ABTestAssignment>
    implements $ABTestAssignmentCopyWith<$Res> {
  _$ABTestAssignmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ABTestAssignment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? testId = null,
    Object? assignedVariant = null,
    Object? assignedAt = null,
    Object? isSticky = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            testId: null == testId
                ? _value.testId
                : testId // ignore: cast_nullable_to_non_nullable
                      as String,
            assignedVariant: null == assignedVariant
                ? _value.assignedVariant
                : assignedVariant // ignore: cast_nullable_to_non_nullable
                      as TestVariant,
            assignedAt: null == assignedAt
                ? _value.assignedAt
                : assignedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            isSticky: null == isSticky
                ? _value.isSticky
                : isSticky // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ABTestAssignmentImplCopyWith<$Res>
    implements $ABTestAssignmentCopyWith<$Res> {
  factory _$$ABTestAssignmentImplCopyWith(
    _$ABTestAssignmentImpl value,
    $Res Function(_$ABTestAssignmentImpl) then,
  ) = __$$ABTestAssignmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    String testId,
    TestVariant assignedVariant,
    DateTime assignedAt,
    bool isSticky,
  });
}

/// @nodoc
class __$$ABTestAssignmentImplCopyWithImpl<$Res>
    extends _$ABTestAssignmentCopyWithImpl<$Res, _$ABTestAssignmentImpl>
    implements _$$ABTestAssignmentImplCopyWith<$Res> {
  __$$ABTestAssignmentImplCopyWithImpl(
    _$ABTestAssignmentImpl _value,
    $Res Function(_$ABTestAssignmentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ABTestAssignment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? testId = null,
    Object? assignedVariant = null,
    Object? assignedAt = null,
    Object? isSticky = null,
  }) {
    return _then(
      _$ABTestAssignmentImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        testId: null == testId
            ? _value.testId
            : testId // ignore: cast_nullable_to_non_nullable
                  as String,
        assignedVariant: null == assignedVariant
            ? _value.assignedVariant
            : assignedVariant // ignore: cast_nullable_to_non_nullable
                  as TestVariant,
        assignedAt: null == assignedAt
            ? _value.assignedAt
            : assignedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        isSticky: null == isSticky
            ? _value.isSticky
            : isSticky // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ABTestAssignmentImpl implements _ABTestAssignment {
  const _$ABTestAssignmentImpl({
    required this.userId,
    required this.testId,
    required this.assignedVariant,
    required this.assignedAt,
    required this.isSticky,
  });

  factory _$ABTestAssignmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ABTestAssignmentImplFromJson(json);

  @override
  final String userId;
  @override
  final String testId;
  @override
  final TestVariant assignedVariant;
  @override
  final DateTime assignedAt;
  @override
  final bool isSticky;

  @override
  String toString() {
    return 'ABTestAssignment(userId: $userId, testId: $testId, assignedVariant: $assignedVariant, assignedAt: $assignedAt, isSticky: $isSticky)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ABTestAssignmentImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.testId, testId) || other.testId == testId) &&
            (identical(other.assignedVariant, assignedVariant) ||
                other.assignedVariant == assignedVariant) &&
            (identical(other.assignedAt, assignedAt) ||
                other.assignedAt == assignedAt) &&
            (identical(other.isSticky, isSticky) ||
                other.isSticky == isSticky));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    testId,
    assignedVariant,
    assignedAt,
    isSticky,
  );

  /// Create a copy of ABTestAssignment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ABTestAssignmentImplCopyWith<_$ABTestAssignmentImpl> get copyWith =>
      __$$ABTestAssignmentImplCopyWithImpl<_$ABTestAssignmentImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ABTestAssignmentImplToJson(this);
  }
}

abstract class _ABTestAssignment implements ABTestAssignment {
  const factory _ABTestAssignment({
    required final String userId,
    required final String testId,
    required final TestVariant assignedVariant,
    required final DateTime assignedAt,
    required final bool isSticky,
  }) = _$ABTestAssignmentImpl;

  factory _ABTestAssignment.fromJson(Map<String, dynamic> json) =
      _$ABTestAssignmentImpl.fromJson;

  @override
  String get userId;
  @override
  String get testId;
  @override
  TestVariant get assignedVariant;
  @override
  DateTime get assignedAt;
  @override
  bool get isSticky;

  /// Create a copy of ABTestAssignment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ABTestAssignmentImplCopyWith<_$ABTestAssignmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ABTestEvent _$ABTestEventFromJson(Map<String, dynamic> json) {
  return _ABTestEvent.fromJson(json);
}

/// @nodoc
mixin _$ABTestEvent {
  String get userId => throw _privateConstructorUsedError;
  String get testId => throw _privateConstructorUsedError;
  TestVariant get variant => throw _privateConstructorUsedError;
  TestMetric get metric => throw _privateConstructorUsedError;
  int get value =>
      throw _privateConstructorUsedError; // impression:1, conversion:revenue_amount
  DateTime get eventTime => throw _privateConstructorUsedError;
  Map<String, dynamic>? get customData => throw _privateConstructorUsedError;

  /// Serializes this ABTestEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ABTestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ABTestEventCopyWith<ABTestEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ABTestEventCopyWith<$Res> {
  factory $ABTestEventCopyWith(
    ABTestEvent value,
    $Res Function(ABTestEvent) then,
  ) = _$ABTestEventCopyWithImpl<$Res, ABTestEvent>;
  @useResult
  $Res call({
    String userId,
    String testId,
    TestVariant variant,
    TestMetric metric,
    int value,
    DateTime eventTime,
    Map<String, dynamic>? customData,
  });
}

/// @nodoc
class _$ABTestEventCopyWithImpl<$Res, $Val extends ABTestEvent>
    implements $ABTestEventCopyWith<$Res> {
  _$ABTestEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ABTestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? testId = null,
    Object? variant = null,
    Object? metric = null,
    Object? value = null,
    Object? eventTime = null,
    Object? customData = freezed,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            testId: null == testId
                ? _value.testId
                : testId // ignore: cast_nullable_to_non_nullable
                      as String,
            variant: null == variant
                ? _value.variant
                : variant // ignore: cast_nullable_to_non_nullable
                      as TestVariant,
            metric: null == metric
                ? _value.metric
                : metric // ignore: cast_nullable_to_non_nullable
                      as TestMetric,
            value: null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                      as int,
            eventTime: null == eventTime
                ? _value.eventTime
                : eventTime // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            customData: freezed == customData
                ? _value.customData
                : customData // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ABTestEventImplCopyWith<$Res>
    implements $ABTestEventCopyWith<$Res> {
  factory _$$ABTestEventImplCopyWith(
    _$ABTestEventImpl value,
    $Res Function(_$ABTestEventImpl) then,
  ) = __$$ABTestEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    String testId,
    TestVariant variant,
    TestMetric metric,
    int value,
    DateTime eventTime,
    Map<String, dynamic>? customData,
  });
}

/// @nodoc
class __$$ABTestEventImplCopyWithImpl<$Res>
    extends _$ABTestEventCopyWithImpl<$Res, _$ABTestEventImpl>
    implements _$$ABTestEventImplCopyWith<$Res> {
  __$$ABTestEventImplCopyWithImpl(
    _$ABTestEventImpl _value,
    $Res Function(_$ABTestEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ABTestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? testId = null,
    Object? variant = null,
    Object? metric = null,
    Object? value = null,
    Object? eventTime = null,
    Object? customData = freezed,
  }) {
    return _then(
      _$ABTestEventImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        testId: null == testId
            ? _value.testId
            : testId // ignore: cast_nullable_to_non_nullable
                  as String,
        variant: null == variant
            ? _value.variant
            : variant // ignore: cast_nullable_to_non_nullable
                  as TestVariant,
        metric: null == metric
            ? _value.metric
            : metric // ignore: cast_nullable_to_non_nullable
                  as TestMetric,
        value: null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as int,
        eventTime: null == eventTime
            ? _value.eventTime
            : eventTime // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        customData: freezed == customData
            ? _value._customData
            : customData // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ABTestEventImpl implements _ABTestEvent {
  const _$ABTestEventImpl({
    required this.userId,
    required this.testId,
    required this.variant,
    required this.metric,
    required this.value,
    required this.eventTime,
    final Map<String, dynamic>? customData,
  }) : _customData = customData;

  factory _$ABTestEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$ABTestEventImplFromJson(json);

  @override
  final String userId;
  @override
  final String testId;
  @override
  final TestVariant variant;
  @override
  final TestMetric metric;
  @override
  final int value;
  // impression:1, conversion:revenue_amount
  @override
  final DateTime eventTime;
  final Map<String, dynamic>? _customData;
  @override
  Map<String, dynamic>? get customData {
    final value = _customData;
    if (value == null) return null;
    if (_customData is EqualUnmodifiableMapView) return _customData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ABTestEvent(userId: $userId, testId: $testId, variant: $variant, metric: $metric, value: $value, eventTime: $eventTime, customData: $customData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ABTestEventImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.testId, testId) || other.testId == testId) &&
            (identical(other.variant, variant) || other.variant == variant) &&
            (identical(other.metric, metric) || other.metric == metric) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.eventTime, eventTime) ||
                other.eventTime == eventTime) &&
            const DeepCollectionEquality().equals(
              other._customData,
              _customData,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    testId,
    variant,
    metric,
    value,
    eventTime,
    const DeepCollectionEquality().hash(_customData),
  );

  /// Create a copy of ABTestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ABTestEventImplCopyWith<_$ABTestEventImpl> get copyWith =>
      __$$ABTestEventImplCopyWithImpl<_$ABTestEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ABTestEventImplToJson(this);
  }
}

abstract class _ABTestEvent implements ABTestEvent {
  const factory _ABTestEvent({
    required final String userId,
    required final String testId,
    required final TestVariant variant,
    required final TestMetric metric,
    required final int value,
    required final DateTime eventTime,
    final Map<String, dynamic>? customData,
  }) = _$ABTestEventImpl;

  factory _ABTestEvent.fromJson(Map<String, dynamic> json) =
      _$ABTestEventImpl.fromJson;

  @override
  String get userId;
  @override
  String get testId;
  @override
  TestVariant get variant;
  @override
  TestMetric get metric;
  @override
  int get value; // impression:1, conversion:revenue_amount
  @override
  DateTime get eventTime;
  @override
  Map<String, dynamic>? get customData;

  /// Create a copy of ABTestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ABTestEventImplCopyWith<_$ABTestEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ABTestResult _$ABTestResultFromJson(Map<String, dynamic> json) {
  return _ABTestResult.fromJson(json);
}

/// @nodoc
mixin _$ABTestResult {
  String get testId => throw _privateConstructorUsedError;
  TestVariant get variant => throw _privateConstructorUsedError;
  int get impressions => throw _privateConstructorUsedError;
  int get conversions => throw _privateConstructorUsedError;
  double get conversionRate => throw _privateConstructorUsedError;
  int get totalRevenue => throw _privateConstructorUsedError;
  double get averageOrderValue => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ABTestResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ABTestResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ABTestResultCopyWith<ABTestResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ABTestResultCopyWith<$Res> {
  factory $ABTestResultCopyWith(
    ABTestResult value,
    $Res Function(ABTestResult) then,
  ) = _$ABTestResultCopyWithImpl<$Res, ABTestResult>;
  @useResult
  $Res call({
    String testId,
    TestVariant variant,
    int impressions,
    int conversions,
    double conversionRate,
    int totalRevenue,
    double averageOrderValue,
    DateTime updatedAt,
  });
}

/// @nodoc
class _$ABTestResultCopyWithImpl<$Res, $Val extends ABTestResult>
    implements $ABTestResultCopyWith<$Res> {
  _$ABTestResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ABTestResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testId = null,
    Object? variant = null,
    Object? impressions = null,
    Object? conversions = null,
    Object? conversionRate = null,
    Object? totalRevenue = null,
    Object? averageOrderValue = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            testId: null == testId
                ? _value.testId
                : testId // ignore: cast_nullable_to_non_nullable
                      as String,
            variant: null == variant
                ? _value.variant
                : variant // ignore: cast_nullable_to_non_nullable
                      as TestVariant,
            impressions: null == impressions
                ? _value.impressions
                : impressions // ignore: cast_nullable_to_non_nullable
                      as int,
            conversions: null == conversions
                ? _value.conversions
                : conversions // ignore: cast_nullable_to_non_nullable
                      as int,
            conversionRate: null == conversionRate
                ? _value.conversionRate
                : conversionRate // ignore: cast_nullable_to_non_nullable
                      as double,
            totalRevenue: null == totalRevenue
                ? _value.totalRevenue
                : totalRevenue // ignore: cast_nullable_to_non_nullable
                      as int,
            averageOrderValue: null == averageOrderValue
                ? _value.averageOrderValue
                : averageOrderValue // ignore: cast_nullable_to_non_nullable
                      as double,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ABTestResultImplCopyWith<$Res>
    implements $ABTestResultCopyWith<$Res> {
  factory _$$ABTestResultImplCopyWith(
    _$ABTestResultImpl value,
    $Res Function(_$ABTestResultImpl) then,
  ) = __$$ABTestResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String testId,
    TestVariant variant,
    int impressions,
    int conversions,
    double conversionRate,
    int totalRevenue,
    double averageOrderValue,
    DateTime updatedAt,
  });
}

/// @nodoc
class __$$ABTestResultImplCopyWithImpl<$Res>
    extends _$ABTestResultCopyWithImpl<$Res, _$ABTestResultImpl>
    implements _$$ABTestResultImplCopyWith<$Res> {
  __$$ABTestResultImplCopyWithImpl(
    _$ABTestResultImpl _value,
    $Res Function(_$ABTestResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ABTestResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testId = null,
    Object? variant = null,
    Object? impressions = null,
    Object? conversions = null,
    Object? conversionRate = null,
    Object? totalRevenue = null,
    Object? averageOrderValue = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$ABTestResultImpl(
        testId: null == testId
            ? _value.testId
            : testId // ignore: cast_nullable_to_non_nullable
                  as String,
        variant: null == variant
            ? _value.variant
            : variant // ignore: cast_nullable_to_non_nullable
                  as TestVariant,
        impressions: null == impressions
            ? _value.impressions
            : impressions // ignore: cast_nullable_to_non_nullable
                  as int,
        conversions: null == conversions
            ? _value.conversions
            : conversions // ignore: cast_nullable_to_non_nullable
                  as int,
        conversionRate: null == conversionRate
            ? _value.conversionRate
            : conversionRate // ignore: cast_nullable_to_non_nullable
                  as double,
        totalRevenue: null == totalRevenue
            ? _value.totalRevenue
            : totalRevenue // ignore: cast_nullable_to_non_nullable
                  as int,
        averageOrderValue: null == averageOrderValue
            ? _value.averageOrderValue
            : averageOrderValue // ignore: cast_nullable_to_non_nullable
                  as double,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ABTestResultImpl implements _ABTestResult {
  const _$ABTestResultImpl({
    required this.testId,
    required this.variant,
    required this.impressions,
    required this.conversions,
    required this.conversionRate,
    required this.totalRevenue,
    required this.averageOrderValue,
    required this.updatedAt,
  });

  factory _$ABTestResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ABTestResultImplFromJson(json);

  @override
  final String testId;
  @override
  final TestVariant variant;
  @override
  final int impressions;
  @override
  final int conversions;
  @override
  final double conversionRate;
  @override
  final int totalRevenue;
  @override
  final double averageOrderValue;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ABTestResult(testId: $testId, variant: $variant, impressions: $impressions, conversions: $conversions, conversionRate: $conversionRate, totalRevenue: $totalRevenue, averageOrderValue: $averageOrderValue, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ABTestResultImpl &&
            (identical(other.testId, testId) || other.testId == testId) &&
            (identical(other.variant, variant) || other.variant == variant) &&
            (identical(other.impressions, impressions) ||
                other.impressions == impressions) &&
            (identical(other.conversions, conversions) ||
                other.conversions == conversions) &&
            (identical(other.conversionRate, conversionRate) ||
                other.conversionRate == conversionRate) &&
            (identical(other.totalRevenue, totalRevenue) ||
                other.totalRevenue == totalRevenue) &&
            (identical(other.averageOrderValue, averageOrderValue) ||
                other.averageOrderValue == averageOrderValue) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    testId,
    variant,
    impressions,
    conversions,
    conversionRate,
    totalRevenue,
    averageOrderValue,
    updatedAt,
  );

  /// Create a copy of ABTestResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ABTestResultImplCopyWith<_$ABTestResultImpl> get copyWith =>
      __$$ABTestResultImplCopyWithImpl<_$ABTestResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ABTestResultImplToJson(this);
  }
}

abstract class _ABTestResult implements ABTestResult {
  const factory _ABTestResult({
    required final String testId,
    required final TestVariant variant,
    required final int impressions,
    required final int conversions,
    required final double conversionRate,
    required final int totalRevenue,
    required final double averageOrderValue,
    required final DateTime updatedAt,
  }) = _$ABTestResultImpl;

  factory _ABTestResult.fromJson(Map<String, dynamic> json) =
      _$ABTestResultImpl.fromJson;

  @override
  String get testId;
  @override
  TestVariant get variant;
  @override
  int get impressions;
  @override
  int get conversions;
  @override
  double get conversionRate;
  @override
  int get totalRevenue;
  @override
  double get averageOrderValue;
  @override
  DateTime get updatedAt;

  /// Create a copy of ABTestResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ABTestResultImplCopyWith<_$ABTestResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PopulationStats _$PopulationStatsFromJson(Map<String, dynamic> json) {
  return _PopulationStats.fromJson(json);
}

/// @nodoc
mixin _$PopulationStats {
  int get totalUsers => throw _privateConstructorUsedError;
  int get activeUsers => throw _privateConstructorUsedError;
  int get churned => throw _privateConstructorUsedError;
  double get churnRate => throw _privateConstructorUsedError;
  Map<String, int> get segmentDistribution =>
      throw _privateConstructorUsedError; // {newUser: 100, active: 500, vip: 50}
  DateTime get sampledAt => throw _privateConstructorUsedError;

  /// Serializes this PopulationStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PopulationStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PopulationStatsCopyWith<PopulationStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopulationStatsCopyWith<$Res> {
  factory $PopulationStatsCopyWith(
    PopulationStats value,
    $Res Function(PopulationStats) then,
  ) = _$PopulationStatsCopyWithImpl<$Res, PopulationStats>;
  @useResult
  $Res call({
    int totalUsers,
    int activeUsers,
    int churned,
    double churnRate,
    Map<String, int> segmentDistribution,
    DateTime sampledAt,
  });
}

/// @nodoc
class _$PopulationStatsCopyWithImpl<$Res, $Val extends PopulationStats>
    implements $PopulationStatsCopyWith<$Res> {
  _$PopulationStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PopulationStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalUsers = null,
    Object? activeUsers = null,
    Object? churned = null,
    Object? churnRate = null,
    Object? segmentDistribution = null,
    Object? sampledAt = null,
  }) {
    return _then(
      _value.copyWith(
            totalUsers: null == totalUsers
                ? _value.totalUsers
                : totalUsers // ignore: cast_nullable_to_non_nullable
                      as int,
            activeUsers: null == activeUsers
                ? _value.activeUsers
                : activeUsers // ignore: cast_nullable_to_non_nullable
                      as int,
            churned: null == churned
                ? _value.churned
                : churned // ignore: cast_nullable_to_non_nullable
                      as int,
            churnRate: null == churnRate
                ? _value.churnRate
                : churnRate // ignore: cast_nullable_to_non_nullable
                      as double,
            segmentDistribution: null == segmentDistribution
                ? _value.segmentDistribution
                : segmentDistribution // ignore: cast_nullable_to_non_nullable
                      as Map<String, int>,
            sampledAt: null == sampledAt
                ? _value.sampledAt
                : sampledAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PopulationStatsImplCopyWith<$Res>
    implements $PopulationStatsCopyWith<$Res> {
  factory _$$PopulationStatsImplCopyWith(
    _$PopulationStatsImpl value,
    $Res Function(_$PopulationStatsImpl) then,
  ) = __$$PopulationStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int totalUsers,
    int activeUsers,
    int churned,
    double churnRate,
    Map<String, int> segmentDistribution,
    DateTime sampledAt,
  });
}

/// @nodoc
class __$$PopulationStatsImplCopyWithImpl<$Res>
    extends _$PopulationStatsCopyWithImpl<$Res, _$PopulationStatsImpl>
    implements _$$PopulationStatsImplCopyWith<$Res> {
  __$$PopulationStatsImplCopyWithImpl(
    _$PopulationStatsImpl _value,
    $Res Function(_$PopulationStatsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PopulationStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalUsers = null,
    Object? activeUsers = null,
    Object? churned = null,
    Object? churnRate = null,
    Object? segmentDistribution = null,
    Object? sampledAt = null,
  }) {
    return _then(
      _$PopulationStatsImpl(
        totalUsers: null == totalUsers
            ? _value.totalUsers
            : totalUsers // ignore: cast_nullable_to_non_nullable
                  as int,
        activeUsers: null == activeUsers
            ? _value.activeUsers
            : activeUsers // ignore: cast_nullable_to_non_nullable
                  as int,
        churned: null == churned
            ? _value.churned
            : churned // ignore: cast_nullable_to_non_nullable
                  as int,
        churnRate: null == churnRate
            ? _value.churnRate
            : churnRate // ignore: cast_nullable_to_non_nullable
                  as double,
        segmentDistribution: null == segmentDistribution
            ? _value._segmentDistribution
            : segmentDistribution // ignore: cast_nullable_to_non_nullable
                  as Map<String, int>,
        sampledAt: null == sampledAt
            ? _value.sampledAt
            : sampledAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PopulationStatsImpl implements _PopulationStats {
  const _$PopulationStatsImpl({
    required this.totalUsers,
    required this.activeUsers,
    required this.churned,
    required this.churnRate,
    required final Map<String, int> segmentDistribution,
    required this.sampledAt,
  }) : _segmentDistribution = segmentDistribution;

  factory _$PopulationStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PopulationStatsImplFromJson(json);

  @override
  final int totalUsers;
  @override
  final int activeUsers;
  @override
  final int churned;
  @override
  final double churnRate;
  final Map<String, int> _segmentDistribution;
  @override
  Map<String, int> get segmentDistribution {
    if (_segmentDistribution is EqualUnmodifiableMapView)
      return _segmentDistribution;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_segmentDistribution);
  }

  // {newUser: 100, active: 500, vip: 50}
  @override
  final DateTime sampledAt;

  @override
  String toString() {
    return 'PopulationStats(totalUsers: $totalUsers, activeUsers: $activeUsers, churned: $churned, churnRate: $churnRate, segmentDistribution: $segmentDistribution, sampledAt: $sampledAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopulationStatsImpl &&
            (identical(other.totalUsers, totalUsers) ||
                other.totalUsers == totalUsers) &&
            (identical(other.activeUsers, activeUsers) ||
                other.activeUsers == activeUsers) &&
            (identical(other.churned, churned) || other.churned == churned) &&
            (identical(other.churnRate, churnRate) ||
                other.churnRate == churnRate) &&
            const DeepCollectionEquality().equals(
              other._segmentDistribution,
              _segmentDistribution,
            ) &&
            (identical(other.sampledAt, sampledAt) ||
                other.sampledAt == sampledAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    totalUsers,
    activeUsers,
    churned,
    churnRate,
    const DeepCollectionEquality().hash(_segmentDistribution),
    sampledAt,
  );

  /// Create a copy of PopulationStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PopulationStatsImplCopyWith<_$PopulationStatsImpl> get copyWith =>
      __$$PopulationStatsImplCopyWithImpl<_$PopulationStatsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PopulationStatsImplToJson(this);
  }
}

abstract class _PopulationStats implements PopulationStats {
  const factory _PopulationStats({
    required final int totalUsers,
    required final int activeUsers,
    required final int churned,
    required final double churnRate,
    required final Map<String, int> segmentDistribution,
    required final DateTime sampledAt,
  }) = _$PopulationStatsImpl;

  factory _PopulationStats.fromJson(Map<String, dynamic> json) =
      _$PopulationStatsImpl.fromJson;

  @override
  int get totalUsers;
  @override
  int get activeUsers;
  @override
  int get churned;
  @override
  double get churnRate;
  @override
  Map<String, int> get segmentDistribution; // {newUser: 100, active: 500, vip: 50}
  @override
  DateTime get sampledAt;

  /// Create a copy of PopulationStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PopulationStatsImplCopyWith<_$PopulationStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ABTestState {
  Map<String, ABTestResult> get results => throw _privateConstructorUsedError;
  Map<String, TestVariant> get userAssignments =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of ABTestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ABTestStateCopyWith<ABTestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ABTestStateCopyWith<$Res> {
  factory $ABTestStateCopyWith(
    ABTestState value,
    $Res Function(ABTestState) then,
  ) = _$ABTestStateCopyWithImpl<$Res, ABTestState>;
  @useResult
  $Res call({
    Map<String, ABTestResult> results,
    Map<String, TestVariant> userAssignments,
    bool isLoading,
    String? error,
  });
}

/// @nodoc
class _$ABTestStateCopyWithImpl<$Res, $Val extends ABTestState>
    implements $ABTestStateCopyWith<$Res> {
  _$ABTestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ABTestState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? userAssignments = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            results: null == results
                ? _value.results
                : results // ignore: cast_nullable_to_non_nullable
                      as Map<String, ABTestResult>,
            userAssignments: null == userAssignments
                ? _value.userAssignments
                : userAssignments // ignore: cast_nullable_to_non_nullable
                      as Map<String, TestVariant>,
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ABTestStateImplCopyWith<$Res>
    implements $ABTestStateCopyWith<$Res> {
  factory _$$ABTestStateImplCopyWith(
    _$ABTestStateImpl value,
    $Res Function(_$ABTestStateImpl) then,
  ) = __$$ABTestStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Map<String, ABTestResult> results,
    Map<String, TestVariant> userAssignments,
    bool isLoading,
    String? error,
  });
}

/// @nodoc
class __$$ABTestStateImplCopyWithImpl<$Res>
    extends _$ABTestStateCopyWithImpl<$Res, _$ABTestStateImpl>
    implements _$$ABTestStateImplCopyWith<$Res> {
  __$$ABTestStateImplCopyWithImpl(
    _$ABTestStateImpl _value,
    $Res Function(_$ABTestStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ABTestState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? userAssignments = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(
      _$ABTestStateImpl(
        results: null == results
            ? _value._results
            : results // ignore: cast_nullable_to_non_nullable
                  as Map<String, ABTestResult>,
        userAssignments: null == userAssignments
            ? _value._userAssignments
            : userAssignments // ignore: cast_nullable_to_non_nullable
                  as Map<String, TestVariant>,
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$ABTestStateImpl implements _ABTestState {
  const _$ABTestStateImpl({
    final Map<String, ABTestResult> results = const {},
    final Map<String, TestVariant> userAssignments = const {},
    this.isLoading = false,
    this.error,
  }) : _results = results,
       _userAssignments = userAssignments;

  final Map<String, ABTestResult> _results;
  @override
  @JsonKey()
  Map<String, ABTestResult> get results {
    if (_results is EqualUnmodifiableMapView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_results);
  }

  final Map<String, TestVariant> _userAssignments;
  @override
  @JsonKey()
  Map<String, TestVariant> get userAssignments {
    if (_userAssignments is EqualUnmodifiableMapView) return _userAssignments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_userAssignments);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'ABTestState(results: $results, userAssignments: $userAssignments, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ABTestStateImpl &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            const DeepCollectionEquality().equals(
              other._userAssignments,
              _userAssignments,
            ) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_results),
    const DeepCollectionEquality().hash(_userAssignments),
    isLoading,
    error,
  );

  /// Create a copy of ABTestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ABTestStateImplCopyWith<_$ABTestStateImpl> get copyWith =>
      __$$ABTestStateImplCopyWithImpl<_$ABTestStateImpl>(this, _$identity);
}

abstract class _ABTestState implements ABTestState {
  const factory _ABTestState({
    final Map<String, ABTestResult> results,
    final Map<String, TestVariant> userAssignments,
    final bool isLoading,
    final String? error,
  }) = _$ABTestStateImpl;

  @override
  Map<String, ABTestResult> get results;
  @override
  Map<String, TestVariant> get userAssignments;
  @override
  bool get isLoading;
  @override
  String? get error;

  /// Create a copy of ABTestState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ABTestStateImplCopyWith<_$ABTestStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
