// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytics_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LearningMetric _$LearningMetricFromJson(Map<String, dynamic> json) {
  return _LearningMetric.fromJson(json);
}

/// @nodoc
mixin _$LearningMetric {
  String get userId => throw _privateConstructorUsedError;
  LearningMetricType get type => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;
  DateTime get recordedAt => throw _privateConstructorUsedError;
  String? get appId =>
      throw _privateConstructorUsedError; // 教科別追跡（'kokugo', 'sansu'など）
  Map<String, dynamic>? get customData => throw _privateConstructorUsedError;

  /// Serializes this LearningMetric to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LearningMetric
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LearningMetricCopyWith<LearningMetric> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningMetricCopyWith<$Res> {
  factory $LearningMetricCopyWith(
    LearningMetric value,
    $Res Function(LearningMetric) then,
  ) = _$LearningMetricCopyWithImpl<$Res, LearningMetric>;
  @useResult
  $Res call({
    String userId,
    LearningMetricType type,
    int value,
    DateTime recordedAt,
    String? appId,
    Map<String, dynamic>? customData,
  });
}

/// @nodoc
class _$LearningMetricCopyWithImpl<$Res, $Val extends LearningMetric>
    implements $LearningMetricCopyWith<$Res> {
  _$LearningMetricCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LearningMetric
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? type = null,
    Object? value = null,
    Object? recordedAt = null,
    Object? appId = freezed,
    Object? customData = freezed,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as LearningMetricType,
            value: null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                      as int,
            recordedAt: null == recordedAt
                ? _value.recordedAt
                : recordedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            appId: freezed == appId
                ? _value.appId
                : appId // ignore: cast_nullable_to_non_nullable
                      as String?,
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
abstract class _$$LearningMetricImplCopyWith<$Res>
    implements $LearningMetricCopyWith<$Res> {
  factory _$$LearningMetricImplCopyWith(
    _$LearningMetricImpl value,
    $Res Function(_$LearningMetricImpl) then,
  ) = __$$LearningMetricImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    LearningMetricType type,
    int value,
    DateTime recordedAt,
    String? appId,
    Map<String, dynamic>? customData,
  });
}

/// @nodoc
class __$$LearningMetricImplCopyWithImpl<$Res>
    extends _$LearningMetricCopyWithImpl<$Res, _$LearningMetricImpl>
    implements _$$LearningMetricImplCopyWith<$Res> {
  __$$LearningMetricImplCopyWithImpl(
    _$LearningMetricImpl _value,
    $Res Function(_$LearningMetricImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LearningMetric
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? type = null,
    Object? value = null,
    Object? recordedAt = null,
    Object? appId = freezed,
    Object? customData = freezed,
  }) {
    return _then(
      _$LearningMetricImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as LearningMetricType,
        value: null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as int,
        recordedAt: null == recordedAt
            ? _value.recordedAt
            : recordedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        appId: freezed == appId
            ? _value.appId
            : appId // ignore: cast_nullable_to_non_nullable
                  as String?,
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
class _$LearningMetricImpl implements _LearningMetric {
  const _$LearningMetricImpl({
    required this.userId,
    required this.type,
    required this.value,
    required this.recordedAt,
    this.appId,
    final Map<String, dynamic>? customData,
  }) : _customData = customData;

  factory _$LearningMetricImpl.fromJson(Map<String, dynamic> json) =>
      _$$LearningMetricImplFromJson(json);

  @override
  final String userId;
  @override
  final LearningMetricType type;
  @override
  final int value;
  @override
  final DateTime recordedAt;
  @override
  final String? appId;
  // 教科別追跡（'kokugo', 'sansu'など）
  final Map<String, dynamic>? _customData;
  // 教科別追跡（'kokugo', 'sansu'など）
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
    return 'LearningMetric(userId: $userId, type: $type, value: $value, recordedAt: $recordedAt, appId: $appId, customData: $customData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearningMetricImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.recordedAt, recordedAt) ||
                other.recordedAt == recordedAt) &&
            (identical(other.appId, appId) || other.appId == appId) &&
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
    type,
    value,
    recordedAt,
    appId,
    const DeepCollectionEquality().hash(_customData),
  );

  /// Create a copy of LearningMetric
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningMetricImplCopyWith<_$LearningMetricImpl> get copyWith =>
      __$$LearningMetricImplCopyWithImpl<_$LearningMetricImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LearningMetricImplToJson(this);
  }
}

abstract class _LearningMetric implements LearningMetric {
  const factory _LearningMetric({
    required final String userId,
    required final LearningMetricType type,
    required final int value,
    required final DateTime recordedAt,
    final String? appId,
    final Map<String, dynamic>? customData,
  }) = _$LearningMetricImpl;

  factory _LearningMetric.fromJson(Map<String, dynamic> json) =
      _$LearningMetricImpl.fromJson;

  @override
  String get userId;
  @override
  LearningMetricType get type;
  @override
  int get value;
  @override
  DateTime get recordedAt;
  @override
  String? get appId; // 教科別追跡（'kokugo', 'sansu'など）
  @override
  Map<String, dynamic>? get customData;

  /// Create a copy of LearningMetric
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LearningMetricImplCopyWith<_$LearningMetricImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserSegmentAnalytics _$UserSegmentAnalyticsFromJson(Map<String, dynamic> json) {
  return _UserSegmentAnalytics.fromJson(json);
}

/// @nodoc
mixin _$UserSegmentAnalytics {
  String get userId => throw _privateConstructorUsedError;
  String get segmentId =>
      throw _privateConstructorUsedError; // newUser, inactive, active, vip, churnRisk
  int get engagementScore => throw _privateConstructorUsedError; // 0-100
  int get retentionScore => throw _privateConstructorUsedError; // 0-100
  DateTime get lastActiveAt => throw _privateConstructorUsedError;
  int get totalLearningMinutes => throw _privateConstructorUsedError;
  int get consecutiveAbsenceDays => throw _privateConstructorUsedError;
  Map<String, int> get subjectScores =>
      throw _privateConstructorUsedError; // { 'kokugo': 85, 'sansu': 72 }
  String? get cohortDate => throw _privateConstructorUsedError; // ユーザー登録日
  String? get churnRiskLevel =>
      throw _privateConstructorUsedError; // 'low', 'medium', 'high'
  int? get engagementTrend => throw _privateConstructorUsedError; // -100 to 100
  int? get retentionTrend => throw _privateConstructorUsedError;

  /// Serializes this UserSegmentAnalytics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserSegmentAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserSegmentAnalyticsCopyWith<UserSegmentAnalytics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSegmentAnalyticsCopyWith<$Res> {
  factory $UserSegmentAnalyticsCopyWith(
    UserSegmentAnalytics value,
    $Res Function(UserSegmentAnalytics) then,
  ) = _$UserSegmentAnalyticsCopyWithImpl<$Res, UserSegmentAnalytics>;
  @useResult
  $Res call({
    String userId,
    String segmentId,
    int engagementScore,
    int retentionScore,
    DateTime lastActiveAt,
    int totalLearningMinutes,
    int consecutiveAbsenceDays,
    Map<String, int> subjectScores,
    String? cohortDate,
    String? churnRiskLevel,
    int? engagementTrend,
    int? retentionTrend,
  });
}

/// @nodoc
class _$UserSegmentAnalyticsCopyWithImpl<
  $Res,
  $Val extends UserSegmentAnalytics
>
    implements $UserSegmentAnalyticsCopyWith<$Res> {
  _$UserSegmentAnalyticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserSegmentAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? segmentId = null,
    Object? engagementScore = null,
    Object? retentionScore = null,
    Object? lastActiveAt = null,
    Object? totalLearningMinutes = null,
    Object? consecutiveAbsenceDays = null,
    Object? subjectScores = null,
    Object? cohortDate = freezed,
    Object? churnRiskLevel = freezed,
    Object? engagementTrend = freezed,
    Object? retentionTrend = freezed,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            segmentId: null == segmentId
                ? _value.segmentId
                : segmentId // ignore: cast_nullable_to_non_nullable
                      as String,
            engagementScore: null == engagementScore
                ? _value.engagementScore
                : engagementScore // ignore: cast_nullable_to_non_nullable
                      as int,
            retentionScore: null == retentionScore
                ? _value.retentionScore
                : retentionScore // ignore: cast_nullable_to_non_nullable
                      as int,
            lastActiveAt: null == lastActiveAt
                ? _value.lastActiveAt
                : lastActiveAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            totalLearningMinutes: null == totalLearningMinutes
                ? _value.totalLearningMinutes
                : totalLearningMinutes // ignore: cast_nullable_to_non_nullable
                      as int,
            consecutiveAbsenceDays: null == consecutiveAbsenceDays
                ? _value.consecutiveAbsenceDays
                : consecutiveAbsenceDays // ignore: cast_nullable_to_non_nullable
                      as int,
            subjectScores: null == subjectScores
                ? _value.subjectScores
                : subjectScores // ignore: cast_nullable_to_non_nullable
                      as Map<String, int>,
            cohortDate: freezed == cohortDate
                ? _value.cohortDate
                : cohortDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            churnRiskLevel: freezed == churnRiskLevel
                ? _value.churnRiskLevel
                : churnRiskLevel // ignore: cast_nullable_to_non_nullable
                      as String?,
            engagementTrend: freezed == engagementTrend
                ? _value.engagementTrend
                : engagementTrend // ignore: cast_nullable_to_non_nullable
                      as int?,
            retentionTrend: freezed == retentionTrend
                ? _value.retentionTrend
                : retentionTrend // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserSegmentAnalyticsImplCopyWith<$Res>
    implements $UserSegmentAnalyticsCopyWith<$Res> {
  factory _$$UserSegmentAnalyticsImplCopyWith(
    _$UserSegmentAnalyticsImpl value,
    $Res Function(_$UserSegmentAnalyticsImpl) then,
  ) = __$$UserSegmentAnalyticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    String segmentId,
    int engagementScore,
    int retentionScore,
    DateTime lastActiveAt,
    int totalLearningMinutes,
    int consecutiveAbsenceDays,
    Map<String, int> subjectScores,
    String? cohortDate,
    String? churnRiskLevel,
    int? engagementTrend,
    int? retentionTrend,
  });
}

