// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mission_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Mission _$MissionFromJson(Map<String, dynamic> json) {
  return _Mission.fromJson(json);
}

/// @nodoc
mixin _$Mission {
  String get missionId =>
      throw _privateConstructorUsedError; // 'beginner_stage_5', 'streak_7days' など
  String get title => throw _privateConstructorUsedError; // 'ビギナーステージ 5問達成！'
  String get description =>
      throw _privateConstructorUsedError; // 'クイズ 5問 を正解してね'
  MissionDifficulty get difficulty => throw _privateConstructorUsedError;
  int get targetValue => throw _privateConstructorUsedError; // 達成に必要な値（5問、7日など）
  String get unit =>
      throw _privateConstructorUsedError; // 'questions', 'days', 'stars' など
  String? get subject =>
      throw _privateConstructorUsedError; // null（全教科）, 'math', 'japanese' など
  List<String> get requiredBadges =>
      throw _privateConstructorUsedError; // 前提となるバッジ（空配列 = 制限なし）
  List<MissionReward> get rewards => throw _privateConstructorUsedError;
  bool get repeatable => throw _privateConstructorUsedError; // 毎日繰り返し可能か
  bool get enabled => throw _privateConstructorUsedError;

  /// Serializes this Mission to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Mission
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MissionCopyWith<Mission> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MissionCopyWith<$Res> {
  factory $MissionCopyWith(Mission value, $Res Function(Mission) then) =
      _$MissionCopyWithImpl<$Res, Mission>;
  @useResult
  $Res call({
    String missionId,
    String title,
    String description,
    MissionDifficulty difficulty,
    int targetValue,
    String unit,
    String? subject,
    List<String> requiredBadges,
    List<MissionReward> rewards,
    bool repeatable,
    bool enabled,
  });
}

/// @nodoc
class _$MissionCopyWithImpl<$Res, $Val extends Mission>
    implements $MissionCopyWith<$Res> {
  _$MissionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Mission
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? missionId = null,
    Object? title = null,
    Object? description = null,
    Object? difficulty = null,
    Object? targetValue = null,
    Object? unit = null,
    Object? subject = freezed,
    Object? requiredBadges = null,
    Object? rewards = null,
    Object? repeatable = null,
    Object? enabled = null,
  }) {
    return _then(
      _value.copyWith(
            missionId: null == missionId
                ? _value.missionId
                : missionId // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            difficulty: null == difficulty
                ? _value.difficulty
                : difficulty // ignore: cast_nullable_to_non_nullable
                      as MissionDifficulty,
            targetValue: null == targetValue
                ? _value.targetValue
                : targetValue // ignore: cast_nullable_to_non_nullable
                      as int,
            unit: null == unit
                ? _value.unit
                : unit // ignore: cast_nullable_to_non_nullable
                      as String,
            subject: freezed == subject
                ? _value.subject
                : subject // ignore: cast_nullable_to_non_nullable
                      as String?,
            requiredBadges: null == requiredBadges
                ? _value.requiredBadges
                : requiredBadges // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            rewards: null == rewards
                ? _value.rewards
                : rewards // ignore: cast_nullable_to_non_nullable
                      as List<MissionReward>,
            repeatable: null == repeatable
                ? _value.repeatable
                : repeatable // ignore: cast_nullable_to_non_nullable
                      as bool,
            enabled: null == enabled
                ? _value.enabled
                : enabled // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MissionImplCopyWith<$Res> implements $MissionCopyWith<$Res> {
  factory _$$MissionImplCopyWith(
    _$MissionImpl value,
    $Res Function(_$MissionImpl) then,
  ) = __$$MissionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String missionId,
    String title,
    String description,
    MissionDifficulty difficulty,
    int targetValue,
    String unit,
    String? subject,
    List<String> requiredBadges,
    List<MissionReward> rewards,
    bool repeatable,
    bool enabled,
  });
}

