// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cloud_functions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CloudFunctionConfig _$CloudFunctionConfigFromJson(Map<String, dynamic> json) {
  return _CloudFunctionConfig.fromJson(json);
}

/// @nodoc
mixin _$CloudFunctionConfig {
  bool get enableAutoReportGeneration => throw _privateConstructorUsedError;
  bool get enableSegmentationUpdates => throw _privateConstructorUsedError;
  bool get enableCohortAnalysis => throw _privateConstructorUsedError;
  bool get enableNotifications => throw _privateConstructorUsedError;
  int get reportGenerationIntervalDays => throw _privateConstructorUsedError;
  int get segmentationUpdateIntervalHours => throw _privateConstructorUsedError;
  int get cohortAnalysisIntervalDays => throw _privateConstructorUsedError;
  Map<String, dynamic> get notificationConfig =>
      throw _privateConstructorUsedError;
  bool get enableChurnPrediction => throw _privateConstructorUsedError;

  /// Serializes this CloudFunctionConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CloudFunctionConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CloudFunctionConfigCopyWith<CloudFunctionConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CloudFunctionConfigCopyWith<$Res> {
  factory $CloudFunctionConfigCopyWith(
    CloudFunctionConfig value,
    $Res Function(CloudFunctionConfig) then,
  ) = _$CloudFunctionConfigCopyWithImpl<$Res, CloudFunctionConfig>;
  @useResult
  $Res call({
    bool enableAutoReportGeneration,
    bool enableSegmentationUpdates,
    bool enableCohortAnalysis,
    bool enableNotifications,
    int reportGenerationIntervalDays,
    int segmentationUpdateIntervalHours,
    int cohortAnalysisIntervalDays,
    Map<String, dynamic> notificationConfig,
    bool enableChurnPrediction,
  });
}