/// @nodoc
class __$$UserSegmentAnalyticsImplCopyWithImpl<$Res>
    extends _$UserSegmentAnalyticsCopyWithImpl<$Res, _$UserSegmentAnalyticsImpl>
    implements _$$UserSegmentAnalyticsImplCopyWith<$Res> {
  __$$UserSegmentAnalyticsImplCopyWithImpl(
    _$UserSegmentAnalyticsImpl _value,
    $Res Function(_$UserSegmentAnalyticsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserSegmentAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? segmentId = null,
    Object? engagementScore = null,
    Object? retentionScore = null,
    Object? lastActiveAt = null,
    Object? totalLearningMinutes = null,
    Object? consecutiveAbsenceDays = null,
    Object? subjectScores = null,
    Object? cohortDate = freezed,
    Object? churnRiskLevel = freezed,
    Object? engagementTrend = freezed,
    Object? retentionTrend = freezed,
  }) {
    return _then(
      _$UserSegmentAnalyticsImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        segmentId: null == segmentId
            ? _value.segmentId
            : segmentId // ignore: cast_nullable_to_non_nullable
                  as String,
        engagementScore: null == engagementScore
            ? _value.engagementScore
            : engagementScore // ignore: cast_nullable_to_non_nullable
                  as int,
        retentionScore: null == retentionScore
            ? _value.retentionScore
            : retentionScore // ignore: cast_nullable_to_non_nullable
                  as int,
        lastActiveAt: null == lastActiveAt
            ? _value.lastActiveAt
            : lastActiveAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        totalLearningMinutes: null == totalLearningMinutes
            ? _value.totalLearningMinutes
            : totalLearningMinutes // ignore: cast_nullable_to_non_nullable
                  as int,
        consecutiveAbsenceDays: null == consecutiveAbsenceDays
            ? _value.consecutiveAbsenceDays
            : consecutiveAbsenceDays // ignore: cast_nullable_to_non_nullable
                  as int,
        subjectScores: null == subjectScores
            ? _value._subjectScores
            : subjectScores // ignore: cast_nullable_to_non_nullable
                  as Map<String, int>,
        cohortDate: freezed == cohortDate
            ? _value.cohortDate
            : cohortDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        churnRiskLevel: freezed == churnRiskLevel
            ? _value.churnRiskLevel
            : churnRiskLevel // ignore: cast_nullable_to_non_nullable
                  as String?,
        engagementTrend: freezed == engagementTrend
            ? _value.engagementTrend
            : engagementTrend // ignore: cast_nullable_to_non_nullable
                  as int?,
        retentionTrend: freezed == retentionTrend
            ? _value.retentionTrend
            : retentionTrend // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserSegmentAnalyticsImpl implements _UserSegmentAnalytics {
  const _$UserSegmentAnalyticsImpl({
    required this.userId,
    required this.segmentId,
    required this.engagementScore,
    required this.retentionScore,
    required this.lastActiveAt,
    required this.totalLearningMinutes,
    required this.consecutiveAbsenceDays,
    required final Map<String, int> subjectScores,
    this.cohortDate,
    this.churnRiskLevel,
    this.engagementTrend,
    this.retentionTrend,
  }) : _subjectScores = subjectScores;

  factory _$UserSegmentAnalyticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserSegmentAnalyticsImplFromJson(json);

  @override
  final String userId;
  @override
  final String segmentId;
  // newUser, inactive, active, vip, churnRisk
  @override
  final int engagementScore;
  // 0-100
  @override
  final int retentionScore;
  // 0-100
  @override
  final DateTime lastActiveAt;
  @override
  final int totalLearningMinutes;
  @override
  final int consecutiveAbsenceDays;
  final Map<String, int> _subjectScores;
  @override
  Map<String, int> get subjectScores {
    if (_subjectScores is EqualUnmodifiableMapView) return _subjectScores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_subjectScores);
  }

  // { 'kokugo': 85, 'sansu': 72 }
  @override
  final String? cohortDate;
  // ユーザー登録日
  @override
  final String? churnRiskLevel;
  // 'low', 'medium', 'high'
  @override
  final int? engagementTrend;
  // -100 to 100
  @override
  final int? retentionTrend;

  @override
  String toString() {
    return 'UserSegmentAnalytics(userId: $userId, segmentId: $segmentId, engagementScore: $engagementScore, retentionScore: $retentionScore, lastActiveAt: $lastActiveAt, totalLearningMinutes: $totalLearningMinutes, consecutiveAbsenceDays: $consecutiveAbsenceDays, subjectScores: $subjectScores, cohortDate: $cohortDate, churnRiskLevel: $churnRiskLevel, engagementTrend: $engagementTrend, retentionTrend: $retentionTrend)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSegmentAnalyticsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.segmentId, segmentId) ||
                other.segmentId == segmentId) &&
            (identical(other.engagementScore, engagementScore) ||
                other.engagementScore == engagementScore) &&
            (identical(other.retentionScore, retentionScore) ||
                other.retentionScore == retentionScore) &&
            (identical(other.lastActiveAt, lastActiveAt) ||
                other.lastActiveAt == lastActiveAt) &&
            (identical(other.totalLearningMinutes, totalLearningMinutes) ||
                other.totalLearningMinutes == totalLearningMinutes) &&
            (identical(other.consecutiveAbsenceDays, consecutiveAbsenceDays) ||
                other.consecutiveAbsenceDays == consecutiveAbsenceDays) &&
            const DeepCollectionEquality().equals(
              other._subjectScores,
              _subjectScores,
            ) &&
            (identical(other.cohortDate, cohortDate) ||
                other.cohortDate == cohortDate) &&
            (identical(other.churnRiskLevel, churnRiskLevel) ||
                other.churnRiskLevel == churnRiskLevel) &&
            (identical(other.engagementTrend, engagementTrend) ||
                other.engagementTrend == engagementTrend) &&
            (identical(other.retentionTrend, retentionTrend) ||
                other.retentionTrend == retentionTrend));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    segmentId,
    engagementScore,
    retentionScore,
    lastActiveAt,
    totalLearningMinutes,
    consecutiveAbsenceDays,
    const DeepCollectionEquality().hash(_subjectScores),
    cohortDate,
    churnRiskLevel,
    engagementTrend,
    retentionTrend,
  );

  /// Create a copy of UserSegmentAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSegmentAnalyticsImplCopyWith<_$UserSegmentAnalyticsImpl>
  get copyWith =>
      __$$UserSegmentAnalyticsImplCopyWithImpl<_$UserSegmentAnalyticsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserSegmentAnalyticsImplToJson(this);
  }
}

abstract class _UserSegmentAnalytics implements UserSegmentAnalytics {
  const factory _UserSegmentAnalytics({
    required final String userId,
    required final String segmentId,
    required final int engagementScore,
    required final int retentionScore,
    required final DateTime lastActiveAt,
    required final int totalLearningMinutes,
    required final int consecutiveAbsenceDays,
    required final Map<String, int> subjectScores,
    final String? cohortDate,
    final String? churnRiskLevel,
    final int? engagementTrend,
    final int? retentionTrend,
  }) = _$UserSegmentAnalyticsImpl;

  factory _UserSegmentAnalytics.fromJson(Map<String, dynamic> json) =
      _$UserSegmentAnalyticsImpl.fromJson;

  @override
  String get userId;
  @override
  String get segmentId; // newUser, inactive, active, vip, churnRisk
  @override
  int get engagementScore; // 0-100
  @override
  int get retentionScore; // 0-100
  @override
  DateTime get lastActiveAt;
  @override
  int get totalLearningMinutes;
  @override
  int get consecutiveAbsenceDays;
  @override
  Map<String, int> get subjectScores; // { 'kokugo': 85, 'sansu': 72 }
  @override
  String? get cohortDate; // ユーザー登録日
  @override
  String? get churnRiskLevel; // 'low', 'medium', 'high'
  @override
  int? get engagementTrend; // -100 to 100
  @override
  int? get retentionTrend;

  /// Create a copy of UserSegmentAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserSegmentAnalyticsImplCopyWith<_$UserSegmentAnalyticsImpl>
  get copyWith => throw _privateConstructorUsedError;
}

WeeklyReport _$WeeklyReportFromJson(Map<String, dynamic> json) {
  return _WeeklyReport.fromJson(json);
}

/// @nodoc
mixin _$WeeklyReport {
  String get userId => throw _privateConstructorUsedError;
  DateTime get weekStartDate => throw _privateConstructorUsedError;
  int get totalMinutes => throw _privateConstructorUsedError;
  int get totalQuizzesCompleted => throw _privateConstructorUsedError;
  double get averageAccuracy => throw _privateConstructorUsedError;
  List<String> get topicsFocused => throw _privateConstructorUsedError;
  int get newBadgesEarned => throw _privateConstructorUsedError;
  int get coinsEarned => throw _privateConstructorUsedError;
  String? get weeklyGoalStatus =>
      throw _privateConstructorUsedError; // 'completed', 'partial', 'missed'
  int? get friendsInteracted => throw _privateConstructorUsedError;
  int? get challengesCompleted => throw _privateConstructorUsedError;
  Map<String, int>? get subjectBreakdown => throw _privateConstructorUsedError;

  /// Serializes this WeeklyReport to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeeklyReport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeeklyReportCopyWith<WeeklyReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyReportCopyWith<$Res> {
  factory $WeeklyReportCopyWith(
    WeeklyReport value,
    $Res Function(WeeklyReport) then,
  ) = _$WeeklyReportCopyWithImpl<$Res, WeeklyReport>;
  @useResult
  $Res call({
    String userId,
    DateTime weekStartDate,
    int totalMinutes,
    int totalQuizzesCompleted,
    double averageAccuracy,
    List<String> topicsFocused,
    int newBadgesEarned,
    int coinsEarned,
    String? weeklyGoalStatus,
    int? friendsInteracted,
    int? challengesCompleted,
    Map<String, int>? subjectBreakdown,
  });
}

/// @nodoc
class _$WeeklyReportCopyWithImpl<$Res, $Val extends WeeklyReport>
    implements $WeeklyReportCopyWith<$Res> {
  _$WeeklyReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeeklyReport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? weekStartDate = null,
    Object? totalMinutes = null,
    Object? totalQuizzesCompleted = null,
    Object? averageAccuracy = null,
    Object? topicsFocused = null,
    Object? newBadgesEarned = null,
    Object? coinsEarned = null,
    Object? weeklyGoalStatus = freezed,
    Object? friendsInteracted = freezed,
    Object? challengesCompleted = freezed,
    Object? subjectBreakdown = freezed,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            weekStartDate: null == weekStartDate
                ? _value.weekStartDate
                : weekStartDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            totalMinutes: null == totalMinutes
                ? _value.totalMinutes
                : totalMinutes // ignore: cast_nullable_to_non_nullable
                      as int,
            totalQuizzesCompleted: null == totalQuizzesCompleted
                ? _value.totalQuizzesCompleted
                : totalQuizzesCompleted // ignore: cast_nullable_to_non_nullable
                      as int,
            averageAccuracy: null == averageAccuracy
                ? _value.averageAccuracy
                : averageAccuracy // ignore: cast_nullable_to_non_nullable
                      as double,
            topicsFocused: null == topicsFocused
                ? _value.topicsFocused
                : topicsFocused // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            newBadgesEarned: null == newBadgesEarned
                ? _value.newBadgesEarned
                : newBadgesEarned // ignore: cast_nullable_to_non_nullable
                      as int,
            coinsEarned: null == coinsEarned
                ? _value.coinsEarned
                : coinsEarned // ignore: cast_nullable_to_non_nullable
                      as int,
            weeklyGoalStatus: freezed == weeklyGoalStatus
                ? _value.weeklyGoalStatus
                : weeklyGoalStatus // ignore: cast_nullable_to_non_nullable
                      as String?,
            friendsInteracted: freezed == friendsInteracted
                ? _value.friendsInteracted
                : friendsInteracted // ignore: cast_nullable_to_non_nullable
                      as int?,
            challengesCompleted: freezed == challengesCompleted
                ? _value.challengesCompleted
                : challengesCompleted // ignore: cast_nullable_to_non_nullable
                      as int?,
            subjectBreakdown: freezed == subjectBreakdown
                ? _value.subjectBreakdown
                : subjectBreakdown // ignore: cast_nullable_to_non_nullable
                      as Map<String, int>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WeeklyReportImplCopyWith<$Res>
    implements $WeeklyReportCopyWith<$Res> {
  factory _$$WeeklyReportImplCopyWith(
    _$WeeklyReportImpl value,
    $Res Function(_$WeeklyReportImpl) then,
  ) = __$$WeeklyReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    DateTime weekStartDate,
    int totalMinutes,
    int totalQuizzesCompleted,
    double averageAccuracy,
    List<String> topicsFocused,
    int newBadgesEarned,
    int coinsEarned,
    String? weeklyGoalStatus,
    int? friendsInteracted,
    int? challengesCompleted,
    Map<String, int>? subjectBreakdown,
  });
}