/// @nodoc
class __$$MissionImplCopyWithImpl<$Res>
    extends _$MissionCopyWithImpl<$Res, _$MissionImpl>
    implements _$$MissionImplCopyWith<$Res> {
  __$$MissionImplCopyWithImpl(
    _$MissionImpl _value,
    $Res Function(_$MissionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Mission
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? missionId = null,
    Object? title = null,
    Object? description = null,
    Object? difficulty = null,
    Object? targetValue = null,
    Object? unit = null,
    Object? subject = freezed,
    Object? requiredBadges = null,
    Object? rewards = null,
    Object? repeatable = null,
    Object? enabled = null,
  }) {
    return _then(
      _$MissionImpl(
        missionId: null == missionId
            ? _value.missionId
            : missionId // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        difficulty: null == difficulty
            ? _value.difficulty
            : difficulty // ignore: cast_nullable_to_non_nullable
                  as MissionDifficulty,
        targetValue: null == targetValue
            ? _value.targetValue
            : targetValue // ignore: cast_nullable_to_non_nullable
                  as int,
        unit: null == unit
            ? _value.unit
            : unit // ignore: cast_nullable_to_non_nullable
                  as String,
        subject: freezed == subject
            ? _value.subject
            : subject // ignore: cast_nullable_to_non_nullable
                  as String?,
        requiredBadges: null == requiredBadges
            ? _value._requiredBadges
            : requiredBadges // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        rewards: null == rewards
            ? _value._rewards
            : rewards // ignore: cast_nullable_to_non_nullable
                  as List<MissionReward>,
        repeatable: null == repeatable
            ? _value.repeatable
            : repeatable // ignore: cast_nullable_to_non_nullable
                  as bool,
        enabled: null == enabled
            ? _value.enabled
            : enabled // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MissionImpl implements _Mission {
  const _$MissionImpl({
    required this.missionId,
    required this.title,
    required this.description,
    required this.difficulty,
    required this.targetValue,
    required this.unit,
    required this.subject,
    required final List<String> requiredBadges,
    required final List<MissionReward> rewards,
    required this.repeatable,
    this.enabled = false,
  }) : _requiredBadges = requiredBadges,
       _rewards = rewards;

  factory _$MissionImpl.fromJson(Map<String, dynamic> json) =>
      _$$MissionImplFromJson(json);

  @override
  final String missionId;
  // 'beginner_stage_5', 'streak_7days' など
  @override
  final String title;
  // 'ビギナーステージ 5問達成！'
  @override
  final String description;
  // 'クイズ 5問 を正解してね'
  @override
  final MissionDifficulty difficulty;
  @override
  final int targetValue;
  // 達成に必要な値（5問、7日など）
  @override
  final String unit;
  // 'questions', 'days', 'stars' など
  @override
  final String? subject;
  // null（全教科）, 'math', 'japanese' など
  final List<String> _requiredBadges;
  // null（全教科）, 'math', 'japanese' など
  @override
  List<String> get requiredBadges {
    if (_requiredBadges is EqualUnmodifiableListView) return _requiredBadges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requiredBadges);
  }

  // 前提となるバッジ（空配列 = 制限なし）
  final List<MissionReward> _rewards;
  // 前提となるバッジ（空配列 = 制限なし）
  @override
  List<MissionReward> get rewards {
    if (_rewards is EqualUnmodifiableListView) return _rewards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rewards);
  }

  @override
  final bool repeatable;
  // 毎日繰り返し可能か
  @override
  @JsonKey()
  final bool enabled;

  @override
  String toString() {
    return 'Mission(missionId: $missionId, title: $title, description: $description, difficulty: $difficulty, targetValue: $targetValue, unit: $unit, subject: $subject, requiredBadges: $requiredBadges, rewards: $rewards, repeatable: $repeatable, enabled: $enabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MissionImpl &&
            (identical(other.missionId, missionId) ||
                other.missionId == missionId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.targetValue, targetValue) ||
                other.targetValue == targetValue) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            const DeepCollectionEquality().equals(
              other._requiredBadges,
              _requiredBadges,
            ) &&
            const DeepCollectionEquality().equals(other._rewards, _rewards) &&
            (identical(other.repeatable, repeatable) ||
                other.repeatable == repeatable) &&
            (identical(other.enabled, enabled) || other.enabled == enabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    missionId,
    title,
    description,
    difficulty,
    targetValue,
    unit,
    subject,
    const DeepCollectionEquality().hash(_requiredBadges),
    const DeepCollectionEquality().hash(_rewards),
    repeatable,
    enabled,
  );

  /// Create a copy of Mission
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MissionImplCopyWith<_$MissionImpl> get copyWith =>
      __$$MissionImplCopyWithImpl<_$MissionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MissionImplToJson(this);
  }
}