/// @nodoc
class _$CloudFunctionConfigCopyWithImpl<$Res, $Val extends CloudFunctionConfig>
    implements $CloudFunctionConfigCopyWith<$Res> {
  _$CloudFunctionConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CloudFunctionConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enableAutoReportGeneration = null,
    Object? enableSegmentationUpdates = null,
    Object? enableCohortAnalysis = null,
    Object? enableNotifications = null,
    Object? reportGenerationIntervalDays = null,
    Object? segmentationUpdateIntervalHours = null,
    Object? cohortAnalysisIntervalDays = null,
    Object? notificationConfig = null,
    Object? enableChurnPrediction = null,
  }) {
    return _then(
      _value.copyWith(
            enableAutoReportGeneration: null == enableAutoReportGeneration
                ? _value.enableAutoReportGeneration
                : enableAutoReportGeneration // ignore: cast_nullable_to_non_nullable
                      as bool,
            enableSegmentationUpdates: null == enableSegmentationUpdates
                ? _value.enableSegmentationUpdates
                : enableSegmentationUpdates // ignore: cast_nullable_to_non_nullable
                      as bool,
            enableCohortAnalysis: null == enableCohortAnalysis
                ? _value.enableCohortAnalysis
                : enableCohortAnalysis // ignore: cast_nullable_to_non_nullable
                      as bool,
            enableNotifications: null == enableNotifications
                ? _value.enableNotifications
                : enableNotifications // ignore: cast_nullable_to_non_nullable
                      as bool,
            reportGenerationIntervalDays: null == reportGenerationIntervalDays
                ? _value.reportGenerationIntervalDays
                : reportGenerationIntervalDays // ignore: cast_nullable_to_non_nullable
                      as int,
            segmentationUpdateIntervalHours:
                null == segmentationUpdateIntervalHours
                ? _value.segmentationUpdateIntervalHours
                : segmentationUpdateIntervalHours // ignore: cast_nullable_to_non_nullable
                      as int,
            cohortAnalysisIntervalDays: null == cohortAnalysisIntervalDays
                ? _value.cohortAnalysisIntervalDays
                : cohortAnalysisIntervalDays // ignore: cast_nullable_to_non_nullable
                      as int,
            notificationConfig: null == notificationConfig
                ? _value.notificationConfig
                : notificationConfig // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
            enableChurnPrediction: null == enableChurnPrediction
                ? _value.enableChurnPrediction
                : enableChurnPrediction // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CloudFunctionConfigImplCopyWith<$Res>
    implements $CloudFunctionConfigCopyWith<$Res> {
  factory _$$CloudFunctionConfigImplCopyWith(
    _$CloudFunctionConfigImpl value,
    $Res Function(_$CloudFunctionConfigImpl) then,
  ) = __$$CloudFunctionConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool enableAutoReportGeneration,
    bool enableSegmentationUpdates,
    bool enableCohortAnalysis,
    bool enableNotifications,
    int reportGenerationIntervalDays,
    int segmentationUpdateIntervalHours,
    int cohortAnalysisIntervalDays,
    Map<String, dynamic> notificationConfig,
    bool enableChurnPrediction,
  });
}

/// @nodoc
class __$$CloudFunctionConfigImplCopyWithImpl<$Res>
    extends _$CloudFunctionConfigCopyWithImpl<$Res, _$CloudFunctionConfigImpl>
    implements _$$CloudFunctionConfigImplCopyWith<$Res> {
  __$$CloudFunctionConfigImplCopyWithImpl(
    _$CloudFunctionConfigImpl _value,
    $Res Function(_$CloudFunctionConfigImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CloudFunctionConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enableAutoReportGeneration = null,
    Object? enableSegmentationUpdates = null,
    Object? enableCohortAnalysis = null,
    Object? enableNotifications = null,
    Object? reportGenerationIntervalDays = null,
    Object? segmentationUpdateIntervalHours = null,
    Object? cohortAnalysisIntervalDays = null,
    Object? notificationConfig = null,
    Object? enableChurnPrediction = null,
  }) {
    return _then(
      _$CloudFunctionConfigImpl(
        enableAutoReportGeneration: null == enableAutoReportGeneration
            ? _value.enableAutoReportGeneration
            : enableAutoReportGeneration // ignore: cast_nullable_to_non_nullable
                  as bool,
        enableSegmentationUpdates: null == enableSegmentationUpdates
            ? _value.enableSegmentationUpdates
            : enableSegmentationUpdates // ignore: cast_nullable_to_non_nullable
                  as bool,
        enableCohortAnalysis: null == enableCohortAnalysis
            ? _value.enableCohortAnalysis
            : enableCohortAnalysis // ignore: cast_nullable_to_non_nullable
                  as bool,
        enableNotifications: null == enableNotifications
            ? _value.enableNotifications
            : enableNotifications // ignore: cast_nullable_to_non_nullable
                  as bool,
        reportGenerationIntervalDays: null == reportGenerationIntervalDays
            ? _value.reportGenerationIntervalDays
            : reportGenerationIntervalDays // ignore: cast_nullable_to_non_nullable
                  as int,
        segmentationUpdateIntervalHours: null == segmentationUpdateIntervalHours
            ? _value.segmentationUpdateIntervalHours
            : segmentationUpdateIntervalHours // ignore: cast_nullable_to_non_nullable
                  as int,
        cohortAnalysisIntervalDays: null == cohortAnalysisIntervalDays
            ? _value.cohortAnalysisIntervalDays
            : cohortAnalysisIntervalDays // ignore: cast_nullable_to_non_nullable
                  as int,
        notificationConfig: null == notificationConfig
            ? _value._notificationConfig
            : notificationConfig // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        enableChurnPrediction: null == enableChurnPrediction
            ? _value.enableChurnPrediction
            : enableChurnPrediction // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CloudFunctionConfigImpl implements _CloudFunctionConfig {
  const _$CloudFunctionConfigImpl({
    required this.enableAutoReportGeneration,
    required this.enableSegmentationUpdates,
    required this.enableCohortAnalysis,
    required this.enableNotifications,
    required this.reportGenerationIntervalDays,
    required this.segmentationUpdateIntervalHours,
    required this.cohortAnalysisIntervalDays,
    required final Map<String, dynamic> notificationConfig,
    required this.enableChurnPrediction,
  }) : _notificationConfig = notificationConfig;

  factory _$CloudFunctionConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$CloudFunctionConfigImplFromJson(json);

  @override
  final bool enableAutoReportGeneration;
  @override
  final bool enableSegmentationUpdates;
  @override
  final bool enableCohortAnalysis;
  @override
  final bool enableNotifications;
  @override
  final int reportGenerationIntervalDays;
  @override
  final int segmentationUpdateIntervalHours;
  @override
  final int cohortAnalysisIntervalDays;
  final Map<String, dynamic> _notificationConfig;
  @override
  Map<String, dynamic> get notificationConfig {
    if (_notificationConfig is EqualUnmodifiableMapView)
      return _notificationConfig;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_notificationConfig);
  }

  @override
  final bool enableChurnPrediction;

  @override
  String toString() {
    return 'CloudFunctionConfig(enableAutoReportGeneration: $enableAutoReportGeneration, enableSegmentationUpdates: $enableSegmentationUpdates, enableCohortAnalysis: $enableCohortAnalysis, enableNotifications: $enableNotifications, reportGenerationIntervalDays: $reportGenerationIntervalDays, segmentationUpdateIntervalHours: $segmentationUpdateIntervalHours, cohortAnalysisIntervalDays: $cohortAnalysisIntervalDays, notificationConfig: $notificationConfig, enableChurnPrediction: $enableChurnPrediction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CloudFunctionConfigImpl &&
            (identical(
                  other.enableAutoReportGeneration,
                  enableAutoReportGeneration,
                ) ||
                other.enableAutoReportGeneration ==
                    enableAutoReportGeneration) &&
            (identical(
                  other.enableSegmentationUpdates,
                  enableSegmentationUpdates,
                ) ||
                other.enableSegmentationUpdates == enableSegmentationUpdates) &&
            (identical(other.enableCohortAnalysis, enableCohortAnalysis) ||
                other.enableCohortAnalysis == enableCohortAnalysis) &&
            (identical(other.enableNotifications, enableNotifications) ||
                other.enableNotifications == enableNotifications) &&
            (identical(
                  other.reportGenerationIntervalDays,
                  reportGenerationIntervalDays,
                ) ||
                other.reportGenerationIntervalDays ==
                    reportGenerationIntervalDays) &&
            (identical(
                  other.segmentationUpdateIntervalHours,
                  segmentationUpdateIntervalHours,
                ) ||
                other.segmentationUpdateIntervalHours ==
                    segmentationUpdateIntervalHours) &&
            (identical(
                  other.cohortAnalysisIntervalDays,
                  cohortAnalysisIntervalDays,
                ) ||
                other.cohortAnalysisIntervalDays ==
                    cohortAnalysisIntervalDays) &&
            const DeepCollectionEquality().equals(
              other._notificationConfig,
              _notificationConfig,
            ) &&
            (identical(other.enableChurnPrediction, enableChurnPrediction) ||
                other.enableChurnPrediction == enableChurnPrediction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    enableAutoReportGeneration,
    enableSegmentationUpdates,
    enableCohortAnalysis,
    enableNotifications,
    reportGenerationIntervalDays,
    segmentationUpdateIntervalHours,
    cohortAnalysisIntervalDays,
    const DeepCollectionEquality().hash(_notificationConfig),
    enableChurnPrediction,
  );

  /// Create a copy of CloudFunctionConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CloudFunctionConfigImplCopyWith<_$CloudFunctionConfigImpl> get copyWith =>
      __$$CloudFunctionConfigImplCopyWithImpl<_$CloudFunctionConfigImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CloudFunctionConfigImplToJson(this);
  }
}

abstract class _CloudFunctionConfig implements CloudFunctionConfig {
  const factory _CloudFunctionConfig({
    required final bool enableAutoReportGeneration,
    required final bool enableSegmentationUpdates,
    required final bool enableCohortAnalysis,
    required final bool enableNotifications,
    required final int reportGenerationIntervalDays,
    required final int segmentationUpdateIntervalHours,
    required final int cohortAnalysisIntervalDays,
    required final Map<String, dynamic> notificationConfig,
    required final bool enableChurnPrediction,
  }) = _$CloudFunctionConfigImpl;

  factory _CloudFunctionConfig.fromJson(Map<String, dynamic> json) =
      _$CloudFunctionConfigImpl.fromJson;

  @override
  bool get enableAutoReportGeneration;
  @override
  bool get enableSegmentationUpdates;
  @override
  bool get enableCohortAnalysis;
  @override
  bool get enableNotifications;
  @override
  int get reportGenerationIntervalDays;
  @override
  int get segmentationUpdateIntervalHours;
  @override
  int get cohortAnalysisIntervalDays;
  @override
  Map<String, dynamic> get notificationConfig;
  @override
  bool get enableChurnPrediction;

  /// Create a copy of CloudFunctionConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CloudFunctionConfigImplCopyWith<_$CloudFunctionConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SegmentationResult _$SegmentationResultFromJson(Map<String, dynamic> json) {
  return _SegmentationResult.fromJson(json);
}

/// @nodoc
mixin _$SegmentationResult {
  String get userId => throw _privateConstructorUsedError;
  String get previousSegment => throw _privateConstructorUsedError;
  String get newSegment => throw _privateConstructorUsedError;
  int get engagementScore => throw _privateConstructorUsedError;
  int get retentionScore => throw _privateConstructorUsedError;
  double get churnRiskScore => throw _privateConstructorUsedError;
  DateTime get analyzedAt => throw _privateConstructorUsedError;

  /// Serializes this SegmentationResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SegmentationResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SegmentationResultCopyWith<SegmentationResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SegmentationResultCopyWith<$Res> {
  factory $SegmentationResultCopyWith(
    SegmentationResult value,
    $Res Function(SegmentationResult) then,
  ) = _$SegmentationResultCopyWithImpl<$Res, SegmentationResult>;
  @useResult
  $Res call({
    String userId,
    String previousSegment,
    String newSegment,
    int engagementScore,
    int retentionScore,
    double churnRiskScore,
    DateTime analyzedAt,
  });
}

/// @nodoc
class _$SegmentationResultCopyWithImpl<$Res, $Val extends SegmentationResult>
    implements $SegmentationResultCopyWith<$Res> {
  _$SegmentationResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SegmentationResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? previousSegment = null,
    Object? newSegment = null,
    Object? engagementScore = null,
    Object? retentionScore = null,
    Object? churnRiskScore = null,
    Object? analyzedAt = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            previousSegment: null == previousSegment
                ? _value.previousSegment
                : previousSegment // ignore: cast_nullable_to_non_nullable
                      as String,
            newSegment: null == newSegment
                ? _value.newSegment
                : newSegment // ignore: cast_nullable_to_non_nullable
                      as String,
            engagementScore: null == engagementScore
                ? _value.engagementScore
                : engagementScore // ignore: cast_nullable_to_non_nullable
                      as int,
            retentionScore: null == retentionScore
                ? _value.retentionScore
                : retentionScore // ignore: cast_nullable_to_non_nullable
                      as int,
            churnRiskScore: null == churnRiskScore
                ? _value.churnRiskScore
                : churnRiskScore // ignore: cast_nullable_to_non_nullable
                      as double,
            analyzedAt: null == analyzedAt
                ? _value.analyzedAt
                : analyzedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SegmentationResultImplCopyWith<$Res>
    implements $SegmentationResultCopyWith<$Res> {
  factory _$$SegmentationResultImplCopyWith(
    _$SegmentationResultImpl value,
    $Res Function(_$SegmentationResultImpl) then,
  ) = __$$SegmentationResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    String previousSegment,
    String newSegment,
    int engagementScore,
    int retentionScore,
    double churnRiskScore,
    DateTime analyzedAt,
  });
}

/// @nodoc
class __$$SegmentationResultImplCopyWithImpl<$Res>
    extends _$SegmentationResultCopyWithImpl<$Res, _$SegmentationResultImpl>
    implements _$$SegmentationResultImplCopyWith<$Res> {
  __$$SegmentationResultImplCopyWithImpl(
    _$SegmentationResultImpl _value,
    $Res Function(_$SegmentationResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SegmentationResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? previousSegment = null,
    Object? newSegment = null,
    Object? engagementScore = null,
    Object? retentionScore = null,
    Object? churnRiskScore = null,
    Object? analyzedAt = null,
  }) {
    return _then(
      _$SegmentationResultImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        previousSegment: null == previousSegment
            ? _value.previousSegment
            : previousSegment // ignore: cast_nullable_to_non_nullable
                  as String,
        newSegment: null == newSegment
            ? _value.newSegment
            : newSegment // ignore: cast_nullable_to_non_nullable
                  as String,
        engagementScore: null == engagementScore
            ? _value.engagementScore
            : engagementScore // ignore: cast_nullable_to_non_nullable
                  as int,
        retentionScore: null == retentionScore
            ? _value.retentionScore
            : retentionScore // ignore: cast_nullable_to_non_nullable
                  as int,
        churnRiskScore: null == churnRiskScore
            ? _value.churnRiskScore
            : churnRiskScore // ignore: cast_nullable_to_non_nullable
                  as double,
        analyzedAt: null == analyzedAt
            ? _value.analyzedAt
            : analyzedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SegmentationResultImpl implements _SegmentationResult {
  const _$SegmentationResultImpl({
    required this.userId,
    required this.previousSegment,
    required this.newSegment,
    required this.engagementScore,
    required this.retentionScore,
    required this.churnRiskScore,
    required this.analyzedAt,
  });

  factory _$SegmentationResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SegmentationResultImplFromJson(json);

  @override
  final String userId;
  @override
  final String previousSegment;
  @override
  final String newSegment;
  @override
  final int engagementScore;
  @override
  final int retentionScore;
  @override
  final double churnRiskScore;
  @override
  final DateTime analyzedAt;

  @override
  String toString() {
    return 'SegmentationResult(userId: $userId, previousSegment: $previousSegment, newSegment: $newSegment, engagementScore: $engagementScore, retentionScore: $retentionScore, churnRiskScore: $churnRiskScore, analyzedAt: $analyzedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SegmentationResultImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.previousSegment, previousSegment) ||
                other.previousSegment == previousSegment) &&
            (identical(other.newSegment, newSegment) ||
                other.newSegment == newSegment) &&
            (identical(other.engagementScore, engagementScore) ||
                other.engagementScore == engagementScore) &&
            (identical(other.retentionScore, retentionScore) ||
                other.retentionScore == retentionScore) &&
            (identical(other.churnRiskScore, churnRiskScore) ||
                other.churnRiskScore == churnRiskScore) &&
            (identical(other.analyzedAt, analyzedAt) ||
                other.analyzedAt == analyzedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    previousSegment,
    newSegment,
    engagementScore,
    retentionScore,
    churnRiskScore,
    analyzedAt,
  );

  /// Create a copy of SegmentationResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SegmentationResultImplCopyWith<_$SegmentationResultImpl> get copyWith =>
      __$$SegmentationResultImplCopyWithImpl<_$SegmentationResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SegmentationResultImplToJson(this);
  }
}

abstract class _SegmentationResult implements SegmentationResult {
  const factory _SegmentationResult({
    required final String userId,
    required final String previousSegment,
    required final String newSegment,
    required final int engagementScore,
    required final int retentionScore,
    required final double churnRiskScore,
    required final DateTime analyzedAt,
  }) = _$SegmentationResultImpl;

  factory _SegmentationResult.fromJson(Map<String, dynamic> json) =
      _$SegmentationResultImpl.fromJson;

  @override
  String get userId;
  @override
  String get previousSegment;
  @override
  String get newSegment;
  @override
  int get engagementScore;
  @override
  int get retentionScore;
  @override
  double get churnRiskScore;
  @override
  DateTime get analyzedAt;

  /// Create a copy of SegmentationResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SegmentationResultImplCopyWith<_$SegmentationResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CohortAnalysisResult _$CohortAnalysisResultFromJson(Map<String, dynamic> json) {
  return _CohortAnalysisResult.fromJson(json);
}

/// @nodoc
mixin _$CohortAnalysisResult {
  String get cohortId => throw _privateConstructorUsedError;
  DateTime get cohortStartDate => throw _privateConstructorUsedError;
  int get totalUsersInCohort => throw _privateConstructorUsedError;
  Map<int, int> get retentionByDaysSinceSignup =>
      throw _privateConstructorUsedError;
  Map<int, double> get engagementByWeek => throw _privateConstructorUsedError;
  double get avgSessionDurationMinutes => throw _privateConstructorUsedError;
  int get totalQuizzesCompleted => throw _privateConstructorUsedError;
  double get avgAccuracy => throw _privateConstructorUsedError;
  DateTime get analyzedAt => throw _privateConstructorUsedError;

  /// Serializes this CohortAnalysisResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CohortAnalysisResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CohortAnalysisResultCopyWith<CohortAnalysisResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CohortAnalysisResultCopyWith<$Res> {
  factory $CohortAnalysisResultCopyWith(
    CohortAnalysisResult value,
    $Res Function(CohortAnalysisResult) then,
  ) = _$CohortAnalysisResultCopyWithImpl<$Res, CohortAnalysisResult>;
  @useResult
  $Res call({
    String cohortId,
    DateTime cohortStartDate,
    int totalUsersInCohort,
    Map<int, int> retentionByDaysSinceSignup,
    Map<int, double> engagementByWeek,
    double avgSessionDurationMinutes,
    int totalQuizzesCompleted,
    double avgAccuracy,
    DateTime analyzedAt,
  });
}

/// @nodoc
class _$CohortAnalysisResultCopyWithImpl<
  $Res,
  $Val extends CohortAnalysisResult
>
    implements $CohortAnalysisResultCopyWith<$Res> {
  _$CohortAnalysisResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CohortAnalysisResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cohortId = null,
    Object? cohortStartDate = null,
    Object? totalUsersInCohort = null,
    Object? retentionByDaysSinceSignup = null,
    Object? engagementByWeek = null,
    Object? avgSessionDurationMinutes = null,
    Object? totalQuizzesCompleted = null,
    Object? avgAccuracy = null,
    Object? analyzedAt = null,
  }) {
    return _then(
      _value.copyWith(
            cohortId: null == cohortId
                ? _value.cohortId
                : cohortId // ignore: cast_nullable_to_non_nullable
                      as String,
            cohortStartDate: null == cohortStartDate
                ? _value.cohortStartDate
                : cohortStartDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            totalUsersInCohort: null == totalUsersInCohort
                ? _value.totalUsersInCohort
                : totalUsersInCohort // ignore: cast_nullable_to_non_nullable
                      as int,
            retentionByDaysSinceSignup: null == retentionByDaysSinceSignup
                ? _value.retentionByDaysSinceSignup
                : retentionByDaysSinceSignup // ignore: cast_nullable_to_non_nullable
                      as Map<int, int>,
            engagementByWeek: null == engagementByWeek
                ? _value.engagementByWeek
                : engagementByWeek // ignore: cast_nullable_to_non_nullable
                      as Map<int, double>,
            avgSessionDurationMinutes: null == avgSessionDurationMinutes
                ? _value.avgSessionDurationMinutes
                : avgSessionDurationMinutes // ignore: cast_nullable_to_non_nullable
                      as double,
            totalQuizzesCompleted: null == totalQuizzesCompleted
                ? _value.totalQuizzesCompleted
                : totalQuizzesCompleted // ignore: cast_nullable_to_non_nullable
                      as int,
            avgAccuracy: null == avgAccuracy
                ? _value.avgAccuracy
                : avgAccuracy // ignore: cast_nullable_to_non_nullable
                      as double,
            analyzedAt: null == analyzedAt
                ? _value.analyzedAt
                : analyzedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CohortAnalysisResultImplCopyWith<$Res>
    implements $CohortAnalysisResultCopyWith<$Res> {
  factory _$$CohortAnalysisResultImplCopyWith(
    _$CohortAnalysisResultImpl value,
    $Res Function(_$CohortAnalysisResultImpl) then,
  ) = __$$CohortAnalysisResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String cohortId,
    DateTime cohortStartDate,
    int totalUsersInCohort,
    Map<int, int> retentionByDaysSinceSignup,
    Map<int, double> engagementByWeek,
    double avgSessionDurationMinutes,
    int totalQuizzesCompleted,
    double avgAccuracy,
    DateTime analyzedAt,
  });
}

/// @nodoc
class __$$CohortAnalysisResultImplCopyWithImpl<$Res>
    extends _$CohortAnalysisResultCopyWithImpl<$Res, _$CohortAnalysisResultImpl>
    implements _$$CohortAnalysisResultImplCopyWith<$Res> {
  __$$CohortAnalysisResultImplCopyWithImpl(
    _$CohortAnalysisResultImpl _value,
    $Res Function(_$CohortAnalysisResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CohortAnalysisResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cohortId = null,
    Object? cohortStartDate = null,
    Object? totalUsersInCohort = null,
    Object? retentionByDaysSinceSignup = null,
    Object? engagementByWeek = null,
    Object? avgSessionDurationMinutes = null,
    Object? totalQuizzesCompleted = null,
    Object? avgAccuracy = null,
    Object? analyzedAt = null,
  }) {
    return _then(
      _$CohortAnalysisResultImpl(
        cohortId: null == cohortId
            ? _value.cohortId
            : cohortId // ignore: cast_nullable_to_non_nullable
                  as String,
        cohortStartDate: null == cohortStartDate
            ? _value.cohortStartDate
            : cohortStartDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        totalUsersInCohort: null == totalUsersInCohort
            ? _value.totalUsersInCohort
            : totalUsersInCohort // ignore: cast_nullable_to_non_nullable
                  as int,
        retentionByDaysSinceSignup: null == retentionByDaysSinceSignup
            ? _value._retentionByDaysSinceSignup
            : retentionByDaysSinceSignup // ignore: cast_nullable_to_non_nullable
                  as Map<int, int>,
        engagementByWeek: null == engagementByWeek
            ? _value._engagementByWeek
            : engagementByWeek // ignore: cast_nullable_to_non_nullable
                  as Map<int, double>,
        avgSessionDurationMinutes: null == avgSessionDurationMinutes
            ? _value.avgSessionDurationMinutes
            : avgSessionDurationMinutes // ignore: cast_nullable_to_non_nullable
                  as double,
        totalQuizzesCompleted: null == totalQuizzesCompleted
            ? _value.totalQuizzesCompleted
            : totalQuizzesCompleted // ignore: cast_nullable_to_non_nullable
                  as int,
        avgAccuracy: null == avgAccuracy
            ? _value.avgAccuracy
            : avgAccuracy // ignore: cast_nullable_to_non_nullable
                  as double,
        analyzedAt: null == analyzedAt
            ? _value.analyzedAt
            : analyzedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CohortAnalysisResultImpl implements _CohortAnalysisResult {
  const _$CohortAnalysisResultImpl({
    required this.cohortId,
    required this.cohortStartDate,
    required this.totalUsersInCohort,
    required final Map<int, int> retentionByDaysSinceSignup,
    required final Map<int, double> engagementByWeek,
    required this.avgSessionDurationMinutes,
    required this.totalQuizzesCompleted,
    required this.avgAccuracy,
    required this.analyzedAt,
  }) : _retentionByDaysSinceSignup = retentionByDaysSinceSignup,
       _engagementByWeek = engagementByWeek;

  factory _$CohortAnalysisResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$CohortAnalysisResultImplFromJson(json);

  @override
  final String cohortId;
  @override
  final DateTime cohortStartDate;
  @override
  final int totalUsersInCohort;
  final Map<int, int> _retentionByDaysSinceSignup;
  @override
  Map<int, int> get retentionByDaysSinceSignup {
    if (_retentionByDaysSinceSignup is EqualUnmodifiableMapView)
      return _retentionByDaysSinceSignup;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_retentionByDaysSinceSignup);
  }

  final Map<int, double> _engagementByWeek;
  @override
  Map<int, double> get engagementByWeek {
    if (_engagementByWeek is EqualUnmodifiableMapView) return _engagementByWeek;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_engagementByWeek);
  }

  @override
  final double avgSessionDurationMinutes;
  @override
  final int totalQuizzesCompleted;
  @override
  final double avgAccuracy;
  @override
  final DateTime analyzedAt;

  @override
  String toString() {
    return 'CohortAnalysisResult(cohortId: $cohortId, cohortStartDate: $cohortStartDate, totalUsersInCohort: $totalUsersInCohort, retentionByDaysSinceSignup: $retentionByDaysSinceSignup, engagementByWeek: $engagementByWeek, avgSessionDurationMinutes: $avgSessionDurationMinutes, totalQuizzesCompleted: $totalQuizzesCompleted, avgAccuracy: $avgAccuracy, analyzedAt: $analyzedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CohortAnalysisResultImpl &&
            (identical(other.cohortId, cohortId) ||
                other.cohortId == cohortId) &&
            (identical(other.cohortStartDate, cohortStartDate) ||
                other.cohortStartDate == cohortStartDate) &&
            (identical(other.totalUsersInCohort, totalUsersInCohort) ||
                other.totalUsersInCohort == totalUsersInCohort) &&
            const DeepCollectionEquality().equals(
              other._retentionByDaysSinceSignup,
              _retentionByDaysSinceSignup,
            ) &&
            const DeepCollectionEquality().equals(
              other._engagementByWeek,
              _engagementByWeek,
            ) &&
            (identical(
                  other.avgSessionDurationMinutes,
                  avgSessionDurationMinutes,
                ) ||
                other.avgSessionDurationMinutes == avgSessionDurationMinutes) &&
            (identical(other.totalQuizzesCompleted, totalQuizzesCompleted) ||
                other.totalQuizzesCompleted == totalQuizzesCompleted) &&
            (identical(other.avgAccuracy, avgAccuracy) ||
                other.avgAccuracy == avgAccuracy) &&
            (identical(other.analyzedAt, analyzedAt) ||
                other.analyzedAt == analyzedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    cohortId,
    cohortStartDate,
    totalUsersInCohort,
    const DeepCollectionEquality().hash(_retentionByDaysSinceSignup),
    const DeepCollectionEquality().hash(_engagementByWeek),
    avgSessionDurationMinutes,
    totalQuizzesCompleted,
    avgAccuracy,
    analyzedAt,
  );

  /// Create a copy of CohortAnalysisResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CohortAnalysisResultImplCopyWith<_$CohortAnalysisResultImpl>
  get copyWith =>
      __$$CohortAnalysisResultImplCopyWithImpl<_$CohortAnalysisResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CohortAnalysisResultImplToJson(this);
  }
}

abstract class _CohortAnalysisResult implements CohortAnalysisResult {
  const factory _CohortAnalysisResult({
    required final String cohortId,
    required final DateTime cohortStartDate,
    required final int totalUsersInCohort,
    required final Map<int, int> retentionByDaysSinceSignup,
    required final Map<int, double> engagementByWeek,
    required final double avgSessionDurationMinutes,
    required final int totalQuizzesCompleted,
    required final double avgAccuracy,
    required final DateTime analyzedAt,
  }) = _$CohortAnalysisResultImpl;

  factory _CohortAnalysisResult.fromJson(Map<String, dynamic> json) =
      _$CohortAnalysisResultImpl.fromJson;

  @override
  String get cohortId;
  @override
  DateTime get cohortStartDate;
  @override
  int get totalUsersInCohort;
  @override
  Map<int, int> get retentionByDaysSinceSignup;
  @override
  Map<int, double> get engagementByWeek;
  @override
  double get avgSessionDurationMinutes;
  @override
  int get totalQuizzesCompleted;
  @override
  double get avgAccuracy;
  @override
  DateTime get analyzedAt;

  /// Create a copy of CohortAnalysisResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CohortAnalysisResultImplCopyWith<_$CohortAnalysisResultImpl>
  get copyWith => throw _privateConstructorUsedError;
}

NotificationPayload _$NotificationPayloadFromJson(Map<String, dynamic> json) {
  return _NotificationPayload.fromJson(json);
}

/// @nodoc
mixin _$NotificationPayload {
  String get userId => throw _privateConstructorUsedError;
  String get notificationType => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  DateTime get scheduledAt => throw _privateConstructorUsedError;
  bool get isScheduled => throw _privateConstructorUsedError;

  /// Serializes this NotificationPayload to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationPayloadCopyWith<NotificationPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationPayloadCopyWith<$Res> {
  factory $NotificationPayloadCopyWith(
    NotificationPayload value,
    $Res Function(NotificationPayload) then,
  ) = _$NotificationPayloadCopyWithImpl<$Res, NotificationPayload>;
  @useResult
  $Res call({
    String userId,
    String notificationType,
    String title,
    String body,
    Map<String, dynamic> data,
    DateTime scheduledAt,
    bool isScheduled,
  });
}

/// @nodoc
class _$NotificationPayloadCopyWithImpl<$Res, $Val extends NotificationPayload>
    implements $NotificationPayloadCopyWith<$Res> {
  _$NotificationPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? notificationType = null,
    Object? title = null,
    Object? body = null,
    Object? data = null,
    Object? scheduledAt = null,
    Object? isScheduled = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            notificationType: null == notificationType
                ? _value.notificationType
                : notificationType // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            body: null == body
                ? _value.body
                : body // ignore: cast_nullable_to_non_nullable
                      as String,
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
            scheduledAt: null == scheduledAt
                ? _value.scheduledAt
                : scheduledAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            isScheduled: null == isScheduled
                ? _value.isScheduled
                : isScheduled // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NotificationPayloadImplCopyWith<$Res>
    implements $NotificationPayloadCopyWith<$Res> {
  factory _$$NotificationPayloadImplCopyWith(
    _$NotificationPayloadImpl value,
    $Res Function(_$NotificationPayloadImpl) then,
  ) = __$$NotificationPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    String notificationType,
    String title,
    String body,
    Map<String, dynamic> data,
    DateTime scheduledAt,
    bool isScheduled,
  });
}

/// @nodoc
class __$$NotificationPayloadImplCopyWithImpl<$Res>
    extends _$NotificationPayloadCopyWithImpl<$Res, _$NotificationPayloadImpl>
    implements _$$NotificationPayloadImplCopyWith<$Res> {
  __$$NotificationPayloadImplCopyWithImpl(
    _$NotificationPayloadImpl _value,
    $Res Function(_$NotificationPayloadImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? notificationType = null,
    Object? title = null,
    Object? body = null,
    Object? data = null,
    Object? scheduledAt = null,
    Object? isScheduled = null,
  }) {
    return _then(
      _$NotificationPayloadImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        notificationType: null == notificationType
            ? _value.notificationType
            : notificationType // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        body: null == body
            ? _value.body
            : body // ignore: cast_nullable_to_non_nullable
                  as String,
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        scheduledAt: null == scheduledAt
            ? _value.scheduledAt
            : scheduledAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        isScheduled: null == isScheduled
            ? _value.isScheduled
            : isScheduled // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationPayloadImpl implements _NotificationPayload {
  const _$NotificationPayloadImpl({
    required this.userId,
    required this.notificationType,
    required this.title,
    required this.body,
    required final Map<String, dynamic> data,
    required this.scheduledAt,
    required this.isScheduled,
  }) : _data = data;

  factory _$NotificationPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationPayloadImplFromJson(json);

  @override
  final String userId;
  @override
  final String notificationType;
  @override
  final String title;
  @override
  final String body;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  final DateTime scheduledAt;
  @override
  final bool isScheduled;

  @override
  String toString() {
    return 'NotificationPayload(userId: $userId, notificationType: $notificationType, title: $title, body: $body, data: $data, scheduledAt: $scheduledAt, isScheduled: $isScheduled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationPayloadImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.notificationType, notificationType) ||
                other.notificationType == notificationType) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.isScheduled, isScheduled) ||
                other.isScheduled == isScheduled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    notificationType,
    title,
    body,
    const DeepCollectionEquality().hash(_data),
    scheduledAt,
    isScheduled,
  );

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationPayloadImplCopyWith<_$NotificationPayloadImpl> get copyWith =>
      __$$NotificationPayloadImplCopyWithImpl<_$NotificationPayloadImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationPayloadImplToJson(this);
  }
}

abstract class _NotificationPayload implements NotificationPayload {
  const factory _NotificationPayload({
    required final String userId,
    required final String notificationType,
    required final String title,
    required final String body,
    required final Map<String, dynamic> data,
    required final DateTime scheduledAt,
    required final bool isScheduled,
  }) = _$NotificationPayloadImpl;

  factory _NotificationPayload.fromJson(Map<String, dynamic> json) =
      _$NotificationPayloadImpl.fromJson;

  @override
  String get userId;
  @override
  String get notificationType;
  @override
  String get title;
  @override
  String get body;
  @override
  Map<String, dynamic> get data;
  @override
  DateTime get scheduledAt;
  @override
  bool get isScheduled;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationPayloadImplCopyWith<_$NotificationPayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FunctionExecutionLog _$FunctionExecutionLogFromJson(Map<String, dynamic> json) {
  return _FunctionExecutionLog.fromJson(json);
}

/// @nodoc
mixin _$FunctionExecutionLog {
  String get functionId => throw _privateConstructorUsedError;
  FunctionType get functionType => throw _privateConstructorUsedError;
  DateTime get executedAt => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get processedUsers => throw _privateConstructorUsedError;
  int get failedUsers => throw _privateConstructorUsedError;
  int get durationSeconds => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Serializes this FunctionExecutionLog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FunctionExecutionLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FunctionExecutionLogCopyWith<FunctionExecutionLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FunctionExecutionLogCopyWith<$Res> {
  factory $FunctionExecutionLogCopyWith(
    FunctionExecutionLog value,
    $Res Function(FunctionExecutionLog) then,
  ) = _$FunctionExecutionLogCopyWithImpl<$Res, FunctionExecutionLog>;
  @useResult
  $Res call({
    String functionId,
    FunctionType functionType,
    DateTime executedAt,
    String status,
    int processedUsers,
    int failedUsers,
    int durationSeconds,
    String? errorMessage,
  });
}

/// @nodoc
class _$FunctionExecutionLogCopyWithImpl<
  $Res,
  $Val extends FunctionExecutionLog
>
    implements $FunctionExecutionLogCopyWith<$Res> {
  _$FunctionExecutionLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FunctionExecutionLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? functionId = null,
    Object? functionType = null,
    Object? executedAt = null,
    Object? status = null,
    Object? processedUsers = null,
    Object? failedUsers = null,
    Object? durationSeconds = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _value.copyWith(
            functionId: null == functionId
                ? _value.functionId
                : functionId // ignore: cast_nullable_to_non_nullable
                      as String,
            functionType: null == functionType
                ? _value.functionType
                : functionType // ignore: cast_nullable_to_non_nullable
                      as FunctionType,
            executedAt: null == executedAt
                ? _value.executedAt
                : executedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            processedUsers: null == processedUsers
                ? _value.processedUsers
                : processedUsers // ignore: cast_nullable_to_non_nullable
                      as int,
            failedUsers: null == failedUsers
                ? _value.failedUsers
                : failedUsers // ignore: cast_nullable_to_non_nullable
                      as int,
            durationSeconds: null == durationSeconds
                ? _value.durationSeconds
                : durationSeconds // ignore: cast_nullable_to_non_nullable
                      as int,
            errorMessage: freezed == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FunctionExecutionLogImplCopyWith<$Res>
    implements $FunctionExecutionLogCopyWith<$Res> {
  factory _$$FunctionExecutionLogImplCopyWith(
    _$FunctionExecutionLogImpl value,
    $Res Function(_$FunctionExecutionLogImpl) then,
  ) = __$$FunctionExecutionLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String functionId,
    FunctionType functionType,
    DateTime executedAt,
    String status,
    int processedUsers,
    int failedUsers,
    int durationSeconds,
    String? errorMessage,
  });
}

/// @nodoc
class __$$FunctionExecutionLogImplCopyWithImpl<$Res>
    extends _$FunctionExecutionLogCopyWithImpl<$Res, _$FunctionExecutionLogImpl>
    implements _$$FunctionExecutionLogImplCopyWith<$Res> {
  __$$FunctionExecutionLogImplCopyWithImpl(
    _$FunctionExecutionLogImpl _value,
    $Res Function(_$FunctionExecutionLogImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FunctionExecutionLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? functionId = null,
    Object? functionType = null,
    Object? executedAt = null,
    Object? status = null,
    Object? processedUsers = null,
    Object? failedUsers = null,
    Object? durationSeconds = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _$FunctionExecutionLogImpl(
        functionId: null == functionId
            ? _value.functionId
            : functionId // ignore: cast_nullable_to_non_nullable
                  as String,
        functionType: null == functionType
            ? _value.functionType
            : functionType // ignore: cast_nullable_to_non_nullable
                  as FunctionType,
        executedAt: null == executedAt
            ? _value.executedAt
            : executedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        processedUsers: null == processedUsers
            ? _value.processedUsers
            : processedUsers // ignore: cast_nullable_to_non_nullable
                  as int,
        failedUsers: null == failedUsers
            ? _value.failedUsers
            : failedUsers // ignore: cast_nullable_to_non_nullable
                  as int,
        durationSeconds: null == durationSeconds
            ? _value.durationSeconds
            : durationSeconds // ignore: cast_nullable_to_non_nullable
                  as int,
        errorMessage: freezed == errorMessage
            ? _value.errorMessage
            : errorMessage // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FunctionExecutionLogImpl implements _FunctionExecutionLog {
  const _$FunctionExecutionLogImpl({
    required this.functionId,
    required this.functionType,
    required this.executedAt,
    required this.status,
    required this.processedUsers,
    required this.failedUsers,
    required this.durationSeconds,
    this.errorMessage,
  });

  factory _$FunctionExecutionLogImpl.fromJson(Map<String, dynamic> json) =>
      _$$FunctionExecutionLogImplFromJson(json);

  @override
  final String functionId;
  @override
  final FunctionType functionType;
  @override
  final DateTime executedAt;
  @override
  final String status;
  @override
  final int processedUsers;
  @override
  final int failedUsers;
  @override
  final int durationSeconds;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'FunctionExecutionLog(functionId: $functionId, functionType: $functionType, executedAt: $executedAt, status: $status, processedUsers: $processedUsers, failedUsers: $failedUsers, durationSeconds: $durationSeconds, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FunctionExecutionLogImpl &&
            (identical(other.functionId, functionId) ||
                other.functionId == functionId) &&
            (identical(other.functionType, functionType) ||
                other.functionType == functionType) &&
            (identical(other.executedAt, executedAt) ||
                other.executedAt == executedAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.processedUsers, processedUsers) ||
                other.processedUsers == processedUsers) &&
            (identical(other.failedUsers, failedUsers) ||
                other.failedUsers == failedUsers) &&
            (identical(other.durationSeconds, durationSeconds) ||
                other.durationSeconds == durationSeconds) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    functionId,
    functionType,
    executedAt,
    status,
    processedUsers,
    failedUsers,
    durationSeconds,
    errorMessage,
  );

  /// Create a copy of FunctionExecutionLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FunctionExecutionLogImplCopyWith<_$FunctionExecutionLogImpl>
  get copyWith =>
      __$$FunctionExecutionLogImplCopyWithImpl<_$FunctionExecutionLogImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FunctionExecutionLogImplToJson(this);
  }
}

abstract class _FunctionExecutionLog implements FunctionExecutionLog {
  const factory _FunctionExecutionLog({
    required final String functionId,
    required final FunctionType functionType,
    required final DateTime executedAt,
    required final String status,
    required final int processedUsers,
    required final int failedUsers,
    required final int durationSeconds,
    final String? errorMessage,
  }) = _$FunctionExecutionLogImpl;

  factory _FunctionExecutionLog.fromJson(Map<String, dynamic> json) =
      _$FunctionExecutionLogImpl.fromJson;

  @override
  String get functionId;
  @override
  FunctionType get functionType;
  @override
  DateTime get executedAt;
  @override
  String get status;
  @override
  int get processedUsers;
  @override
  int get failedUsers;
  @override
  int get durationSeconds;
  @override
  String? get errorMessage;

  /// Create a copy of FunctionExecutionLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FunctionExecutionLogImplCopyWith<_$FunctionExecutionLogImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ChurnPrediction _$ChurnPredictionFromJson(Map<String, dynamic> json) {
  return _ChurnPrediction.fromJson(json);
}

/// @nodoc
mixin _$ChurnPrediction {
  String get userId => throw _privateConstructorUsedError;
  double get churnRiskScore => throw _privateConstructorUsedError;
  String get riskLevel => throw _privateConstructorUsedError;
  List<String> get riskIndicators => throw _privateConstructorUsedError;
  DateTime get predictedChurnDate => throw _privateConstructorUsedError;
  List<String> get recommendedActions => throw _privateConstructorUsedError;
  DateTime get analyzedAt => throw _privateConstructorUsedError;

  /// Serializes this ChurnPrediction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChurnPrediction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChurnPredictionCopyWith<ChurnPrediction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChurnPredictionCopyWith<$Res> {
  factory $ChurnPredictionCopyWith(
    ChurnPrediction value,
    $Res Function(ChurnPrediction) then,
  ) = _$ChurnPredictionCopyWithImpl<$Res, ChurnPrediction>;
  @useResult
  $Res call({
    String userId,
    double churnRiskScore,
    String riskLevel,
    List<String> riskIndicators,
    DateTime predictedChurnDate,
    List<String> recommendedActions,
    DateTime analyzedAt,
  });
}

/// @nodoc
class _$ChurnPredictionCopyWithImpl<$Res, $Val extends ChurnPrediction>
    implements $ChurnPredictionCopyWith<$Res> {
  _$ChurnPredictionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChurnPrediction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? churnRiskScore = null,
    Object? riskLevel = null,
    Object? riskIndicators = null,
    Object? predictedChurnDate = null,
    Object? recommendedActions = null,
    Object? analyzedAt = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            churnRiskScore: null == churnRiskScore
                ? _value.churnRiskScore
                : churnRiskScore // ignore: cast_nullable_to_non_nullable
                      as double,
            riskLevel: null == riskLevel
                ? _value.riskLevel
                : riskLevel // ignore: cast_nullable_to_non_nullable
                      as String,
            riskIndicators: null == riskIndicators
                ? _value.riskIndicators
                : riskIndicators // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            predictedChurnDate: null == predictedChurnDate
                ? _value.predictedChurnDate
                : predictedChurnDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            recommendedActions: null == recommendedActions
                ? _value.recommendedActions
                : recommendedActions // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            analyzedAt: null == analyzedAt
                ? _value.analyzedAt
                : analyzedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChurnPredictionImplCopyWith<$Res>
    implements $ChurnPredictionCopyWith<$Res> {
  factory _$$ChurnPredictionImplCopyWith(
    _$ChurnPredictionImpl value,
    $Res Function(_$ChurnPredictionImpl) then,
  ) = __$$ChurnPredictionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    double churnRiskScore,
    String riskLevel,
    List<String> riskIndicators,
    DateTime predictedChurnDate,
    List<String> recommendedActions,
    DateTime analyzedAt,
  });
}

/// @nodoc
class __$$ChurnPredictionImplCopyWithImpl<$Res>
    extends _$ChurnPredictionCopyWithImpl<$Res, _$ChurnPredictionImpl>
    implements _$$ChurnPredictionImplCopyWith<$Res> {
  __$$ChurnPredictionImplCopyWithImpl(
    _$ChurnPredictionImpl _value,
    $Res Function(_$ChurnPredictionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChurnPrediction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? churnRiskScore = null,
    Object? riskLevel = null,
    Object? riskIndicators = null,
    Object? predictedChurnDate = null,
    Object? recommendedActions = null,
    Object? analyzedAt = null,
  }) {
    return _then(
      _$ChurnPredictionImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        churnRiskScore: null == churnRiskScore
            ? _value.churnRiskScore
            : churnRiskScore // ignore: cast_nullable_to_non_nullable
                  as double,
        riskLevel: null == riskLevel
            ? _value.riskLevel
            : riskLevel // ignore: cast_nullable_to_non_nullable
                  as String,
        riskIndicators: null == riskIndicators
            ? _value._riskIndicators
            : riskIndicators // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        predictedChurnDate: null == predictedChurnDate
            ? _value.predictedChurnDate
            : predictedChurnDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        recommendedActions: null == recommendedActions
            ? _value._recommendedActions
            : recommendedActions // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        analyzedAt: null == analyzedAt
            ? _value.analyzedAt
            : analyzedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChurnPredictionImpl implements _ChurnPrediction {
  const _$ChurnPredictionImpl({
    required this.userId,
    required this.churnRiskScore,
    required this.riskLevel,
    required final List<String> riskIndicators,
    required this.predictedChurnDate,
    required final List<String> recommendedActions,
    required this.analyzedAt,
  }) : _riskIndicators = riskIndicators,
       _recommendedActions = recommendedActions;

  factory _$ChurnPredictionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChurnPredictionImplFromJson(json);

  @override
  final String userId;
  @override
  final double churnRiskScore;
  @override
  final String riskLevel;
  final List<String> _riskIndicators;
  @override
  List<String> get riskIndicators {
    if (_riskIndicators is EqualUnmodifiableListView) return _riskIndicators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_riskIndicators);
  }

  @override
  final DateTime predictedChurnDate;
  final List<String> _recommendedActions;
  @override
  List<String> get recommendedActions {
    if (_recommendedActions is EqualUnmodifiableListView)
      return _recommendedActions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendedActions);
  }

  @override
  final DateTime analyzedAt;

  @override
  String toString() {
    return 'ChurnPrediction(userId: $userId, churnRiskScore: $churnRiskScore, riskLevel: $riskLevel, riskIndicators: $riskIndicators, predictedChurnDate: $predictedChurnDate, recommendedActions: $recommendedActions, analyzedAt: $analyzedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChurnPredictionImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.churnRiskScore, churnRiskScore) ||
                other.churnRiskScore == churnRiskScore) &&
            (identical(other.riskLevel, riskLevel) ||
                other.riskLevel == riskLevel) &&
            const DeepCollectionEquality().equals(
              other._riskIndicators,
              _riskIndicators,
            ) &&
            (identical(other.predictedChurnDate, predictedChurnDate) ||
                other.predictedChurnDate == predictedChurnDate) &&
            const DeepCollectionEquality().equals(
              other._recommendedActions,
              _recommendedActions,
            ) &&
            (identical(other.analyzedAt, analyzedAt) ||
                other.analyzedAt == analyzedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    churnRiskScore,
    riskLevel,
    const DeepCollectionEquality().hash(_riskIndicators),
    predictedChurnDate,
    const DeepCollectionEquality().hash(_recommendedActions),
    analyzedAt,
  );

  /// Create a copy of ChurnPrediction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChurnPredictionImplCopyWith<_$ChurnPredictionImpl> get copyWith =>
      __$$ChurnPredictionImplCopyWithImpl<_$ChurnPredictionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChurnPredictionImplToJson(this);
  }
}

abstract class _ChurnPrediction implements ChurnPrediction {
  const factory _ChurnPrediction({
    required final String userId,
    required final double churnRiskScore,
    required final String riskLevel,
    required final List<String> riskIndicators,
    required final DateTime predictedChurnDate,
    required final List<String> recommendedActions,
    required final DateTime analyzedAt,
  }) = _$ChurnPredictionImpl;

  factory _ChurnPrediction.fromJson(Map<String, dynamic> json) =
      _$ChurnPredictionImpl.fromJson;

  @override
  String get userId;
  @override
  double get churnRiskScore;
  @override
  String get riskLevel;
  @override
  List<String> get riskIndicators;
  @override
  DateTime get predictedChurnDate;
  @override
  List<String> get recommendedActions;
  @override
  DateTime get analyzedAt;

  /// Create a copy of ChurnPrediction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChurnPredictionImplCopyWith<_$ChurnPredictionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