/// @nodoc
class __$$WeeklyReportImplCopyWithImpl<$Res>
    extends _$WeeklyReportCopyWithImpl<$Res, _$WeeklyReportImpl>
    implements _$$WeeklyReportImplCopyWith<$Res> {
  __$$WeeklyReportImplCopyWithImpl(
    _$WeeklyReportImpl _value,
    $Res Function(_$WeeklyReportImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WeeklyReport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? weekStartDate = null,
    Object? totalMinutes = null,
    Object? totalQuizzesCompleted = null,
    Object? averageAccuracy = null,
    Object? topicsFocused = null,
    Object? newBadgesEarned = null,
    Object? coinsEarned = null,
    Object? weeklyGoalStatus = freezed,
    Object? friendsInteracted = freezed,
    Object? challengesCompleted = freezed,
    Object? subjectBreakdown = freezed,
  }) {
    return _then(
      _$WeeklyReportImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        weekStartDate: null == weekStartDate
            ? _value.weekStartDate
            : weekStartDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        totalMinutes: null == totalMinutes
            ? _value.totalMinutes
            : totalMinutes // ignore: cast_nullable_to_non_nullable
                  as int,
        totalQuizzesCompleted: null == totalQuizzesCompleted
            ? _value.totalQuizzesCompleted
            : totalQuizzesCompleted // ignore: cast_nullable_to_non_nullable
                  as int,
        averageAccuracy: null == averageAccuracy
            ? _value.averageAccuracy
            : averageAccuracy // ignore: cast_nullable_to_non_nullable
                  as double,
        topicsFocused: null == topicsFocused
            ? _value._topicsFocused
            : topicsFocused // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        newBadgesEarned: null == newBadgesEarned
            ? _value.newBadgesEarned
            : newBadgesEarned // ignore: cast_nullable_to_non_nullable
                  as int,
        coinsEarned: null == coinsEarned
            ? _value.coinsEarned
            : coinsEarned // ignore: cast_nullable_to_non_nullable
                  as int,
        weeklyGoalStatus: freezed == weeklyGoalStatus
            ? _value.weeklyGoalStatus
            : weeklyGoalStatus // ignore: cast_nullable_to_non_nullable
                  as String?,
        friendsInteracted: freezed == friendsInteracted
            ? _value.friendsInteracted
            : friendsInteracted // ignore: cast_nullable_to_non_nullable
                  as int?,
        challengesCompleted: freezed == challengesCompleted
            ? _value.challengesCompleted
            : challengesCompleted // ignore: cast_nullable_to_non_nullable
                  as int?,
        subjectBreakdown: freezed == subjectBreakdown
            ? _value._subjectBreakdown
            : subjectBreakdown // ignore: cast_nullable_to_non_nullable
                  as Map<String, int>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WeeklyReportImpl implements _WeeklyReport {
  const _$WeeklyReportImpl({
    required this.userId,
    required this.weekStartDate,
    required this.totalMinutes,
    required this.totalQuizzesCompleted,
    required this.averageAccuracy,
    required final List<String> topicsFocused,
    required this.newBadgesEarned,
    required this.coinsEarned,
    this.weeklyGoalStatus,
    this.friendsInteracted,
    this.challengesCompleted,
    final Map<String, int>? subjectBreakdown,
  }) : _topicsFocused = topicsFocused,
       _subjectBreakdown = subjectBreakdown;

  factory _$WeeklyReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeeklyReportImplFromJson(json);

  @override
  final String userId;
  @override
  final DateTime weekStartDate;
  @override
  final int totalMinutes;
  @override
  final int totalQuizzesCompleted;
  @override
  final double averageAccuracy;
  final List<String> _topicsFocused;
  @override
  List<String> get topicsFocused {
    if (_topicsFocused is EqualUnmodifiableListView) return _topicsFocused;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topicsFocused);
  }

  @override
  final int newBadgesEarned;
  @override
  final int coinsEarned;
  @override
  final String? weeklyGoalStatus;
  // 'completed', 'partial', 'missed'
  @override
  final int? friendsInteracted;
  @override
  final int? challengesCompleted;
  final Map<String, int>? _subjectBreakdown;
  @override
  Map<String, int>? get subjectBreakdown {
    final value = _subjectBreakdown;
    if (value == null) return null;
    if (_subjectBreakdown is EqualUnmodifiableMapView) return _subjectBreakdown;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'WeeklyReport(userId: $userId, weekStartDate: $weekStartDate, totalMinutes: $totalMinutes, totalQuizzesCompleted: $totalQuizzesCompleted, averageAccuracy: $averageAccuracy, topicsFocused: $topicsFocused, newBadgesEarned: $newBadgesEarned, coinsEarned: $coinsEarned, weeklyGoalStatus: $weeklyGoalStatus, friendsInteracted: $friendsInteracted, challengesCompleted: $challengesCompleted, subjectBreakdown: $subjectBreakdown)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeeklyReportImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.weekStartDate, weekStartDate) ||
                other.weekStartDate == weekStartDate) &&
            (identical(other.totalMinutes, totalMinutes) ||
                other.totalMinutes == totalMinutes) &&
            (identical(other.totalQuizzesCompleted, totalQuizzesCompleted) ||
                other.totalQuizzesCompleted == totalQuizzesCompleted) &&
            (identical(other.averageAccuracy, averageAccuracy) ||
                other.averageAccuracy == averageAccuracy) &&
            const DeepCollectionEquality().equals(
              other._topicsFocused,
              _topicsFocused,
            ) &&
            (identical(other.newBadgesEarned, newBadgesEarned) ||
                other.newBadgesEarned == newBadgesEarned) &&
            (identical(other.coinsEarned, coinsEarned) ||
                other.coinsEarned == coinsEarned) &&
            (identical(other.weeklyGoalStatus, weeklyGoalStatus) ||
                other.weeklyGoalStatus == weeklyGoalStatus) &&
            (identical(other.friendsInteracted, friendsInteracted) ||
                other.friendsInteracted == friendsInteracted) &&
            (identical(other.challengesCompleted, challengesCompleted) ||
                other.challengesCompleted == challengesCompleted) &&
            const DeepCollectionEquality().equals(
              other._subjectBreakdown,
              _subjectBreakdown,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    weekStartDate,
    totalMinutes,
    totalQuizzesCompleted,
    averageAccuracy,
    const DeepCollectionEquality().hash(_topicsFocused),
    newBadgesEarned,
    coinsEarned,
    weeklyGoalStatus,
    friendsInteracted,
    challengesCompleted,
    const DeepCollectionEquality().hash(_subjectBreakdown),
  );

  /// Create a copy of WeeklyReport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeeklyReportImplCopyWith<_$WeeklyReportImpl> get copyWith =>
      __$$WeeklyReportImplCopyWithImpl<_$WeeklyReportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeeklyReportImplToJson(this);
  }
}

abstract class _WeeklyReport implements WeeklyReport {
  const factory _WeeklyReport({
    required final String userId,
    required final DateTime weekStartDate,
    required final int totalMinutes,
    required final int totalQuizzesCompleted,
    required final double averageAccuracy,
    required final List<String> topicsFocused,
    required final int newBadgesEarned,
    required final int coinsEarned,
    final String? weeklyGoalStatus,
    final int? friendsInteracted,
    final int? challengesCompleted,
    final Map<String, int>? subjectBreakdown,
  }) = _$WeeklyReportImpl;

  factory _WeeklyReport.fromJson(Map<String, dynamic> json) =
      _$WeeklyReportImpl.fromJson;

  @override
  String get userId;
  @override
  DateTime get weekStartDate;
  @override
  int get totalMinutes;
  @override
  int get totalQuizzesCompleted;
  @override
  double get averageAccuracy;
  @override
  List<String> get topicsFocused;
  @override
  int get newBadgesEarned;
  @override
  int get coinsEarned;
  @override
  String? get weeklyGoalStatus; // 'completed', 'partial', 'missed'
  @override
  int? get friendsInteracted;
  @override
  int? get challengesCompleted;
  @override
  Map<String, int>? get subjectBreakdown;

  /// Create a copy of WeeklyReport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeeklyReportImplCopyWith<_$WeeklyReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MonthlyReport _$MonthlyReportFromJson(Map<String, dynamic> json) {
  return _MonthlyReport.fromJson(json);
}

/// @nodoc
mixin _$MonthlyReport {
  String get userId => throw _privateConstructorUsedError;
  int get month => throw _privateConstructorUsedError; // 1-12
  int get year => throw _privateConstructorUsedError;
  int get totalMinutes => throw _privateConstructorUsedError;
  int get totalQuizzesCompleted => throw _privateConstructorUsedError;
  double get averageAccuracy => throw _privateConstructorUsedError;
  int get badgesEarned => throw _privateConstructorUsedError;
  int get coinsEarned => throw _privateConstructorUsedError;
  int get friendsAdded => throw _privateConstructorUsedError;
  String get growthTrend =>
      throw _privateConstructorUsedError; // 'improving', 'stable', 'declining'
  Map<String, dynamic> get subjectPerformance =>
      throw _privateConstructorUsedError; // { 'kokugo': { 'accuracy': 85, 'time': 120 } }
  List<String> get achievements => throw _privateConstructorUsedError;
  int? get longestStreak => throw _privateConstructorUsedError; // 最長連続学習日数
  int? get newCharactersUnlocked => throw _privateConstructorUsedError;
  double? get improvementRate =>
      throw _privateConstructorUsedError; // 前月比の改善率（%）
  String? get recommendation => throw _privateConstructorUsedError;

  /// Serializes this MonthlyReport to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MonthlyReport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MonthlyReportCopyWith<MonthlyReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlyReportCopyWith<$Res> {
  factory $MonthlyReportCopyWith(
    MonthlyReport value,
    $Res Function(MonthlyReport) then,
  ) = _$MonthlyReportCopyWithImpl<$Res, MonthlyReport>;
  @useResult
  $Res call({
    String userId,
    int month,
    int year,
    int totalMinutes,
    int totalQuizzesCompleted,
    double averageAccuracy,
    int badgesEarned,
    int coinsEarned,
    int friendsAdded,
    String growthTrend,
    Map<String, dynamic> subjectPerformance,
    List<String> achievements,
    int? longestStreak,
    int? newCharactersUnlocked,
    double? improvementRate,
    String? recommendation,
  });
}

/// @nodoc
class _$MonthlyReportCopyWithImpl<$Res, $Val extends MonthlyReport>
    implements $MonthlyReportCopyWith<$Res> {
  _$MonthlyReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MonthlyReport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? month = null,
    Object? year = null,
    Object? totalMinutes = null,
    Object? totalQuizzesCompleted = null,
    Object? averageAccuracy = null,
    Object? badgesEarned = null,
    Object? coinsEarned = null,
    Object? friendsAdded = null,
    Object? growthTrend = null,
    Object? subjectPerformance = null,
    Object? achievements = null,
    Object? longestStreak = freezed,
    Object? newCharactersUnlocked = freezed,
    Object? improvementRate = freezed,
    Object? recommendation = freezed,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            month: null == month
                ? _value.month
                : month // ignore: cast_nullable_to_non_nullable
                      as int,
            year: null == year
                ? _value.year
                : year // ignore: cast_nullable_to_non_nullable
                      as int,
            totalMinutes: null == totalMinutes
                ? _value.totalMinutes
                : totalMinutes // ignore: cast_nullable_to_non_nullable
                      as int,
            totalQuizzesCompleted: null == totalQuizzesCompleted
                ? _value.totalQuizzesCompleted
                : totalQuizzesCompleted // ignore: cast_nullable_to_non_nullable
                      as int,
            averageAccuracy: null == averageAccuracy
                ? _value.averageAccuracy
                : averageAccuracy // ignore: cast_nullable_to_non_nullable
                      as double,
            badgesEarned: null == badgesEarned
                ? _value.badgesEarned
                : badgesEarned // ignore: cast_nullable_to_non_nullable
                      as int,
            coinsEarned: null == coinsEarned
                ? _value.coinsEarned
                : coinsEarned // ignore: cast_nullable_to_non_nullable
                      as int,
            friendsAdded: null == friendsAdded
                ? _value.friendsAdded
                : friendsAdded // ignore: cast_nullable_to_non_nullable
                      as int,
            growthTrend: null == growthTrend
                ? _value.growthTrend
                : growthTrend // ignore: cast_nullable_to_non_nullable
                      as String,
            subjectPerformance: null == subjectPerformance
                ? _value.subjectPerformance
                : subjectPerformance // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
            achievements: null == achievements
                ? _value.achievements
                : achievements // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            longestStreak: freezed == longestStreak
                ? _value.longestStreak
                : longestStreak // ignore: cast_nullable_to_non_nullable
                      as int?,
            newCharactersUnlocked: freezed == newCharactersUnlocked
                ? _value.newCharactersUnlocked
                : newCharactersUnlocked // ignore: cast_nullable_to_non_nullable
                      as int?,
            improvementRate: freezed == improvementRate
                ? _value.improvementRate
                : improvementRate // ignore: cast_nullable_to_non_nullable
                      as double?,
            recommendation: freezed == recommendation
                ? _value.recommendation
                : recommendation // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MonthlyReportImplCopyWith<$Res>
    implements $MonthlyReportCopyWith<$Res> {
  factory _$$MonthlyReportImplCopyWith(
    _$MonthlyReportImpl value,
    $Res Function(_$MonthlyReportImpl) then,
  ) = __$$MonthlyReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    int month,
    int year,
    int totalMinutes,
    int totalQuizzesCompleted,
    double averageAccuracy,
    int badgesEarned,
    int coinsEarned,
    int friendsAdded,
    String growthTrend,
    Map<String, dynamic> subjectPerformance,
    List<String> achievements,
    int? longestStreak,
    int? newCharactersUnlocked,
    double? improvementRate,
    String? recommendation,
  });
}

