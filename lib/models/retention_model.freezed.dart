// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'retention_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DailyMission _$DailyMissionFromJson(Map<String, dynamic> json) {
  return _DailyMission.fromJson(json);
}

/// @nodoc
mixin _$DailyMission {
  String get id =>
      throw _privateConstructorUsedError; // 'daily_mission_YYYYMMDD'
  MissionType get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get targetValue => throw _privateConstructorUsedError; // 達成目標数
  int get currentProgress => throw _privateConstructorUsedError; // 現在の進捗
  int get rewardCoins => throw _privateConstructorUsedError; // 報酬コイン
  String? get rewardBadgeId =>
      throw _privateConstructorUsedError; // 報酬バッジ（オプション）
  DateTime get generatedAt => throw _privateConstructorUsedError; // 生成日時
  DateTime get expiresAt =>
      throw _privateConstructorUsedError; // 有効期限（翌日 23:59:59）
  bool get isCompleted => throw _privateConstructorUsedError; // 完了フラグ
  DateTime? get completedAt => throw _privateConstructorUsedError;

  /// Serializes this DailyMission to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyMission
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyMissionCopyWith<DailyMission> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyMissionCopyWith<$Res> {
  factory $DailyMissionCopyWith(
    DailyMission value,
    $Res Function(DailyMission) then,
  ) = _$DailyMissionCopyWithImpl<$Res, DailyMission>;
  @useResult
  $Res call({
    String id,
    MissionType type,
    String title,
    String description,
    int targetValue,
    int currentProgress,
    int rewardCoins,
    String? rewardBadgeId,
    DateTime generatedAt,
    DateTime expiresAt,
    bool isCompleted,
    DateTime? completedAt,
  });
}

/// @nodoc
class _$DailyMissionCopyWithImpl<$Res, $Val extends DailyMission>
    implements $DailyMissionCopyWith<$Res> {
  _$DailyMissionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyMission
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? description = null,
    Object? targetValue = null,
    Object? currentProgress = null,
    Object? rewardCoins = null,
    Object? rewardBadgeId = freezed,
    Object? generatedAt = null,
    Object? expiresAt = null,
    Object? isCompleted = null,
    Object? completedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as MissionType,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            targetValue: null == targetValue
                ? _value.targetValue
                : targetValue // ignore: cast_nullable_to_non_nullable
                      as int,
            currentProgress: null == currentProgress
                ? _value.currentProgress
                : currentProgress // ignore: cast_nullable_to_non_nullable
                      as int,
            rewardCoins: null == rewardCoins
                ? _value.rewardCoins
                : rewardCoins // ignore: cast_nullable_to_non_nullable
                      as int,
            rewardBadgeId: freezed == rewardBadgeId
                ? _value.rewardBadgeId
                : rewardBadgeId // ignore: cast_nullable_to_non_nullable
                      as String?,
            generatedAt: null == generatedAt
                ? _value.generatedAt
                : generatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            expiresAt: null == expiresAt
                ? _value.expiresAt
                : expiresAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            isCompleted: null == isCompleted
                ? _value.isCompleted
                : isCompleted // ignore: cast_nullable_to_non_nullable
                      as bool,
            completedAt: freezed == completedAt
                ? _value.completedAt
                : completedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DailyMissionImplCopyWith<$Res>
    implements $DailyMissionCopyWith<$Res> {
  factory _$$DailyMissionImplCopyWith(
    _$DailyMissionImpl value,
    $Res Function(_$DailyMissionImpl) then,
  ) = __$$DailyMissionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    MissionType type,
    String title,
    String description,
    int targetValue,
    int currentProgress,
    int rewardCoins,
    String? rewardBadgeId,
    DateTime generatedAt,
    DateTime expiresAt,
    bool isCompleted,
    DateTime? completedAt,
  });
}

