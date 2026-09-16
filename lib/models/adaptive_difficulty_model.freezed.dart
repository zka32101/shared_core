// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adaptive_difficulty_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AdaptiveMetrics _$AdaptiveMetricsFromJson(Map<String, dynamic> json) {
  return _AdaptiveMetrics.fromJson(json);
}

/// @nodoc
mixin _$AdaptiveMetrics {
  double get accuracy => throw _privateConstructorUsedError; // 正答率（0.0-1.0）
  double get completionRate =>
      throw _privateConstructorUsedError; // 完了率（0.0-1.0）
  int get averageTimePerQuestion =>
      throw _privateConstructorUsedError; // 1問あたりの平均時間（秒）
  int get totalQuestionsAnswered =>
      throw _privateConstructorUsedError; // 答えた問題数
  int get correctAnswers => throw _privateConstructorUsedError; // 正解数
  int get wrongAnswers => throw _privateConstructorUsedError; // 不正解数
  DateTime get lastUpdatedAt => throw _privateConstructorUsedError;

  /// Serializes this AdaptiveMetrics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdaptiveMetrics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdaptiveMetricsCopyWith<AdaptiveMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdaptiveMetricsCopyWith<$Res> {
  factory $AdaptiveMetricsCopyWith(
    AdaptiveMetrics value,
    $Res Function(AdaptiveMetrics) then,
  ) = _$AdaptiveMetricsCopyWithImpl<$Res, AdaptiveMetrics>;
  @useResult
  $Res call({
    double accuracy,
    double completionRate,
    int averageTimePerQuestion,
    int totalQuestionsAnswered,
    int correctAnswers,
    int wrongAnswers,
    DateTime lastUpdatedAt,
  });
}

/// @nodoc
class _$AdaptiveMetricsCopyWithImpl<$Res, $Val extends AdaptiveMetrics>
    implements $AdaptiveMetricsCopyWith<$Res> {
  _$AdaptiveMetricsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdaptiveMetrics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accuracy = null,
    Object? completionRate = null,
    Object? averageTimePerQuestion = null,
    Object? totalQuestionsAnswered = null,
    Object? correctAnswers = null,
    Object? wrongAnswers = null,
    Object? lastUpdatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            accuracy: null == accuracy
                ? _value.accuracy
                : accuracy // ignore: cast_nullable_to_non_nullable
                      as double,
            completionRate: null == completionRate
                ? _value.completionRate
                : completionRate // ignore: cast_nullable_to_non_nullable
                      as double,
            averageTimePerQuestion: null == averageTimePerQuestion
                ? _value.averageTimePerQuestion
                : averageTimePerQuestion // ignore: cast_nullable_to_non_nullable
                      as int,
            totalQuestionsAnswered: null == totalQuestionsAnswered
                ? _value.totalQuestionsAnswered
                : totalQuestionsAnswered // ignore: cast_nullable_to_non_nullable
                      as int,
            correctAnswers: null == correctAnswers
                ? _value.correctAnswers
                : correctAnswers // ignore: cast_nullable_to_non_nullable
                      as int,
            wrongAnswers: null == wrongAnswers
                ? _value.wrongAnswers
                : wrongAnswers // ignore: cast_nullable_to_non_nullable
                      as int,
            lastUpdatedAt: null == lastUpdatedAt
                ? _value.lastUpdatedAt
                : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AdaptiveMetricsImplCopyWith<$Res>
    implements $AdaptiveMetricsCopyWith<$Res> {
  factory _$$AdaptiveMetricsImplCopyWith(
    _$AdaptiveMetricsImpl value,
    $Res Function(_$AdaptiveMetricsImpl) then,
  ) = __$$AdaptiveMetricsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double accuracy,
    double completionRate,
    int averageTimePerQuestion,
    int totalQuestionsAnswered,
    int correctAnswers,
    int wrongAnswers,
    DateTime lastUpdatedAt,
  });
}