/// @nodoc
class __$$MonthlyReportImplCopyWithImpl<$Res>
    extends _$MonthlyReportCopyWithImpl<$Res, _$MonthlyReportImpl>
    implements _$$MonthlyReportImplCopyWith<$Res> {
  __$$MonthlyReportImplCopyWithImpl(
    _$MonthlyReportImpl _value,
    $Res Function(_$MonthlyReportImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MonthlyReport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? month = null,
    Object? year = null,
    Object? totalMinutes = null,
    Object? totalQuizzesCompleted = null,
    Object? averageAccuracy = null,
    Object? badgesEarned = null,
    Object? coinsEarned = null,
    Object? friendsAdded = null,
    Object? growthTrend = null,
    Object? subjectPerformance = null,
    Object? achievements = null,
    Object? longestStreak = freezed,
    Object? newCharactersUnlocked = freezed,
    Object? improvementRate = freezed,
    Object? recommendation = freezed,
  }) {
    return _then(
      _$MonthlyReportImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        month: null == month
            ? _value.month
            : month // ignore: cast_nullable_to_non_nullable
                  as int,
        year: null == year
            ? _value.year
            : year // ignore: cast_nullable_to_non_nullable
                  as int,
        totalMinutes: null == totalMinutes
            ? _value.totalMinutes
            : totalMinutes // ignore: cast_nullable_to_non_nullable
                  as int,
        totalQuizzesCompleted: null == totalQuizzesCompleted
            ? _value.totalQuizzesCompleted
            : totalQuizzesCompleted // ignore: cast_nullable_to_non_nullable
                  as int,
        averageAccuracy: null == averageAccuracy
            ? _value.averageAccuracy
            : averageAccuracy // ignore: cast_nullable_to_non_nullable
                  as double,
        badgesEarned: null == badgesEarned
            ? _value.badgesEarned
            : badgesEarned // ignore: cast_nullable_to_non_nullable
                  as int,
        coinsEarned: null == coinsEarned
            ? _value.coinsEarned
            : coinsEarned // ignore: cast_nullable_to_non_nullable
                  as int,
        friendsAdded: null == friendsAdded
            ? _value.friendsAdded
            : friendsAdded // ignore: cast_nullable_to_non_nullable
                  as int,
        growthTrend: null == growthTrend
            ? _value.growthTrend
            : growthTrend // ignore: cast_nullable_to_non_nullable
                  as String,
        subjectPerformance: null == subjectPerformance
            ? _value._subjectPerformance
            : subjectPerformance // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        achievements: null == achievements
            ? _value._achievements
            : achievements // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        longestStreak: freezed == longestStreak
            ? _value.longestStreak
            : longestStreak // ignore: cast_nullable_to_non_nullable
                  as int?,
        newCharactersUnlocked: freezed == newCharactersUnlocked
            ? _value.newCharactersUnlocked
            : newCharactersUnlocked // ignore: cast_nullable_to_non_nullable
                  as int?,
        improvementRate: freezed == improvementRate
            ? _value.improvementRate
            : improvementRate // ignore: cast_nullable_to_non_nullable
                  as double?,
        recommendation: freezed == recommendation
            ? _value.recommendation
            : recommendation // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MonthlyReportImpl implements _MonthlyReport {
  const _$MonthlyReportImpl({
    required this.userId,
    required this.month,
    required this.year,
    required this.totalMinutes,
    required this.totalQuizzesCompleted,
    required this.averageAccuracy,
    required this.badgesEarned,
    required this.coinsEarned,
    required this.friendsAdded,
    required this.growthTrend,
    required final Map<String, dynamic> subjectPerformance,
    required final List<String> achievements,
    this.longestStreak,
    this.newCharactersUnlocked,
    this.improvementRate,
    this.recommendation,
  }) : _subjectPerformance = subjectPerformance,
       _achievements = achievements;

  factory _$MonthlyReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$MonthlyReportImplFromJson(json);

  @override
  final String userId;
  @override
  final int month;
  // 1-12
  @override
  final int year;
  @override
  final int totalMinutes;
  @override
  final int totalQuizzesCompleted;
  @override
  final double averageAccuracy;
  @override
  final int badgesEarned;
  @override
  final int coinsEarned;
  @override
  final int friendsAdded;
  @override
  final String growthTrend;
  // 'improving', 'stable', 'declining'
  final Map<String, dynamic> _subjectPerformance;
  // 'improving', 'stable', 'declining'
  @override
  Map<String, dynamic> get subjectPerformance {
    if (_subjectPerformance is EqualUnmodifiableMapView)
      return _subjectPerformance;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_subjectPerformance);
  }

  // { 'kokugo': { 'accuracy': 85, 'time': 120 } }
  final List<String> _achievements;
  // { 'kokugo': { 'accuracy': 85, 'time': 120 } }
  @override
  List<String> get achievements {
    if (_achievements is EqualUnmodifiableListView) return _achievements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_achievements);
  }

  @override
  final int? longestStreak;
  // 最長連続学習日数
  @override
  final int? newCharactersUnlocked;
  @override
  final double? improvementRate;
  // 前月比の改善率（%）
  @override
  final String? recommendation;

  @override
  String toString() {
    return 'MonthlyReport(userId: $userId, month: $month, year: $year, totalMinutes: $totalMinutes, totalQuizzesCompleted: $totalQuizzesCompleted, averageAccuracy: $averageAccuracy, badgesEarned: $badgesEarned, coinsEarned: $coinsEarned, friendsAdded: $friendsAdded, growthTrend: $growthTrend, subjectPerformance: $subjectPerformance, achievements: $achievements, longestStreak: $longestStreak, newCharactersUnlocked: $newCharactersUnlocked, improvementRate: $improvementRate, recommendation: $recommendation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthlyReportImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.totalMinutes, totalMinutes) ||
                other.totalMinutes == totalMinutes) &&
            (identical(other.totalQuizzesCompleted, totalQuizzesCompleted) ||
                other.totalQuizzesCompleted == totalQuizzesCompleted) &&
            (identical(other.averageAccuracy, averageAccuracy) ||
                other.averageAccuracy == averageAccuracy) &&
            (identical(other.badgesEarned, badgesEarned) ||
                other.badgesEarned == badgesEarned) &&
            (identical(other.coinsEarned, coinsEarned) ||
                other.coinsEarned == coinsEarned) &&
            (identical(other.friendsAdded, friendsAdded) ||
                other.friendsAdded == friendsAdded) &&
            (identical(other.growthTrend, growthTrend) ||
                other.growthTrend == growthTrend) &&
            const DeepCollectionEquality().equals(
              other._subjectPerformance,
              _subjectPerformance,
            ) &&
            const DeepCollectionEquality().equals(
              other._achievements,
              _achievements,
            ) &&
            (identical(other.longestStreak, longestStreak) ||
                other.longestStreak == longestStreak) &&
            (identical(other.newCharactersUnlocked, newCharactersUnlocked) ||
                other.newCharactersUnlocked == newCharactersUnlocked) &&
            (identical(other.improvementRate, improvementRate) ||
                other.improvementRate == improvementRate) &&
            (identical(other.recommendation, recommendation) ||
                other.recommendation == recommendation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    month,
    year,
    totalMinutes,
    totalQuizzesCompleted,
    averageAccuracy,
    badgesEarned,
    coinsEarned,
    friendsAdded,
    growthTrend,
    const DeepCollectionEquality().hash(_subjectPerformance),
    const DeepCollectionEquality().hash(_achievements),
    longestStreak,
    newCharactersUnlocked,
    improvementRate,
    recommendation,
  );

  /// Create a copy of MonthlyReport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthlyReportImplCopyWith<_$MonthlyReportImpl> get copyWith =>
      __$$MonthlyReportImplCopyWithImpl<_$MonthlyReportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MonthlyReportImplToJson(this);
  }
}

abstract class _MonthlyReport implements MonthlyReport {
  const factory _MonthlyReport({
    required final String userId,
    required final int month,
    required final int year,
    required final int totalMinutes,
    required final int totalQuizzesCompleted,
    required final double averageAccuracy,
    required final int badgesEarned,
    required final int coinsEarned,
    required final int friendsAdded,
    required final String growthTrend,
    required final Map<String, dynamic> subjectPerformance,
    required final List<String> achievements,
    final int? longestStreak,
    final int? newCharactersUnlocked,
    final double? improvementRate,
    final String? recommendation,
  }) = _$MonthlyReportImpl;

  factory _MonthlyReport.fromJson(Map<String, dynamic> json) =
      _$MonthlyReportImpl.fromJson;

  @override
  String get userId;
  @override
  int get month; // 1-12
  @override
  int get year;
  @override
  int get totalMinutes;
  @override
  int get totalQuizzesCompleted;
  @override
  double get averageAccuracy;
  @override
  int get badgesEarned;
  @override
  int get coinsEarned;
  @override
  int get friendsAdded;
  @override
  String get growthTrend; // 'improving', 'stable', 'declining'
  @override
  Map<String, dynamic> get subjectPerformance; // { 'kokugo': { 'accuracy': 85, 'time': 120 } }
  @override
  List<String> get achievements;
  @override
  int? get longestStreak; // 最長連続学習日数
  @override
  int? get newCharactersUnlocked;
  @override
  double? get improvementRate; // 前月比の改善率（%）
  @override
  String? get recommendation;

  /// Create a copy of MonthlyReport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MonthlyReportImplCopyWith<_$MonthlyReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LearningGoal _$LearningGoalFromJson(Map<String, dynamic> json) {
  return _LearningGoal.fromJson(json);
}

/// @nodoc
mixin _$LearningGoal {
  String get userId => throw _privateConstructorUsedError;
  String get goalId => throw _privateConstructorUsedError;
  String get goalType =>
      throw _privateConstructorUsedError; // 'daily_time', 'quizzes', 'accuracy', 'streak'
  int get targetValue => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime? get deadline => throw _privateConstructorUsedError;
  int get currentProgress => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;
  GoalStatus? get status => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get rewards => throw _privateConstructorUsedError; // 達成時の報酬コイン
  double? get difficulty => throw _privateConstructorUsedError;

  /// Serializes this LearningGoal to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LearningGoal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LearningGoalCopyWith<LearningGoal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningGoalCopyWith<$Res> {
  factory $LearningGoalCopyWith(
    LearningGoal value,
    $Res Function(LearningGoal) then,
  ) = _$LearningGoalCopyWithImpl<$Res, LearningGoal>;
  @useResult
  $Res call({
    String userId,
    String goalId,
    String goalType,
    int targetValue,
    DateTime startDate,
    DateTime? deadline,
    int currentProgress,
    bool isCompleted,
    DateTime? completedAt,
    GoalStatus? status,
    String? description,
    int? rewards,
    double? difficulty,
  });
}

/// @nodoc
class _$LearningGoalCopyWithImpl<$Res, $Val extends LearningGoal>
    implements $LearningGoalCopyWith<$Res> {
  _$LearningGoalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LearningGoal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? goalId = null,
    Object? goalType = null,
    Object? targetValue = null,
    Object? startDate = null,
    Object? deadline = freezed,
    Object? currentProgress = null,
    Object? isCompleted = null,
    Object? completedAt = freezed,
    Object? status = freezed,
    Object? description = freezed,
    Object? rewards = freezed,
    Object? difficulty = freezed,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            goalId: null == goalId
                ? _value.goalId
                : goalId // ignore: cast_nullable_to_non_nullable
                      as String,
            goalType: null == goalType
                ? _value.goalType
                : goalType // ignore: cast_nullable_to_non_nullable
                      as String,
            targetValue: null == targetValue
                ? _value.targetValue
                : targetValue // ignore: cast_nullable_to_non_nullable
                      as int,
            startDate: null == startDate
                ? _value.startDate
                : startDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            deadline: freezed == deadline
                ? _value.deadline
                : deadline // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            currentProgress: null == currentProgress
                ? _value.currentProgress
                : currentProgress // ignore: cast_nullable_to_non_nullable
                      as int,
            isCompleted: null == isCompleted
                ? _value.isCompleted
                : isCompleted // ignore: cast_nullable_to_non_nullable
                      as bool,
            completedAt: freezed == completedAt
                ? _value.completedAt
                : completedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as GoalStatus?,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            rewards: freezed == rewards
                ? _value.rewards
                : rewards // ignore: cast_nullable_to_non_nullable
                      as int?,
            difficulty: freezed == difficulty
                ? _value.difficulty
                : difficulty // ignore: cast_nullable_to_non_nullable
                      as double?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LearningGoalImplCopyWith<$Res>
    implements $LearningGoalCopyWith<$Res> {
  factory _$$LearningGoalImplCopyWith(
    _$LearningGoalImpl value,
    $Res Function(_$LearningGoalImpl) then,
  ) = __$$LearningGoalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    String goalId,
    String goalType,
    int targetValue,
    DateTime startDate,
    DateTime? deadline,
    int currentProgress,
    bool isCompleted,
    DateTime? completedAt,
    GoalStatus? status,
    String? description,
    int? rewards,
    double? difficulty,
  });
}