/// @nodoc
class __$$DailyMissionImplCopyWithImpl<$Res>
    extends _$DailyMissionCopyWithImpl<$Res, _$DailyMissionImpl>
    implements _$$DailyMissionImplCopyWith<$Res> {
  __$$DailyMissionImplCopyWithImpl(
    _$DailyMissionImpl _value,
    $Res Function(_$DailyMissionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DailyMission
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? description = null,
    Object? targetValue = null,
    Object? currentProgress = null,
    Object? rewardCoins = null,
    Object? rewardBadgeId = freezed,
    Object? generatedAt = null,
    Object? expiresAt = null,
    Object? isCompleted = null,
    Object? completedAt = freezed,
  }) {
    return _then(
      _$DailyMissionImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as MissionType,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        targetValue: null == targetValue
            ? _value.targetValue
            : targetValue // ignore: cast_nullable_to_non_nullable
                  as int,
        currentProgress: null == currentProgress
            ? _value.currentProgress
            : currentProgress // ignore: cast_nullable_to_non_nullable
                  as int,
        rewardCoins: null == rewardCoins
            ? _value.rewardCoins
            : rewardCoins // ignore: cast_nullable_to_non_nullable
                  as int,
        rewardBadgeId: freezed == rewardBadgeId
            ? _value.rewardBadgeId
            : rewardBadgeId // ignore: cast_nullable_to_non_nullable
                  as String?,
        generatedAt: null == generatedAt
            ? _value.generatedAt
            : generatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        expiresAt: null == expiresAt
            ? _value.expiresAt
            : expiresAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        isCompleted: null == isCompleted
            ? _value.isCompleted
            : isCompleted // ignore: cast_nullable_to_non_nullable
                  as bool,
        completedAt: freezed == completedAt
            ? _value.completedAt
            : completedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyMissionImpl implements _DailyMission {
  const _$DailyMissionImpl({
    required this.id,
    required this.type,
    required this.title,
    required this.description,
    required this.targetValue,
    required this.currentProgress,
    required this.rewardCoins,
    required this.rewardBadgeId,
    required this.generatedAt,
    required this.expiresAt,
    required this.isCompleted,
    required this.completedAt,
  });

  factory _$DailyMissionImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyMissionImplFromJson(json);

  @override
  final String id;
  // 'daily_mission_YYYYMMDD'
  @override
  final MissionType type;
  @override
  final String title;
  @override
  final String description;
  @override
  final int targetValue;
  // 達成目標数
  @override
  final int currentProgress;
  // 現在の進捗
  @override
  final int rewardCoins;
  // 報酬コイン
  @override
  final String? rewardBadgeId;
  // 報酬バッジ（オプション）
  @override
  final DateTime generatedAt;
  // 生成日時
  @override
  final DateTime expiresAt;
  // 有効期限（翌日 23:59:59）
  @override
  final bool isCompleted;
  // 完了フラグ
  @override
  final DateTime? completedAt;

  @override
  String toString() {
    return 'DailyMission(id: $id, type: $type, title: $title, description: $description, targetValue: $targetValue, currentProgress: $currentProgress, rewardCoins: $rewardCoins, rewardBadgeId: $rewardBadgeId, generatedAt: $generatedAt, expiresAt: $expiresAt, isCompleted: $isCompleted, completedAt: $completedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyMissionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.targetValue, targetValue) ||
                other.targetValue == targetValue) &&
            (identical(other.currentProgress, currentProgress) ||
                other.currentProgress == currentProgress) &&
            (identical(other.rewardCoins, rewardCoins) ||
                other.rewardCoins == rewardCoins) &&
            (identical(other.rewardBadgeId, rewardBadgeId) ||
                other.rewardBadgeId == rewardBadgeId) &&
            (identical(other.generatedAt, generatedAt) ||
                other.generatedAt == generatedAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    type,
    title,
    description,
    targetValue,
    currentProgress,
    rewardCoins,
    rewardBadgeId,
    generatedAt,
    expiresAt,
    isCompleted,
    completedAt,
  );

  /// Create a copy of DailyMission
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyMissionImplCopyWith<_$DailyMissionImpl> get copyWith =>
      __$$DailyMissionImplCopyWithImpl<_$DailyMissionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyMissionImplToJson(this);
  }
}

abstract class _DailyMission implements DailyMission {
  const factory _DailyMission({
    required final String id,
    required final MissionType type,
    required final String title,
    required final String description,
    required final int targetValue,
    required final int currentProgress,
    required final int rewardCoins,
    required final String? rewardBadgeId,
    required final DateTime generatedAt,
    required final DateTime expiresAt,
    required final bool isCompleted,
    required final DateTime? completedAt,
  }) = _$DailyMissionImpl;

  factory _DailyMission.fromJson(Map<String, dynamic> json) =
      _$DailyMissionImpl.fromJson;

  @override
  String get id; // 'daily_mission_YYYYMMDD'
  @override
  MissionType get type;
  @override
  String get title;
  @override
  String get description;
  @override
  int get targetValue; // 達成目標数
  @override
  int get currentProgress; // 現在の進捗
  @override
  int get rewardCoins; // 報酬コイン
  @override
  String? get rewardBadgeId; // 報酬バッジ（オプション）
  @override
  DateTime get generatedAt; // 生成日時
  @override
  DateTime get expiresAt; // 有効期限（翌日 23:59:59）
  @override
  bool get isCompleted; // 完了フラグ
  @override
  DateTime? get completedAt;

  /// Create a copy of DailyMission
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyMissionImplCopyWith<_$DailyMissionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StreakData _$StreakDataFromJson(Map<String, dynamic> json) {
  return _StreakData.fromJson(json);
}

/// @nodoc
mixin _$StreakData {
  String get userId => throw _privateConstructorUsedError;
  int get currentStreak => throw _privateConstructorUsedError; // 現在のストリーク日数
  int get longestStreak => throw _privateConstructorUsedError; // 最長ストリーク
  DateTime get lastActivityAt =>
      throw _privateConstructorUsedError; // 最後に学習した日時
  int get totalStreakCoins =>
      throw _privateConstructorUsedError; // 累計ストリーク報酬コイン
  List<String> get streakBadges => throw _privateConstructorUsedError;

  /// Serializes this StreakData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StreakData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StreakDataCopyWith<StreakData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreakDataCopyWith<$Res> {
  factory $StreakDataCopyWith(
    StreakData value,
    $Res Function(StreakData) then,
  ) = _$StreakDataCopyWithImpl<$Res, StreakData>;
  @useResult
  $Res call({
    String userId,
    int currentStreak,
    int longestStreak,
    DateTime lastActivityAt,
    int totalStreakCoins,
    List<String> streakBadges,
  });
}

/// @nodoc
class _$StreakDataCopyWithImpl<$Res, $Val extends StreakData>
    implements $StreakDataCopyWith<$Res> {
  _$StreakDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StreakData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? currentStreak = null,
    Object? longestStreak = null,
    Object? lastActivityAt = null,
    Object? totalStreakCoins = null,
    Object? streakBadges = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            currentStreak: null == currentStreak
                ? _value.currentStreak
                : currentStreak // ignore: cast_nullable_to_non_nullable
                      as int,
            longestStreak: null == longestStreak
                ? _value.longestStreak
                : longestStreak // ignore: cast_nullable_to_non_nullable
                      as int,
            lastActivityAt: null == lastActivityAt
                ? _value.lastActivityAt
                : lastActivityAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            totalStreakCoins: null == totalStreakCoins
                ? _value.totalStreakCoins
                : totalStreakCoins // ignore: cast_nullable_to_non_nullable
                      as int,
            streakBadges: null == streakBadges
                ? _value.streakBadges
                : streakBadges // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StreakDataImplCopyWith<$Res>
    implements $StreakDataCopyWith<$Res> {
  factory _$$StreakDataImplCopyWith(
    _$StreakDataImpl value,
    $Res Function(_$StreakDataImpl) then,
  ) = __$$StreakDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    int currentStreak,
    int longestStreak,
    DateTime lastActivityAt,
    int totalStreakCoins,
    List<String> streakBadges,
  });
}

/// @nodoc
class __$$StreakDataImplCopyWithImpl<$Res>
    extends _$StreakDataCopyWithImpl<$Res, _$StreakDataImpl>
    implements _$$StreakDataImplCopyWith<$Res> {
  __$$StreakDataImplCopyWithImpl(
    _$StreakDataImpl _value,
    $Res Function(_$StreakDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StreakData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? currentStreak = null,
    Object? longestStreak = null,
    Object? lastActivityAt = null,
    Object? totalStreakCoins = null,
    Object? streakBadges = null,
  }) {
    return _then(
      _$StreakDataImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        currentStreak: null == currentStreak
            ? _value.currentStreak
            : currentStreak // ignore: cast_nullable_to_non_nullable
                  as int,
        longestStreak: null == longestStreak
            ? _value.longestStreak
            : longestStreak // ignore: cast_nullable_to_non_nullable
                  as int,
        lastActivityAt: null == lastActivityAt
            ? _value.lastActivityAt
            : lastActivityAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        totalStreakCoins: null == totalStreakCoins
            ? _value.totalStreakCoins
            : totalStreakCoins // ignore: cast_nullable_to_non_nullable
                  as int,
        streakBadges: null == streakBadges
            ? _value._streakBadges
            : streakBadges // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StreakDataImpl implements _StreakData {
  const _$StreakDataImpl({
    required this.userId,
    required this.currentStreak,
    required this.longestStreak,
    required this.lastActivityAt,
    required this.totalStreakCoins,
    required final List<String> streakBadges,
  }) : _streakBadges = streakBadges;

  factory _$StreakDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StreakDataImplFromJson(json);

  @override
  final String userId;
  @override
  final int currentStreak;
  // 現在のストリーク日数
  @override
  final int longestStreak;
  // 最長ストリーク
  @override
  final DateTime lastActivityAt;
  // 最後に学習した日時
  @override
  final int totalStreakCoins;
  // 累計ストリーク報酬コイン
  final List<String> _streakBadges;
  // 累計ストリーク報酬コイン
  @override
  List<String> get streakBadges {
    if (_streakBadges is EqualUnmodifiableListView) return _streakBadges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_streakBadges);
  }

  @override
  String toString() {
    return 'StreakData(userId: $userId, currentStreak: $currentStreak, longestStreak: $longestStreak, lastActivityAt: $lastActivityAt, totalStreakCoins: $totalStreakCoins, streakBadges: $streakBadges)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreakDataImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.currentStreak, currentStreak) ||
                other.currentStreak == currentStreak) &&
            (identical(other.longestStreak, longestStreak) ||
                other.longestStreak == longestStreak) &&
            (identical(other.lastActivityAt, lastActivityAt) ||
                other.lastActivityAt == lastActivityAt) &&
            (identical(other.totalStreakCoins, totalStreakCoins) ||
                other.totalStreakCoins == totalStreakCoins) &&
            const DeepCollectionEquality().equals(
              other._streakBadges,
              _streakBadges,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    currentStreak,
    longestStreak,
    lastActivityAt,
    totalStreakCoins,
    const DeepCollectionEquality().hash(_streakBadges),
  );

  /// Create a copy of StreakData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StreakDataImplCopyWith<_$StreakDataImpl> get copyWith =>
      __$$StreakDataImplCopyWithImpl<_$StreakDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StreakDataImplToJson(this);
  }
}

abstract class _StreakData implements StreakData {
  const factory _StreakData({
    required final String userId,
    required final int currentStreak,
    required final int longestStreak,
    required final DateTime lastActivityAt,
    required final int totalStreakCoins,
    required final List<String> streakBadges,
  }) = _$StreakDataImpl;

  factory _StreakData.fromJson(Map<String, dynamic> json) =
      _$StreakDataImpl.fromJson;

  @override
  String get userId;
  @override
  int get currentStreak; // 現在のストリーク日数
  @override
  int get longestStreak; // 最長ストリーク
  @override
  DateTime get lastActivityAt; // 最後に学習した日時
  @override
  int get totalStreakCoins; // 累計ストリーク報酬コイン
  @override
  List<String> get streakBadges;

  /// Create a copy of StreakData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StreakDataImplCopyWith<_$StreakDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeeklyBonus _$WeeklyBonusFromJson(Map<String, dynamic> json) {
  return _WeeklyBonus.fromJson(json);
}

/// @nodoc
mixin _$WeeklyBonus {
  int get dayNumber => throw _privateConstructorUsedError; // 1-7
  int get requiredMissions =>
      throw _privateConstructorUsedError; // その日に必要なミッション完了数
  int get coinReward => throw _privateConstructorUsedError; // コイン報酬
  String? get badgeId => throw _privateConstructorUsedError; // バッジ報酬（オプション）
  bool get isCompleted => throw _privateConstructorUsedError;

  /// Serializes this WeeklyBonus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeeklyBonus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeeklyBonusCopyWith<WeeklyBonus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyBonusCopyWith<$Res> {
  factory $WeeklyBonusCopyWith(
    WeeklyBonus value,
    $Res Function(WeeklyBonus) then,
  ) = _$WeeklyBonusCopyWithImpl<$Res, WeeklyBonus>;
  @useResult
  $Res call({
    int dayNumber,
    int requiredMissions,
    int coinReward,
    String? badgeId,
    bool isCompleted,
  });
}

/// @nodoc
class _$WeeklyBonusCopyWithImpl<$Res, $Val extends WeeklyBonus>
    implements $WeeklyBonusCopyWith<$Res> {
  _$WeeklyBonusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeeklyBonus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayNumber = null,
    Object? requiredMissions = null,
    Object? coinReward = null,
    Object? badgeId = freezed,
    Object? isCompleted = null,
  }) {
    return _then(
      _value.copyWith(
            dayNumber: null == dayNumber
                ? _value.dayNumber
                : dayNumber // ignore: cast_nullable_to_non_nullable
                      as int,
            requiredMissions: null == requiredMissions
                ? _value.requiredMissions
                : requiredMissions // ignore: cast_nullable_to_non_nullable
                      as int,
            coinReward: null == coinReward
                ? _value.coinReward
                : coinReward // ignore: cast_nullable_to_non_nullable
                      as int,
            badgeId: freezed == badgeId
                ? _value.badgeId
                : badgeId // ignore: cast_nullable_to_non_nullable
                      as String?,
            isCompleted: null == isCompleted
                ? _value.isCompleted
                : isCompleted // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WeeklyBonusImplCopyWith<$Res>
    implements $WeeklyBonusCopyWith<$Res> {
  factory _$$WeeklyBonusImplCopyWith(
    _$WeeklyBonusImpl value,
    $Res Function(_$WeeklyBonusImpl) then,
  ) = __$$WeeklyBonusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int dayNumber,
    int requiredMissions,
    int coinReward,
    String? badgeId,
    bool isCompleted,
  });
}

/// @nodoc
class __$$WeeklyBonusImplCopyWithImpl<$Res>
    extends _$WeeklyBonusCopyWithImpl<$Res, _$WeeklyBonusImpl>
    implements _$$WeeklyBonusImplCopyWith<$Res> {
  __$$WeeklyBonusImplCopyWithImpl(
    _$WeeklyBonusImpl _value,
    $Res Function(_$WeeklyBonusImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WeeklyBonus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayNumber = null,
    Object? requiredMissions = null,
    Object? coinReward = null,
    Object? badgeId = freezed,
    Object? isCompleted = null,
  }) {
    return _then(
      _$WeeklyBonusImpl(
        dayNumber: null == dayNumber
            ? _value.dayNumber
            : dayNumber // ignore: cast_nullable_to_non_nullable
                  as int,
        requiredMissions: null == requiredMissions
            ? _value.requiredMissions
            : requiredMissions // ignore: cast_nullable_to_non_nullable
                  as int,
        coinReward: null == coinReward
            ? _value.coinReward
            : coinReward // ignore: cast_nullable_to_non_nullable
                  as int,
        badgeId: freezed == badgeId
            ? _value.badgeId
            : badgeId // ignore: cast_nullable_to_non_nullable
                  as String?,
        isCompleted: null == isCompleted
            ? _value.isCompleted
            : isCompleted // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WeeklyBonusImpl implements _WeeklyBonus {
  const _$WeeklyBonusImpl({
    required this.dayNumber,
    required this.requiredMissions,
    required this.coinReward,
    required this.badgeId,
    required this.isCompleted,
  });

  factory _$WeeklyBonusImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeeklyBonusImplFromJson(json);

  @override
  final int dayNumber;
  // 1-7
  @override
  final int requiredMissions;
  // その日に必要なミッション完了数
  @override
  final int coinReward;
  // コイン報酬
  @override
  final String? badgeId;
  // バッジ報酬（オプション）
  @override
  final bool isCompleted;

  @override
  String toString() {
    return 'WeeklyBonus(dayNumber: $dayNumber, requiredMissions: $requiredMissions, coinReward: $coinReward, badgeId: $badgeId, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeeklyBonusImpl &&
            (identical(other.dayNumber, dayNumber) ||
                other.dayNumber == dayNumber) &&
            (identical(other.requiredMissions, requiredMissions) ||
                other.requiredMissions == requiredMissions) &&
            (identical(other.coinReward, coinReward) ||
                other.coinReward == coinReward) &&
            (identical(other.badgeId, badgeId) || other.badgeId == badgeId) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    dayNumber,
    requiredMissions,
    coinReward,
    badgeId,
    isCompleted,
  );

  /// Create a copy of WeeklyBonus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeeklyBonusImplCopyWith<_$WeeklyBonusImpl> get copyWith =>
      __$$WeeklyBonusImplCopyWithImpl<_$WeeklyBonusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeeklyBonusImplToJson(this);
  }
}

abstract class _WeeklyBonus implements WeeklyBonus {
  const factory _WeeklyBonus({
    required final int dayNumber,
    required final int requiredMissions,
    required final int coinReward,
    required final String? badgeId,
    required final bool isCompleted,
  }) = _$WeeklyBonusImpl;

  factory _WeeklyBonus.fromJson(Map<String, dynamic> json) =
      _$WeeklyBonusImpl.fromJson;

  @override
  int get dayNumber; // 1-7
  @override
  int get requiredMissions; // その日に必要なミッション完了数
  @override
  int get coinReward; // コイン報酬
  @override
  String? get badgeId; // バッジ報酬（オプション）
  @override
  bool get isCompleted;

  /// Create a copy of WeeklyBonus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeeklyBonusImplCopyWith<_$WeeklyBonusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeeklyBonusProgress _$WeeklyBonusProgressFromJson(Map<String, dynamic> json) {
  return _WeeklyBonusProgress.fromJson(json);
}

/// @nodoc
mixin _$WeeklyBonusProgress {
  String get userId => throw _privateConstructorUsedError;
  int get weekNumber => throw _privateConstructorUsedError; // 年間週番号
  List<WeeklyBonus> get bonuses => throw _privateConstructorUsedError;
  int get completedDays => throw _privateConstructorUsedError; // 完了した日数
  DateTime get startedAt => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;

  /// Serializes this WeeklyBonusProgress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeeklyBonusProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeeklyBonusProgressCopyWith<WeeklyBonusProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyBonusProgressCopyWith<$Res> {
  factory $WeeklyBonusProgressCopyWith(
    WeeklyBonusProgress value,
    $Res Function(WeeklyBonusProgress) then,
  ) = _$WeeklyBonusProgressCopyWithImpl<$Res, WeeklyBonusProgress>;
  @useResult
  $Res call({
    String userId,
    int weekNumber,
    List<WeeklyBonus> bonuses,
    int completedDays,
    DateTime startedAt,
    DateTime? completedAt,
  });
}

/// @nodoc
class _$WeeklyBonusProgressCopyWithImpl<$Res, $Val extends WeeklyBonusProgress>
    implements $WeeklyBonusProgressCopyWith<$Res> {
  _$WeeklyBonusProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeeklyBonusProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? weekNumber = null,
    Object? bonuses = null,
    Object? completedDays = null,
    Object? startedAt = null,
    Object? completedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            weekNumber: null == weekNumber
                ? _value.weekNumber
                : weekNumber // ignore: cast_nullable_to_non_nullable
                      as int,
            bonuses: null == bonuses
                ? _value.bonuses
                : bonuses // ignore: cast_nullable_to_non_nullable
                      as List<WeeklyBonus>,
            completedDays: null == completedDays
                ? _value.completedDays
                : completedDays // ignore: cast_nullable_to_non_nullable
                      as int,
            startedAt: null == startedAt
                ? _value.startedAt
                : startedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            completedAt: freezed == completedAt
                ? _value.completedAt
                : completedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WeeklyBonusProgressImplCopyWith<$Res>
    implements $WeeklyBonusProgressCopyWith<$Res> {
  factory _$$WeeklyBonusProgressImplCopyWith(
    _$WeeklyBonusProgressImpl value,
    $Res Function(_$WeeklyBonusProgressImpl) then,
  ) = __$$WeeklyBonusProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    int weekNumber,
    List<WeeklyBonus> bonuses,
    int completedDays,
    DateTime startedAt,
    DateTime? completedAt,
  });
}

/// @nodoc
class __$$WeeklyBonusProgressImplCopyWithImpl<$Res>
    extends _$WeeklyBonusProgressCopyWithImpl<$Res, _$WeeklyBonusProgressImpl>
    implements _$$WeeklyBonusProgressImplCopyWith<$Res> {
  __$$WeeklyBonusProgressImplCopyWithImpl(
    _$WeeklyBonusProgressImpl _value,
    $Res Function(_$WeeklyBonusProgressImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WeeklyBonusProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? weekNumber = null,
    Object? bonuses = null,
    Object? completedDays = null,
    Object? startedAt = null,
    Object? completedAt = freezed,
  }) {
    return _then(
      _$WeeklyBonusProgressImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        weekNumber: null == weekNumber
            ? _value.weekNumber
            : weekNumber // ignore: cast_nullable_to_non_nullable
                  as int,
        bonuses: null == bonuses
            ? _value._bonuses
            : bonuses // ignore: cast_nullable_to_non_nullable
                  as List<WeeklyBonus>,
        completedDays: null == completedDays
            ? _value.completedDays
            : completedDays // ignore: cast_nullable_to_non_nullable
                  as int,
        startedAt: null == startedAt
            ? _value.startedAt
            : startedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        completedAt: freezed == completedAt
            ? _value.completedAt
            : completedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WeeklyBonusProgressImpl implements _WeeklyBonusProgress {
  const _$WeeklyBonusProgressImpl({
    required this.userId,
    required this.weekNumber,
    required final List<WeeklyBonus> bonuses,
    required this.completedDays,
    required this.startedAt,
    required this.completedAt,
  }) : _bonuses = bonuses;

  factory _$WeeklyBonusProgressImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeeklyBonusProgressImplFromJson(json);

  @override
  final String userId;
  @override
  final int weekNumber;
  // 年間週番号
  final List<WeeklyBonus> _bonuses;
  // 年間週番号
  @override
  List<WeeklyBonus> get bonuses {
    if (_bonuses is EqualUnmodifiableListView) return _bonuses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bonuses);
  }

  @override
  final int completedDays;
  // 完了した日数
  @override
  final DateTime startedAt;
  @override
  final DateTime? completedAt;

  @override
  String toString() {
    return 'WeeklyBonusProgress(userId: $userId, weekNumber: $weekNumber, bonuses: $bonuses, completedDays: $completedDays, startedAt: $startedAt, completedAt: $completedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeeklyBonusProgressImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.weekNumber, weekNumber) ||
                other.weekNumber == weekNumber) &&
            const DeepCollectionEquality().equals(other._bonuses, _bonuses) &&
            (identical(other.completedDays, completedDays) ||
                other.completedDays == completedDays) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    weekNumber,
    const DeepCollectionEquality().hash(_bonuses),
    completedDays,
    startedAt,
    completedAt,
  );

  /// Create a copy of WeeklyBonusProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeeklyBonusProgressImplCopyWith<_$WeeklyBonusProgressImpl> get copyWith =>
      __$$WeeklyBonusProgressImplCopyWithImpl<_$WeeklyBonusProgressImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WeeklyBonusProgressImplToJson(this);
  }
}

abstract class _WeeklyBonusProgress implements WeeklyBonusProgress {
  const factory _WeeklyBonusProgress({
    required final String userId,
    required final int weekNumber,
    required final List<WeeklyBonus> bonuses,
    required final int completedDays,
    required final DateTime startedAt,
    required final DateTime? completedAt,
  }) = _$WeeklyBonusProgressImpl;

  factory _WeeklyBonusProgress.fromJson(Map<String, dynamic> json) =
      _$WeeklyBonusProgressImpl.fromJson;

  @override
  String get userId;
  @override
  int get weekNumber; // 年間週番号
  @override
  List<WeeklyBonus> get bonuses;
  @override
  int get completedDays; // 完了した日数
  @override
  DateTime get startedAt;
  @override
  DateTime? get completedAt;

  /// Create a copy of WeeklyBonusProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeeklyBonusProgressImplCopyWith<_$WeeklyBonusProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RetentionConfig _$RetentionConfigFromJson(Map<String, dynamic> json) {
  return _RetentionConfig.fromJson(json);
}

/// @nodoc
mixin _$RetentionConfig {
  int get dailyMissionCount =>
      throw _privateConstructorUsedError; // 1日のミッション数（デフォルト3）
  int get streakCoinMultiplier =>
      throw _privateConstructorUsedError; // ストリーク1日あたりのコイン（デフォルト10）
  int get maxStreakBonusPerDay =>
      throw _privateConstructorUsedError; // 1日最大ストリーク報酬（デフォルト100）
  Map<int, int> get weeklyBonusCoins =>
      throw _privateConstructorUsedError; // 曜日別ボーナスコイン{day: coins}
  List<int> get streakMilestones => throw _privateConstructorUsedError;

  /// Serializes this RetentionConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RetentionConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RetentionConfigCopyWith<RetentionConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RetentionConfigCopyWith<$Res> {
  factory $RetentionConfigCopyWith(
    RetentionConfig value,
    $Res Function(RetentionConfig) then,
  ) = _$RetentionConfigCopyWithImpl<$Res, RetentionConfig>;
  @useResult
  $Res call({
    int dailyMissionCount,
    int streakCoinMultiplier,
    int maxStreakBonusPerDay,
    Map<int, int> weeklyBonusCoins,
    List<int> streakMilestones,
  });
}

/// @nodoc
class _$RetentionConfigCopyWithImpl<$Res, $Val extends RetentionConfig>
    implements $RetentionConfigCopyWith<$Res> {
  _$RetentionConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RetentionConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dailyMissionCount = null,
    Object? streakCoinMultiplier = null,
    Object? maxStreakBonusPerDay = null,
    Object? weeklyBonusCoins = null,
    Object? streakMilestones = null,
  }) {
    return _then(
      _value.copyWith(
            dailyMissionCount: null == dailyMissionCount
                ? _value.dailyMissionCount
                : dailyMissionCount // ignore: cast_nullable_to_non_nullable
                      as int,
            streakCoinMultiplier: null == streakCoinMultiplier
                ? _value.streakCoinMultiplier
                : streakCoinMultiplier // ignore: cast_nullable_to_non_nullable
                      as int,
            maxStreakBonusPerDay: null == maxStreakBonusPerDay
                ? _value.maxStreakBonusPerDay
                : maxStreakBonusPerDay // ignore: cast_nullable_to_non_nullable
                      as int,
            weeklyBonusCoins: null == weeklyBonusCoins
                ? _value.weeklyBonusCoins
                : weeklyBonusCoins // ignore: cast_nullable_to_non_nullable
                      as Map<int, int>,
            streakMilestones: null == streakMilestones
                ? _value.streakMilestones
                : streakMilestones // ignore: cast_nullable_to_non_nullable
                      as List<int>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RetentionConfigImplCopyWith<$Res>
    implements $RetentionConfigCopyWith<$Res> {
  factory _$$RetentionConfigImplCopyWith(
    _$RetentionConfigImpl value,
    $Res Function(_$RetentionConfigImpl) then,
  ) = __$$RetentionConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int dailyMissionCount,
    int streakCoinMultiplier,
    int maxStreakBonusPerDay,
    Map<int, int> weeklyBonusCoins,
    List<int> streakMilestones,
  });
}

/// @nodoc
class __$$RetentionConfigImplCopyWithImpl<$Res>
    extends _$RetentionConfigCopyWithImpl<$Res, _$RetentionConfigImpl>
    implements _$$RetentionConfigImplCopyWith<$Res> {
  __$$RetentionConfigImplCopyWithImpl(
    _$RetentionConfigImpl _value,
    $Res Function(_$RetentionConfigImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RetentionConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dailyMissionCount = null,
    Object? streakCoinMultiplier = null,
    Object? maxStreakBonusPerDay = null,
    Object? weeklyBonusCoins = null,
    Object? streakMilestones = null,
  }) {
    return _then(
      _$RetentionConfigImpl(
        dailyMissionCount: null == dailyMissionCount
            ? _value.dailyMissionCount
            : dailyMissionCount // ignore: cast_nullable_to_non_nullable
                  as int,
        streakCoinMultiplier: null == streakCoinMultiplier
            ? _value.streakCoinMultiplier
            : streakCoinMultiplier // ignore: cast_nullable_to_non_nullable
                  as int,
        maxStreakBonusPerDay: null == maxStreakBonusPerDay
            ? _value.maxStreakBonusPerDay
            : maxStreakBonusPerDay // ignore: cast_nullable_to_non_nullable
                  as int,
        weeklyBonusCoins: null == weeklyBonusCoins
            ? _value._weeklyBonusCoins
            : weeklyBonusCoins // ignore: cast_nullable_to_non_nullable
                  as Map<int, int>,
        streakMilestones: null == streakMilestones
            ? _value._streakMilestones
            : streakMilestones // ignore: cast_nullable_to_non_nullable
                  as List<int>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RetentionConfigImpl implements _RetentionConfig {
  const _$RetentionConfigImpl({
    required this.dailyMissionCount,
    required this.streakCoinMultiplier,
    required this.maxStreakBonusPerDay,
    required final Map<int, int> weeklyBonusCoins,
    required final List<int> streakMilestones,
  }) : _weeklyBonusCoins = weeklyBonusCoins,
       _streakMilestones = streakMilestones;

  factory _$RetentionConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$RetentionConfigImplFromJson(json);

  @override
  final int dailyMissionCount;
  // 1日のミッション数（デフォルト3）
  @override
  final int streakCoinMultiplier;
  // ストリーク1日あたりのコイン（デフォルト10）
  @override
  final int maxStreakBonusPerDay;
  // 1日最大ストリーク報酬（デフォルト100）
  final Map<int, int> _weeklyBonusCoins;
  // 1日最大ストリーク報酬（デフォルト100）
  @override
  Map<int, int> get weeklyBonusCoins {
    if (_weeklyBonusCoins is EqualUnmodifiableMapView) return _weeklyBonusCoins;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_weeklyBonusCoins);
  }

  // 曜日別ボーナスコイン{day: coins}
  final List<int> _streakMilestones;
  // 曜日別ボーナスコイン{day: coins}
  @override
  List<int> get streakMilestones {
    if (_streakMilestones is EqualUnmodifiableListView)
      return _streakMilestones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_streakMilestones);
  }

  @override
  String toString() {
    return 'RetentionConfig(dailyMissionCount: $dailyMissionCount, streakCoinMultiplier: $streakCoinMultiplier, maxStreakBonusPerDay: $maxStreakBonusPerDay, weeklyBonusCoins: $weeklyBonusCoins, streakMilestones: $streakMilestones)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RetentionConfigImpl &&
            (identical(other.dailyMissionCount, dailyMissionCount) ||
                other.dailyMissionCount == dailyMissionCount) &&
            (identical(other.streakCoinMultiplier, streakCoinMultiplier) ||
                other.streakCoinMultiplier == streakCoinMultiplier) &&
            (identical(other.maxStreakBonusPerDay, maxStreakBonusPerDay) ||
                other.maxStreakBonusPerDay == maxStreakBonusPerDay) &&
            const DeepCollectionEquality().equals(
              other._weeklyBonusCoins,
              _weeklyBonusCoins,
            ) &&
            const DeepCollectionEquality().equals(
              other._streakMilestones,
              _streakMilestones,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    dailyMissionCount,
    streakCoinMultiplier,
    maxStreakBonusPerDay,
    const DeepCollectionEquality().hash(_weeklyBonusCoins),
    const DeepCollectionEquality().hash(_streakMilestones),
  );

  /// Create a copy of RetentionConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RetentionConfigImplCopyWith<_$RetentionConfigImpl> get copyWith =>
      __$$RetentionConfigImplCopyWithImpl<_$RetentionConfigImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RetentionConfigImplToJson(this);
  }
}

abstract class _RetentionConfig implements RetentionConfig {
  const factory _RetentionConfig({
    required final int dailyMissionCount,
    required final int streakCoinMultiplier,
    required final int maxStreakBonusPerDay,
    required final Map<int, int> weeklyBonusCoins,
    required final List<int> streakMilestones,
  }) = _$RetentionConfigImpl;

  factory _RetentionConfig.fromJson(Map<String, dynamic> json) =
      _$RetentionConfigImpl.fromJson;

  @override
  int get dailyMissionCount; // 1日のミッション数（デフォルト3）
  @override
  int get streakCoinMultiplier; // ストリーク1日あたりのコイン（デフォルト10）
  @override
  int get maxStreakBonusPerDay; // 1日最大ストリーク報酬（デフォルト100）
  @override
  Map<int, int> get weeklyBonusCoins; // 曜日別ボーナスコイン{day: coins}
  @override
  List<int> get streakMilestones;

  /// Create a copy of RetentionConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RetentionConfigImplCopyWith<_$RetentionConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
