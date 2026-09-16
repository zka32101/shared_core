// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'global_ranking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GlobalRankingEntry _$GlobalRankingEntryFromJson(Map<String, dynamic> json) {
  return _GlobalRankingEntry.fromJson(json);
}

/// @nodoc
mixin _$GlobalRankingEntry {
  String get userId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  int get totalScore => throw _privateConstructorUsedError; // 7アプリの合計スコア
  int get globalRank => throw _privateConstructorUsedError; // 順位
  double get percentile => throw _privateConstructorUsedError; // パーセンタイル（0-100）
  DateTime get lastUpdated => throw _privateConstructorUsedError;

  /// Serializes this GlobalRankingEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GlobalRankingEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GlobalRankingEntryCopyWith<GlobalRankingEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalRankingEntryCopyWith<$Res> {
  factory $GlobalRankingEntryCopyWith(
    GlobalRankingEntry value,
    $Res Function(GlobalRankingEntry) then,
  ) = _$GlobalRankingEntryCopyWithImpl<$Res, GlobalRankingEntry>;
  @useResult
  $Res call({
    String userId,
    String username,
    int totalScore,
    int globalRank,
    double percentile,
    DateTime lastUpdated,
  });
}

/// @nodoc
class _$GlobalRankingEntryCopyWithImpl<$Res, $Val extends GlobalRankingEntry>
    implements $GlobalRankingEntryCopyWith<$Res> {
  _$GlobalRankingEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GlobalRankingEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = null,
    Object? totalScore = null,
    Object? globalRank = null,
    Object? percentile = null,
    Object? lastUpdated = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            username: null == username
                ? _value.username
                : username // ignore: cast_nullable_to_non_nullable
                      as String,
            totalScore: null == totalScore
                ? _value.totalScore
                : totalScore // ignore: cast_nullable_to_non_nullable
                      as int,
            globalRank: null == globalRank
                ? _value.globalRank
                : globalRank // ignore: cast_nullable_to_non_nullable
                      as int,
            percentile: null == percentile
                ? _value.percentile
                : percentile // ignore: cast_nullable_to_non_nullable
                      as double,
            lastUpdated: null == lastUpdated
                ? _value.lastUpdated
                : lastUpdated // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GlobalRankingEntryImplCopyWith<$Res>
    implements $GlobalRankingEntryCopyWith<$Res> {
  factory _$$GlobalRankingEntryImplCopyWith(
    _$GlobalRankingEntryImpl value,
    $Res Function(_$GlobalRankingEntryImpl) then,
  ) = __$$GlobalRankingEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    String username,
    int totalScore,
    int globalRank,
    double percentile,
    DateTime lastUpdated,
  });
}

/// @nodoc
class __$$GlobalRankingEntryImplCopyWithImpl<$Res>
    extends _$GlobalRankingEntryCopyWithImpl<$Res, _$GlobalRankingEntryImpl>
    implements _$$GlobalRankingEntryImplCopyWith<$Res> {
  __$$GlobalRankingEntryImplCopyWithImpl(
    _$GlobalRankingEntryImpl _value,
    $Res Function(_$GlobalRankingEntryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GlobalRankingEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = null,
    Object? totalScore = null,
    Object? globalRank = null,
    Object? percentile = null,
    Object? lastUpdated = null,
  }) {
    return _then(
      _$GlobalRankingEntryImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        username: null == username
            ? _value.username
            : username // ignore: cast_nullable_to_non_nullable
                  as String,
        totalScore: null == totalScore
            ? _value.totalScore
            : totalScore // ignore: cast_nullable_to_non_nullable
                  as int,
        globalRank: null == globalRank
            ? _value.globalRank
            : globalRank // ignore: cast_nullable_to_non_nullable
                  as int,
        percentile: null == percentile
            ? _value.percentile
            : percentile // ignore: cast_nullable_to_non_nullable
                  as double,
        lastUpdated: null == lastUpdated
            ? _value.lastUpdated
            : lastUpdated // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GlobalRankingEntryImpl implements _GlobalRankingEntry {
  const _$GlobalRankingEntryImpl({
    required this.userId,
    required this.username,
    required this.totalScore,
    required this.globalRank,
    required this.percentile,
    required this.lastUpdated,
  });

  factory _$GlobalRankingEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$GlobalRankingEntryImplFromJson(json);

  @override
  final String userId;
  @override
  final String username;
  @override
  final int totalScore;
  // 7アプリの合計スコア
  @override
  final int globalRank;
  // 順位
  @override
  final double percentile;
  // パーセンタイル（0-100）
  @override
  final DateTime lastUpdated;

  @override
  String toString() {
    return 'GlobalRankingEntry(userId: $userId, username: $username, totalScore: $totalScore, globalRank: $globalRank, percentile: $percentile, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GlobalRankingEntryImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.totalScore, totalScore) ||
                other.totalScore == totalScore) &&
            (identical(other.globalRank, globalRank) ||
                other.globalRank == globalRank) &&
            (identical(other.percentile, percentile) ||
                other.percentile == percentile) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    username,
    totalScore,
    globalRank,
    percentile,
    lastUpdated,
  );

  /// Create a copy of GlobalRankingEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GlobalRankingEntryImplCopyWith<_$GlobalRankingEntryImpl> get copyWith =>
      __$$GlobalRankingEntryImplCopyWithImpl<_$GlobalRankingEntryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$GlobalRankingEntryImplToJson(this);
  }
}