/// @nodoc
class __$$LearningGoalImplCopyWithImpl<$Res>
    extends _$LearningGoalCopyWithImpl<$Res, _$LearningGoalImpl>
    implements _$$LearningGoalImplCopyWith<$Res> {
  __$$LearningGoalImplCopyWithImpl(
    _$LearningGoalImpl _value,
    $Res Function(_$LearningGoalImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LearningGoal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? goalId = null,
    Object? goalType = null,
    Object? targetValue = null,
    Object? startDate = null,
    Object? deadline = freezed,
    Object? currentProgress = null,
    Object? isCompleted = null,
    Object? completedAt = freezed,
    Object? status = freezed,
    Object? description = freezed,
    Object? rewards = freezed,
    Object? difficulty = freezed,
  }) {
    return _then(
      _$LearningGoalImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        goalId: null == goalId
            ? _value.goalId
            : goalId // ignore: cast_nullable_to_non_nullable
                  as String,
        goalType: null == goalType
            ? _value.goalType
            : goalType // ignore: cast_nullable_to_non_nullable
                  as String,
        targetValue: null == targetValue
            ? _value.targetValue
            : targetValue // ignore: cast_nullable_to_non_nullable
                  as int,
        startDate: null == startDate
            ? _value.startDate
            : startDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        deadline: freezed == deadline
            ? _value.deadline
            : deadline // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        currentProgress: null == currentProgress
            ? _value.currentProgress
            : currentProgress // ignore: cast_nullable_to_non_nullable
                  as int,
        isCompleted: null == isCompleted
            ? _value.isCompleted
            : isCompleted // ignore: cast_nullable_to_non_nullable
                  as bool,
        completedAt: freezed == completedAt
            ? _value.completedAt
            : completedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as GoalStatus?,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        rewards: freezed == rewards
            ? _value.rewards
            : rewards // ignore: cast_nullable_to_non_nullable
                  as int?,
        difficulty: freezed == difficulty
            ? _value.difficulty
            : difficulty // ignore: cast_nullable_to_non_nullable
                  as double?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LearningGoalImpl implements _LearningGoal {
  const _$LearningGoalImpl({
    required this.userId,
    required this.goalId,
    required this.goalType,
    required this.targetValue,
    required this.startDate,
    this.deadline,
    required this.currentProgress,
    required this.isCompleted,
    this.completedAt,
    this.status,
    this.description,
    this.rewards,
    this.difficulty,
  });

  factory _$LearningGoalImpl.fromJson(Map<String, dynamic> json) =>
      _$$LearningGoalImplFromJson(json);

  @override
  final String userId;
  @override
  final String goalId;
  @override
  final String goalType;
  // 'daily_time', 'quizzes', 'accuracy', 'streak'
  @override
  final int targetValue;
  @override
  final DateTime startDate;
  @override
  final DateTime? deadline;
  @override
  final int currentProgress;
  @override
  final bool isCompleted;
  @override
  final DateTime? completedAt;
  @override
  final GoalStatus? status;
  @override
  final String? description;
  @override
  final int? rewards;
  // 達成時の報酬コイン
  @override
  final double? difficulty;

  @override
  String toString() {
    return 'LearningGoal(userId: $userId, goalId: $goalId, goalType: $goalType, targetValue: $targetValue, startDate: $startDate, deadline: $deadline, currentProgress: $currentProgress, isCompleted: $isCompleted, completedAt: $completedAt, status: $status, description: $description, rewards: $rewards, difficulty: $difficulty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearningGoalImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.goalId, goalId) || other.goalId == goalId) &&
            (identical(other.goalType, goalType) ||
                other.goalType == goalType) &&
            (identical(other.targetValue, targetValue) ||
                other.targetValue == targetValue) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.currentProgress, currentProgress) ||
                other.currentProgress == currentProgress) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.rewards, rewards) || other.rewards == rewards) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    goalId,
    goalType,
    targetValue,
    startDate,
    deadline,
    currentProgress,
    isCompleted,
    completedAt,
    status,
    description,
    rewards,
    difficulty,
  );

  /// Create a copy of LearningGoal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningGoalImplCopyWith<_$LearningGoalImpl> get copyWith =>
      __$$LearningGoalImplCopyWithImpl<_$LearningGoalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LearningGoalImplToJson(this);
  }
}

abstract class _LearningGoal implements LearningGoal {
  const factory _LearningGoal({
    required final String userId,
    required final String goalId,
    required final String goalType,
    required final int targetValue,
    required final DateTime startDate,
    final DateTime? deadline,
    required final int currentProgress,
    required final bool isCompleted,
    final DateTime? completedAt,
    final GoalStatus? status,
    final String? description,
    final int? rewards,
    final double? difficulty,
  }) = _$LearningGoalImpl;

  factory _LearningGoal.fromJson(Map<String, dynamic> json) =
      _$LearningGoalImpl.fromJson;

  @override
  String get userId;
  @override
  String get goalId;
  @override
  String get goalType; // 'daily_time', 'quizzes', 'accuracy', 'streak'
  @override
  int get targetValue;
  @override
  DateTime get startDate;
  @override
  DateTime? get deadline;
  @override
  int get currentProgress;
  @override
  bool get isCompleted;
  @override
  DateTime? get completedAt;
  @override
  GoalStatus? get status;
  @override
  String? get description;
  @override
  int? get rewards; // 達成時の報酬コイン
  @override
  double? get difficulty;

  /// Create a copy of LearningGoal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LearningGoalImplCopyWith<_$LearningGoalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AnalyticsConfig _$AnalyticsConfigFromJson(Map<String, dynamic> json) {
  return _AnalyticsConfig.fromJson(json);
}

/// @nodoc
mixin _$AnalyticsConfig {
  bool get enableMetricsTracking => throw _privateConstructorUsedError;
  bool get enableReportGeneration => throw _privateConstructorUsedError;
  List<String> get enabledMetrics => throw _privateConstructorUsedError;
  int get reportGenerationIntervalDays =>
      throw _privateConstructorUsedError; // 7 or 30
  Map<String, int> get goalsConfig =>
      throw _privateConstructorUsedError; // { 'daily_time': 30, 'quizzes': 5 }
  bool? get enableSegmentation => throw _privateConstructorUsedError;
  bool? get enableAIPredictions => throw _privateConstructorUsedError;
  Map<String, dynamic>? get segmentThresholds =>
      throw _privateConstructorUsedError;

  /// Serializes this AnalyticsConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnalyticsConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnalyticsConfigCopyWith<AnalyticsConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsConfigCopyWith<$Res> {
  factory $AnalyticsConfigCopyWith(
    AnalyticsConfig value,
    $Res Function(AnalyticsConfig) then,
  ) = _$AnalyticsConfigCopyWithImpl<$Res, AnalyticsConfig>;
  @useResult
  $Res call({
    bool enableMetricsTracking,
    bool enableReportGeneration,
    List<String> enabledMetrics,
    int reportGenerationIntervalDays,
    Map<String, int> goalsConfig,
    bool? enableSegmentation,
    bool? enableAIPredictions,
    Map<String, dynamic>? segmentThresholds,
  });
}