abstract class _Mission implements Mission {
  const factory _Mission({
    required final String missionId,
    required final String title,
    required final String description,
    required final MissionDifficulty difficulty,
    required final int targetValue,
    required final String unit,
    required final String? subject,
    required final List<String> requiredBadges,
    required final List<MissionReward> rewards,
    required final bool repeatable,
    final bool enabled,
  }) = _$MissionImpl;

  factory _Mission.fromJson(Map<String, dynamic> json) = _$MissionImpl.fromJson;

  @override
  String get missionId; // 'beginner_stage_5', 'streak_7days' など
  @override
  String get title; // 'ビギナーステージ 5問達成！'
  @override
  String get description; // 'クイズ 5問 を正解してね'
  @override
  MissionDifficulty get difficulty;
  @override
  int get targetValue; // 達成に必要な値（5問、7日など）
  @override
  String get unit; // 'questions', 'days', 'stars' など
  @override
  String? get subject; // null（全教科）, 'math', 'japanese' など
  @override
  List<String> get requiredBadges; // 前提となるバッジ（空配列 = 制限なし）
  @override
  List<MissionReward> get rewards;
  @override
  bool get repeatable; // 毎日繰り返し可能か
  @override
  bool get enabled;

  /// Create a copy of Mission
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MissionImplCopyWith<_$MissionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MissionReward _$MissionRewardFromJson(Map<String, dynamic> json) {
  return _MissionReward.fromJson(json);
}

/// @nodoc
mixin _$MissionReward {
  RewardType get type => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String? get itemId => throw _privateConstructorUsedError;

  /// Serializes this MissionReward to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MissionReward
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MissionRewardCopyWith<MissionReward> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MissionRewardCopyWith<$Res> {
  factory $MissionRewardCopyWith(
    MissionReward value,
    $Res Function(MissionReward) then,
  ) = _$MissionRewardCopyWithImpl<$Res, MissionReward>;
  @useResult
  $Res call({RewardType type, int amount, String? itemId});
}

/// @nodoc
class _$MissionRewardCopyWithImpl<$Res, $Val extends MissionReward>
    implements $MissionRewardCopyWith<$Res> {
  _$MissionRewardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MissionReward
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? amount = null,
    Object? itemId = freezed,
  }) {
    return _then(
      _value.copyWith(
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as RewardType,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as int,
            itemId: freezed == itemId
                ? _value.itemId
                : itemId // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MissionRewardImplCopyWith<$Res>
    implements $MissionRewardCopyWith<$Res> {
  factory _$$MissionRewardImplCopyWith(
    _$MissionRewardImpl value,
    $Res Function(_$MissionRewardImpl) then,
  ) = __$$MissionRewardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RewardType type, int amount, String? itemId});
}

/// @nodoc
class __$$MissionRewardImplCopyWithImpl<$Res>
    extends _$MissionRewardCopyWithImpl<$Res, _$MissionRewardImpl>
    implements _$$MissionRewardImplCopyWith<$Res> {
  __$$MissionRewardImplCopyWithImpl(
    _$MissionRewardImpl _value,
    $Res Function(_$MissionRewardImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MissionReward
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? amount = null,
    Object? itemId = freezed,
  }) {
    return _then(
      _$MissionRewardImpl(
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RewardType,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as int,
        itemId: freezed == itemId
            ? _value.itemId
            : itemId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MissionRewardImpl implements _MissionReward {
  const _$MissionRewardImpl({
    required this.type,
    required this.amount,
    required this.itemId,
  });

  factory _$MissionRewardImpl.fromJson(Map<String, dynamic> json) =>
      _$$MissionRewardImplFromJson(json);

  @override
  final RewardType type;
  @override
  final int amount;
  @override
  final String? itemId;

  @override
  String toString() {
    return 'MissionReward(type: $type, amount: $amount, itemId: $itemId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MissionRewardImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.itemId, itemId) || other.itemId == itemId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, amount, itemId);

  /// Create a copy of MissionReward
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MissionRewardImplCopyWith<_$MissionRewardImpl> get copyWith =>
      __$$MissionRewardImplCopyWithImpl<_$MissionRewardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MissionRewardImplToJson(this);
  }
}

abstract class _MissionReward implements MissionReward {
  const factory _MissionReward({
    required final RewardType type,
    required final int amount,
    required final String? itemId,
  }) = _$MissionRewardImpl;

  factory _MissionReward.fromJson(Map<String, dynamic> json) =
      _$MissionRewardImpl.fromJson;

  @override
  RewardType get type;
  @override
  int get amount;
  @override
  String? get itemId;

  /// Create a copy of MissionReward
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MissionRewardImplCopyWith<_$MissionRewardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserMissionProgress _$UserMissionProgressFromJson(Map<String, dynamic> json) {
  return _UserMissionProgress.fromJson(json);
}

/// @nodoc
mixin _$UserMissionProgress {
  String get userId => throw _privateConstructorUsedError;
  String get missionId => throw _privateConstructorUsedError;
  int get currentValue => throw _privateConstructorUsedError; // 現在の達成度
  bool get completed => throw _privateConstructorUsedError; // 今日達成したか
  DateTime get lastResetDate =>
      throw _privateConstructorUsedError; // 最後にリセットされた日時
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;

  /// Serializes this UserMissionProgress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserMissionProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserMissionProgressCopyWith<UserMissionProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserMissionProgressCopyWith<$Res> {
  factory $UserMissionProgressCopyWith(
    UserMissionProgress value,
    $Res Function(UserMissionProgress) then,
  ) = _$UserMissionProgressCopyWithImpl<$Res, UserMissionProgress>;
  @useResult
  $Res call({
    String userId,
    String missionId,
    int currentValue,
    bool completed,
    DateTime lastResetDate,
    DateTime createdAt,
    DateTime? completedAt,
  });
}

/// @nodoc
class _$UserMissionProgressCopyWithImpl<$Res, $Val extends UserMissionProgress>
    implements $UserMissionProgressCopyWith<$Res> {
  _$UserMissionProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserMissionProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? missionId = null,
    Object? currentValue = null,
    Object? completed = null,
    Object? lastResetDate = null,
    Object? createdAt = null,
    Object? completedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            missionId: null == missionId
                ? _value.missionId
                : missionId // ignore: cast_nullable_to_non_nullable
                      as String,
            currentValue: null == currentValue
                ? _value.currentValue
                : currentValue // ignore: cast_nullable_to_non_nullable
                      as int,
            completed: null == completed
                ? _value.completed
                : completed // ignore: cast_nullable_to_non_nullable
                      as bool,
            lastResetDate: null == lastResetDate
                ? _value.lastResetDate
                : lastResetDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
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
abstract class _$$UserMissionProgressImplCopyWith<$Res>
    implements $UserMissionProgressCopyWith<$Res> {
  factory _$$UserMissionProgressImplCopyWith(
    _$UserMissionProgressImpl value,
    $Res Function(_$UserMissionProgressImpl) then,
  ) = __$$UserMissionProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    String missionId,
    int currentValue,
    bool completed,
    DateTime lastResetDate,
    DateTime createdAt,
    DateTime? completedAt,
  });
}

/// @nodoc
class __$$UserMissionProgressImplCopyWithImpl<$Res>
    extends _$UserMissionProgressCopyWithImpl<$Res, _$UserMissionProgressImpl>
    implements _$$UserMissionProgressImplCopyWith<$Res> {
  __$$UserMissionProgressImplCopyWithImpl(
    _$UserMissionProgressImpl _value,
    $Res Function(_$UserMissionProgressImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserMissionProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? missionId = null,
    Object? currentValue = null,
    Object? completed = null,
    Object? lastResetDate = null,
    Object? createdAt = null,
    Object? completedAt = freezed,
  }) {
    return _then(
      _$UserMissionProgressImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        missionId: null == missionId
            ? _value.missionId
            : missionId // ignore: cast_nullable_to_non_nullable
                  as String,
        currentValue: null == currentValue
            ? _value.currentValue
            : currentValue // ignore: cast_nullable_to_non_nullable
                  as int,
        completed: null == completed
            ? _value.completed
            : completed // ignore: cast_nullable_to_non_nullable
                  as bool,
        lastResetDate: null == lastResetDate
            ? _value.lastResetDate
            : lastResetDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
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
class _$UserMissionProgressImpl implements _UserMissionProgress {
  const _$UserMissionProgressImpl({
    required this.userId,
    required this.missionId,
    required this.currentValue,
    required this.completed,
    required this.lastResetDate,
    required this.createdAt,
    required this.completedAt,
  });

  factory _$UserMissionProgressImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserMissionProgressImplFromJson(json);

  @override
  final String userId;
  @override
  final String missionId;
  @override
  final int currentValue;
  // 現在の達成度
  @override
  final bool completed;
  // 今日達成したか
  @override
  final DateTime lastResetDate;
  // 最後にリセットされた日時
  @override
  final DateTime createdAt;
  @override
  final DateTime? completedAt;

  @override
  String toString() {
    return 'UserMissionProgress(userId: $userId, missionId: $missionId, currentValue: $currentValue, completed: $completed, lastResetDate: $lastResetDate, createdAt: $createdAt, completedAt: $completedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserMissionProgressImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.missionId, missionId) ||
                other.missionId == missionId) &&
            (identical(other.currentValue, currentValue) ||
                other.currentValue == currentValue) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.lastResetDate, lastResetDate) ||
                other.lastResetDate == lastResetDate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    missionId,
    currentValue,
    completed,
    lastResetDate,
    createdAt,
    completedAt,
  );

  /// Create a copy of UserMissionProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserMissionProgressImplCopyWith<_$UserMissionProgressImpl> get copyWith =>
      __$$UserMissionProgressImplCopyWithImpl<_$UserMissionProgressImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserMissionProgressImplToJson(this);
  }
}

abstract class _UserMissionProgress implements UserMissionProgress {
  const factory _UserMissionProgress({
    required final String userId,
    required final String missionId,
    required final int currentValue,
    required final bool completed,
    required final DateTime lastResetDate,
    required final DateTime createdAt,
    required final DateTime? completedAt,
  }) = _$UserMissionProgressImpl;

  factory _UserMissionProgress.fromJson(Map<String, dynamic> json) =
      _$UserMissionProgressImpl.fromJson;

  @override
  String get userId;
  @override
  String get missionId;
  @override
  int get currentValue; // 現在の達成度
  @override
  bool get completed; // 今日達成したか
  @override
  DateTime get lastResetDate; // 最後にリセットされた日時
  @override
  DateTime get createdAt;
  @override
  DateTime? get completedAt;

  /// Create a copy of UserMissionProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserMissionProgressImplCopyWith<_$UserMissionProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MissionListItem _$MissionListItemFromJson(Map<String, dynamic> json) {
  return _MissionListItem.fromJson(json);
}

/// @nodoc
mixin _$MissionListItem {
  Mission get mission => throw _privateConstructorUsedError;
  UserMissionProgress? get progress =>
      throw _privateConstructorUsedError; // null = 開始されていない
  bool get isLocked => throw _privateConstructorUsedError; // 前提ミッション未達成
  double get progressPercentage => throw _privateConstructorUsedError;

  /// Serializes this MissionListItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MissionListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MissionListItemCopyWith<MissionListItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MissionListItemCopyWith<$Res> {
  factory $MissionListItemCopyWith(
    MissionListItem value,
    $Res Function(MissionListItem) then,
  ) = _$MissionListItemCopyWithImpl<$Res, MissionListItem>;
  @useResult
  $Res call({
    Mission mission,
    UserMissionProgress? progress,
    bool isLocked,
    double progressPercentage,
  });

  $MissionCopyWith<$Res> get mission;
  $UserMissionProgressCopyWith<$Res>? get progress;
}

/// @nodoc
class _$MissionListItemCopyWithImpl<$Res, $Val extends MissionListItem>
    implements $MissionListItemCopyWith<$Res> {
  _$MissionListItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MissionListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mission = null,
    Object? progress = freezed,
    Object? isLocked = null,
    Object? progressPercentage = null,
  }) {
    return _then(
      _value.copyWith(
            mission: null == mission
                ? _value.mission
                : mission // ignore: cast_nullable_to_non_nullable
                      as Mission,
            progress: freezed == progress
                ? _value.progress
                : progress // ignore: cast_nullable_to_non_nullable
                      as UserMissionProgress?,
            isLocked: null == isLocked
                ? _value.isLocked
                : isLocked // ignore: cast_nullable_to_non_nullable
                      as bool,
            progressPercentage: null == progressPercentage
                ? _value.progressPercentage
                : progressPercentage // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }

  /// Create a copy of MissionListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MissionCopyWith<$Res> get mission {
    return $MissionCopyWith<$Res>(_value.mission, (value) {
      return _then(_value.copyWith(mission: value) as $Val);
    });
  }

  /// Create a copy of MissionListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserMissionProgressCopyWith<$Res>? get progress {
    if (_value.progress == null) {
      return null;
    }

    return $UserMissionProgressCopyWith<$Res>(_value.progress!, (value) {
      return _then(_value.copyWith(progress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MissionListItemImplCopyWith<$Res>
    implements $MissionListItemCopyWith<$Res> {
  factory _$$MissionListItemImplCopyWith(
    _$MissionListItemImpl value,
    $Res Function(_$MissionListItemImpl) then,
  ) = __$$MissionListItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Mission mission,
    UserMissionProgress? progress,
    bool isLocked,
    double progressPercentage,
  });

  @override
  $MissionCopyWith<$Res> get mission;
  @override
  $UserMissionProgressCopyWith<$Res>? get progress;
}

/// @nodoc
class __$$MissionListItemImplCopyWithImpl<$Res>
    extends _$MissionListItemCopyWithImpl<$Res, _$MissionListItemImpl>
    implements _$$MissionListItemImplCopyWith<$Res> {
  __$$MissionListItemImplCopyWithImpl(
    _$MissionListItemImpl _value,
    $Res Function(_$MissionListItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MissionListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mission = null,
    Object? progress = freezed,
    Object? isLocked = null,
    Object? progressPercentage = null,
  }) {
    return _then(
      _$MissionListItemImpl(
        mission: null == mission
            ? _value.mission
            : mission // ignore: cast_nullable_to_non_nullable
                  as Mission,
        progress: freezed == progress
            ? _value.progress
            : progress // ignore: cast_nullable_to_non_nullable
                  as UserMissionProgress?,
        isLocked: null == isLocked
            ? _value.isLocked
            : isLocked // ignore: cast_nullable_to_non_nullable
                  as bool,
        progressPercentage: null == progressPercentage
            ? _value.progressPercentage
            : progressPercentage // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MissionListItemImpl implements _MissionListItem {
  const _$MissionListItemImpl({
    required this.mission,
    required this.progress,
    required this.isLocked,
    required this.progressPercentage,
  });

  factory _$MissionListItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$MissionListItemImplFromJson(json);

  @override
  final Mission mission;
  @override
  final UserMissionProgress? progress;
  // null = 開始されていない
  @override
  final bool isLocked;
  // 前提ミッション未達成
  @override
  final double progressPercentage;

  @override
  String toString() {
    return 'MissionListItem(mission: $mission, progress: $progress, isLocked: $isLocked, progressPercentage: $progressPercentage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MissionListItemImpl &&
            (identical(other.mission, mission) || other.mission == mission) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.isLocked, isLocked) ||
                other.isLocked == isLocked) &&
            (identical(other.progressPercentage, progressPercentage) ||
                other.progressPercentage == progressPercentage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, mission, progress, isLocked, progressPercentage);

  /// Create a copy of MissionListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MissionListItemImplCopyWith<_$MissionListItemImpl> get copyWith =>
      __$$MissionListItemImplCopyWithImpl<_$MissionListItemImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MissionListItemImplToJson(this);
  }
}

abstract class _MissionListItem implements MissionListItem {
  const factory _MissionListItem({
    required final Mission mission,
    required final UserMissionProgress? progress,
    required final bool isLocked,
    required final double progressPercentage,
  }) = _$MissionListItemImpl;

  factory _MissionListItem.fromJson(Map<String, dynamic> json) =
      _$MissionListItemImpl.fromJson;

  @override
  Mission get mission;
  @override
  UserMissionProgress? get progress; // null = 開始されていない
  @override
  bool get isLocked; // 前提ミッション未達成
  @override
  double get progressPercentage;

  /// Create a copy of MissionListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MissionListItemImplCopyWith<_$MissionListItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