abstract class _GlobalRankingEntry implements GlobalRankingEntry {
  const factory _GlobalRankingEntry({
    required final String userId,
    required final String username,
    required final int totalScore,
    required final int globalRank,
    required final double percentile,
    required final DateTime lastUpdated,
  }) = _$GlobalRankingEntryImpl;

  factory _GlobalRankingEntry.fromJson(Map<String, dynamic> json) =
      _$GlobalRankingEntryImpl.fromJson;

  @override
  String get userId;
  @override
  String get username;
  @override
  int get totalScore; // 7アプリの合計スコア
  @override
  int get globalRank; // 順位
  @override
  double get percentile; // パーセンタイル（0-100）
  @override
  DateTime get lastUpdated;

  /// Create a copy of GlobalRankingEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GlobalRankingEntryImplCopyWith<_$GlobalRankingEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubjectRankingEntry _$SubjectRankingEntryFromJson(Map<String, dynamic> json) {
  return _SubjectRankingEntry.fromJson(json);
}

/// @nodoc
mixin _$SubjectRankingEntry {
  String get userId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get subject =>
      throw _privateConstructorUsedError; // 'japanese', 'math', 'english', 'science', 'social', 'programming', 'morality'
  int get score => throw _privateConstructorUsedError;
  int get subjectRank => throw _privateConstructorUsedError;
  double get percentile => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;

  /// Serializes this SubjectRankingEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubjectRankingEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubjectRankingEntryCopyWith<SubjectRankingEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectRankingEntryCopyWith<$Res> {
  factory $SubjectRankingEntryCopyWith(
    SubjectRankingEntry value,
    $Res Function(SubjectRankingEntry) then,
  ) = _$SubjectRankingEntryCopyWithImpl<$Res, SubjectRankingEntry>;
  @useResult
  $Res call({
    String userId,
    String username,
    String subject,
    int score,
    int subjectRank,
    double percentile,
    DateTime lastUpdated,
  });
}

/// @nodoc
class _$SubjectRankingEntryCopyWithImpl<$Res, $Val extends SubjectRankingEntry>
    implements $SubjectRankingEntryCopyWith<$Res> {
  _$SubjectRankingEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubjectRankingEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = null,
    Object? subject = null,
    Object? score = null,
    Object? subjectRank = null,
    Object? percentile = null,
    Object? lastUpdated = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            username: null == username
                ? _value.username
                : username // ignore: cast_nullable_to_non_nullable
                      as String,
            subject: null == subject
                ? _value.subject
                : subject // ignore: cast_nullable_to_non_nullable
                      as String,
            score: null == score
                ? _value.score
                : score // ignore: cast_nullable_to_non_nullable
                      as int,
            subjectRank: null == subjectRank
                ? _value.subjectRank
                : subjectRank // ignore: cast_nullable_to_non_nullable
                      as int,
            percentile: null == percentile
                ? _value.percentile
                : percentile // ignore: cast_nullable_to_non_nullable
                      as double,
            lastUpdated: null == lastUpdated
                ? _value.lastUpdated
                : lastUpdated // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SubjectRankingEntryImplCopyWith<$Res>
    implements $SubjectRankingEntryCopyWith<$Res> {
  factory _$$SubjectRankingEntryImplCopyWith(
    _$SubjectRankingEntryImpl value,
    $Res Function(_$SubjectRankingEntryImpl) then,
  ) = __$$SubjectRankingEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    String username,
    String subject,
    int score,
    int subjectRank,
    double percentile,
    DateTime lastUpdated,
  });
}