/// @nodoc
class _$AnalyticsConfigCopyWithImpl<$Res, $Val extends AnalyticsConfig>
    implements $AnalyticsConfigCopyWith<$Res> {
  _$AnalyticsConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnalyticsConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enableMetricsTracking = null,
    Object? enableReportGeneration = null,
    Object? enabledMetrics = null,
    Object? reportGenerationIntervalDays = null,
    Object? goalsConfig = null,
    Object? enableSegmentation = freezed,
    Object? enableAIPredictions = freezed,
    Object? segmentThresholds = freezed,
  }) {
    return _then(
      _value.copyWith(
            enableMetricsTracking: null == enableMetricsTracking
                ? _value.enableMetricsTracking
                : enableMetricsTracking // ignore: cast_nullable_to_non_nullable
                      as bool,
            enableReportGeneration: null == enableReportGeneration
                ? _value.enableReportGeneration
                : enableReportGeneration // ignore: cast_nullable_to_non_nullable
                      as bool,
            enabledMetrics: null == enabledMetrics
                ? _value.enabledMetrics
                : enabledMetrics // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            reportGenerationIntervalDays: null == reportGenerationIntervalDays
                ? _value.reportGenerationIntervalDays
                : reportGenerationIntervalDays // ignore: cast_nullable_to_non_nullable
                      as int,
            goalsConfig: null == goalsConfig
                ? _value.goalsConfig
                : goalsConfig // ignore: cast_nullable_to_non_nullable
                      as Map<String, int>,
            enableSegmentation: freezed == enableSegmentation
                ? _value.enableSegmentation
                : enableSegmentation // ignore: cast_nullable_to_non_nullable
                      as bool?,
            enableAIPredictions: freezed == enableAIPredictions
                ? _value.enableAIPredictions
                : enableAIPredictions // ignore: cast_nullable_to_non_nullable
                      as bool?,
            segmentThresholds: freezed == segmentThresholds
                ? _value.segmentThresholds
                : segmentThresholds // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AnalyticsConfigImplCopyWith<$Res>
    implements $AnalyticsConfigCopyWith<$Res> {
  factory _$$AnalyticsConfigImplCopyWith(
    _$AnalyticsConfigImpl value,
    $Res Function(_$AnalyticsConfigImpl) then,
  ) = __$$AnalyticsConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool enableMetricsTracking,
    bool enableReportGeneration,
    List<String> enabledMetrics,
    int reportGenerationIntervalDays,
    Map<String, int> goalsConfig,
    bool? enableSegmentation,
    bool? enableAIPredictions,
    Map<String, dynamic>? segmentThresholds,
  });
}

/// @nodoc
class __$$AnalyticsConfigImplCopyWithImpl<$Res>
    extends _$AnalyticsConfigCopyWithImpl<$Res, _$AnalyticsConfigImpl>
    implements _$$AnalyticsConfigImplCopyWith<$Res> {
  __$$AnalyticsConfigImplCopyWithImpl(
    _$AnalyticsConfigImpl _value,
    $Res Function(_$AnalyticsConfigImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AnalyticsConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enableMetricsTracking = null,
    Object? enableReportGeneration = null,
    Object? enabledMetrics = null,
    Object? reportGenerationIntervalDays = null,
    Object? goalsConfig = null,
    Object? enableSegmentation = freezed,
    Object? enableAIPredictions = freezed,
    Object? segmentThresholds = freezed,
  }) {
    return _then(
      _$AnalyticsConfigImpl(
        enableMetricsTracking: null == enableMetricsTracking
            ? _value.enableMetricsTracking
            : enableMetricsTracking // ignore: cast_nullable_to_non_nullable
                  as bool,
        enableReportGeneration: null == enableReportGeneration
            ? _value.enableReportGeneration
            : enableReportGeneration // ignore: cast_nullable_to_non_nullable
                  as bool,
        enabledMetrics: null == enabledMetrics
            ? _value._enabledMetrics
            : enabledMetrics // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        reportGenerationIntervalDays: null == reportGenerationIntervalDays
            ? _value.reportGenerationIntervalDays
            : reportGenerationIntervalDays // ignore: cast_nullable_to_non_nullable
                  as int,
        goalsConfig: null == goalsConfig
            ? _value._goalsConfig
            : goalsConfig // ignore: cast_nullable_to_non_nullable
                  as Map<String, int>,
        enableSegmentation: freezed == enableSegmentation
            ? _value.enableSegmentation
            : enableSegmentation // ignore: cast_nullable_to_non_nullable
                  as bool?,
        enableAIPredictions: freezed == enableAIPredictions
            ? _value.enableAIPredictions
            : enableAIPredictions // ignore: cast_nullable_to_non_nullable
                  as bool?,
        segmentThresholds: freezed == segmentThresholds
            ? _value._segmentThresholds
            : segmentThresholds // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AnalyticsConfigImpl implements _AnalyticsConfig {
  const _$AnalyticsConfigImpl({
    required this.enableMetricsTracking,
    required this.enableReportGeneration,
    required final List<String> enabledMetrics,
    required this.reportGenerationIntervalDays,
    required final Map<String, int> goalsConfig,
    this.enableSegmentation,
    this.enableAIPredictions,
    final Map<String, dynamic>? segmentThresholds,
  }) : _enabledMetrics = enabledMetrics,
       _goalsConfig = goalsConfig,
       _segmentThresholds = segmentThresholds;

  factory _$AnalyticsConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnalyticsConfigImplFromJson(json);

  @override
  final bool enableMetricsTracking;
  @override
  final bool enableReportGeneration;
  final List<String> _enabledMetrics;
  @override
  List<String> get enabledMetrics {
    if (_enabledMetrics is EqualUnmodifiableListView) return _enabledMetrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_enabledMetrics);
  }

  @override
  final int reportGenerationIntervalDays;
  // 7 or 30
  final Map<String, int> _goalsConfig;
  // 7 or 30
  @override
  Map<String, int> get goalsConfig {
    if (_goalsConfig is EqualUnmodifiableMapView) return _goalsConfig;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_goalsConfig);
  }

  // { 'daily_time': 30, 'quizzes': 5 }
  @override
  final bool? enableSegmentation;
  @override
  final bool? enableAIPredictions;
  final Map<String, dynamic>? _segmentThresholds;
  @override
  Map<String, dynamic>? get segmentThresholds {
    final value = _segmentThresholds;
    if (value == null) return null;
    if (_segmentThresholds is EqualUnmodifiableMapView)
      return _segmentThresholds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'AnalyticsConfig(enableMetricsTracking: $enableMetricsTracking, enableReportGeneration: $enableReportGeneration, enabledMetrics: $enabledMetrics, reportGenerationIntervalDays: $reportGenerationIntervalDays, goalsConfig: $goalsConfig, enableSegmentation: $enableSegmentation, enableAIPredictions: $enableAIPredictions, segmentThresholds: $segmentThresholds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalyticsConfigImpl &&
            (identical(other.enableMetricsTracking, enableMetricsTracking) ||
                other.enableMetricsTracking == enableMetricsTracking) &&
            (identical(other.enableReportGeneration, enableReportGeneration) ||
                other.enableReportGeneration == enableReportGeneration) &&
            const DeepCollectionEquality().equals(
              other._enabledMetrics,
              _enabledMetrics,
            ) &&
            (identical(
                  other.reportGenerationIntervalDays,
                  reportGenerationIntervalDays,
                ) ||
                other.reportGenerationIntervalDays ==
                    reportGenerationIntervalDays) &&
            const DeepCollectionEquality().equals(
              other._goalsConfig,
              _goalsConfig,
            ) &&
            (identical(other.enableSegmentation, enableSegmentation) ||
                other.enableSegmentation == enableSegmentation) &&
            (identical(other.enableAIPredictions, enableAIPredictions) ||
                other.enableAIPredictions == enableAIPredictions) &&
            const DeepCollectionEquality().equals(
              other._segmentThresholds,
              _segmentThresholds,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    enableMetricsTracking,
    enableReportGeneration,
    const DeepCollectionEquality().hash(_enabledMetrics),
    reportGenerationIntervalDays,
    const DeepCollectionEquality().hash(_goalsConfig),
    enableSegmentation,
    enableAIPredictions,
    const DeepCollectionEquality().hash(_segmentThresholds),
  );

  /// Create a copy of AnalyticsConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalyticsConfigImplCopyWith<_$AnalyticsConfigImpl> get copyWith =>
      __$$AnalyticsConfigImplCopyWithImpl<_$AnalyticsConfigImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalyticsConfigImplToJson(this);
  }
}

abstract class _AnalyticsConfig implements AnalyticsConfig {
  const factory _AnalyticsConfig({
    required final bool enableMetricsTracking,
    required final bool enableReportGeneration,
    required final List<String> enabledMetrics,
    required final int reportGenerationIntervalDays,
    required final Map<String, int> goalsConfig,
    final bool? enableSegmentation,
    final bool? enableAIPredictions,
    final Map<String, dynamic>? segmentThresholds,
  }) = _$AnalyticsConfigImpl;

  factory _AnalyticsConfig.fromJson(Map<String, dynamic> json) =
      _$AnalyticsConfigImpl.fromJson;

  @override
  bool get enableMetricsTracking;
  @override
  bool get enableReportGeneration;
  @override
  List<String> get enabledMetrics;
  @override
  int get reportGenerationIntervalDays; // 7 or 30
  @override
  Map<String, int> get goalsConfig; // { 'daily_time': 30, 'quizzes': 5 }
  @override
  bool? get enableSegmentation;
  @override
  bool? get enableAIPredictions;
  @override
  Map<String, dynamic>? get segmentThresholds;

  /// Create a copy of AnalyticsConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnalyticsConfigImplCopyWith<_$AnalyticsConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BehaviorAnalytics _$BehaviorAnalyticsFromJson(Map<String, dynamic> json) {
  return _BehaviorAnalytics.fromJson(json);
}

/// @nodoc
mixin _$BehaviorAnalytics {
  String get userId => throw _privateConstructorUsedError;
  DateTime get analyzedDate => throw _privateConstructorUsedError;
  Map<String, int> get sessionCounts =>
      throw _privateConstructorUsedError; // { 'morning': 5, 'afternoon': 3 }
  Map<String, int> get preferredTopics => throw _privateConstructorUsedError;
  int get averageSessionDurationMinutes => throw _privateConstructorUsedError;
  double get weekdayVsWeekendRatio => throw _privateConstructorUsedError;
  int get peakActivityHour => throw _privateConstructorUsedError; // 0-23
  String? get learningPattern =>
      throw _privateConstructorUsedError; // 'bursty', 'consistent', 'irregular'
  int? get predictedNextActivationDays => throw _privateConstructorUsedError;

  /// Serializes this BehaviorAnalytics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BehaviorAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BehaviorAnalyticsCopyWith<BehaviorAnalytics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BehaviorAnalyticsCopyWith<$Res> {
  factory $BehaviorAnalyticsCopyWith(
    BehaviorAnalytics value,
    $Res Function(BehaviorAnalytics) then,
  ) = _$BehaviorAnalyticsCopyWithImpl<$Res, BehaviorAnalytics>;
  @useResult
  $Res call({
    String userId,
    DateTime analyzedDate,
    Map<String, int> sessionCounts,
    Map<String, int> preferredTopics,
    int averageSessionDurationMinutes,
    double weekdayVsWeekendRatio,
    int peakActivityHour,
    String? learningPattern,
    int? predictedNextActivationDays,
  });
}

/// @nodoc
class _$BehaviorAnalyticsCopyWithImpl<$Res, $Val extends BehaviorAnalytics>
    implements $BehaviorAnalyticsCopyWith<$Res> {
  _$BehaviorAnalyticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BehaviorAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? analyzedDate = null,
    Object? sessionCounts = null,
    Object? preferredTopics = null,
    Object? averageSessionDurationMinutes = null,
    Object? weekdayVsWeekendRatio = null,
    Object? peakActivityHour = null,
    Object? learningPattern = freezed,
    Object? predictedNextActivationDays = freezed,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            analyzedDate: null == analyzedDate
                ? _value.analyzedDate
                : analyzedDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            sessionCounts: null == sessionCounts
                ? _value.sessionCounts
                : sessionCounts // ignore: cast_nullable_to_non_nullable
                      as Map<String, int>,
            preferredTopics: null == preferredTopics
                ? _value.preferredTopics
                : preferredTopics // ignore: cast_nullable_to_non_nullable
                      as Map<String, int>,
            averageSessionDurationMinutes: null == averageSessionDurationMinutes
                ? _value.averageSessionDurationMinutes
                : averageSessionDurationMinutes // ignore: cast_nullable_to_non_nullable
                      as int,
            weekdayVsWeekendRatio: null == weekdayVsWeekendRatio
                ? _value.weekdayVsWeekendRatio
                : weekdayVsWeekendRatio // ignore: cast_nullable_to_non_nullable
                      as double,
            peakActivityHour: null == peakActivityHour
                ? _value.peakActivityHour
                : peakActivityHour // ignore: cast_nullable_to_non_nullable
                      as int,
            learningPattern: freezed == learningPattern
                ? _value.learningPattern
                : learningPattern // ignore: cast_nullable_to_non_nullable
                      as String?,
            predictedNextActivationDays: freezed == predictedNextActivationDays
                ? _value.predictedNextActivationDays
                : predictedNextActivationDays // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BehaviorAnalyticsImplCopyWith<$Res>
    implements $BehaviorAnalyticsCopyWith<$Res> {
  factory _$$BehaviorAnalyticsImplCopyWith(
    _$BehaviorAnalyticsImpl value,
    $Res Function(_$BehaviorAnalyticsImpl) then,
  ) = __$$BehaviorAnalyticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    DateTime analyzedDate,
    Map<String, int> sessionCounts,
    Map<String, int> preferredTopics,
    int averageSessionDurationMinutes,
    double weekdayVsWeekendRatio,
    int peakActivityHour,
    String? learningPattern,
    int? predictedNextActivationDays,
  });
}

/// @nodoc
class __$$BehaviorAnalyticsImplCopyWithImpl<$Res>
    extends _$BehaviorAnalyticsCopyWithImpl<$Res, _$BehaviorAnalyticsImpl>
    implements _$$BehaviorAnalyticsImplCopyWith<$Res> {
  __$$BehaviorAnalyticsImplCopyWithImpl(
    _$BehaviorAnalyticsImpl _value,
    $Res Function(_$BehaviorAnalyticsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BehaviorAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? analyzedDate = null,
    Object? sessionCounts = null,
    Object? preferredTopics = null,
    Object? averageSessionDurationMinutes = null,
    Object? weekdayVsWeekendRatio = null,
    Object? peakActivityHour = null,
    Object? learningPattern = freezed,
    Object? predictedNextActivationDays = freezed,
  }) {
    return _then(
      _$BehaviorAnalyticsImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        analyzedDate: null == analyzedDate
            ? _value.analyzedDate
            : analyzedDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        sessionCounts: null == sessionCounts
            ? _value._sessionCounts
            : sessionCounts // ignore: cast_nullable_to_non_nullable
                  as Map<String, int>,
        preferredTopics: null == preferredTopics
            ? _value._preferredTopics
            : preferredTopics // ignore: cast_nullable_to_non_nullable
                  as Map<String, int>,
        averageSessionDurationMinutes: null == averageSessionDurationMinutes
            ? _value.averageSessionDurationMinutes
            : averageSessionDurationMinutes // ignore: cast_nullable_to_non_nullable
                  as int,
        weekdayVsWeekendRatio: null == weekdayVsWeekendRatio
            ? _value.weekdayVsWeekendRatio
            : weekdayVsWeekendRatio // ignore: cast_nullable_to_non_nullable
                  as double,
        peakActivityHour: null == peakActivityHour
            ? _value.peakActivityHour
            : peakActivityHour // ignore: cast_nullable_to_non_nullable
                  as int,
        learningPattern: freezed == learningPattern
            ? _value.learningPattern
            : learningPattern // ignore: cast_nullable_to_non_nullable
                  as String?,
        predictedNextActivationDays: freezed == predictedNextActivationDays
            ? _value.predictedNextActivationDays
            : predictedNextActivationDays // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BehaviorAnalyticsImpl implements _BehaviorAnalytics {
  const _$BehaviorAnalyticsImpl({
    required this.userId,
    required this.analyzedDate,
    required final Map<String, int> sessionCounts,
    required final Map<String, int> preferredTopics,
    required this.averageSessionDurationMinutes,
    required this.weekdayVsWeekendRatio,
    required this.peakActivityHour,
    this.learningPattern,
    this.predictedNextActivationDays,
  }) : _sessionCounts = sessionCounts,
       _preferredTopics = preferredTopics;

  factory _$BehaviorAnalyticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BehaviorAnalyticsImplFromJson(json);

  @override
  final String userId;
  @override
  final DateTime analyzedDate;
  final Map<String, int> _sessionCounts;
  @override
  Map<String, int> get sessionCounts {
    if (_sessionCounts is EqualUnmodifiableMapView) return _sessionCounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_sessionCounts);
  }

  // { 'morning': 5, 'afternoon': 3 }
  final Map<String, int> _preferredTopics;
  // { 'morning': 5, 'afternoon': 3 }
  @override
  Map<String, int> get preferredTopics {
    if (_preferredTopics is EqualUnmodifiableMapView) return _preferredTopics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_preferredTopics);
  }

  @override
  final int averageSessionDurationMinutes;
  @override
  final double weekdayVsWeekendRatio;
  @override
  final int peakActivityHour;
  // 0-23
  @override
  final String? learningPattern;
  // 'bursty', 'consistent', 'irregular'
  @override
  final int? predictedNextActivationDays;

  @override
  String toString() {
    return 'BehaviorAnalytics(userId: $userId, analyzedDate: $analyzedDate, sessionCounts: $sessionCounts, preferredTopics: $preferredTopics, averageSessionDurationMinutes: $averageSessionDurationMinutes, weekdayVsWeekendRatio: $weekdayVsWeekendRatio, peakActivityHour: $peakActivityHour, learningPattern: $learningPattern, predictedNextActivationDays: $predictedNextActivationDays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BehaviorAnalyticsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.analyzedDate, analyzedDate) ||
                other.analyzedDate == analyzedDate) &&
            const DeepCollectionEquality().equals(
              other._sessionCounts,
              _sessionCounts,
            ) &&
            const DeepCollectionEquality().equals(
              other._preferredTopics,
              _preferredTopics,
            ) &&
            (identical(
                  other.averageSessionDurationMinutes,
                  averageSessionDurationMinutes,
                ) ||
                other.averageSessionDurationMinutes ==
                    averageSessionDurationMinutes) &&
            (identical(other.weekdayVsWeekendRatio, weekdayVsWeekendRatio) ||
                other.weekdayVsWeekendRatio == weekdayVsWeekendRatio) &&
            (identical(other.peakActivityHour, peakActivityHour) ||
                other.peakActivityHour == peakActivityHour) &&
            (identical(other.learningPattern, learningPattern) ||
                other.learningPattern == learningPattern) &&
            (identical(
                  other.predictedNextActivationDays,
                  predictedNextActivationDays,
                ) ||
                other.predictedNextActivationDays ==
                    predictedNextActivationDays));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    analyzedDate,
    const DeepCollectionEquality().hash(_sessionCounts),
    const DeepCollectionEquality().hash(_preferredTopics),
    averageSessionDurationMinutes,
    weekdayVsWeekendRatio,
    peakActivityHour,
    learningPattern,
    predictedNextActivationDays,
  );

  /// Create a copy of BehaviorAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BehaviorAnalyticsImplCopyWith<_$BehaviorAnalyticsImpl> get copyWith =>
      __$$BehaviorAnalyticsImplCopyWithImpl<_$BehaviorAnalyticsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BehaviorAnalyticsImplToJson(this);
  }
}

