// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cross_app_report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CrossAppReport _$CrossAppReportFromJson(Map<String, dynamic> json) {
  return _CrossAppReport.fromJson(json);
}

/// @nodoc
mixin _$CrossAppReport {
  String get userId => throw _privateConstructorUsedError;
  Map<String, AppReportSummary> get appReports =>
      throw _privateConstructorUsedError;
  DateTime get generatedAt => throw _privateConstructorUsedError;
  CrossAppStats get totalStats => throw _privateConstructorUsedError;
  String get reportPeriod => throw _privateConstructorUsedError;

  /// Serializes this CrossAppReport to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CrossAppReport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CrossAppReportCopyWith<CrossAppReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrossAppReportCopyWith<$Res> {
  factory $CrossAppReportCopyWith(
    CrossAppReport value,
    $Res Function(CrossAppReport) then,
  ) = _$CrossAppReportCopyWithImpl<$Res, CrossAppReport>;
  @useResult
  $Res call({
    String userId,
    Map<String, AppReportSummary> appReports,
    DateTime generatedAt,
    CrossAppStats totalStats,
    String reportPeriod,
  });

  $CrossAppStatsCopyWith<$Res> get totalStats;
}

/// @nodoc
class _$CrossAppReportCopyWithImpl<$Res, $Val extends CrossAppReport>
    implements $CrossAppReportCopyWith<$Res> {
  _$CrossAppReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CrossAppReport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? appReports = null,
    Object? generatedAt = null,
    Object? totalStats = null,
    Object? reportPeriod = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            appReports: null == appReports
                ? _value.appReports
                : appReports // ignore: cast_nullable_to_non_nullable
                      as Map<String, AppReportSummary>,
            generatedAt: null == generatedAt
                ? _value.generatedAt
                : generatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            totalStats: null == totalStats
                ? _value.totalStats
                : totalStats // ignore: cast_nullable_to_non_nullable
                      as CrossAppStats,
            reportPeriod: null == reportPeriod
                ? _value.reportPeriod
                : reportPeriod // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }

  /// Create a copy of CrossAppReport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CrossAppStatsCopyWith<$Res> get totalStats {
    return $CrossAppStatsCopyWith<$Res>(_value.totalStats, (value) {
      return _then(_value.copyWith(totalStats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CrossAppReportImplCopyWith<$Res>
    implements $CrossAppReportCopyWith<$Res> {
  factory _$$CrossAppReportImplCopyWith(
    _$CrossAppReportImpl value,
    $Res Function(_$CrossAppReportImpl) then,
  ) = __$$CrossAppReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    Map<String, AppReportSummary> appReports,
    DateTime generatedAt,
    CrossAppStats totalStats,
    String reportPeriod,
  });

  @override
  $CrossAppStatsCopyWith<$Res> get totalStats;
}

/// @nodoc
class __$$CrossAppReportImplCopyWithImpl<$Res>
    extends _$CrossAppReportCopyWithImpl<$Res, _$CrossAppReportImpl>
    implements _$$CrossAppReportImplCopyWith<$Res> {
  __$$CrossAppReportImplCopyWithImpl(
    _$CrossAppReportImpl _value,
    $Res Function(_$CrossAppReportImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CrossAppReport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? appReports = null,
    Object? generatedAt = null,
    Object? totalStats = null,
    Object? reportPeriod = null,
  }) {
    return _then(
      _$CrossAppReportImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        appReports: null == appReports
            ? _value._appReports
            : appReports // ignore: cast_nullable_to_non_nullable
                  as Map<String, AppReportSummary>,
        generatedAt: null == generatedAt
            ? _value.generatedAt
            : generatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        totalStats: null == totalStats
            ? _value.totalStats
            : totalStats // ignore: cast_nullable_to_non_nullable
                  as CrossAppStats,
        reportPeriod: null == reportPeriod
            ? _value.reportPeriod
            : reportPeriod // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CrossAppReportImpl implements _CrossAppReport {
  const _$CrossAppReportImpl({
    required this.userId,
    required final Map<String, AppReportSummary> appReports,
    required this.generatedAt,
    required this.totalStats,
    required this.reportPeriod,
  }) : _appReports = appReports;

  factory _$CrossAppReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$CrossAppReportImplFromJson(json);

  @override
  final String userId;
  final Map<String, AppReportSummary> _appReports;
  @override
  Map<String, AppReportSummary> get appReports {
    if (_appReports is EqualUnmodifiableMapView) return _appReports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_appReports);
  }

  @override
  final DateTime generatedAt;
  @override
  final CrossAppStats totalStats;
  @override
  final String reportPeriod;

  @override
  String toString() {
    return 'CrossAppReport(userId: $userId, appReports: $appReports, generatedAt: $generatedAt, totalStats: $totalStats, reportPeriod: $reportPeriod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CrossAppReportImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(
              other._appReports,
              _appReports,
            ) &&
            (identical(other.generatedAt, generatedAt) ||
                other.generatedAt == generatedAt) &&
            (identical(other.totalStats, totalStats) ||
                other.totalStats == totalStats) &&
            (identical(other.reportPeriod, reportPeriod) ||
                other.reportPeriod == reportPeriod));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    const DeepCollectionEquality().hash(_appReports),
    generatedAt,
    totalStats,
    reportPeriod,
  );

  /// Create a copy of CrossAppReport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CrossAppReportImplCopyWith<_$CrossAppReportImpl> get copyWith =>
      __$$CrossAppReportImplCopyWithImpl<_$CrossAppReportImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CrossAppReportImplToJson(this);
  }
}

abstract class _CrossAppReport implements CrossAppReport {
  const factory _CrossAppReport({
    required final String userId,
    required final Map<String, AppReportSummary> appReports,
    required final DateTime generatedAt,
    required final CrossAppStats totalStats,
    required final String reportPeriod,
  }) = _$CrossAppReportImpl;

  factory _CrossAppReport.fromJson(Map<String, dynamic> json) =
      _$CrossAppReportImpl.fromJson;

  @override
  String get userId;
  @override
  Map<String, AppReportSummary> get appReports;
  @override
  DateTime get generatedAt;
  @override
  CrossAppStats get totalStats;
  @override
  String get reportPeriod;

  /// Create a copy of CrossAppReport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CrossAppReportImplCopyWith<_$CrossAppReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AppReportSummary _$AppReportSummaryFromJson(Map<String, dynamic> json) {
  return _AppReportSummary.fromJson(json);
}

/// @nodoc
mixin _$AppReportSummary {
  String get appId =>
      throw _privateConstructorUsedError; // 'kokugo', 'sansu', 'eigo', etc.
  String get appName => throw _privateConstructorUsedError;
  int get totalLearningMinutes => throw _privateConstructorUsedError;
  double get averageAccuracy => throw _privateConstructorUsedError;
  int get quizzesCompleted => throw _privateConstructorUsedError;
  int get badgesEarned => throw _privateConstructorUsedError;
  int get coinsEarned => throw _privateConstructorUsedError;
  double get growthTrend => throw _privateConstructorUsedError; // -1.0 to 1.0
  String get performanceLevel => throw _privateConstructorUsedError;

  /// Serializes this AppReportSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppReportSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppReportSummaryCopyWith<AppReportSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppReportSummaryCopyWith<$Res> {
  factory $AppReportSummaryCopyWith(
    AppReportSummary value,
    $Res Function(AppReportSummary) then,
  ) = _$AppReportSummaryCopyWithImpl<$Res, AppReportSummary>;
  @useResult
  $Res call({
    String appId,
    String appName,
    int totalLearningMinutes,
    double averageAccuracy,
    int quizzesCompleted,
    int badgesEarned,
    int coinsEarned,
    double growthTrend,
    String performanceLevel,
  });
}

/// @nodoc
class _$AppReportSummaryCopyWithImpl<$Res, $Val extends AppReportSummary>
    implements $AppReportSummaryCopyWith<$Res> {
  _$AppReportSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppReportSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = null,
    Object? appName = null,
    Object? totalLearningMinutes = null,
    Object? averageAccuracy = null,
    Object? quizzesCompleted = null,
    Object? badgesEarned = null,
    Object? coinsEarned = null,
    Object? growthTrend = null,
    Object? performanceLevel = null,
  }) {
    return _then(
      _value.copyWith(
            appId: null == appId
                ? _value.appId
                : appId // ignore: cast_nullable_to_non_nullable
                      as String,
            appName: null == appName
                ? _value.appName
                : appName // ignore: cast_nullable_to_non_nullable
                      as String,
            totalLearningMinutes: null == totalLearningMinutes
                ? _value.totalLearningMinutes
                : totalLearningMinutes // ignore: cast_nullable_to_non_nullable
                      as int,
            averageAccuracy: null == averageAccuracy
                ? _value.averageAccuracy
                : averageAccuracy // ignore: cast_nullable_to_non_nullable
                      as double,
            quizzesCompleted: null == quizzesCompleted
                ? _value.quizzesCompleted
                : quizzesCompleted // ignore: cast_nullable_to_non_nullable
                      as int,
            badgesEarned: null == badgesEarned
                ? _value.badgesEarned
                : badgesEarned // ignore: cast_nullable_to_non_nullable
                      as int,
            coinsEarned: null == coinsEarned
                ? _value.coinsEarned
                : coinsEarned // ignore: cast_nullable_to_non_nullable
                      as int,
            growthTrend: null == growthTrend
                ? _value.growthTrend
                : growthTrend // ignore: cast_nullable_to_non_nullable
                      as double,
            performanceLevel: null == performanceLevel
                ? _value.performanceLevel
                : performanceLevel // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AppReportSummaryImplCopyWith<$Res>
    implements $AppReportSummaryCopyWith<$Res> {
  factory _$$AppReportSummaryImplCopyWith(
    _$AppReportSummaryImpl value,
    $Res Function(_$AppReportSummaryImpl) then,
  ) = __$$AppReportSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String appId,
    String appName,
    int totalLearningMinutes,
    double averageAccuracy,
    int quizzesCompleted,
    int badgesEarned,
    int coinsEarned,
    double growthTrend,
    String performanceLevel,
  });
}

/// @nodoc
class __$$AppReportSummaryImplCopyWithImpl<$Res>
    extends _$AppReportSummaryCopyWithImpl<$Res, _$AppReportSummaryImpl>
    implements _$$AppReportSummaryImplCopyWith<$Res> {
  __$$AppReportSummaryImplCopyWithImpl(
    _$AppReportSummaryImpl _value,
    $Res Function(_$AppReportSummaryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppReportSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = null,
    Object? appName = null,
    Object? totalLearningMinutes = null,
    Object? averageAccuracy = null,
    Object? quizzesCompleted = null,
    Object? badgesEarned = null,
    Object? coinsEarned = null,
    Object? growthTrend = null,
    Object? performanceLevel = null,
  }) {
    return _then(
      _$AppReportSummaryImpl(
        appId: null == appId
            ? _value.appId
            : appId // ignore: cast_nullable_to_non_nullable
                  as String,
        appName: null == appName
            ? _value.appName
            : appName // ignore: cast_nullable_to_non_nullable
                  as String,
        totalLearningMinutes: null == totalLearningMinutes
            ? _value.totalLearningMinutes
            : totalLearningMinutes // ignore: cast_nullable_to_non_nullable
                  as int,
        averageAccuracy: null == averageAccuracy
            ? _value.averageAccuracy
            : averageAccuracy // ignore: cast_nullable_to_non_nullable
                  as double,
        quizzesCompleted: null == quizzesCompleted
            ? _value.quizzesCompleted
            : quizzesCompleted // ignore: cast_nullable_to_non_nullable
                  as int,
        badgesEarned: null == badgesEarned
            ? _value.badgesEarned
            : badgesEarned // ignore: cast_nullable_to_non_nullable
                  as int,
        coinsEarned: null == coinsEarned
            ? _value.coinsEarned
            : coinsEarned // ignore: cast_nullable_to_non_nullable
                  as int,
        growthTrend: null == growthTrend
            ? _value.growthTrend
            : growthTrend // ignore: cast_nullable_to_non_nullable
                  as double,
        performanceLevel: null == performanceLevel
            ? _value.performanceLevel
            : performanceLevel // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AppReportSummaryImpl implements _AppReportSummary {
  const _$AppReportSummaryImpl({
    required this.appId,
    required this.appName,
    required this.totalLearningMinutes,
    required this.averageAccuracy,
    required this.quizzesCompleted,
    required this.badgesEarned,
    required this.coinsEarned,
    required this.growthTrend,
    required this.performanceLevel,
  });

  factory _$AppReportSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppReportSummaryImplFromJson(json);

  @override
  final String appId;
  // 'kokugo', 'sansu', 'eigo', etc.
  @override
  final String appName;
  @override
  final int totalLearningMinutes;
  @override
  final double averageAccuracy;
  @override
  final int quizzesCompleted;
  @override
  final int badgesEarned;
  @override
  final int coinsEarned;
  @override
  final double growthTrend;
  // -1.0 to 1.0
  @override
  final String performanceLevel;

  @override
  String toString() {
    return 'AppReportSummary(appId: $appId, appName: $appName, totalLearningMinutes: $totalLearningMinutes, averageAccuracy: $averageAccuracy, quizzesCompleted: $quizzesCompleted, badgesEarned: $badgesEarned, coinsEarned: $coinsEarned, growthTrend: $growthTrend, performanceLevel: $performanceLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppReportSummaryImpl &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.totalLearningMinutes, totalLearningMinutes) ||
                other.totalLearningMinutes == totalLearningMinutes) &&
            (identical(other.averageAccuracy, averageAccuracy) ||
                other.averageAccuracy == averageAccuracy) &&
            (identical(other.quizzesCompleted, quizzesCompleted) ||
                other.quizzesCompleted == quizzesCompleted) &&
            (identical(other.badgesEarned, badgesEarned) ||
                other.badgesEarned == badgesEarned) &&
            (identical(other.coinsEarned, coinsEarned) ||
                other.coinsEarned == coinsEarned) &&
            (identical(other.growthTrend, growthTrend) ||
                other.growthTrend == growthTrend) &&
            (identical(other.performanceLevel, performanceLevel) ||
                other.performanceLevel == performanceLevel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    appId,
    appName,
    totalLearningMinutes,
    averageAccuracy,
    quizzesCompleted,
    badgesEarned,
    coinsEarned,
    growthTrend,
    performanceLevel,
  );

  /// Create a copy of AppReportSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppReportSummaryImplCopyWith<_$AppReportSummaryImpl> get copyWith =>
      __$$AppReportSummaryImplCopyWithImpl<_$AppReportSummaryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AppReportSummaryImplToJson(this);
  }
}

abstract class _AppReportSummary implements AppReportSummary {
  const factory _AppReportSummary({
    required final String appId,
    required final String appName,
    required final int totalLearningMinutes,
    required final double averageAccuracy,
    required final int quizzesCompleted,
    required final int badgesEarned,
    required final int coinsEarned,
    required final double growthTrend,
    required final String performanceLevel,
  }) = _$AppReportSummaryImpl;

  factory _AppReportSummary.fromJson(Map<String, dynamic> json) =
      _$AppReportSummaryImpl.fromJson;

  @override
  String get appId; // 'kokugo', 'sansu', 'eigo', etc.
  @override
  String get appName;
  @override
  int get totalLearningMinutes;
  @override
  double get averageAccuracy;
  @override
  int get quizzesCompleted;
  @override
  int get badgesEarned;
  @override
  int get coinsEarned;
  @override
  double get growthTrend; // -1.0 to 1.0
  @override
  String get performanceLevel;

  /// Create a copy of AppReportSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppReportSummaryImplCopyWith<_$AppReportSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CrossAppStats _$CrossAppStatsFromJson(Map<String, dynamic> json) {
  return _CrossAppStats.fromJson(json);
}

/// @nodoc
mixin _$CrossAppStats {
  int get totalLearningMinutes => throw _privateConstructorUsedError;
  int get totalQuizzesCompleted => throw _privateConstructorUsedError;
  double get overallAverageAccuracy => throw _privateConstructorUsedError;
  int get totalBadgesEarned => throw _privateConstructorUsedError;
  int get totalCoinsEarned => throw _privateConstructorUsedError;
  int get appsActive => throw _privateConstructorUsedError; // 何個のアプリで学習したか
  List<String> get topPerformingApps =>
      throw _privateConstructorUsedError; // パフォーマンス上位3アプリ
  String get overallPerformance =>
      throw _privateConstructorUsedError; // 'excellent', 'good', 'average', 'needs_improvement'
  double get consistencyScore =>
      throw _privateConstructorUsedError; // 0-100: 継続度
  int get consecutiveDaysLearning => throw _privateConstructorUsedError;

  /// Serializes this CrossAppStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CrossAppStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CrossAppStatsCopyWith<CrossAppStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrossAppStatsCopyWith<$Res> {
  factory $CrossAppStatsCopyWith(
    CrossAppStats value,
    $Res Function(CrossAppStats) then,
  ) = _$CrossAppStatsCopyWithImpl<$Res, CrossAppStats>;
  @useResult
  $Res call({
    int totalLearningMinutes,
    int totalQuizzesCompleted,
    double overallAverageAccuracy,
    int totalBadgesEarned,
    int totalCoinsEarned,
    int appsActive,
    List<String> topPerformingApps,
    String overallPerformance,
    double consistencyScore,
    int consecutiveDaysLearning,
  });
}

/// @nodoc
class _$CrossAppStatsCopyWithImpl<$Res, $Val extends CrossAppStats>
    implements $CrossAppStatsCopyWith<$Res> {
  _$CrossAppStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CrossAppStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalLearningMinutes = null,
    Object? totalQuizzesCompleted = null,
    Object? overallAverageAccuracy = null,
    Object? totalBadgesEarned = null,
    Object? totalCoinsEarned = null,
    Object? appsActive = null,
    Object? topPerformingApps = null,
    Object? overallPerformance = null,
    Object? consistencyScore = null,
    Object? consecutiveDaysLearning = null,
  }) {
    return _then(
      _value.copyWith(
            totalLearningMinutes: null == totalLearningMinutes
                ? _value.totalLearningMinutes
                : totalLearningMinutes // ignore: cast_nullable_to_non_nullable
                      as int,
            totalQuizzesCompleted: null == totalQuizzesCompleted
                ? _value.totalQuizzesCompleted
                : totalQuizzesCompleted // ignore: cast_nullable_to_non_nullable
                      as int,
            overallAverageAccuracy: null == overallAverageAccuracy
                ? _value.overallAverageAccuracy
                : overallAverageAccuracy // ignore: cast_nullable_to_non_nullable
                      as double,
            totalBadgesEarned: null == totalBadgesEarned
                ? _value.totalBadgesEarned
                : totalBadgesEarned // ignore: cast_nullable_to_non_nullable
                      as int,
            totalCoinsEarned: null == totalCoinsEarned
                ? _value.totalCoinsEarned
                : totalCoinsEarned // ignore: cast_nullable_to_non_nullable
                      as int,
            appsActive: null == appsActive
                ? _value.appsActive
                : appsActive // ignore: cast_nullable_to_non_nullable
                      as int,
            topPerformingApps: null == topPerformingApps
                ? _value.topPerformingApps
                : topPerformingApps // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            overallPerformance: null == overallPerformance
                ? _value.overallPerformance
                : overallPerformance // ignore: cast_nullable_to_non_nullable
                      as String,
            consistencyScore: null == consistencyScore
                ? _value.consistencyScore
                : consistencyScore // ignore: cast_nullable_to_non_nullable
                      as double,
            consecutiveDaysLearning: null == consecutiveDaysLearning
                ? _value.consecutiveDaysLearning
                : consecutiveDaysLearning // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CrossAppStatsImplCopyWith<$Res>
    implements $CrossAppStatsCopyWith<$Res> {
  factory _$$CrossAppStatsImplCopyWith(
    _$CrossAppStatsImpl value,
    $Res Function(_$CrossAppStatsImpl) then,
  ) = __$$CrossAppStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int totalLearningMinutes,
    int totalQuizzesCompleted,
    double overallAverageAccuracy,
    int totalBadgesEarned,
    int totalCoinsEarned,
    int appsActive,
    List<String> topPerformingApps,
    String overallPerformance,
    double consistencyScore,
    int consecutiveDaysLearning,
  });
}

/// @nodoc
class __$$CrossAppStatsImplCopyWithImpl<$Res>
    extends _$CrossAppStatsCopyWithImpl<$Res, _$CrossAppStatsImpl>
    implements _$$CrossAppStatsImplCopyWith<$Res> {
  __$$CrossAppStatsImplCopyWithImpl(
    _$CrossAppStatsImpl _value,
    $Res Function(_$CrossAppStatsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CrossAppStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalLearningMinutes = null,
    Object? totalQuizzesCompleted = null,
    Object? overallAverageAccuracy = null,
    Object? totalBadgesEarned = null,
    Object? totalCoinsEarned = null,
    Object? appsActive = null,
    Object? topPerformingApps = null,
    Object? overallPerformance = null,
    Object? consistencyScore = null,
    Object? consecutiveDaysLearning = null,
  }) {
    return _then(
      _$CrossAppStatsImpl(
        totalLearningMinutes: null == totalLearningMinutes
            ? _value.totalLearningMinutes
            : totalLearningMinutes // ignore: cast_nullable_to_non_nullable
                  as int,
        totalQuizzesCompleted: null == totalQuizzesCompleted
            ? _value.totalQuizzesCompleted
            : totalQuizzesCompleted // ignore: cast_nullable_to_non_nullable
                  as int,
        overallAverageAccuracy: null == overallAverageAccuracy
            ? _value.overallAverageAccuracy
            : overallAverageAccuracy // ignore: cast_nullable_to_non_nullable
                  as double,
        totalBadgesEarned: null == totalBadgesEarned
            ? _value.totalBadgesEarned
            : totalBadgesEarned // ignore: cast_nullable_to_non_nullable
                  as int,
        totalCoinsEarned: null == totalCoinsEarned
            ? _value.totalCoinsEarned
            : totalCoinsEarned // ignore: cast_nullable_to_non_nullable
                  as int,
        appsActive: null == appsActive
            ? _value.appsActive
            : appsActive // ignore: cast_nullable_to_non_nullable
                  as int,
        topPerformingApps: null == topPerformingApps
            ? _value._topPerformingApps
            : topPerformingApps // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        overallPerformance: null == overallPerformance
            ? _value.overallPerformance
            : overallPerformance // ignore: cast_nullable_to_non_nullable
                  as String,
        consistencyScore: null == consistencyScore
            ? _value.consistencyScore
            : consistencyScore // ignore: cast_nullable_to_non_nullable
                  as double,
        consecutiveDaysLearning: null == consecutiveDaysLearning
            ? _value.consecutiveDaysLearning
            : consecutiveDaysLearning // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CrossAppStatsImpl implements _CrossAppStats {
  const _$CrossAppStatsImpl({
    required this.totalLearningMinutes,
    required this.totalQuizzesCompleted,
    required this.overallAverageAccuracy,
    required this.totalBadgesEarned,
    required this.totalCoinsEarned,
    required this.appsActive,
    required final List<String> topPerformingApps,
    required this.overallPerformance,
    required this.consistencyScore,
    required this.consecutiveDaysLearning,
  }) : _topPerformingApps = topPerformingApps;

  factory _$CrossAppStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CrossAppStatsImplFromJson(json);

  @override
  final int totalLearningMinutes;
  @override
  final int totalQuizzesCompleted;
  @override
  final double overallAverageAccuracy;
  @override
  final int totalBadgesEarned;
  @override
  final int totalCoinsEarned;
  @override
  final int appsActive;
  // 何個のアプリで学習したか
  final List<String> _topPerformingApps;
  // 何個のアプリで学習したか
  @override
  List<String> get topPerformingApps {
    if (_topPerformingApps is EqualUnmodifiableListView)
      return _topPerformingApps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topPerformingApps);
  }

  // パフォーマンス上位3アプリ
  @override
  final String overallPerformance;
  // 'excellent', 'good', 'average', 'needs_improvement'
  @override
  final double consistencyScore;
  // 0-100: 継続度
  @override
  final int consecutiveDaysLearning;

  @override
  String toString() {
    return 'CrossAppStats(totalLearningMinutes: $totalLearningMinutes, totalQuizzesCompleted: $totalQuizzesCompleted, overallAverageAccuracy: $overallAverageAccuracy, totalBadgesEarned: $totalBadgesEarned, totalCoinsEarned: $totalCoinsEarned, appsActive: $appsActive, topPerformingApps: $topPerformingApps, overallPerformance: $overallPerformance, consistencyScore: $consistencyScore, consecutiveDaysLearning: $consecutiveDaysLearning)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CrossAppStatsImpl &&
            (identical(other.totalLearningMinutes, totalLearningMinutes) ||
                other.totalLearningMinutes == totalLearningMinutes) &&
            (identical(other.totalQuizzesCompleted, totalQuizzesCompleted) ||
                other.totalQuizzesCompleted == totalQuizzesCompleted) &&
            (identical(other.overallAverageAccuracy, overallAverageAccuracy) ||
                other.overallAverageAccuracy == overallAverageAccuracy) &&
            (identical(other.totalBadgesEarned, totalBadgesEarned) ||
                other.totalBadgesEarned == totalBadgesEarned) &&
            (identical(other.totalCoinsEarned, totalCoinsEarned) ||
                other.totalCoinsEarned == totalCoinsEarned) &&
            (identical(other.appsActive, appsActive) ||
                other.appsActive == appsActive) &&
            const DeepCollectionEquality().equals(
              other._topPerformingApps,
              _topPerformingApps,
            ) &&
            (identical(other.overallPerformance, overallPerformance) ||
                other.overallPerformance == overallPerformance) &&
            (identical(other.consistencyScore, consistencyScore) ||
                other.consistencyScore == consistencyScore) &&
            (identical(
                  other.consecutiveDaysLearning,
                  consecutiveDaysLearning,
                ) ||
                other.consecutiveDaysLearning == consecutiveDaysLearning));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    totalLearningMinutes,
    totalQuizzesCompleted,
    overallAverageAccuracy,
    totalBadgesEarned,
    totalCoinsEarned,
    appsActive,
    const DeepCollectionEquality().hash(_topPerformingApps),
    overallPerformance,
    consistencyScore,
    consecutiveDaysLearning,
  );

  /// Create a copy of CrossAppStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CrossAppStatsImplCopyWith<_$CrossAppStatsImpl> get copyWith =>
      __$$CrossAppStatsImplCopyWithImpl<_$CrossAppStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CrossAppStatsImplToJson(this);
  }
}

abstract class _CrossAppStats implements CrossAppStats {
  const factory _CrossAppStats({
    required final int totalLearningMinutes,
    required final int totalQuizzesCompleted,
    required final double overallAverageAccuracy,
    required final int totalBadgesEarned,
    required final int totalCoinsEarned,
    required final int appsActive,
    required final List<String> topPerformingApps,
    required final String overallPerformance,
    required final double consistencyScore,
    required final int consecutiveDaysLearning,
  }) = _$CrossAppStatsImpl;

  factory _CrossAppStats.fromJson(Map<String, dynamic> json) =
      _$CrossAppStatsImpl.fromJson;

  @override
  int get totalLearningMinutes;
  @override
  int get totalQuizzesCompleted;
  @override
  double get overallAverageAccuracy;
  @override
  int get totalBadgesEarned;
  @override
  int get totalCoinsEarned;
  @override
  int get appsActive; // 何個のアプリで学習したか
  @override
  List<String> get topPerformingApps; // パフォーマンス上位3アプリ
  @override
  String get overallPerformance; // 'excellent', 'good', 'average', 'needs_improvement'
  @override
  double get consistencyScore; // 0-100: 継続度
  @override
  int get consecutiveDaysLearning;

  /// Create a copy of CrossAppStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CrossAppStatsImplCopyWith<_$CrossAppStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeeklyReportComparison _$WeeklyReportComparisonFromJson(
  Map<String, dynamic> json,
) {
  return _WeeklyReportComparison.fromJson(json);
}

/// @nodoc
mixin _$WeeklyReportComparison {
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  Map<String, DailyAppStats> get dailyStats =>
      throw _privateConstructorUsedError;
  String get bestDay => throw _privateConstructorUsedError; // 最も学習した日
  int get bestDayMinutes => throw _privateConstructorUsedError;

  /// Serializes this WeeklyReportComparison to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeeklyReportComparison
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeeklyReportComparisonCopyWith<WeeklyReportComparison> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyReportComparisonCopyWith<$Res> {
  factory $WeeklyReportComparisonCopyWith(
    WeeklyReportComparison value,
    $Res Function(WeeklyReportComparison) then,
  ) = _$WeeklyReportComparisonCopyWithImpl<$Res, WeeklyReportComparison>;
  @useResult
  $Res call({
    DateTime startDate,
    DateTime endDate,
    Map<String, DailyAppStats> dailyStats,
    String bestDay,
    int bestDayMinutes,
  });
}

/// @nodoc
class _$WeeklyReportComparisonCopyWithImpl<
  $Res,
  $Val extends WeeklyReportComparison
>
    implements $WeeklyReportComparisonCopyWith<$Res> {
  _$WeeklyReportComparisonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeeklyReportComparison
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
    Object? dailyStats = null,
    Object? bestDay = null,
    Object? bestDayMinutes = null,
  }) {
    return _then(
      _value.copyWith(
            startDate: null == startDate
                ? _value.startDate
                : startDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            endDate: null == endDate
                ? _value.endDate
                : endDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            dailyStats: null == dailyStats
                ? _value.dailyStats
                : dailyStats // ignore: cast_nullable_to_non_nullable
                      as Map<String, DailyAppStats>,
            bestDay: null == bestDay
                ? _value.bestDay
                : bestDay // ignore: cast_nullable_to_non_nullable
                      as String,
            bestDayMinutes: null == bestDayMinutes
                ? _value.bestDayMinutes
                : bestDayMinutes // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WeeklyReportComparisonImplCopyWith<$Res>
    implements $WeeklyReportComparisonCopyWith<$Res> {
  factory _$$WeeklyReportComparisonImplCopyWith(
    _$WeeklyReportComparisonImpl value,
    $Res Function(_$WeeklyReportComparisonImpl) then,
  ) = __$$WeeklyReportComparisonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DateTime startDate,
    DateTime endDate,
    Map<String, DailyAppStats> dailyStats,
    String bestDay,
    int bestDayMinutes,
  });
}

/// @nodoc
class __$$WeeklyReportComparisonImplCopyWithImpl<$Res>
    extends
        _$WeeklyReportComparisonCopyWithImpl<$Res, _$WeeklyReportComparisonImpl>
    implements _$$WeeklyReportComparisonImplCopyWith<$Res> {
  __$$WeeklyReportComparisonImplCopyWithImpl(
    _$WeeklyReportComparisonImpl _value,
    $Res Function(_$WeeklyReportComparisonImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WeeklyReportComparison
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
    Object? dailyStats = null,
    Object? bestDay = null,
    Object? bestDayMinutes = null,
  }) {
    return _then(
      _$WeeklyReportComparisonImpl(
        startDate: null == startDate
            ? _value.startDate
            : startDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        endDate: null == endDate
            ? _value.endDate
            : endDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        dailyStats: null == dailyStats
            ? _value._dailyStats
            : dailyStats // ignore: cast_nullable_to_non_nullable
                  as Map<String, DailyAppStats>,
        bestDay: null == bestDay
            ? _value.bestDay
            : bestDay // ignore: cast_nullable_to_non_nullable
                  as String,
        bestDayMinutes: null == bestDayMinutes
            ? _value.bestDayMinutes
            : bestDayMinutes // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WeeklyReportComparisonImpl implements _WeeklyReportComparison {
  const _$WeeklyReportComparisonImpl({
    required this.startDate,
    required this.endDate,
    required final Map<String, DailyAppStats> dailyStats,
    required this.bestDay,
    required this.bestDayMinutes,
  }) : _dailyStats = dailyStats;

  factory _$WeeklyReportComparisonImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeeklyReportComparisonImplFromJson(json);

  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  final Map<String, DailyAppStats> _dailyStats;
  @override
  Map<String, DailyAppStats> get dailyStats {
    if (_dailyStats is EqualUnmodifiableMapView) return _dailyStats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_dailyStats);
  }

  @override
  final String bestDay;
  // 最も学習した日
  @override
  final int bestDayMinutes;

  @override
  String toString() {
    return 'WeeklyReportComparison(startDate: $startDate, endDate: $endDate, dailyStats: $dailyStats, bestDay: $bestDay, bestDayMinutes: $bestDayMinutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeeklyReportComparisonImpl &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            const DeepCollectionEquality().equals(
              other._dailyStats,
              _dailyStats,
            ) &&
            (identical(other.bestDay, bestDay) || other.bestDay == bestDay) &&
            (identical(other.bestDayMinutes, bestDayMinutes) ||
                other.bestDayMinutes == bestDayMinutes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    startDate,
    endDate,
    const DeepCollectionEquality().hash(_dailyStats),
    bestDay,
    bestDayMinutes,
  );

  /// Create a copy of WeeklyReportComparison
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeeklyReportComparisonImplCopyWith<_$WeeklyReportComparisonImpl>
  get copyWith =>
      __$$WeeklyReportComparisonImplCopyWithImpl<_$WeeklyReportComparisonImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WeeklyReportComparisonImplToJson(this);
  }
}

abstract class _WeeklyReportComparison implements WeeklyReportComparison {
  const factory _WeeklyReportComparison({
    required final DateTime startDate,
    required final DateTime endDate,
    required final Map<String, DailyAppStats> dailyStats,
    required final String bestDay,
    required final int bestDayMinutes,
  }) = _$WeeklyReportComparisonImpl;

  factory _WeeklyReportComparison.fromJson(Map<String, dynamic> json) =
      _$WeeklyReportComparisonImpl.fromJson;

  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  Map<String, DailyAppStats> get dailyStats;
  @override
  String get bestDay; // 最も学習した日
  @override
  int get bestDayMinutes;

  /// Create a copy of WeeklyReportComparison
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeeklyReportComparisonImplCopyWith<_$WeeklyReportComparisonImpl>
  get copyWith => throw _privateConstructorUsedError;
}

DailyAppStats _$DailyAppStatsFromJson(Map<String, dynamic> json) {
  return _DailyAppStats.fromJson(json);
}

/// @nodoc
mixin _$DailyAppStats {
  DateTime get date => throw _privateConstructorUsedError;
  Map<String, int> get appLearningMinutes =>
      throw _privateConstructorUsedError; // appId -> minutes
  int get totalMinutes => throw _privateConstructorUsedError;

  /// Serializes this DailyAppStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyAppStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyAppStatsCopyWith<DailyAppStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyAppStatsCopyWith<$Res> {
  factory $DailyAppStatsCopyWith(
    DailyAppStats value,
    $Res Function(DailyAppStats) then,
  ) = _$DailyAppStatsCopyWithImpl<$Res, DailyAppStats>;
  @useResult
  $Res call({
    DateTime date,
    Map<String, int> appLearningMinutes,
    int totalMinutes,
  });
}

/// @nodoc
class _$DailyAppStatsCopyWithImpl<$Res, $Val extends DailyAppStats>
    implements $DailyAppStatsCopyWith<$Res> {
  _$DailyAppStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyAppStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? appLearningMinutes = null,
    Object? totalMinutes = null,
  }) {
    return _then(
      _value.copyWith(
            date: null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            appLearningMinutes: null == appLearningMinutes
                ? _value.appLearningMinutes
                : appLearningMinutes // ignore: cast_nullable_to_non_nullable
                      as Map<String, int>,
            totalMinutes: null == totalMinutes
                ? _value.totalMinutes
                : totalMinutes // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DailyAppStatsImplCopyWith<$Res>
    implements $DailyAppStatsCopyWith<$Res> {
  factory _$$DailyAppStatsImplCopyWith(
    _$DailyAppStatsImpl value,
    $Res Function(_$DailyAppStatsImpl) then,
  ) = __$$DailyAppStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DateTime date,
    Map<String, int> appLearningMinutes,
    int totalMinutes,
  });
}

/// @nodoc
class __$$DailyAppStatsImplCopyWithImpl<$Res>
    extends _$DailyAppStatsCopyWithImpl<$Res, _$DailyAppStatsImpl>
    implements _$$DailyAppStatsImplCopyWith<$Res> {
  __$$DailyAppStatsImplCopyWithImpl(
    _$DailyAppStatsImpl _value,
    $Res Function(_$DailyAppStatsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DailyAppStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? appLearningMinutes = null,
    Object? totalMinutes = null,
  }) {
    return _then(
      _$DailyAppStatsImpl(
        date: null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        appLearningMinutes: null == appLearningMinutes
            ? _value._appLearningMinutes
            : appLearningMinutes // ignore: cast_nullable_to_non_nullable
                  as Map<String, int>,
        totalMinutes: null == totalMinutes
            ? _value.totalMinutes
            : totalMinutes // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyAppStatsImpl implements _DailyAppStats {
  const _$DailyAppStatsImpl({
    required this.date,
    required final Map<String, int> appLearningMinutes,
    required this.totalMinutes,
  }) : _appLearningMinutes = appLearningMinutes;

  factory _$DailyAppStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyAppStatsImplFromJson(json);

  @override
  final DateTime date;
  final Map<String, int> _appLearningMinutes;
  @override
  Map<String, int> get appLearningMinutes {
    if (_appLearningMinutes is EqualUnmodifiableMapView)
      return _appLearningMinutes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_appLearningMinutes);
  }

  // appId -> minutes
  @override
  final int totalMinutes;

  @override
  String toString() {
    return 'DailyAppStats(date: $date, appLearningMinutes: $appLearningMinutes, totalMinutes: $totalMinutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyAppStatsImpl &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(
              other._appLearningMinutes,
              _appLearningMinutes,
            ) &&
            (identical(other.totalMinutes, totalMinutes) ||
                other.totalMinutes == totalMinutes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    date,
    const DeepCollectionEquality().hash(_appLearningMinutes),
    totalMinutes,
  );

  /// Create a copy of DailyAppStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyAppStatsImplCopyWith<_$DailyAppStatsImpl> get copyWith =>
      __$$DailyAppStatsImplCopyWithImpl<_$DailyAppStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyAppStatsImplToJson(this);
  }
}

abstract class _DailyAppStats implements DailyAppStats {
  const factory _DailyAppStats({
    required final DateTime date,
    required final Map<String, int> appLearningMinutes,
    required final int totalMinutes,
  }) = _$DailyAppStatsImpl;

  factory _DailyAppStats.fromJson(Map<String, dynamic> json) =
      _$DailyAppStatsImpl.fromJson;

  @override
  DateTime get date;
  @override
  Map<String, int> get appLearningMinutes; // appId -> minutes
  @override
  int get totalMinutes;

  /// Create a copy of DailyAppStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyAppStatsImplCopyWith<_$DailyAppStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MonthlyReportComparison _$MonthlyReportComparisonFromJson(
  Map<String, dynamic> json,
) {
  return _MonthlyReportComparison.fromJson(json);
}

/// @nodoc
mixin _$MonthlyReportComparison {
  int get month => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  Map<String, AppMonthlyStats> get appMonthlyStats =>
      throw _privateConstructorUsedError;
  CrossAppStats get monthlyAggregates => throw _privateConstructorUsedError;
  List<String> get achievements => throw _privateConstructorUsedError;

  /// Serializes this MonthlyReportComparison to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MonthlyReportComparison
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MonthlyReportComparisonCopyWith<MonthlyReportComparison> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlyReportComparisonCopyWith<$Res> {
  factory $MonthlyReportComparisonCopyWith(
    MonthlyReportComparison value,
    $Res Function(MonthlyReportComparison) then,
  ) = _$MonthlyReportComparisonCopyWithImpl<$Res, MonthlyReportComparison>;
  @useResult
  $Res call({
    int month,
    int year,
    Map<String, AppMonthlyStats> appMonthlyStats,
    CrossAppStats monthlyAggregates,
    List<String> achievements,
  });

  $CrossAppStatsCopyWith<$Res> get monthlyAggregates;
}

/// @nodoc
class _$MonthlyReportComparisonCopyWithImpl<
  $Res,
  $Val extends MonthlyReportComparison
>
    implements $MonthlyReportComparisonCopyWith<$Res> {
  _$MonthlyReportComparisonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MonthlyReportComparison
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? year = null,
    Object? appMonthlyStats = null,
    Object? monthlyAggregates = null,
    Object? achievements = null,
  }) {
    return _then(
      _value.copyWith(
            month: null == month
                ? _value.month
                : month // ignore: cast_nullable_to_non_nullable
                      as int,
            year: null == year
                ? _value.year
                : year // ignore: cast_nullable_to_non_nullable
                      as int,
            appMonthlyStats: null == appMonthlyStats
                ? _value.appMonthlyStats
                : appMonthlyStats // ignore: cast_nullable_to_non_nullable
                      as Map<String, AppMonthlyStats>,
            monthlyAggregates: null == monthlyAggregates
                ? _value.monthlyAggregates
                : monthlyAggregates // ignore: cast_nullable_to_non_nullable
                      as CrossAppStats,
            achievements: null == achievements
                ? _value.achievements
                : achievements // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }

  /// Create a copy of MonthlyReportComparison
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CrossAppStatsCopyWith<$Res> get monthlyAggregates {
    return $CrossAppStatsCopyWith<$Res>(_value.monthlyAggregates, (value) {
      return _then(_value.copyWith(monthlyAggregates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MonthlyReportComparisonImplCopyWith<$Res>
    implements $MonthlyReportComparisonCopyWith<$Res> {
  factory _$$MonthlyReportComparisonImplCopyWith(
    _$MonthlyReportComparisonImpl value,
    $Res Function(_$MonthlyReportComparisonImpl) then,
  ) = __$$MonthlyReportComparisonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int month,
    int year,
    Map<String, AppMonthlyStats> appMonthlyStats,
    CrossAppStats monthlyAggregates,
    List<String> achievements,
  });

  @override
  $CrossAppStatsCopyWith<$Res> get monthlyAggregates;
}

/// @nodoc
class __$$MonthlyReportComparisonImplCopyWithImpl<$Res>
    extends
        _$MonthlyReportComparisonCopyWithImpl<
          $Res,
          _$MonthlyReportComparisonImpl
        >
    implements _$$MonthlyReportComparisonImplCopyWith<$Res> {
  __$$MonthlyReportComparisonImplCopyWithImpl(
    _$MonthlyReportComparisonImpl _value,
    $Res Function(_$MonthlyReportComparisonImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MonthlyReportComparison
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? year = null,
    Object? appMonthlyStats = null,
    Object? monthlyAggregates = null,
    Object? achievements = null,
  }) {
    return _then(
      _$MonthlyReportComparisonImpl(
        month: null == month
            ? _value.month
            : month // ignore: cast_nullable_to_non_nullable
                  as int,
        year: null == year
            ? _value.year
            : year // ignore: cast_nullable_to_non_nullable
                  as int,
        appMonthlyStats: null == appMonthlyStats
            ? _value._appMonthlyStats
            : appMonthlyStats // ignore: cast_nullable_to_non_nullable
                  as Map<String, AppMonthlyStats>,
        monthlyAggregates: null == monthlyAggregates
            ? _value.monthlyAggregates
            : monthlyAggregates // ignore: cast_nullable_to_non_nullable
                  as CrossAppStats,
        achievements: null == achievements
            ? _value._achievements
            : achievements // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MonthlyReportComparisonImpl implements _MonthlyReportComparison {
  const _$MonthlyReportComparisonImpl({
    required this.month,
    required this.year,
    required final Map<String, AppMonthlyStats> appMonthlyStats,
    required this.monthlyAggregates,
    required final List<String> achievements,
  }) : _appMonthlyStats = appMonthlyStats,
       _achievements = achievements;

  factory _$MonthlyReportComparisonImpl.fromJson(Map<String, dynamic> json) =>
      _$$MonthlyReportComparisonImplFromJson(json);

  @override
  final int month;
  @override
  final int year;
  final Map<String, AppMonthlyStats> _appMonthlyStats;
  @override
  Map<String, AppMonthlyStats> get appMonthlyStats {
    if (_appMonthlyStats is EqualUnmodifiableMapView) return _appMonthlyStats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_appMonthlyStats);
  }

  @override
  final CrossAppStats monthlyAggregates;
  final List<String> _achievements;
  @override
  List<String> get achievements {
    if (_achievements is EqualUnmodifiableListView) return _achievements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_achievements);
  }

  @override
  String toString() {
    return 'MonthlyReportComparison(month: $month, year: $year, appMonthlyStats: $appMonthlyStats, monthlyAggregates: $monthlyAggregates, achievements: $achievements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthlyReportComparisonImpl &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.year, year) || other.year == year) &&
            const DeepCollectionEquality().equals(
              other._appMonthlyStats,
              _appMonthlyStats,
            ) &&
            (identical(other.monthlyAggregates, monthlyAggregates) ||
                other.monthlyAggregates == monthlyAggregates) &&
            const DeepCollectionEquality().equals(
              other._achievements,
              _achievements,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    month,
    year,
    const DeepCollectionEquality().hash(_appMonthlyStats),
    monthlyAggregates,
    const DeepCollectionEquality().hash(_achievements),
  );

  /// Create a copy of MonthlyReportComparison
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthlyReportComparisonImplCopyWith<_$MonthlyReportComparisonImpl>
  get copyWith =>
      __$$MonthlyReportComparisonImplCopyWithImpl<
        _$MonthlyReportComparisonImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MonthlyReportComparisonImplToJson(this);
  }
}

abstract class _MonthlyReportComparison implements MonthlyReportComparison {
  const factory _MonthlyReportComparison({
    required final int month,
    required final int year,
    required final Map<String, AppMonthlyStats> appMonthlyStats,
    required final CrossAppStats monthlyAggregates,
    required final List<String> achievements,
  }) = _$MonthlyReportComparisonImpl;

  factory _MonthlyReportComparison.fromJson(Map<String, dynamic> json) =
      _$MonthlyReportComparisonImpl.fromJson;

  @override
  int get month;
  @override
  int get year;
  @override
  Map<String, AppMonthlyStats> get appMonthlyStats;
  @override
  CrossAppStats get monthlyAggregates;
  @override
  List<String> get achievements;

  /// Create a copy of MonthlyReportComparison
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MonthlyReportComparisonImplCopyWith<_$MonthlyReportComparisonImpl>
  get copyWith => throw _privateConstructorUsedError;
}

AppMonthlyStats _$AppMonthlyStatsFromJson(Map<String, dynamic> json) {
  return _AppMonthlyStats.fromJson(json);
}

/// @nodoc
mixin _$AppMonthlyStats {
  String get appId => throw _privateConstructorUsedError;
  int get totalLearningMinutes => throw _privateConstructorUsedError;
  double get averageAccuracy => throw _privateConstructorUsedError;
  int get quizzesCompleted => throw _privateConstructorUsedError;
  int get badgesEarned => throw _privateConstructorUsedError;
  double get improvementRate => throw _privateConstructorUsedError; // 前月比 (%)
  List<String> get topicsLearned => throw _privateConstructorUsedError;

  /// Serializes this AppMonthlyStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppMonthlyStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppMonthlyStatsCopyWith<AppMonthlyStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppMonthlyStatsCopyWith<$Res> {
  factory $AppMonthlyStatsCopyWith(
    AppMonthlyStats value,
    $Res Function(AppMonthlyStats) then,
  ) = _$AppMonthlyStatsCopyWithImpl<$Res, AppMonthlyStats>;
  @useResult
  $Res call({
    String appId,
    int totalLearningMinutes,
    double averageAccuracy,
    int quizzesCompleted,
    int badgesEarned,
    double improvementRate,
    List<String> topicsLearned,
  });
}

/// @nodoc
class _$AppMonthlyStatsCopyWithImpl<$Res, $Val extends AppMonthlyStats>
    implements $AppMonthlyStatsCopyWith<$Res> {
  _$AppMonthlyStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppMonthlyStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = null,
    Object? totalLearningMinutes = null,
    Object? averageAccuracy = null,
    Object? quizzesCompleted = null,
    Object? badgesEarned = null,
    Object? improvementRate = null,
    Object? topicsLearned = null,
  }) {
    return _then(
      _value.copyWith(
            appId: null == appId
                ? _value.appId
                : appId // ignore: cast_nullable_to_non_nullable
                      as String,
            totalLearningMinutes: null == totalLearningMinutes
                ? _value.totalLearningMinutes
                : totalLearningMinutes // ignore: cast_nullable_to_non_nullable
                      as int,
            averageAccuracy: null == averageAccuracy
                ? _value.averageAccuracy
                : averageAccuracy // ignore: cast_nullable_to_non_nullable
                      as double,
            quizzesCompleted: null == quizzesCompleted
                ? _value.quizzesCompleted
                : quizzesCompleted // ignore: cast_nullable_to_non_nullable
                      as int,
            badgesEarned: null == badgesEarned
                ? _value.badgesEarned
                : badgesEarned // ignore: cast_nullable_to_non_nullable
                      as int,
            improvementRate: null == improvementRate
                ? _value.improvementRate
                : improvementRate // ignore: cast_nullable_to_non_nullable
                      as double,
            topicsLearned: null == topicsLearned
                ? _value.topicsLearned
                : topicsLearned // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AppMonthlyStatsImplCopyWith<$Res>
    implements $AppMonthlyStatsCopyWith<$Res> {
  factory _$$AppMonthlyStatsImplCopyWith(
    _$AppMonthlyStatsImpl value,
    $Res Function(_$AppMonthlyStatsImpl) then,
  ) = __$$AppMonthlyStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String appId,
    int totalLearningMinutes,
    double averageAccuracy,
    int quizzesCompleted,
    int badgesEarned,
    double improvementRate,
    List<String> topicsLearned,
  });
}

/// @nodoc
class __$$AppMonthlyStatsImplCopyWithImpl<$Res>
    extends _$AppMonthlyStatsCopyWithImpl<$Res, _$AppMonthlyStatsImpl>
    implements _$$AppMonthlyStatsImplCopyWith<$Res> {
  __$$AppMonthlyStatsImplCopyWithImpl(
    _$AppMonthlyStatsImpl _value,
    $Res Function(_$AppMonthlyStatsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppMonthlyStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = null,
    Object? totalLearningMinutes = null,
    Object? averageAccuracy = null,
    Object? quizzesCompleted = null,
    Object? badgesEarned = null,
    Object? improvementRate = null,
    Object? topicsLearned = null,
  }) {
    return _then(
      _$AppMonthlyStatsImpl(
        appId: null == appId
            ? _value.appId
            : appId // ignore: cast_nullable_to_non_nullable
                  as String,
        totalLearningMinutes: null == totalLearningMinutes
            ? _value.totalLearningMinutes
            : totalLearningMinutes // ignore: cast_nullable_to_non_nullable
                  as int,
        averageAccuracy: null == averageAccuracy
            ? _value.averageAccuracy
            : averageAccuracy // ignore: cast_nullable_to_non_nullable
                  as double,
        quizzesCompleted: null == quizzesCompleted
            ? _value.quizzesCompleted
            : quizzesCompleted // ignore: cast_nullable_to_non_nullable
                  as int,
        badgesEarned: null == badgesEarned
            ? _value.badgesEarned
            : badgesEarned // ignore: cast_nullable_to_non_nullable
                  as int,
        improvementRate: null == improvementRate
            ? _value.improvementRate
            : improvementRate // ignore: cast_nullable_to_non_nullable
                  as double,
        topicsLearned: null == topicsLearned
            ? _value._topicsLearned
            : topicsLearned // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AppMonthlyStatsImpl implements _AppMonthlyStats {
  const _$AppMonthlyStatsImpl({
    required this.appId,
    required this.totalLearningMinutes,
    required this.averageAccuracy,
    required this.quizzesCompleted,
    required this.badgesEarned,
    required this.improvementRate,
    required final List<String> topicsLearned,
  }) : _topicsLearned = topicsLearned;

  factory _$AppMonthlyStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppMonthlyStatsImplFromJson(json);

  @override
  final String appId;
  @override
  final int totalLearningMinutes;
  @override
  final double averageAccuracy;
  @override
  final int quizzesCompleted;
  @override
  final int badgesEarned;
  @override
  final double improvementRate;
  // 前月比 (%)
  final List<String> _topicsLearned;
  // 前月比 (%)
  @override
  List<String> get topicsLearned {
    if (_topicsLearned is EqualUnmodifiableListView) return _topicsLearned;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topicsLearned);
  }

  @override
  String toString() {
    return 'AppMonthlyStats(appId: $appId, totalLearningMinutes: $totalLearningMinutes, averageAccuracy: $averageAccuracy, quizzesCompleted: $quizzesCompleted, badgesEarned: $badgesEarned, improvementRate: $improvementRate, topicsLearned: $topicsLearned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppMonthlyStatsImpl &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.totalLearningMinutes, totalLearningMinutes) ||
                other.totalLearningMinutes == totalLearningMinutes) &&
            (identical(other.averageAccuracy, averageAccuracy) ||
                other.averageAccuracy == averageAccuracy) &&
            (identical(other.quizzesCompleted, quizzesCompleted) ||
                other.quizzesCompleted == quizzesCompleted) &&
            (identical(other.badgesEarned, badgesEarned) ||
                other.badgesEarned == badgesEarned) &&
            (identical(other.improvementRate, improvementRate) ||
                other.improvementRate == improvementRate) &&
            const DeepCollectionEquality().equals(
              other._topicsLearned,
              _topicsLearned,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    appId,
    totalLearningMinutes,
    averageAccuracy,
    quizzesCompleted,
    badgesEarned,
    improvementRate,
    const DeepCollectionEquality().hash(_topicsLearned),
  );

  /// Create a copy of AppMonthlyStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppMonthlyStatsImplCopyWith<_$AppMonthlyStatsImpl> get copyWith =>
      __$$AppMonthlyStatsImplCopyWithImpl<_$AppMonthlyStatsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AppMonthlyStatsImplToJson(this);
  }
}

abstract class _AppMonthlyStats implements AppMonthlyStats {
  const factory _AppMonthlyStats({
    required final String appId,
    required final int totalLearningMinutes,
    required final double averageAccuracy,
    required final int quizzesCompleted,
    required final int badgesEarned,
    required final double improvementRate,
    required final List<String> topicsLearned,
  }) = _$AppMonthlyStatsImpl;

  factory _AppMonthlyStats.fromJson(Map<String, dynamic> json) =
      _$AppMonthlyStatsImpl.fromJson;

  @override
  String get appId;
  @override
  int get totalLearningMinutes;
  @override
  double get averageAccuracy;
  @override
  int get quizzesCompleted;
  @override
  int get badgesEarned;
  @override
  double get improvementRate; // 前月比 (%)
  @override
  List<String> get topicsLearned;

  /// Create a copy of AppMonthlyStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppMonthlyStatsImplCopyWith<_$AppMonthlyStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