/// @nodoc
class __$$AdaptiveMetricsImplCopyWithImpl<$Res>
    extends _$AdaptiveMetricsCopyWithImpl<$Res, _$AdaptiveMetricsImpl>
    implements _$$AdaptiveMetricsImplCopyWith<$Res> {
  __$$AdaptiveMetricsImplCopyWithImpl(
    _$AdaptiveMetricsImpl _value,
    $Res Function(_$AdaptiveMetricsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AdaptiveMetrics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accuracy = null,
    Object? completionRate = null,
    Object? averageTimePerQuestion = null,
    Object? totalQuestionsAnswered = null,
    Object? correctAnswers = null,
    Object? wrongAnswers = null,
    Object? lastUpdatedAt = null,
  }) {
    return _then(
      _$AdaptiveMetricsImpl(
        accuracy: null == accuracy
            ? _value.accuracy
            : accuracy // ignore: cast_nullable_to_non_nullable
                  as double,
        completionRate: null == completionRate
            ? _value.completionRate
            : completionRate // ignore: cast_nullable_to_non_nullable
                  as double,
        averageTimePerQuestion: null == averageTimePerQuestion
            ? _value.averageTimePerQuestion
            : averageTimePerQuestion // ignore: cast_nullable_to_non_nullable
                  as int,
        totalQuestionsAnswered: null == totalQuestionsAnswered
            ? _value.totalQuestionsAnswered
            : totalQuestionsAnswered // ignore: cast_nullable_to_non_nullable
                  as int,
        correctAnswers: null == correctAnswers
            ? _value.correctAnswers
            : correctAnswers // ignore: cast_nullable_to_non_nullable
                  as int,
        wrongAnswers: null == wrongAnswers
            ? _value.wrongAnswers
            : wrongAnswers // ignore: cast_nullable_to_non_nullable
                  as int,
        lastUpdatedAt: null == lastUpdatedAt
            ? _value.lastUpdatedAt
            : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AdaptiveMetricsImpl implements _AdaptiveMetrics {
  const _$AdaptiveMetricsImpl({
    required this.accuracy,
    required this.completionRate,
    required this.averageTimePerQuestion,
    required this.totalQuestionsAnswered,
    required this.correctAnswers,
    required this.wrongAnswers,
    required this.lastUpdatedAt,
  });

  factory _$AdaptiveMetricsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdaptiveMetricsImplFromJson(json);

  @override
  final double accuracy;
  // 正答率（0.0-1.0）
  @override
  final double completionRate;
  // 完了率（0.0-1.0）
  @override
  final int averageTimePerQuestion;
  // 1問あたりの平均時間（秒）
  @override
  final int totalQuestionsAnswered;
  // 答えた問題数
  @override
  final int correctAnswers;
  // 正解数
  @override
  final int wrongAnswers;
  // 不正解数
  @override
  final DateTime lastUpdatedAt;

  @override
  String toString() {
    return 'AdaptiveMetrics(accuracy: $accuracy, completionRate: $completionRate, averageTimePerQuestion: $averageTimePerQuestion, totalQuestionsAnswered: $totalQuestionsAnswered, correctAnswers: $correctAnswers, wrongAnswers: $wrongAnswers, lastUpdatedAt: $lastUpdatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdaptiveMetricsImpl &&
            (identical(other.accuracy, accuracy) ||
                other.accuracy == accuracy) &&
            (identical(other.completionRate, completionRate) ||
                other.completionRate == completionRate) &&
            (identical(other.averageTimePerQuestion, averageTimePerQuestion) ||
                other.averageTimePerQuestion == averageTimePerQuestion) &&
            (identical(other.totalQuestionsAnswered, totalQuestionsAnswered) ||
                other.totalQuestionsAnswered == totalQuestionsAnswered) &&
            (identical(other.correctAnswers, correctAnswers) ||
                other.correctAnswers == correctAnswers) &&
            (identical(other.wrongAnswers, wrongAnswers) ||
                other.wrongAnswers == wrongAnswers) &&
            (identical(other.lastUpdatedAt, lastUpdatedAt) ||
                other.lastUpdatedAt == lastUpdatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    accuracy,
    completionRate,
    averageTimePerQuestion,
    totalQuestionsAnswered,
    correctAnswers,
    wrongAnswers,
    lastUpdatedAt,
  );

  /// Create a copy of AdaptiveMetrics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdaptiveMetricsImplCopyWith<_$AdaptiveMetricsImpl> get copyWith =>
      __$$AdaptiveMetricsImplCopyWithImpl<_$AdaptiveMetricsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AdaptiveMetricsImplToJson(this);
  }
}

abstract class _AdaptiveMetrics implements AdaptiveMetrics {
  const factory _AdaptiveMetrics({
    required final double accuracy,
    required final double completionRate,
    required final int averageTimePerQuestion,
    required final int totalQuestionsAnswered,
    required final int correctAnswers,
    required final int wrongAnswers,
    required final DateTime lastUpdatedAt,
  }) = _$AdaptiveMetricsImpl;

  factory _AdaptiveMetrics.fromJson(Map<String, dynamic> json) =
      _$AdaptiveMetricsImpl.fromJson;

  @override
  double get accuracy; // 正答率（0.0-1.0）
  @override
  double get completionRate; // 完了率（0.0-1.0）
  @override
  int get averageTimePerQuestion; // 1問あたりの平均時間（秒）
  @override
  int get totalQuestionsAnswered; // 答えた問題数
  @override
  int get correctAnswers; // 正解数
  @override
  int get wrongAnswers; // 不正解数
  @override
  DateTime get lastUpdatedAt;

  /// Create a copy of AdaptiveMetrics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdaptiveMetricsImplCopyWith<_$AdaptiveMetricsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserAdaptiveDifficulty _$UserAdaptiveDifficultyFromJson(
  Map<String, dynamic> json,
) {
  return _UserAdaptiveDifficulty.fromJson(json);
}

/// @nodoc
mixin _$UserAdaptiveDifficulty {
  String get userId => throw _privateConstructorUsedError;
  String get appId =>
      throw _privateConstructorUsedError; // アプリID（kokugo, sansu等）
  DifficultyLevel get currentLevel =>
      throw _privateConstructorUsedError; // 現在の難易度
  DifficultyLevel get recommendedLevel =>
      throw _privateConstructorUsedError; // 推奨難易度
  AdaptiveMetrics get metrics =>
      throw _privateConstructorUsedError; // パフォーマンス指標
  int get adjustmentCount => throw _privateConstructorUsedError; // 調整回数
  DateTime? get lastAdjustedAt => throw _privateConstructorUsedError; // 最終調整日時
  bool get isAutoAdjust => throw _privateConstructorUsedError; // 自動調整有効
  double get confidenceScore => throw _privateConstructorUsedError;

  /// Serializes this UserAdaptiveDifficulty to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserAdaptiveDifficulty
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserAdaptiveDifficultyCopyWith<UserAdaptiveDifficulty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAdaptiveDifficultyCopyWith<$Res> {
  factory $UserAdaptiveDifficultyCopyWith(
    UserAdaptiveDifficulty value,
    $Res Function(UserAdaptiveDifficulty) then,
  ) = _$UserAdaptiveDifficultyCopyWithImpl<$Res, UserAdaptiveDifficulty>;
  @useResult
  $Res call({
    String userId,
    String appId,
    DifficultyLevel currentLevel,
    DifficultyLevel recommendedLevel,
    AdaptiveMetrics metrics,
    int adjustmentCount,
    DateTime? lastAdjustedAt,
    bool isAutoAdjust,
    double confidenceScore,
  });

  $AdaptiveMetricsCopyWith<$Res> get metrics;
}

/// @nodoc
class _$UserAdaptiveDifficultyCopyWithImpl<
  $Res,
  $Val extends UserAdaptiveDifficulty
>
    implements $UserAdaptiveDifficultyCopyWith<$Res> {
  _$UserAdaptiveDifficultyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserAdaptiveDifficulty
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? appId = null,
    Object? currentLevel = null,
    Object? recommendedLevel = null,
    Object? metrics = null,
    Object? adjustmentCount = null,
    Object? lastAdjustedAt = freezed,
    Object? isAutoAdjust = null,
    Object? confidenceScore = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            appId: null == appId
                ? _value.appId
                : appId // ignore: cast_nullable_to_non_nullable
                      as String,
            currentLevel: null == currentLevel
                ? _value.currentLevel
                : currentLevel // ignore: cast_nullable_to_non_nullable
                      as DifficultyLevel,
            recommendedLevel: null == recommendedLevel
                ? _value.recommendedLevel
                : recommendedLevel // ignore: cast_nullable_to_non_nullable
                      as DifficultyLevel,
            metrics: null == metrics
                ? _value.metrics
                : metrics // ignore: cast_nullable_to_non_nullable
                      as AdaptiveMetrics,
            adjustmentCount: null == adjustmentCount
                ? _value.adjustmentCount
                : adjustmentCount // ignore: cast_nullable_to_non_nullable
                      as int,
            lastAdjustedAt: freezed == lastAdjustedAt
                ? _value.lastAdjustedAt
                : lastAdjustedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            isAutoAdjust: null == isAutoAdjust
                ? _value.isAutoAdjust
                : isAutoAdjust // ignore: cast_nullable_to_non_nullable
                      as bool,
            confidenceScore: null == confidenceScore
                ? _value.confidenceScore
                : confidenceScore // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }

  /// Create a copy of UserAdaptiveDifficulty
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdaptiveMetricsCopyWith<$Res> get metrics {
    return $AdaptiveMetricsCopyWith<$Res>(_value.metrics, (value) {
      return _then(_value.copyWith(metrics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserAdaptiveDifficultyImplCopyWith<$Res>
    implements $UserAdaptiveDifficultyCopyWith<$Res> {
  factory _$$UserAdaptiveDifficultyImplCopyWith(
    _$UserAdaptiveDifficultyImpl value,
    $Res Function(_$UserAdaptiveDifficultyImpl) then,
  ) = __$$UserAdaptiveDifficultyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    String appId,
    DifficultyLevel currentLevel,
    DifficultyLevel recommendedLevel,
    AdaptiveMetrics metrics,
    int adjustmentCount,
    DateTime? lastAdjustedAt,
    bool isAutoAdjust,
    double confidenceScore,
  });

  @override
  $AdaptiveMetricsCopyWith<$Res> get metrics;
}

/// @nodoc
class __$$UserAdaptiveDifficultyImplCopyWithImpl<$Res>
    extends
        _$UserAdaptiveDifficultyCopyWithImpl<$Res, _$UserAdaptiveDifficultyImpl>
    implements _$$UserAdaptiveDifficultyImplCopyWith<$Res> {
  __$$UserAdaptiveDifficultyImplCopyWithImpl(
    _$UserAdaptiveDifficultyImpl _value,
    $Res Function(_$UserAdaptiveDifficultyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserAdaptiveDifficulty
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? appId = null,
    Object? currentLevel = null,
    Object? recommendedLevel = null,
    Object? metrics = null,
    Object? adjustmentCount = null,
    Object? lastAdjustedAt = freezed,
    Object? isAutoAdjust = null,
    Object? confidenceScore = null,
  }) {
    return _then(
      _$UserAdaptiveDifficultyImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        appId: null == appId
            ? _value.appId
            : appId // ignore: cast_nullable_to_non_nullable
                  as String,
        currentLevel: null == currentLevel
            ? _value.currentLevel
            : currentLevel // ignore: cast_nullable_to_non_nullable
                  as DifficultyLevel,
        recommendedLevel: null == recommendedLevel
            ? _value.recommendedLevel
            : recommendedLevel // ignore: cast_nullable_to_non_nullable
                  as DifficultyLevel,
        metrics: null == metrics
            ? _value.metrics
            : metrics // ignore: cast_nullable_to_non_nullable
                  as AdaptiveMetrics,
        adjustmentCount: null == adjustmentCount
            ? _value.adjustmentCount
            : adjustmentCount // ignore: cast_nullable_to_non_nullable
                  as int,
        lastAdjustedAt: freezed == lastAdjustedAt
            ? _value.lastAdjustedAt
            : lastAdjustedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        isAutoAdjust: null == isAutoAdjust
            ? _value.isAutoAdjust
            : isAutoAdjust // ignore: cast_nullable_to_non_nullable
                  as bool,
        confidenceScore: null == confidenceScore
            ? _value.confidenceScore
            : confidenceScore // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAdaptiveDifficultyImpl implements _UserAdaptiveDifficulty {
  const _$UserAdaptiveDifficultyImpl({
    required this.userId,
    required this.appId,
    required this.currentLevel,
    required this.recommendedLevel,
    required this.metrics,
    required this.adjustmentCount,
    required this.lastAdjustedAt,
    required this.isAutoAdjust,
    required this.confidenceScore,
  });

  factory _$UserAdaptiveDifficultyImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAdaptiveDifficultyImplFromJson(json);

  @override
  final String userId;
  @override
  final String appId;
  // アプリID（kokugo, sansu等）
  @override
  final DifficultyLevel currentLevel;
  // 現在の難易度
  @override
  final DifficultyLevel recommendedLevel;
  // 推奨難易度
  @override
  final AdaptiveMetrics metrics;
  // パフォーマンス指標
  @override
  final int adjustmentCount;
  // 調整回数
  @override
  final DateTime? lastAdjustedAt;
  // 最終調整日時
  @override
  final bool isAutoAdjust;
  // 自動調整有効
  @override
  final double confidenceScore;

  @override
  String toString() {
    return 'UserAdaptiveDifficulty(userId: $userId, appId: $appId, currentLevel: $currentLevel, recommendedLevel: $recommendedLevel, metrics: $metrics, adjustmentCount: $adjustmentCount, lastAdjustedAt: $lastAdjustedAt, isAutoAdjust: $isAutoAdjust, confidenceScore: $confidenceScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAdaptiveDifficultyImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.currentLevel, currentLevel) ||
                other.currentLevel == currentLevel) &&
            (identical(other.recommendedLevel, recommendedLevel) ||
                other.recommendedLevel == recommendedLevel) &&
            (identical(other.metrics, metrics) || other.metrics == metrics) &&
            (identical(other.adjustmentCount, adjustmentCount) ||
                other.adjustmentCount == adjustmentCount) &&
            (identical(other.lastAdjustedAt, lastAdjustedAt) ||
                other.lastAdjustedAt == lastAdjustedAt) &&
            (identical(other.isAutoAdjust, isAutoAdjust) ||
                other.isAutoAdjust == isAutoAdjust) &&
            (identical(other.confidenceScore, confidenceScore) ||
                other.confidenceScore == confidenceScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    appId,
    currentLevel,
    recommendedLevel,
    metrics,
    adjustmentCount,
    lastAdjustedAt,
    isAutoAdjust,
    confidenceScore,
  );

  /// Create a copy of UserAdaptiveDifficulty
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAdaptiveDifficultyImplCopyWith<_$UserAdaptiveDifficultyImpl>
  get copyWith =>
      __$$UserAdaptiveDifficultyImplCopyWithImpl<_$UserAdaptiveDifficultyImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAdaptiveDifficultyImplToJson(this);
  }
}

abstract class _UserAdaptiveDifficulty implements UserAdaptiveDifficulty {
  const factory _UserAdaptiveDifficulty({
    required final String userId,
    required final String appId,
    required final DifficultyLevel currentLevel,
    required final DifficultyLevel recommendedLevel,
    required final AdaptiveMetrics metrics,
    required final int adjustmentCount,
    required final DateTime? lastAdjustedAt,
    required final bool isAutoAdjust,
    required final double confidenceScore,
  }) = _$UserAdaptiveDifficultyImpl;

  factory _UserAdaptiveDifficulty.fromJson(Map<String, dynamic> json) =
      _$UserAdaptiveDifficultyImpl.fromJson;

  @override
  String get userId;
  @override
  String get appId; // アプリID（kokugo, sansu等）
  @override
  DifficultyLevel get currentLevel; // 現在の難易度
  @override
  DifficultyLevel get recommendedLevel; // 推奨難易度
  @override
  AdaptiveMetrics get metrics; // パフォーマンス指標
  @override
  int get adjustmentCount; // 調整回数
  @override
  DateTime? get lastAdjustedAt; // 最終調整日時
  @override
  bool get isAutoAdjust; // 自動調整有効
  @override
  double get confidenceScore;

  /// Create a copy of UserAdaptiveDifficulty
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserAdaptiveDifficultyImplCopyWith<_$UserAdaptiveDifficultyImpl>
  get copyWith => throw _privateConstructorUsedError;
}

DifficultyAdjustmentHistory _$DifficultyAdjustmentHistoryFromJson(
  Map<String, dynamic> json,
) {
  return _DifficultyAdjustmentHistory.fromJson(json);
}

/// @nodoc
mixin _$DifficultyAdjustmentHistory {
  String get userId => throw _privateConstructorUsedError;
  String get appId => throw _privateConstructorUsedError;
  DifficultyLevel get previousLevel => throw _privateConstructorUsedError;
  DifficultyLevel get newLevel => throw _privateConstructorUsedError;
  String get reason =>
      throw _privateConstructorUsedError; // 調整理由（例: 'high_accuracy'）
  DateTime get adjustedAt => throw _privateConstructorUsedError;
  double get metricsSnapshot => throw _privateConstructorUsedError;

  /// Serializes this DifficultyAdjustmentHistory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DifficultyAdjustmentHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DifficultyAdjustmentHistoryCopyWith<DifficultyAdjustmentHistory>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DifficultyAdjustmentHistoryCopyWith<$Res> {
  factory $DifficultyAdjustmentHistoryCopyWith(
    DifficultyAdjustmentHistory value,
    $Res Function(DifficultyAdjustmentHistory) then,
  ) =
      _$DifficultyAdjustmentHistoryCopyWithImpl<
        $Res,
        DifficultyAdjustmentHistory
      >;
  @useResult
  $Res call({
    String userId,
    String appId,
    DifficultyLevel previousLevel,
    DifficultyLevel newLevel,
    String reason,
    DateTime adjustedAt,
    double metricsSnapshot,
  });
}

/// @nodoc
class _$DifficultyAdjustmentHistoryCopyWithImpl<
  $Res,
  $Val extends DifficultyAdjustmentHistory
>
    implements $DifficultyAdjustmentHistoryCopyWith<$Res> {
  _$DifficultyAdjustmentHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DifficultyAdjustmentHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? appId = null,
    Object? previousLevel = null,
    Object? newLevel = null,
    Object? reason = null,
    Object? adjustedAt = null,
    Object? metricsSnapshot = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            appId: null == appId
                ? _value.appId
                : appId // ignore: cast_nullable_to_non_nullable
                      as String,
            previousLevel: null == previousLevel
                ? _value.previousLevel
                : previousLevel // ignore: cast_nullable_to_non_nullable
                      as DifficultyLevel,
            newLevel: null == newLevel
                ? _value.newLevel
                : newLevel // ignore: cast_nullable_to_non_nullable
                      as DifficultyLevel,
            reason: null == reason
                ? _value.reason
                : reason // ignore: cast_nullable_to_non_nullable
                      as String,
            adjustedAt: null == adjustedAt
                ? _value.adjustedAt
                : adjustedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            metricsSnapshot: null == metricsSnapshot
                ? _value.metricsSnapshot
                : metricsSnapshot // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DifficultyAdjustmentHistoryImplCopyWith<$Res>
    implements $DifficultyAdjustmentHistoryCopyWith<$Res> {
  factory _$$DifficultyAdjustmentHistoryImplCopyWith(
    _$DifficultyAdjustmentHistoryImpl value,
    $Res Function(_$DifficultyAdjustmentHistoryImpl) then,
  ) = __$$DifficultyAdjustmentHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    String appId,
    DifficultyLevel previousLevel,
    DifficultyLevel newLevel,
    String reason,
    DateTime adjustedAt,
    double metricsSnapshot,
  });
}

/// @nodoc
class __$$DifficultyAdjustmentHistoryImplCopyWithImpl<$Res>
    extends
        _$DifficultyAdjustmentHistoryCopyWithImpl<
          $Res,
          _$DifficultyAdjustmentHistoryImpl
        >
    implements _$$DifficultyAdjustmentHistoryImplCopyWith<$Res> {
  __$$DifficultyAdjustmentHistoryImplCopyWithImpl(
    _$DifficultyAdjustmentHistoryImpl _value,
    $Res Function(_$DifficultyAdjustmentHistoryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DifficultyAdjustmentHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? appId = null,
    Object? previousLevel = null,
    Object? newLevel = null,
    Object? reason = null,
    Object? adjustedAt = null,
    Object? metricsSnapshot = null,
  }) {
    return _then(
      _$DifficultyAdjustmentHistoryImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        appId: null == appId
            ? _value.appId
            : appId // ignore: cast_nullable_to_non_nullable
                  as String,
        previousLevel: null == previousLevel
            ? _value.previousLevel
            : previousLevel // ignore: cast_nullable_to_non_nullable
                  as DifficultyLevel,
        newLevel: null == newLevel
            ? _value.newLevel
            : newLevel // ignore: cast_nullable_to_non_nullable
                  as DifficultyLevel,
        reason: null == reason
            ? _value.reason
            : reason // ignore: cast_nullable_to_non_nullable
                  as String,
        adjustedAt: null == adjustedAt
            ? _value.adjustedAt
            : adjustedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        metricsSnapshot: null == metricsSnapshot
            ? _value.metricsSnapshot
            : metricsSnapshot // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DifficultyAdjustmentHistoryImpl
    implements _DifficultyAdjustmentHistory {
  const _$DifficultyAdjustmentHistoryImpl({
    required this.userId,
    required this.appId,
    required this.previousLevel,
    required this.newLevel,
    required this.reason,
    required this.adjustedAt,
    required this.metricsSnapshot,
  });

  factory _$DifficultyAdjustmentHistoryImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$DifficultyAdjustmentHistoryImplFromJson(json);

  @override
  final String userId;
  @override
  final String appId;
  @override
  final DifficultyLevel previousLevel;
  @override
  final DifficultyLevel newLevel;
  @override
  final String reason;
  // 調整理由（例: 'high_accuracy'）
  @override
  final DateTime adjustedAt;
  @override
  final double metricsSnapshot;

  @override
  String toString() {
    return 'DifficultyAdjustmentHistory(userId: $userId, appId: $appId, previousLevel: $previousLevel, newLevel: $newLevel, reason: $reason, adjustedAt: $adjustedAt, metricsSnapshot: $metricsSnapshot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DifficultyAdjustmentHistoryImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.previousLevel, previousLevel) ||
                other.previousLevel == previousLevel) &&
            (identical(other.newLevel, newLevel) ||
                other.newLevel == newLevel) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.adjustedAt, adjustedAt) ||
                other.adjustedAt == adjustedAt) &&
            (identical(other.metricsSnapshot, metricsSnapshot) ||
                other.metricsSnapshot == metricsSnapshot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    appId,
    previousLevel,
    newLevel,
    reason,
    adjustedAt,
    metricsSnapshot,
  );

  /// Create a copy of DifficultyAdjustmentHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DifficultyAdjustmentHistoryImplCopyWith<_$DifficultyAdjustmentHistoryImpl>
  get copyWith =>
      __$$DifficultyAdjustmentHistoryImplCopyWithImpl<
        _$DifficultyAdjustmentHistoryImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DifficultyAdjustmentHistoryImplToJson(this);
  }
}

abstract class _DifficultyAdjustmentHistory
    implements DifficultyAdjustmentHistory {
  const factory _DifficultyAdjustmentHistory({
    required final String userId,
    required final String appId,
    required final DifficultyLevel previousLevel,
    required final DifficultyLevel newLevel,
    required final String reason,
    required final DateTime adjustedAt,
    required final double metricsSnapshot,
  }) = _$DifficultyAdjustmentHistoryImpl;

  factory _DifficultyAdjustmentHistory.fromJson(Map<String, dynamic> json) =
      _$DifficultyAdjustmentHistoryImpl.fromJson;

  @override
  String get userId;
  @override
  String get appId;
  @override
  DifficultyLevel get previousLevel;
  @override
  DifficultyLevel get newLevel;
  @override
  String get reason; // 調整理由（例: 'high_accuracy'）
  @override
  DateTime get adjustedAt;
  @override
  double get metricsSnapshot;

  /// Create a copy of DifficultyAdjustmentHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DifficultyAdjustmentHistoryImplCopyWith<_$DifficultyAdjustmentHistoryImpl>
  get copyWith => throw _privateConstructorUsedError;
}

AdaptiveDifficultyConfig _$AdaptiveDifficultyConfigFromJson(
  Map<String, dynamic> json,
) {
  return _AdaptiveDifficultyConfig.fromJson(json);
}

/// @nodoc
mixin _$AdaptiveDifficultyConfig {
  bool get enableAutoAdjust => throw _privateConstructorUsedError; // 自動調整を有効
  int get adjustmentIntervalDays =>
      throw _privateConstructorUsedError; // 調整間隔（日数）
  double get highAccuracyThreshold =>
      throw _privateConstructorUsedError; // 高い正答率と判定する閾値
  double get lowAccuracyThreshold =>
      throw _privateConstructorUsedError; // 低い正答率と判定する閾値
  double get completionThreshold =>
      throw _privateConstructorUsedError; // 完了率の目標
  int get minQuestionsBeforeAdjust =>
      throw _privateConstructorUsedError; // 調整前に答える最小問題数
  Map<String, double> get difficultyMultipliers =>
      throw _privateConstructorUsedError;

  /// Serializes this AdaptiveDifficultyConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdaptiveDifficultyConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdaptiveDifficultyConfigCopyWith<AdaptiveDifficultyConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdaptiveDifficultyConfigCopyWith<$Res> {
  factory $AdaptiveDifficultyConfigCopyWith(
    AdaptiveDifficultyConfig value,
    $Res Function(AdaptiveDifficultyConfig) then,
  ) = _$AdaptiveDifficultyConfigCopyWithImpl<$Res, AdaptiveDifficultyConfig>;
  @useResult
  $Res call({
    bool enableAutoAdjust,
    int adjustmentIntervalDays,
    double highAccuracyThreshold,
    double lowAccuracyThreshold,
    double completionThreshold,
    int minQuestionsBeforeAdjust,
    Map<String, double> difficultyMultipliers,
  });
}

/// @nodoc
class _$AdaptiveDifficultyConfigCopyWithImpl<
  $Res,
  $Val extends AdaptiveDifficultyConfig
>
    implements $AdaptiveDifficultyConfigCopyWith<$Res> {
  _$AdaptiveDifficultyConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdaptiveDifficultyConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enableAutoAdjust = null,
    Object? adjustmentIntervalDays = null,
    Object? highAccuracyThreshold = null,
    Object? lowAccuracyThreshold = null,
    Object? completionThreshold = null,
    Object? minQuestionsBeforeAdjust = null,
    Object? difficultyMultipliers = null,
  }) {
    return _then(
      _value.copyWith(
            enableAutoAdjust: null == enableAutoAdjust
                ? _value.enableAutoAdjust
                : enableAutoAdjust // ignore: cast_nullable_to_non_nullable
                      as bool,
            adjustmentIntervalDays: null == adjustmentIntervalDays
                ? _value.adjustmentIntervalDays
                : adjustmentIntervalDays // ignore: cast_nullable_to_non_nullable
                      as int,
            highAccuracyThreshold: null == highAccuracyThreshold
                ? _value.highAccuracyThreshold
                : highAccuracyThreshold // ignore: cast_nullable_to_non_nullable
                      as double,
            lowAccuracyThreshold: null == lowAccuracyThreshold
                ? _value.lowAccuracyThreshold
                : lowAccuracyThreshold // ignore: cast_nullable_to_non_nullable
                      as double,
            completionThreshold: null == completionThreshold
                ? _value.completionThreshold
                : completionThreshold // ignore: cast_nullable_to_non_nullable
                      as double,
            minQuestionsBeforeAdjust: null == minQuestionsBeforeAdjust
                ? _value.minQuestionsBeforeAdjust
                : minQuestionsBeforeAdjust // ignore: cast_nullable_to_non_nullable
                      as int,
            difficultyMultipliers: null == difficultyMultipliers
                ? _value.difficultyMultipliers
                : difficultyMultipliers // ignore: cast_nullable_to_non_nullable
                      as Map<String, double>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AdaptiveDifficultyConfigImplCopyWith<$Res>
    implements $AdaptiveDifficultyConfigCopyWith<$Res> {
  factory _$$AdaptiveDifficultyConfigImplCopyWith(
    _$AdaptiveDifficultyConfigImpl value,
    $Res Function(_$AdaptiveDifficultyConfigImpl) then,
  ) = __$$AdaptiveDifficultyConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool enableAutoAdjust,
    int adjustmentIntervalDays,
    double highAccuracyThreshold,
    double lowAccuracyThreshold,
    double completionThreshold,
    int minQuestionsBeforeAdjust,
    Map<String, double> difficultyMultipliers,
  });
}

/// @nodoc
class __$$AdaptiveDifficultyConfigImplCopyWithImpl<$Res>
    extends
        _$AdaptiveDifficultyConfigCopyWithImpl<
          $Res,
          _$AdaptiveDifficultyConfigImpl
        >
    implements _$$AdaptiveDifficultyConfigImplCopyWith<$Res> {
  __$$AdaptiveDifficultyConfigImplCopyWithImpl(
    _$AdaptiveDifficultyConfigImpl _value,
    $Res Function(_$AdaptiveDifficultyConfigImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AdaptiveDifficultyConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enableAutoAdjust = null,
    Object? adjustmentIntervalDays = null,
    Object? highAccuracyThreshold = null,
    Object? lowAccuracyThreshold = null,
    Object? completionThreshold = null,
    Object? minQuestionsBeforeAdjust = null,
    Object? difficultyMultipliers = null,
  }) {
    return _then(
      _$AdaptiveDifficultyConfigImpl(
        enableAutoAdjust: null == enableAutoAdjust
            ? _value.enableAutoAdjust
            : enableAutoAdjust // ignore: cast_nullable_to_non_nullable
                  as bool,
        adjustmentIntervalDays: null == adjustmentIntervalDays
            ? _value.adjustmentIntervalDays
            : adjustmentIntervalDays // ignore: cast_nullable_to_non_nullable
                  as int,
        highAccuracyThreshold: null == highAccuracyThreshold
            ? _value.highAccuracyThreshold
            : highAccuracyThreshold // ignore: cast_nullable_to_non_nullable
                  as double,
        lowAccuracyThreshold: null == lowAccuracyThreshold
            ? _value.lowAccuracyThreshold
            : lowAccuracyThreshold // ignore: cast_nullable_to_non_nullable
                  as double,
        completionThreshold: null == completionThreshold
            ? _value.completionThreshold
            : completionThreshold // ignore: cast_nullable_to_non_nullable
                  as double,
        minQuestionsBeforeAdjust: null == minQuestionsBeforeAdjust
            ? _value.minQuestionsBeforeAdjust
            : minQuestionsBeforeAdjust // ignore: cast_nullable_to_non_nullable
                  as int,
        difficultyMultipliers: null == difficultyMultipliers
            ? _value._difficultyMultipliers
            : difficultyMultipliers // ignore: cast_nullable_to_non_nullable
                  as Map<String, double>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AdaptiveDifficultyConfigImpl implements _AdaptiveDifficultyConfig {
  const _$AdaptiveDifficultyConfigImpl({
    required this.enableAutoAdjust,
    required this.adjustmentIntervalDays,
    required this.highAccuracyThreshold,
    required this.lowAccuracyThreshold,
    required this.completionThreshold,
    required this.minQuestionsBeforeAdjust,
    required final Map<String, double> difficultyMultipliers,
  }) : _difficultyMultipliers = difficultyMultipliers;

  factory _$AdaptiveDifficultyConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdaptiveDifficultyConfigImplFromJson(json);

  @override
  final bool enableAutoAdjust;
  // 自動調整を有効
  @override
  final int adjustmentIntervalDays;
  // 調整間隔（日数）
  @override
  final double highAccuracyThreshold;
  // 高い正答率と判定する閾値
  @override
  final double lowAccuracyThreshold;
  // 低い正答率と判定する閾値
  @override
  final double completionThreshold;
  // 完了率の目標
  @override
  final int minQuestionsBeforeAdjust;
  // 調整前に答える最小問題数
  final Map<String, double> _difficultyMultipliers;
  // 調整前に答える最小問題数
  @override
  Map<String, double> get difficultyMultipliers {
    if (_difficultyMultipliers is EqualUnmodifiableMapView)
      return _difficultyMultipliers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_difficultyMultipliers);
  }

  @override
  String toString() {
    return 'AdaptiveDifficultyConfig(enableAutoAdjust: $enableAutoAdjust, adjustmentIntervalDays: $adjustmentIntervalDays, highAccuracyThreshold: $highAccuracyThreshold, lowAccuracyThreshold: $lowAccuracyThreshold, completionThreshold: $completionThreshold, minQuestionsBeforeAdjust: $minQuestionsBeforeAdjust, difficultyMultipliers: $difficultyMultipliers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdaptiveDifficultyConfigImpl &&
            (identical(other.enableAutoAdjust, enableAutoAdjust) ||
                other.enableAutoAdjust == enableAutoAdjust) &&
            (identical(other.adjustmentIntervalDays, adjustmentIntervalDays) ||
                other.adjustmentIntervalDays == adjustmentIntervalDays) &&
            (identical(other.highAccuracyThreshold, highAccuracyThreshold) ||
                other.highAccuracyThreshold == highAccuracyThreshold) &&
            (identical(other.lowAccuracyThreshold, lowAccuracyThreshold) ||
                other.lowAccuracyThreshold == lowAccuracyThreshold) &&
            (identical(other.completionThreshold, completionThreshold) ||
                other.completionThreshold == completionThreshold) &&
            (identical(
                  other.minQuestionsBeforeAdjust,
                  minQuestionsBeforeAdjust,
                ) ||
                other.minQuestionsBeforeAdjust == minQuestionsBeforeAdjust) &&
            const DeepCollectionEquality().equals(
              other._difficultyMultipliers,
              _difficultyMultipliers,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    enableAutoAdjust,
    adjustmentIntervalDays,
    highAccuracyThreshold,
    lowAccuracyThreshold,
    completionThreshold,
    minQuestionsBeforeAdjust,
    const DeepCollectionEquality().hash(_difficultyMultipliers),
  );

  /// Create a copy of AdaptiveDifficultyConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdaptiveDifficultyConfigImplCopyWith<_$AdaptiveDifficultyConfigImpl>
  get copyWith =>
      __$$AdaptiveDifficultyConfigImplCopyWithImpl<
        _$AdaptiveDifficultyConfigImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdaptiveDifficultyConfigImplToJson(this);
  }
}

abstract class _AdaptiveDifficultyConfig implements AdaptiveDifficultyConfig {
  const factory _AdaptiveDifficultyConfig({
    required final bool enableAutoAdjust,
    required final int adjustmentIntervalDays,
    required final double highAccuracyThreshold,
    required final double lowAccuracyThreshold,
    required final double completionThreshold,
    required final int minQuestionsBeforeAdjust,
    required final Map<String, double> difficultyMultipliers,
  }) = _$AdaptiveDifficultyConfigImpl;

  factory _AdaptiveDifficultyConfig.fromJson(Map<String, dynamic> json) =
      _$AdaptiveDifficultyConfigImpl.fromJson;

  @override
  bool get enableAutoAdjust; // 自動調整を有効
  @override
  int get adjustmentIntervalDays; // 調整間隔（日数）
  @override
  double get highAccuracyThreshold; // 高い正答率と判定する閾値
  @override
  double get lowAccuracyThreshold; // 低い正答率と判定する閾値
  @override
  double get completionThreshold; // 完了率の目標
  @override
  int get minQuestionsBeforeAdjust; // 調整前に答える最小問題数
  @override
  Map<String, double> get difficultyMultipliers;

  /// Create a copy of AdaptiveDifficultyConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdaptiveDifficultyConfigImplCopyWith<_$AdaptiveDifficultyConfigImpl>
  get copyWith => throw _privateConstructorUsedError;
}

DifficultyRecommendation _$DifficultyRecommendationFromJson(
  Map<String, dynamic> json,
) {
  return _DifficultyRecommendation.fromJson(json);
}

/// @nodoc
mixin _$DifficultyRecommendation {
  DifficultyLevel get recommendedLevel => throw _privateConstructorUsedError;
  double get confidence =>
      throw _privateConstructorUsedError; // 推奨の確信度（0.0-1.0）
  String get reason => throw _privateConstructorUsedError; // 推奨理由
  List<String> get indicators => throw _privateConstructorUsedError; // 判定指標リスト
  DateTime get calculatedAt => throw _privateConstructorUsedError;

  /// Serializes this DifficultyRecommendation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DifficultyRecommendation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DifficultyRecommendationCopyWith<DifficultyRecommendation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DifficultyRecommendationCopyWith<$Res> {
  factory $DifficultyRecommendationCopyWith(
    DifficultyRecommendation value,
    $Res Function(DifficultyRecommendation) then,
  ) = _$DifficultyRecommendationCopyWithImpl<$Res, DifficultyRecommendation>;
  @useResult
  $Res call({
    DifficultyLevel recommendedLevel,
    double confidence,
    String reason,
    List<String> indicators,
    DateTime calculatedAt,
  });
}

/// @nodoc
class _$DifficultyRecommendationCopyWithImpl<
  $Res,
  $Val extends DifficultyRecommendation
>
    implements $DifficultyRecommendationCopyWith<$Res> {
  _$DifficultyRecommendationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DifficultyRecommendation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommendedLevel = null,
    Object? confidence = null,
    Object? reason = null,
    Object? indicators = null,
    Object? calculatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            recommendedLevel: null == recommendedLevel
                ? _value.recommendedLevel
                : recommendedLevel // ignore: cast_nullable_to_non_nullable
                      as DifficultyLevel,
            confidence: null == confidence
                ? _value.confidence
                : confidence // ignore: cast_nullable_to_non_nullable
                      as double,
            reason: null == reason
                ? _value.reason
                : reason // ignore: cast_nullable_to_non_nullable
                      as String,
            indicators: null == indicators
                ? _value.indicators
                : indicators // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            calculatedAt: null == calculatedAt
                ? _value.calculatedAt
                : calculatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DifficultyRecommendationImplCopyWith<$Res>
    implements $DifficultyRecommendationCopyWith<$Res> {
  factory _$$DifficultyRecommendationImplCopyWith(
    _$DifficultyRecommendationImpl value,
    $Res Function(_$DifficultyRecommendationImpl) then,
  ) = __$$DifficultyRecommendationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DifficultyLevel recommendedLevel,
    double confidence,
    String reason,
    List<String> indicators,
    DateTime calculatedAt,
  });
}

/// @nodoc
class __$$DifficultyRecommendationImplCopyWithImpl<$Res>
    extends
        _$DifficultyRecommendationCopyWithImpl<
          $Res,
          _$DifficultyRecommendationImpl
        >
    implements _$$DifficultyRecommendationImplCopyWith<$Res> {
  __$$DifficultyRecommendationImplCopyWithImpl(
    _$DifficultyRecommendationImpl _value,
    $Res Function(_$DifficultyRecommendationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DifficultyRecommendation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommendedLevel = null,
    Object? confidence = null,
    Object? reason = null,
    Object? indicators = null,
    Object? calculatedAt = null,
  }) {
    return _then(
      _$DifficultyRecommendationImpl(
        recommendedLevel: null == recommendedLevel
            ? _value.recommendedLevel
            : recommendedLevel // ignore: cast_nullable_to_non_nullable
                  as DifficultyLevel,
        confidence: null == confidence
            ? _value.confidence
            : confidence // ignore: cast_nullable_to_non_nullable
                  as double,
        reason: null == reason
            ? _value.reason
            : reason // ignore: cast_nullable_to_non_nullable
                  as String,
        indicators: null == indicators
            ? _value._indicators
            : indicators // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        calculatedAt: null == calculatedAt
            ? _value.calculatedAt
            : calculatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DifficultyRecommendationImpl implements _DifficultyRecommendation {
  const _$DifficultyRecommendationImpl({
    required this.recommendedLevel,
    required this.confidence,
    required this.reason,
    required final List<String> indicators,
    required this.calculatedAt,
  }) : _indicators = indicators;

  factory _$DifficultyRecommendationImpl.fromJson(Map<String, dynamic> json) =>
      _$$DifficultyRecommendationImplFromJson(json);

  @override
  final DifficultyLevel recommendedLevel;
  @override
  final double confidence;
  // 推奨の確信度（0.0-1.0）
  @override
  final String reason;
  // 推奨理由
  final List<String> _indicators;
  // 推奨理由
  @override
  List<String> get indicators {
    if (_indicators is EqualUnmodifiableListView) return _indicators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_indicators);
  }

  // 判定指標リスト
  @override
  final DateTime calculatedAt;

  @override
  String toString() {
    return 'DifficultyRecommendation(recommendedLevel: $recommendedLevel, confidence: $confidence, reason: $reason, indicators: $indicators, calculatedAt: $calculatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DifficultyRecommendationImpl &&
            (identical(other.recommendedLevel, recommendedLevel) ||
                other.recommendedLevel == recommendedLevel) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            const DeepCollectionEquality().equals(
              other._indicators,
              _indicators,
            ) &&
            (identical(other.calculatedAt, calculatedAt) ||
                other.calculatedAt == calculatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    recommendedLevel,
    confidence,
    reason,
    const DeepCollectionEquality().hash(_indicators),
    calculatedAt,
  );

  /// Create a copy of DifficultyRecommendation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DifficultyRecommendationImplCopyWith<_$DifficultyRecommendationImpl>
  get copyWith =>
      __$$DifficultyRecommendationImplCopyWithImpl<
        _$DifficultyRecommendationImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DifficultyRecommendationImplToJson(this);
  }
}

abstract class _DifficultyRecommendation implements DifficultyRecommendation {
  const factory _DifficultyRecommendation({
    required final DifficultyLevel recommendedLevel,
    required final double confidence,
    required final String reason,
    required final List<String> indicators,
    required final DateTime calculatedAt,
  }) = _$DifficultyRecommendationImpl;

  factory _DifficultyRecommendation.fromJson(Map<String, dynamic> json) =
      _$DifficultyRecommendationImpl.fromJson;

  @override
  DifficultyLevel get recommendedLevel;
  @override
  double get confidence; // 推奨の確信度（0.0-1.0）
  @override
  String get reason; // 推奨理由
  @override
  List<String> get indicators; // 判定指標リスト
  @override
  DateTime get calculatedAt;

  /// Create a copy of DifficultyRecommendation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DifficultyRecommendationImplCopyWith<_$DifficultyRecommendationImpl>
  get copyWith => throw _privateConstructorUsedError;
}

DifficultyPerformanceStats _$DifficultyPerformanceStatsFromJson(
  Map<String, dynamic> json,
) {
  return _DifficultyPerformanceStats.fromJson(json);
}

/// @nodoc
mixin _$DifficultyPerformanceStats {
  DifficultyLevel get level => throw _privateConstructorUsedError;
  double get avgAccuracy => throw _privateConstructorUsedError; // 平均正答率
  double get avgCompletionTime => throw _privateConstructorUsedError; // 平均完了時間
  int get totalAttempts => throw _privateConstructorUsedError; // 総試行回数
  int get successfulAttempts => throw _privateConstructorUsedError; // 成功試行回数
  DateTime? get lastUsedAt => throw _privateConstructorUsedError;

  /// Serializes this DifficultyPerformanceStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DifficultyPerformanceStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DifficultyPerformanceStatsCopyWith<DifficultyPerformanceStats>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DifficultyPerformanceStatsCopyWith<$Res> {
  factory $DifficultyPerformanceStatsCopyWith(
    DifficultyPerformanceStats value,
    $Res Function(DifficultyPerformanceStats) then,
  ) =
      _$DifficultyPerformanceStatsCopyWithImpl<
        $Res,
        DifficultyPerformanceStats
      >;
  @useResult
  $Res call({
    DifficultyLevel level,
    double avgAccuracy,
    double avgCompletionTime,
    int totalAttempts,
    int successfulAttempts,
    DateTime? lastUsedAt,
  });
}

/// @nodoc
class _$DifficultyPerformanceStatsCopyWithImpl<
  $Res,
  $Val extends DifficultyPerformanceStats
>
    implements $DifficultyPerformanceStatsCopyWith<$Res> {
  _$DifficultyPerformanceStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DifficultyPerformanceStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? avgAccuracy = null,
    Object? avgCompletionTime = null,
    Object? totalAttempts = null,
    Object? successfulAttempts = null,
    Object? lastUsedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            level: null == level
                ? _value.level
                : level // ignore: cast_nullable_to_non_nullable
                      as DifficultyLevel,
            avgAccuracy: null == avgAccuracy
                ? _value.avgAccuracy
                : avgAccuracy // ignore: cast_nullable_to_non_nullable
                      as double,
            avgCompletionTime: null == avgCompletionTime
                ? _value.avgCompletionTime
                : avgCompletionTime // ignore: cast_nullable_to_non_nullable
                      as double,
            totalAttempts: null == totalAttempts
                ? _value.totalAttempts
                : totalAttempts // ignore: cast_nullable_to_non_nullable
                      as int,
            successfulAttempts: null == successfulAttempts
                ? _value.successfulAttempts
                : successfulAttempts // ignore: cast_nullable_to_non_nullable
                      as int,
            lastUsedAt: freezed == lastUsedAt
                ? _value.lastUsedAt
                : lastUsedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DifficultyPerformanceStatsImplCopyWith<$Res>
    implements $DifficultyPerformanceStatsCopyWith<$Res> {
  factory _$$DifficultyPerformanceStatsImplCopyWith(
    _$DifficultyPerformanceStatsImpl value,
    $Res Function(_$DifficultyPerformanceStatsImpl) then,
  ) = __$$DifficultyPerformanceStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DifficultyLevel level,
    double avgAccuracy,
    double avgCompletionTime,
    int totalAttempts,
    int successfulAttempts,
    DateTime? lastUsedAt,
  });
}

/// @nodoc
class __$$DifficultyPerformanceStatsImplCopyWithImpl<$Res>
    extends
        _$DifficultyPerformanceStatsCopyWithImpl<
          $Res,
          _$DifficultyPerformanceStatsImpl
        >
    implements _$$DifficultyPerformanceStatsImplCopyWith<$Res> {
  __$$DifficultyPerformanceStatsImplCopyWithImpl(
    _$DifficultyPerformanceStatsImpl _value,
    $Res Function(_$DifficultyPerformanceStatsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DifficultyPerformanceStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? avgAccuracy = null,
    Object? avgCompletionTime = null,
    Object? totalAttempts = null,
    Object? successfulAttempts = null,
    Object? lastUsedAt = freezed,
  }) {
    return _then(
      _$DifficultyPerformanceStatsImpl(
        level: null == level
            ? _value.level
            : level // ignore: cast_nullable_to_non_nullable
                  as DifficultyLevel,
        avgAccuracy: null == avgAccuracy
            ? _value.avgAccuracy
            : avgAccuracy // ignore: cast_nullable_to_non_nullable
                  as double,
        avgCompletionTime: null == avgCompletionTime
            ? _value.avgCompletionTime
            : avgCompletionTime // ignore: cast_nullable_to_non_nullable
                  as double,
        totalAttempts: null == totalAttempts
            ? _value.totalAttempts
            : totalAttempts // ignore: cast_nullable_to_non_nullable
                  as int,
        successfulAttempts: null == successfulAttempts
            ? _value.successfulAttempts
            : successfulAttempts // ignore: cast_nullable_to_non_nullable
                  as int,
        lastUsedAt: freezed == lastUsedAt
            ? _value.lastUsedAt
            : lastUsedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DifficultyPerformanceStatsImpl implements _DifficultyPerformanceStats {
  const _$DifficultyPerformanceStatsImpl({
    required this.level,
    required this.avgAccuracy,
    required this.avgCompletionTime,
    required this.totalAttempts,
    required this.successfulAttempts,
    required this.lastUsedAt,
  });

  factory _$DifficultyPerformanceStatsImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$DifficultyPerformanceStatsImplFromJson(json);

  @override
  final DifficultyLevel level;
  @override
  final double avgAccuracy;
  // 平均正答率
  @override
  final double avgCompletionTime;
  // 平均完了時間
  @override
  final int totalAttempts;
  // 総試行回数
  @override
  final int successfulAttempts;
  // 成功試行回数
  @override
  final DateTime? lastUsedAt;

  @override
  String toString() {
    return 'DifficultyPerformanceStats(level: $level, avgAccuracy: $avgAccuracy, avgCompletionTime: $avgCompletionTime, totalAttempts: $totalAttempts, successfulAttempts: $successfulAttempts, lastUsedAt: $lastUsedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DifficultyPerformanceStatsImpl &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.avgAccuracy, avgAccuracy) ||
                other.avgAccuracy == avgAccuracy) &&
            (identical(other.avgCompletionTime, avgCompletionTime) ||
                other.avgCompletionTime == avgCompletionTime) &&
            (identical(other.totalAttempts, totalAttempts) ||
                other.totalAttempts == totalAttempts) &&
            (identical(other.successfulAttempts, successfulAttempts) ||
                other.successfulAttempts == successfulAttempts) &&
            (identical(other.lastUsedAt, lastUsedAt) ||
                other.lastUsedAt == lastUsedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    level,
    avgAccuracy,
    avgCompletionTime,
    totalAttempts,
    successfulAttempts,
    lastUsedAt,
  );

  /// Create a copy of DifficultyPerformanceStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DifficultyPerformanceStatsImplCopyWith<_$DifficultyPerformanceStatsImpl>
  get copyWith =>
      __$$DifficultyPerformanceStatsImplCopyWithImpl<
        _$DifficultyPerformanceStatsImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DifficultyPerformanceStatsImplToJson(this);
  }
}

abstract class _DifficultyPerformanceStats
    implements DifficultyPerformanceStats {
  const factory _DifficultyPerformanceStats({
    required final DifficultyLevel level,
    required final double avgAccuracy,
    required final double avgCompletionTime,
    required final int totalAttempts,
    required final int successfulAttempts,
    required final DateTime? lastUsedAt,
  }) = _$DifficultyPerformanceStatsImpl;

  factory _DifficultyPerformanceStats.fromJson(Map<String, dynamic> json) =
      _$DifficultyPerformanceStatsImpl.fromJson;

  @override
  DifficultyLevel get level;
  @override
  double get avgAccuracy; // 平均正答率
  @override
  double get avgCompletionTime; // 平均完了時間
  @override
  int get totalAttempts; // 総試行回数
  @override
  int get successfulAttempts; // 成功試行回数
  @override
  DateTime? get lastUsedAt;

  /// Create a copy of DifficultyPerformanceStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DifficultyPerformanceStatsImplCopyWith<_$DifficultyPerformanceStatsImpl>
  get copyWith => throw _privateConstructorUsedError;
}

UserLearningPattern _$UserLearningPatternFromJson(Map<String, dynamic> json) {
  return _UserLearningPattern.fromJson(json);
}

/// @nodoc
mixin _$UserLearningPattern {
  String get userId => throw _privateConstructorUsedError;
  String get appId => throw _privateConstructorUsedError;
  Map<String, DifficultyPerformanceStats> get performanceByLevel =>
      throw _privateConstructorUsedError;
  DifficultyLevel get mostCommonLevel =>
      throw _privateConstructorUsedError; // 最もよく選ぶ難易度
  DifficultyLevel get mostSuccessfulLevel =>
      throw _privateConstructorUsedError; // 最も成功する難易度
  double get learningVelocity =>
      throw _privateConstructorUsedError; // 学習速度（1.0 = 標準）
  DateTime get analyzedAt => throw _privateConstructorUsedError;

  /// Serializes this UserLearningPattern to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserLearningPattern
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserLearningPatternCopyWith<UserLearningPattern> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLearningPatternCopyWith<$Res> {
  factory $UserLearningPatternCopyWith(
    UserLearningPattern value,
    $Res Function(UserLearningPattern) then,
  ) = _$UserLearningPatternCopyWithImpl<$Res, UserLearningPattern>;
  @useResult
  $Res call({
    String userId,
    String appId,
    Map<String, DifficultyPerformanceStats> performanceByLevel,
    DifficultyLevel mostCommonLevel,
    DifficultyLevel mostSuccessfulLevel,
    double learningVelocity,
    DateTime analyzedAt,
  });
}

/// @nodoc
class _$UserLearningPatternCopyWithImpl<$Res, $Val extends UserLearningPattern>
    implements $UserLearningPatternCopyWith<$Res> {
  _$UserLearningPatternCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserLearningPattern
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? appId = null,
    Object? performanceByLevel = null,
    Object? mostCommonLevel = null,
    Object? mostSuccessfulLevel = null,
    Object? learningVelocity = null,
    Object? analyzedAt = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            appId: null == appId
                ? _value.appId
                : appId // ignore: cast_nullable_to_non_nullable
                      as String,
            performanceByLevel: null == performanceByLevel
                ? _value.performanceByLevel
                : performanceByLevel // ignore: cast_nullable_to_non_nullable
                      as Map<String, DifficultyPerformanceStats>,
            mostCommonLevel: null == mostCommonLevel
                ? _value.mostCommonLevel
                : mostCommonLevel // ignore: cast_nullable_to_non_nullable
                      as DifficultyLevel,
            mostSuccessfulLevel: null == mostSuccessfulLevel
                ? _value.mostSuccessfulLevel
                : mostSuccessfulLevel // ignore: cast_nullable_to_non_nullable
                      as DifficultyLevel,
            learningVelocity: null == learningVelocity
                ? _value.learningVelocity
                : learningVelocity // ignore: cast_nullable_to_non_nullable
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
abstract class _$$UserLearningPatternImplCopyWith<$Res>
    implements $UserLearningPatternCopyWith<$Res> {
  factory _$$UserLearningPatternImplCopyWith(
    _$UserLearningPatternImpl value,
    $Res Function(_$UserLearningPatternImpl) then,
  ) = __$$UserLearningPatternImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    String appId,
    Map<String, DifficultyPerformanceStats> performanceByLevel,
    DifficultyLevel mostCommonLevel,
    DifficultyLevel mostSuccessfulLevel,
    double learningVelocity,
    DateTime analyzedAt,
  });
}

/// @nodoc
class __$$UserLearningPatternImplCopyWithImpl<$Res>
    extends _$UserLearningPatternCopyWithImpl<$Res, _$UserLearningPatternImpl>
    implements _$$UserLearningPatternImplCopyWith<$Res> {
  __$$UserLearningPatternImplCopyWithImpl(
    _$UserLearningPatternImpl _value,
    $Res Function(_$UserLearningPatternImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserLearningPattern
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? appId = null,
    Object? performanceByLevel = null,
    Object? mostCommonLevel = null,
    Object? mostSuccessfulLevel = null,
    Object? learningVelocity = null,
    Object? analyzedAt = null,
  }) {
    return _then(
      _$UserLearningPatternImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        appId: null == appId
            ? _value.appId
            : appId // ignore: cast_nullable_to_non_nullable
                  as String,
        performanceByLevel: null == performanceByLevel
            ? _value._performanceByLevel
            : performanceByLevel // ignore: cast_nullable_to_non_nullable
                  as Map<String, DifficultyPerformanceStats>,
        mostCommonLevel: null == mostCommonLevel
            ? _value.mostCommonLevel
            : mostCommonLevel // ignore: cast_nullable_to_non_nullable
                  as DifficultyLevel,
        mostSuccessfulLevel: null == mostSuccessfulLevel
            ? _value.mostSuccessfulLevel
            : mostSuccessfulLevel // ignore: cast_nullable_to_non_nullable
                  as DifficultyLevel,
        learningVelocity: null == learningVelocity
            ? _value.learningVelocity
            : learningVelocity // ignore: cast_nullable_to_non_nullable
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
class _$UserLearningPatternImpl implements _UserLearningPattern {
  const _$UserLearningPatternImpl({
    required this.userId,
    required this.appId,
    required final Map<String, DifficultyPerformanceStats> performanceByLevel,
    required this.mostCommonLevel,
    required this.mostSuccessfulLevel,
    required this.learningVelocity,
    required this.analyzedAt,
  }) : _performanceByLevel = performanceByLevel;

  factory _$UserLearningPatternImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLearningPatternImplFromJson(json);

  @override
  final String userId;
  @override
  final String appId;
  final Map<String, DifficultyPerformanceStats> _performanceByLevel;
  @override
  Map<String, DifficultyPerformanceStats> get performanceByLevel {
    if (_performanceByLevel is EqualUnmodifiableMapView)
      return _performanceByLevel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_performanceByLevel);
  }

  @override
  final DifficultyLevel mostCommonLevel;
  // 最もよく選ぶ難易度
  @override
  final DifficultyLevel mostSuccessfulLevel;
  // 最も成功する難易度
  @override
  final double learningVelocity;
  // 学習速度（1.0 = 標準）
  @override
  final DateTime analyzedAt;

  @override
  String toString() {
    return 'UserLearningPattern(userId: $userId, appId: $appId, performanceByLevel: $performanceByLevel, mostCommonLevel: $mostCommonLevel, mostSuccessfulLevel: $mostSuccessfulLevel, learningVelocity: $learningVelocity, analyzedAt: $analyzedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLearningPatternImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.appId, appId) || other.appId == appId) &&
            const DeepCollectionEquality().equals(
              other._performanceByLevel,
              _performanceByLevel,
            ) &&
            (identical(other.mostCommonLevel, mostCommonLevel) ||
                other.mostCommonLevel == mostCommonLevel) &&
            (identical(other.mostSuccessfulLevel, mostSuccessfulLevel) ||
                other.mostSuccessfulLevel == mostSuccessfulLevel) &&
            (identical(other.learningVelocity, learningVelocity) ||
                other.learningVelocity == learningVelocity) &&
            (identical(other.analyzedAt, analyzedAt) ||
                other.analyzedAt == analyzedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    appId,
    const DeepCollectionEquality().hash(_performanceByLevel),
    mostCommonLevel,
    mostSuccessfulLevel,
    learningVelocity,
    analyzedAt,
  );

  /// Create a copy of UserLearningPattern
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLearningPatternImplCopyWith<_$UserLearningPatternImpl> get copyWith =>
      __$$UserLearningPatternImplCopyWithImpl<_$UserLearningPatternImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLearningPatternImplToJson(this);
  }
}

abstract class _UserLearningPattern implements UserLearningPattern {
  const factory _UserLearningPattern({
    required final String userId,
    required final String appId,
    required final Map<String, DifficultyPerformanceStats> performanceByLevel,
    required final DifficultyLevel mostCommonLevel,
    required final DifficultyLevel mostSuccessfulLevel,
    required final double learningVelocity,
    required final DateTime analyzedAt,
  }) = _$UserLearningPatternImpl;

  factory _UserLearningPattern.fromJson(Map<String, dynamic> json) =
      _$UserLearningPatternImpl.fromJson;

  @override
  String get userId;
  @override
  String get appId;
  @override
  Map<String, DifficultyPerformanceStats> get performanceByLevel;
  @override
  DifficultyLevel get mostCommonLevel; // 最もよく選ぶ難易度
  @override
  DifficultyLevel get mostSuccessfulLevel; // 最も成功する難易度
  @override
  double get learningVelocity; // 学習速度（1.0 = 標準）
  @override
  DateTime get analyzedAt;

  /// Create a copy of UserLearningPattern
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLearningPatternImplCopyWith<_$UserLearningPatternImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