abstract class _BehaviorAnalytics implements BehaviorAnalytics {
  const factory _BehaviorAnalytics({
    required final String userId,
    required final DateTime analyzedDate,
    required final Map<String, int> sessionCounts,
    required final Map<String, int> preferredTopics,
    required final int averageSessionDurationMinutes,
    required final double weekdayVsWeekendRatio,
    required final int peakActivityHour,
    final String? learningPattern,
    final int? predictedNextActivationDays,
  }) = _$BehaviorAnalyticsImpl;

  factory _BehaviorAnalytics.fromJson(Map<String, dynamic> json) =
      _$BehaviorAnalyticsImpl.fromJson;

  @override
  String get userId;
  @override
  DateTime get analyzedDate;
  @override
  Map<String, int> get sessionCounts; // { 'morning': 5, 'afternoon': 3 }
  @override
  Map<String, int> get preferredTopics;
  @override
  int get averageSessionDurationMinutes;
  @override
  double get weekdayVsWeekendRatio;
  @override
  int get peakActivityHour; // 0-23
  @override
  String? get learningPattern; // 'bursty', 'consistent', 'irregular'
  @override
  int? get predictedNextActivationDays;

  /// Create a copy of BehaviorAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BehaviorAnalyticsImplCopyWith<_$BehaviorAnalyticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PopulationStats _$PopulationStatsFromJson(Map<String, dynamic> json) {
  return _PopulationStats.fromJson(json);
}