/// @nodoc
class __$$SubjectRankingEntryImplCopyWithImpl<$Res>
    extends _$SubjectRankingEntryCopyWithImpl<$Res, _$SubjectRankingEntryImpl>
    implements _$$SubjectRankingEntryImplCopyWith<$Res> {
  __$$SubjectRankingEntryImplCopyWithImpl(
    _$SubjectRankingEntryImpl _value,
    $Res Function(_$SubjectRankingEntryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubjectRankingEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = null,
    Object? subject = null,
    Object? score = null,
    Object? subjectRank = null,
    Object? percentile = null,
    Object? lastUpdated = null,
  }) {
    return _then(
      _$SubjectRankingEntryImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        username: null == username
            ? _value.username
            : username // ignore: cast_nullable_to_non_nullable
                  as String,
        subject: null == subject
            ? _value.subject
            : subject // ignore: cast_nullable_to_non_nullable
                  as String,
        score: null == score
            ? _value.score
            : score // ignore: cast_nullable_to_non_nullable
                  as int,
        subjectRank: null == subjectRank
            ? _value.subjectRank
            : subjectRank // ignore: cast_nullable_to_non_nullable
                  as int,
        percentile: null == percentile
            ? _value.percentile
            : percentile // ignore: cast_nullable_to_non_nullable
                  as double,
        lastUpdated: null == lastUpdated
            ? _value.lastUpdated
            : lastUpdated // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SubjectRankingEntryImpl implements _SubjectRankingEntry {
  const _$SubjectRankingEntryImpl({
    required this.userId,
    required this.username,
    required this.subject,
    required this.score,
    required this.subjectRank,
    required this.percentile,
    required this.lastUpdated,
  });

  factory _$SubjectRankingEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectRankingEntryImplFromJson(json);

  @override
  final String userId;
  @override
  final String username;
  @override
  final String subject;
  // 'japanese', 'math', 'english', 'science', 'social', 'programming', 'morality'
  @override
  final int score;
  @override
  final int subjectRank;
  @override
  final double percentile;
  @override
  final DateTime lastUpdated;

  @override
  String toString() {
    return 'SubjectRankingEntry(userId: $userId, username: $username, subject: $subject, score: $score, subjectRank: $subjectRank, percentile: $percentile, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectRankingEntryImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.subjectRank, subjectRank) ||
                other.subjectRank == subjectRank) &&
            (identical(other.percentile, percentile) ||
                other.percentile == percentile) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    username,
    subject,
    score,
    subjectRank,
    percentile,
    lastUpdated,
  );

  /// Create a copy of SubjectRankingEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectRankingEntryImplCopyWith<_$SubjectRankingEntryImpl> get copyWith =>
      __$$SubjectRankingEntryImplCopyWithImpl<_$SubjectRankingEntryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SubjectRankingEntryImplToJson(this);
  }
}

abstract class _SubjectRankingEntry implements SubjectRankingEntry {
  const factory _SubjectRankingEntry({
    required final String userId,
    required final String username,
    required final String subject,
    required final int score,
    required final int subjectRank,
    required final double percentile,
    required final DateTime lastUpdated,
  }) = _$SubjectRankingEntryImpl;

  factory _SubjectRankingEntry.fromJson(Map<String, dynamic> json) =
      _$SubjectRankingEntryImpl.fromJson;

  @override
  String get userId;
  @override
  String get username;
  @override
  String get subject; // 'japanese', 'math', 'english', 'science', 'social', 'programming', 'morality'
  @override
  int get score;
  @override
  int get subjectRank;
  @override
  double get percentile;
  @override
  DateTime get lastUpdated;

  /// Create a copy of SubjectRankingEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubjectRankingEntryImplCopyWith<_$SubjectRankingEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserRankingStats _$UserRankingStatsFromJson(Map<String, dynamic> json) {
  return _UserRankingStats.fromJson(json);
}