/// @nodoc
mixin _$PopulationStats {
  int get totalUsers => throw _privateConstructorUsedError;
  int get activeUsersLast7Days => throw _privateConstructorUsedError;
  int get activeUsersLast30Days => throw _privateConstructorUsedError;
  int get churnedUsersLast30Days => throw _privateConstructorUsedError;
  double get churnRate => throw _privateConstructorUsedError;
  DateTime get sampledAt => throw _privateConstructorUsedError;
  Map<String, int> get segmentDistribution =>
      throw _privateConstructorUsedError; // { 'newUser': 100, 'active': 500 }
  Map<String, double>? get retentionByDay =>
      throw _privateConstructorUsedError; // 日数ごとの継続率
  Map<String, int>? get ageGroupDistribution =>
      throw _privateConstructorUsedError;
  double? get mau => throw _privateConstructorUsedError; // 月間アクティブユーザー
  double? get dau => throw _privateConstructorUsedError;

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
    int activeUsersLast7Days,
    int activeUsersLast30Days,
    int churnedUsersLast30Days,
    double churnRate,
    DateTime sampledAt,
    Map<String, int> segmentDistribution,
    Map<String, double>? retentionByDay,
    Map<String, int>? ageGroupDistribution,
    double? mau,
    double? dau,
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
    Object? activeUsersLast7Days = null,
    Object? activeUsersLast30Days = null,
    Object? churnedUsersLast30Days = null,
    Object? churnRate = null,
    Object? sampledAt = null,
    Object? segmentDistribution = null,
    Object? retentionByDay = freezed,
    Object? ageGroupDistribution = freezed,
    Object? mau = freezed,
    Object? dau = freezed,
  }) {
    return _then(
      _value.copyWith(
            totalUsers: null == totalUsers
                ? _value.totalUsers
                : totalUsers // ignore: cast_nullable_to_non_nullable
                      as int,
            activeUsersLast7Days: null == activeUsersLast7Days
                ? _value.activeUsersLast7Days
                : activeUsersLast7Days // ignore: cast_nullable_to_non_nullable
                      as int,
            activeUsersLast30Days: null == activeUsersLast30Days
                ? _value.activeUsersLast30Days
                : activeUsersLast30Days // ignore: cast_nullable_to_non_nullable
                      as int,
            churnedUsersLast30Days: null == churnedUsersLast30Days
                ? _value.churnedUsersLast30Days
                : churnedUsersLast30Days // ignore: cast_nullable_to_non_nullable
                      as int,
            churnRate: null == churnRate
                ? _value.churnRate
                : churnRate // ignore: cast_nullable_to_non_nullable
                      as double,
            sampledAt: null == sampledAt
                ? _value.sampledAt
                : sampledAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            segmentDistribution: null == segmentDistribution
                ? _value.segmentDistribution
                : segmentDistribution // ignore: cast_nullable_to_non_nullable
                      as Map<String, int>,
            retentionByDay: freezed == retentionByDay
                ? _value.retentionByDay
                : retentionByDay // ignore: cast_nullable_to_non_nullable
                      as Map<String, double>?,
            ageGroupDistribution: freezed == ageGroupDistribution
                ? _value.ageGroupDistribution
                : ageGroupDistribution // ignore: cast_nullable_to_non_nullable
                      as Map<String, int>?,
            mau: freezed == mau
                ? _value.mau
                : mau // ignore: cast_nullable_to_non_nullable
                      as double?,
            dau: freezed == dau
                ? _value.dau
                : dau // ignore: cast_nullable_to_non_nullable
                      as double?,
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
    int activeUsersLast7Days,
    int activeUsersLast30Days,
    int churnedUsersLast30Days,
    double churnRate,
    DateTime sampledAt,
    Map<String, int> segmentDistribution,
    Map<String, double>? retentionByDay,
    Map<String, int>? ageGroupDistribution,
    double? mau,
    double? dau,
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
    Object? activeUsersLast7Days = null,
    Object? activeUsersLast30Days = null,
    Object? churnedUsersLast30Days = null,
    Object? churnRate = null,
    Object? sampledAt = null,
    Object? segmentDistribution = null,
    Object? retentionByDay = freezed,
    Object? ageGroupDistribution = freezed,
    Object? mau = freezed,
    Object? dau = freezed,
  }) {
    return _then(
      _$PopulationStatsImpl(
        totalUsers: null == totalUsers
            ? _value.totalUsers
            : totalUsers // ignore: cast_nullable_to_non_nullable
                  as int,
        activeUsersLast7Days: null == activeUsersLast7Days
            ? _value.activeUsersLast7Days
            : activeUsersLast7Days // ignore: cast_nullable_to_non_nullable
                  as int,
        activeUsersLast30Days: null == activeUsersLast30Days
            ? _value.activeUsersLast30Days
            : activeUsersLast30Days // ignore: cast_nullable_to_non_nullable
                  as int,
        churnedUsersLast30Days: null == churnedUsersLast30Days
            ? _value.churnedUsersLast30Days
            : churnedUsersLast30Days // ignore: cast_nullable_to_non_nullable
                  as int,
        churnRate: null == churnRate
            ? _value.churnRate
            : churnRate // ignore: cast_nullable_to_non_nullable
                  as double,
        sampledAt: null == sampledAt
            ? _value.sampledAt
            : sampledAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        segmentDistribution: null == segmentDistribution
            ? _value._segmentDistribution
            : segmentDistribution // ignore: cast_nullable_to_non_nullable
                  as Map<String, int>,
        retentionByDay: freezed == retentionByDay
            ? _value._retentionByDay
            : retentionByDay // ignore: cast_nullable_to_non_nullable
                  as Map<String, double>?,
        ageGroupDistribution: freezed == ageGroupDistribution
            ? _value._ageGroupDistribution
            : ageGroupDistribution // ignore: cast_nullable_to_non_nullable
                  as Map<String, int>?,
        mau: freezed == mau
            ? _value.mau
            : mau // ignore: cast_nullable_to_non_nullable
                  as double?,
        dau: freezed == dau
            ? _value.dau
            : dau // ignore: cast_nullable_to_non_nullable
                  as double?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PopulationStatsImpl implements _PopulationStats {
  const _$PopulationStatsImpl({
    required this.totalUsers,
    required this.activeUsersLast7Days,
    required this.activeUsersLast30Days,
    required this.churnedUsersLast30Days,
    required this.churnRate,
    required this.sampledAt,
    required final Map<String, int> segmentDistribution,
    final Map<String, double>? retentionByDay,
    final Map<String, int>? ageGroupDistribution,
    this.mau,
    this.dau,
  }) : _segmentDistribution = segmentDistribution,
       _retentionByDay = retentionByDay,
       _ageGroupDistribution = ageGroupDistribution;

  factory _$PopulationStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PopulationStatsImplFromJson(json);

  @override
  final int totalUsers;
  @override
  final int activeUsersLast7Days;
  @override
  final int activeUsersLast30Days;
  @override
  final int churnedUsersLast30Days;
  @override
  final double churnRate;
  @override
  final DateTime sampledAt;
  final Map<String, int> _segmentDistribution;
  @override
  Map<String, int> get segmentDistribution {
    if (_segmentDistribution is EqualUnmodifiableMapView)
      return _segmentDistribution;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_segmentDistribution);
  }

  // { 'newUser': 100, 'active': 500 }
  final Map<String, double>? _retentionByDay;
  // { 'newUser': 100, 'active': 500 }
  @override
  Map<String, double>? get retentionByDay {
    final value = _retentionByDay;
    if (value == null) return null;
    if (_retentionByDay is EqualUnmodifiableMapView) return _retentionByDay;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  // 日数ごとの継続率
  final Map<String, int>? _ageGroupDistribution;
  // 日数ごとの継続率
  @override
  Map<String, int>? get ageGroupDistribution {
    final value = _ageGroupDistribution;
    if (value == null) return null;
    if (_ageGroupDistribution is EqualUnmodifiableMapView)
      return _ageGroupDistribution;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final double? mau;
  // 月間アクティブユーザー
  @override
  final double? dau;

  @override
  String toString() {
    return 'PopulationStats(totalUsers: $totalUsers, activeUsersLast7Days: $activeUsersLast7Days, activeUsersLast30Days: $activeUsersLast30Days, churnedUsersLast30Days: $churnedUsersLast30Days, churnRate: $churnRate, sampledAt: $sampledAt, segmentDistribution: $segmentDistribution, retentionByDay: $retentionByDay, ageGroupDistribution: $ageGroupDistribution, mau: $mau, dau: $dau)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopulationStatsImpl &&
            (identical(other.totalUsers, totalUsers) ||
                other.totalUsers == totalUsers) &&
            (identical(other.activeUsersLast7Days, activeUsersLast7Days) ||
                other.activeUsersLast7Days == activeUsersLast7Days) &&
            (identical(other.activeUsersLast30Days, activeUsersLast30Days) ||
                other.activeUsersLast30Days == activeUsersLast30Days) &&
            (identical(other.churnedUsersLast30Days, churnedUsersLast30Days) ||
                other.churnedUsersLast30Days == churnedUsersLast30Days) &&
            (identical(other.churnRate, churnRate) ||
                other.churnRate == churnRate) &&
            (identical(other.sampledAt, sampledAt) ||
                other.sampledAt == sampledAt) &&
            const DeepCollectionEquality().equals(
              other._segmentDistribution,
              _segmentDistribution,
            ) &&
            const DeepCollectionEquality().equals(
              other._retentionByDay,
              _retentionByDay,
            ) &&
            const DeepCollectionEquality().equals(
              other._ageGroupDistribution,
              _ageGroupDistribution,
            ) &&
            (identical(other.mau, mau) || other.mau == mau) &&
            (identical(other.dau, dau) || other.dau == dau));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    totalUsers,
    activeUsersLast7Days,
    activeUsersLast30Days,
    churnedUsersLast30Days,
    churnRate,
    sampledAt,
    const DeepCollectionEquality().hash(_segmentDistribution),
    const DeepCollectionEquality().hash(_retentionByDay),
    const DeepCollectionEquality().hash(_ageGroupDistribution),
    mau,
    dau,
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
    required final int activeUsersLast7Days,
    required final int activeUsersLast30Days,
    required final int churnedUsersLast30Days,
    required final double churnRate,
    required final DateTime sampledAt,
    required final Map<String, int> segmentDistribution,
    final Map<String, double>? retentionByDay,
    final Map<String, int>? ageGroupDistribution,
    final double? mau,
    final double? dau,
  }) = _$PopulationStatsImpl;

  factory _PopulationStats.fromJson(Map<String, dynamic> json) =
      _$PopulationStatsImpl.fromJson;

  @override
  int get totalUsers;
  @override
  int get activeUsersLast7Days;
  @override
  int get activeUsersLast30Days;
  @override
  int get churnedUsersLast30Days;
  @override
  double get churnRate;
  @override
  DateTime get sampledAt;
  @override
  Map<String, int> get segmentDistribution; // { 'newUser': 100, 'active': 500 }
  @override
  Map<String, double>? get retentionByDay; // 日数ごとの継続率
  @override
  Map<String, int>? get ageGroupDistribution;
  @override
  double? get mau; // 月間アクティブユーザー
  @override
  double? get dau;

  /// Create a copy of PopulationStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PopulationStatsImplCopyWith<_$PopulationStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CohortAnalytics _$CohortAnalyticsFromJson(Map<String, dynamic> json) {
  return _CohortAnalytics.fromJson(json);
}

/// @nodoc
mixin _$CohortAnalytics {
  String get cohortId =>
      throw _privateConstructorUsedError; // 登録月（例: '2026-09'）
  int get cohortSize => throw _privateConstructorUsedError;
  Map<int, double> get retentionByWeek =>
      throw _privateConstructorUsedError; // { 1: 0.95, 2: 0.87, ... }
  Map<int, double> get engagementByWeek => throw _privateConstructorUsedError;
  double get lifetimeValue => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this CohortAnalytics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CohortAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CohortAnalyticsCopyWith<CohortAnalytics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CohortAnalyticsCopyWith<$Res> {
  factory $CohortAnalyticsCopyWith(
    CohortAnalytics value,
    $Res Function(CohortAnalytics) then,
  ) = _$CohortAnalyticsCopyWithImpl<$Res, CohortAnalytics>;
  @useResult
  $Res call({
    String cohortId,
    int cohortSize,
    Map<int, double> retentionByWeek,
    Map<int, double> engagementByWeek,
    double lifetimeValue,
    DateTime createdAt,
  });
}

/// @nodoc
class _$CohortAnalyticsCopyWithImpl<$Res, $Val extends CohortAnalytics>
    implements $CohortAnalyticsCopyWith<$Res> {
  _$CohortAnalyticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CohortAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cohortId = null,
    Object? cohortSize = null,
    Object? retentionByWeek = null,
    Object? engagementByWeek = null,
    Object? lifetimeValue = null,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            cohortId: null == cohortId
                ? _value.cohortId
                : cohortId // ignore: cast_nullable_to_non_nullable
                      as String,
            cohortSize: null == cohortSize
                ? _value.cohortSize
                : cohortSize // ignore: cast_nullable_to_non_nullable
                      as int,
            retentionByWeek: null == retentionByWeek
                ? _value.retentionByWeek
                : retentionByWeek // ignore: cast_nullable_to_non_nullable
                      as Map<int, double>,
            engagementByWeek: null == engagementByWeek
                ? _value.engagementByWeek
                : engagementByWeek // ignore: cast_nullable_to_non_nullable
                      as Map<int, double>,
            lifetimeValue: null == lifetimeValue
                ? _value.lifetimeValue
                : lifetimeValue // ignore: cast_nullable_to_non_nullable
                      as double,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CohortAnalyticsImplCopyWith<$Res>
    implements $CohortAnalyticsCopyWith<$Res> {
  factory _$$CohortAnalyticsImplCopyWith(
    _$CohortAnalyticsImpl value,
    $Res Function(_$CohortAnalyticsImpl) then,
  ) = __$$CohortAnalyticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String cohortId,
    int cohortSize,
    Map<int, double> retentionByWeek,
    Map<int, double> engagementByWeek,
    double lifetimeValue,
    DateTime createdAt,
  });
}

/// @nodoc
class __$$CohortAnalyticsImplCopyWithImpl<$Res>
    extends _$CohortAnalyticsCopyWithImpl<$Res, _$CohortAnalyticsImpl>
    implements _$$CohortAnalyticsImplCopyWith<$Res> {
  __$$CohortAnalyticsImplCopyWithImpl(
    _$CohortAnalyticsImpl _value,
    $Res Function(_$CohortAnalyticsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CohortAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cohortId = null,
    Object? cohortSize = null,
    Object? retentionByWeek = null,
    Object? engagementByWeek = null,
    Object? lifetimeValue = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$CohortAnalyticsImpl(
        cohortId: null == cohortId
            ? _value.cohortId
            : cohortId // ignore: cast_nullable_to_non_nullable
                  as String,
        cohortSize: null == cohortSize
            ? _value.cohortSize
            : cohortSize // ignore: cast_nullable_to_non_nullable
                  as int,
        retentionByWeek: null == retentionByWeek
            ? _value._retentionByWeek
            : retentionByWeek // ignore: cast_nullable_to_non_nullable
                  as Map<int, double>,
        engagementByWeek: null == engagementByWeek
            ? _value._engagementByWeek
            : engagementByWeek // ignore: cast_nullable_to_non_nullable
                  as Map<int, double>,
        lifetimeValue: null == lifetimeValue
            ? _value.lifetimeValue
            : lifetimeValue // ignore: cast_nullable_to_non_nullable
                  as double,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CohortAnalyticsImpl implements _CohortAnalytics {
  const _$CohortAnalyticsImpl({
    required this.cohortId,
    required this.cohortSize,
    required final Map<int, double> retentionByWeek,
    required final Map<int, double> engagementByWeek,
    required this.lifetimeValue,
    required this.createdAt,
  }) : _retentionByWeek = retentionByWeek,
       _engagementByWeek = engagementByWeek;

  factory _$CohortAnalyticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CohortAnalyticsImplFromJson(json);

  @override
  final String cohortId;
  // 登録月（例: '2026-09'）
  @override
  final int cohortSize;
  final Map<int, double> _retentionByWeek;
  @override
  Map<int, double> get retentionByWeek {
    if (_retentionByWeek is EqualUnmodifiableMapView) return _retentionByWeek;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_retentionByWeek);
  }

  // { 1: 0.95, 2: 0.87, ... }
  final Map<int, double> _engagementByWeek;
  // { 1: 0.95, 2: 0.87, ... }
  @override
  Map<int, double> get engagementByWeek {
    if (_engagementByWeek is EqualUnmodifiableMapView) return _engagementByWeek;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_engagementByWeek);
  }

  @override
  final double lifetimeValue;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'CohortAnalytics(cohortId: $cohortId, cohortSize: $cohortSize, retentionByWeek: $retentionByWeek, engagementByWeek: $engagementByWeek, lifetimeValue: $lifetimeValue, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CohortAnalyticsImpl &&
            (identical(other.cohortId, cohortId) ||
                other.cohortId == cohortId) &&
            (identical(other.cohortSize, cohortSize) ||
                other.cohortSize == cohortSize) &&
            const DeepCollectionEquality().equals(
              other._retentionByWeek,
              _retentionByWeek,
            ) &&
            const DeepCollectionEquality().equals(
              other._engagementByWeek,
              _engagementByWeek,
            ) &&
            (identical(other.lifetimeValue, lifetimeValue) ||
                other.lifetimeValue == lifetimeValue) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    cohortId,
    cohortSize,
    const DeepCollectionEquality().hash(_retentionByWeek),
    const DeepCollectionEquality().hash(_engagementByWeek),
    lifetimeValue,
    createdAt,
  );

  /// Create a copy of CohortAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CohortAnalyticsImplCopyWith<_$CohortAnalyticsImpl> get copyWith =>
      __$$CohortAnalyticsImplCopyWithImpl<_$CohortAnalyticsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CohortAnalyticsImplToJson(this);
  }
}

abstract class _CohortAnalytics implements CohortAnalytics {
  const factory _CohortAnalytics({
    required final String cohortId,
    required final int cohortSize,
    required final Map<int, double> retentionByWeek,
    required final Map<int, double> engagementByWeek,
    required final double lifetimeValue,
    required final DateTime createdAt,
  }) = _$CohortAnalyticsImpl;

  factory _CohortAnalytics.fromJson(Map<String, dynamic> json) =
      _$CohortAnalyticsImpl.fromJson;

  @override
  String get cohortId; // 登録月（例: '2026-09'）
  @override
  int get cohortSize;
  @override
  Map<int, double> get retentionByWeek; // { 1: 0.95, 2: 0.87, ... }
  @override
  Map<int, double> get engagementByWeek;
  @override
  double get lifetimeValue;
  @override
  DateTime get createdAt;

  /// Create a copy of CohortAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CohortAnalyticsImplCopyWith<_$CohortAnalyticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ABTestMetrics _$ABTestMetricsFromJson(Map<String, dynamic> json) {
  return _ABTestMetrics.fromJson(json);
}

/// @nodoc
mixin _$ABTestMetrics {
  String get testId => throw _privateConstructorUsedError;
  String get variant => throw _privateConstructorUsedError;
  int get impressions => throw _privateConstructorUsedError;
  int get conversions => throw _privateConstructorUsedError;
  double get conversionRate => throw _privateConstructorUsedError;
  int get totalRevenue => throw _privateConstructorUsedError;
  double get averageOrderValue => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  double? get confidence => throw _privateConstructorUsedError; // 統計的信頼度
  String? get winner => throw _privateConstructorUsedError;

  /// Serializes this ABTestMetrics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ABTestMetrics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ABTestMetricsCopyWith<ABTestMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ABTestMetricsCopyWith<$Res> {
  factory $ABTestMetricsCopyWith(
    ABTestMetrics value,
    $Res Function(ABTestMetrics) then,
  ) = _$ABTestMetricsCopyWithImpl<$Res, ABTestMetrics>;
  @useResult
  $Res call({
    String testId,
    String variant,
    int impressions,
    int conversions,
    double conversionRate,
    int totalRevenue,
    double averageOrderValue,
    DateTime updatedAt,
    double? confidence,
    String? winner,
  });
}

/// @nodoc
class _$ABTestMetricsCopyWithImpl<$Res, $Val extends ABTestMetrics>
    implements $ABTestMetricsCopyWith<$Res> {
  _$ABTestMetricsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ABTestMetrics
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
    Object? confidence = freezed,
    Object? winner = freezed,
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
                      as String,
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
            confidence: freezed == confidence
                ? _value.confidence
                : confidence // ignore: cast_nullable_to_non_nullable
                      as double?,
            winner: freezed == winner
                ? _value.winner
                : winner // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ABTestMetricsImplCopyWith<$Res>
    implements $ABTestMetricsCopyWith<$Res> {
  factory _$$ABTestMetricsImplCopyWith(
    _$ABTestMetricsImpl value,
    $Res Function(_$ABTestMetricsImpl) then,
  ) = __$$ABTestMetricsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String testId,
    String variant,
    int impressions,
    int conversions,
    double conversionRate,
    int totalRevenue,
    double averageOrderValue,
    DateTime updatedAt,
    double? confidence,
    String? winner,
  });
}

/// @nodoc
class __$$ABTestMetricsImplCopyWithImpl<$Res>
    extends _$ABTestMetricsCopyWithImpl<$Res, _$ABTestMetricsImpl>
    implements _$$ABTestMetricsImplCopyWith<$Res> {
  __$$ABTestMetricsImplCopyWithImpl(
    _$ABTestMetricsImpl _value,
    $Res Function(_$ABTestMetricsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ABTestMetrics
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
    Object? confidence = freezed,
    Object? winner = freezed,
  }) {
    return _then(
      _$ABTestMetricsImpl(
        testId: null == testId
            ? _value.testId
            : testId // ignore: cast_nullable_to_non_nullable
                  as String,
        variant: null == variant
            ? _value.variant
            : variant // ignore: cast_nullable_to_non_nullable
                  as String,
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
        confidence: freezed == confidence
            ? _value.confidence
            : confidence // ignore: cast_nullable_to_non_nullable
                  as double?,
        winner: freezed == winner
            ? _value.winner
            : winner // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ABTestMetricsImpl implements _ABTestMetrics {
  const _$ABTestMetricsImpl({
    required this.testId,
    required this.variant,
    required this.impressions,
    required this.conversions,
    required this.conversionRate,
    required this.totalRevenue,
    required this.averageOrderValue,
    required this.updatedAt,
    this.confidence,
    this.winner,
  });

  factory _$ABTestMetricsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ABTestMetricsImplFromJson(json);

  @override
  final String testId;
  @override
  final String variant;
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
  final double? confidence;
  // 統計的信頼度
  @override
  final String? winner;

  @override
  String toString() {
    return 'ABTestMetrics(testId: $testId, variant: $variant, impressions: $impressions, conversions: $conversions, conversionRate: $conversionRate, totalRevenue: $totalRevenue, averageOrderValue: $averageOrderValue, updatedAt: $updatedAt, confidence: $confidence, winner: $winner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ABTestMetricsImpl &&
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
                other.updatedAt == updatedAt) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.winner, winner) || other.winner == winner));
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
    confidence,
    winner,
  );

  /// Create a copy of ABTestMetrics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ABTestMetricsImplCopyWith<_$ABTestMetricsImpl> get copyWith =>
      __$$ABTestMetricsImplCopyWithImpl<_$ABTestMetricsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ABTestMetricsImplToJson(this);
  }
}

abstract class _ABTestMetrics implements ABTestMetrics {
  const factory _ABTestMetrics({
    required final String testId,
    required final String variant,
    required final int impressions,
    required final int conversions,
    required final double conversionRate,
    required final int totalRevenue,
    required final double averageOrderValue,
    required final DateTime updatedAt,
    final double? confidence,
    final String? winner,
  }) = _$ABTestMetricsImpl;

  factory _ABTestMetrics.fromJson(Map<String, dynamic> json) =
      _$ABTestMetricsImpl.fromJson;

  @override
  String get testId;
  @override
  String get variant;
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
  @override
  double? get confidence; // 統計的信頼度
  @override
  String? get winner;

  /// Create a copy of ABTestMetrics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ABTestMetricsImplCopyWith<_$ABTestMetricsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