/// @nodoc
mixin _$UserRankingStats {
  String get userId => throw _privateConstructorUsedError;
  Map<String, int> get subjectScores =>
      throw _privateConstructorUsedError; // 教科別スコア: {'japanese': 100, 'math': 150, ...}
  int get totalScore => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this UserRankingStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserRankingStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserRankingStatsCopyWith<UserRankingStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRankingStatsCopyWith<$Res> {
  factory $UserRankingStatsCopyWith(
    UserRankingStats value,
    $Res Function(UserRankingStats) then,
  ) = _$UserRankingStatsCopyWithImpl<$Res, UserRankingStats>;
  @useResult
  $Res call({
    String userId,
    Map<String, int> subjectScores,
    int totalScore,
    DateTime updatedAt,
  });
}

/// @nodoc
class _$UserRankingStatsCopyWithImpl<$Res, $Val extends UserRankingStats>
    implements $UserRankingStatsCopyWith<$Res> {
  _$UserRankingStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserRankingStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? subjectScores = null,
    Object? totalScore = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            subjectScores: null == subjectScores
                ? _value.subjectScores
                : subjectScores // ignore: cast_nullable_to_non_nullable
                      as Map<String, int>,
            totalScore: null == totalScore
                ? _value.totalScore
                : totalScore // ignore: cast_nullable_to_non_nullable
                      as int,
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
abstract class _$$UserRankingStatsImplCopyWith<$Res>
    implements $UserRankingStatsCopyWith<$Res> {
  factory _$$UserRankingStatsImplCopyWith(
    _$UserRankingStatsImpl value,
    $Res Function(_$UserRankingStatsImpl) then,
  ) = __$$UserRankingStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    Map<String, int> subjectScores,
    int totalScore,
    DateTime updatedAt,
  });
}

/// @nodoc
class __$$UserRankingStatsImplCopyWithImpl<$Res>
    extends _$UserRankingStatsCopyWithImpl<$Res, _$UserRankingStatsImpl>
    implements _$$UserRankingStatsImplCopyWith<$Res> {
  __$$UserRankingStatsImplCopyWithImpl(
    _$UserRankingStatsImpl _value,
    $Res Function(_$UserRankingStatsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserRankingStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? subjectScores = null,
    Object? totalScore = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$UserRankingStatsImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        subjectScores: null == subjectScores
            ? _value._subjectScores
            : subjectScores // ignore: cast_nullable_to_non_nullable
                  as Map<String, int>,
        totalScore: null == totalScore
            ? _value.totalScore
            : totalScore // ignore: cast_nullable_to_non_nullable
                  as int,
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
class _$UserRankingStatsImpl implements _UserRankingStats {
  const _$UserRankingStatsImpl({
    required this.userId,
    required final Map<String, int> subjectScores,
    required this.totalScore,
    required this.updatedAt,
  }) : _subjectScores = subjectScores;

  factory _$UserRankingStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRankingStatsImplFromJson(json);

  @override
  final String userId;
  final Map<String, int> _subjectScores;
  @override
  Map<String, int> get subjectScores {
    if (_subjectScores is EqualUnmodifiableMapView) return _subjectScores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_subjectScores);
  }

  // 教科別スコア: {'japanese': 100, 'math': 150, ...}
  @override
  final int totalScore;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'UserRankingStats(userId: $userId, subjectScores: $subjectScores, totalScore: $totalScore, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRankingStatsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(
              other._subjectScores,
              _subjectScores,
            ) &&
            (identical(other.totalScore, totalScore) ||
                other.totalScore == totalScore) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    const DeepCollectionEquality().hash(_subjectScores),
    totalScore,
    updatedAt,
  );

  /// Create a copy of UserRankingStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRankingStatsImplCopyWith<_$UserRankingStatsImpl> get copyWith =>
      __$$UserRankingStatsImplCopyWithImpl<_$UserRankingStatsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRankingStatsImplToJson(this);
  }
}

abstract class _UserRankingStats implements UserRankingStats {
  const factory _UserRankingStats({
    required final String userId,
    required final Map<String, int> subjectScores,
    required final int totalScore,
    required final DateTime updatedAt,
  }) = _$UserRankingStatsImpl;

  factory _UserRankingStats.fromJson(Map<String, dynamic> json) =
      _$UserRankingStatsImpl.fromJson;

  @override
  String get userId;
  @override
  Map<String, int> get subjectScores; // 教科別スコア: {'japanese': 100, 'math': 150, ...}
  @override
  int get totalScore;
  @override
  DateTime get updatedAt;

  /// Create a copy of UserRankingStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRankingStatsImplCopyWith<_$UserRankingStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
