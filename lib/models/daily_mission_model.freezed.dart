// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_mission_model.dart';

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
  String get missionId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get targetValue => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  String get subject =>
      throw _privateConstructorUsedError; // 'sansu', 'kokugo', 'eigo', 'rika', 'shakai', 'programming', 'doutoku'
  MissionReward get reward => throw _privateConstructorUsedError;
  DateTime get resetTime =>
      throw _privateConstructorUsedError; // Unix timestamp for daily reset (5:00 AM default)
  bool get enabled => throw _privateConstructorUsedError;
  List<String> get appIds => throw _privateConstructorUsedError;

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
    String missionId,
    String title,
    String description,
    int targetValue,
    String unit,
    String subject,
    MissionReward reward,
    DateTime resetTime,
    bool enabled,
    List<String> appIds,
  });

  $MissionRewardCopyWith<$Res> get reward;
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
    Object? missionId = null,
    Object? title = null,
    Object? description = null,
    Object? targetValue = null,
    Object? unit = null,
    Object? subject = null,
    Object? reward = null,
    Object? resetTime = null,
    Object? enabled = null,
    Object? appIds = null,
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
            targetValue: null == targetValue
                ? _value.targetValue
                : targetValue // ignore: cast_nullable_to_non_nullable
                      as int,
            unit: null == unit
                ? _value.unit
                : unit // ignore: cast_nullable_to_non_nullable
                      as String,
            subject: null == subject
                ? _value.subject
                : subject // ignore: cast_nullable_to_non_nullable
                      as String,
            reward: null == reward
                ? _value.reward
                : reward // ignore: cast_nullable_to_non_nullable
                      as MissionReward,
            resetTime: null == resetTime
                ? _value.resetTime
                : resetTime // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            enabled: null == enabled
                ? _value.enabled
                : enabled // ignore: cast_nullable_to_non_nullable
                      as bool,
            appIds: null == appIds
                ? _value.appIds
                : appIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }

  /// Create a copy of DailyMission
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MissionRewardCopyWith<$Res> get reward {
    return $MissionRewardCopyWith<$Res>(_value.reward, (value) {
      return _then(_value.copyWith(reward: value) as $Val);
    });
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
    String missionId,
    String title,
    String description,
    int targetValue,
    String unit,
    String subject,
    MissionReward reward,
    DateTime resetTime,
    bool enabled,
    List<String> appIds,
  });

  @override
  $MissionRewardCopyWith<$Res> get reward;
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
    Object? missionId = null,
    Object? title = null,
    Object? description = null,
    Object? targetValue = null,
    Object? unit = null,
    Object? subject = null,
    Object? reward = null,
    Object? resetTime = null,
    Object? enabled = null,
    Object? appIds = null,
  }) {
    return _then(
      _$DailyMissionImpl(
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
        targetValue: null == targetValue
            ? _value.targetValue
            : targetValue // ignore: cast_nullable_to_non_nullable
                  as int,
        unit: null == unit
            ? _value.unit
            : unit // ignore: cast_nullable_to_non_nullable
                  as String,
        subject: null == subject
            ? _value.subject
            : subject // ignore: cast_nullable_to_non_nullable
                  as String,
        reward: null == reward
            ? _value.reward
            : reward // ignore: cast_nullable_to_non_nullable
                  as MissionReward,
        resetTime: null == resetTime
            ? _value.resetTime
            : resetTime // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        enabled: null == enabled
            ? _value.enabled
            : enabled // ignore: cast_nullable_to_non_nullable
                  as bool,
        appIds: null == appIds
            ? _value._appIds
            : appIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyMissionImpl implements _DailyMission {
  const _$DailyMissionImpl({
    required this.missionId,
    required this.title,
    required this.description,
    required this.targetValue,
    required this.unit,
    required this.subject,
    required this.reward,
    required this.resetTime,
    this.enabled = true,
    final List<String> appIds = const [],
  }) : _appIds = appIds;

  factory _$DailyMissionImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyMissionImplFromJson(json);

  @override
  final String missionId;
  @override
  final String title;
  @override
  final String description;
  @override
  final int targetValue;
  @override
  final String unit;
  @override
  final String subject;
  // 'sansu', 'kokugo', 'eigo', 'rika', 'shakai', 'programming', 'doutoku'
  @override
  final MissionReward reward;
  @override
  final DateTime resetTime;
  // Unix timestamp for daily reset (5:00 AM default)
  @override
  @JsonKey()
  final bool enabled;
  final List<String> _appIds;
  @override
  @JsonKey()
  List<String> get appIds {
    if (_appIds is EqualUnmodifiableListView) return _appIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appIds);
  }

  @override
  String toString() {
    return 'DailyMission(missionId: $missionId, title: $title, description: $description, targetValue: $targetValue, unit: $unit, subject: $subject, reward: $reward, resetTime: $resetTime, enabled: $enabled, appIds: $appIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyMissionImpl &&
            (identical(other.missionId, missionId) ||
                other.missionId == missionId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.targetValue, targetValue) ||
                other.targetValue == targetValue) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.reward, reward) || other.reward == reward) &&
            (identical(other.resetTime, resetTime) ||
                other.resetTime == resetTime) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            const DeepCollectionEquality().equals(other._appIds, _appIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    missionId,
    title,
    description,
    targetValue,
    unit,
    subject,
    reward,
    resetTime,
    enabled,
    const DeepCollectionEquality().hash(_appIds),
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
    required final String missionId,
    required final String title,
    required final String description,
    required final int targetValue,
    required final String unit,
    required final String subject,
    required final MissionReward reward,
    required final DateTime resetTime,
    final bool enabled,
    final List<String> appIds,
  }) = _$DailyMissionImpl;

  factory _DailyMission.fromJson(Map<String, dynamic> json) =
      _$DailyMissionImpl.fromJson;

  @override
  String get missionId;
  @override
  String get title;
  @override
  String get description;
  @override
  int get targetValue;
  @override
  String get unit;
  @override
  String get subject; // 'sansu', 'kokugo', 'eigo', 'rika', 'shakai', 'programming', 'doutoku'
  @override
  MissionReward get reward;
  @override
  DateTime get resetTime; // Unix timestamp for daily reset (5:00 AM default)
  @override
  bool get enabled;
  @override
  List<String> get appIds;

  /// Create a copy of DailyMission
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyMissionImplCopyWith<_$DailyMissionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MissionReward _$MissionRewardFromJson(Map<String, dynamic> json) {
  return _MissionReward.fromJson(json);
}

/// @nodoc
mixin _$MissionReward {
  RewardType get type =>
      throw _privateConstructorUsedError; // 'coins', 'badges', 'characterExp', 'items'
  int get amount => throw _privateConstructorUsedError;
  String? get itemId =>
      throw _privateConstructorUsedError; // For badges or items
  String? get badgeId => throw _privateConstructorUsedError;

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
  $Res call({RewardType type, int amount, String? itemId, String? badgeId});
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
    Object? badgeId = freezed,
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
            badgeId: freezed == badgeId
                ? _value.badgeId
                : badgeId // ignore: cast_nullable_to_non_nullable
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
  $Res call({RewardType type, int amount, String? itemId, String? badgeId});
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
    Object? badgeId = freezed,
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
        badgeId: freezed == badgeId
            ? _value.badgeId
            : badgeId // ignore: cast_nullable_to_non_nullable
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
    this.itemId,
    this.badgeId,
  });

  factory _$MissionRewardImpl.fromJson(Map<String, dynamic> json) =>
      _$$MissionRewardImplFromJson(json);

  @override
  final RewardType type;
  // 'coins', 'badges', 'characterExp', 'items'
  @override
  final int amount;
  @override
  final String? itemId;
  // For badges or items
  @override
  final String? badgeId;

  @override
  String toString() {
    return 'MissionReward(type: $type, amount: $amount, itemId: $itemId, badgeId: $badgeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MissionRewardImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.badgeId, badgeId) || other.badgeId == badgeId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, amount, itemId, badgeId);

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
    final String? itemId,
    final String? badgeId,
  }) = _$MissionRewardImpl;

  factory _MissionReward.fromJson(Map<String, dynamic> json) =
      _$MissionRewardImpl.fromJson;

  @override
  RewardType get type; // 'coins', 'badges', 'characterExp', 'items'
  @override
  int get amount;
  @override
  String? get itemId; // For badges or items
  @override
  String? get badgeId;

  /// Create a copy of MissionReward
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MissionRewardImplCopyWith<_$MissionRewardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DailyMissionProgress _$DailyMissionProgressFromJson(Map<String, dynamic> json) {
  return _DailyMissionProgress.fromJson(json);
}

/// @nodoc
mixin _$DailyMissionProgress {
  String get userId => throw _privateConstructorUsedError;
  String get missionId => throw _privateConstructorUsedError;
  int get currentValue => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;
  DateTime get lastResetDate => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;

  /// Serializes this DailyMissionProgress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyMissionProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyMissionProgressCopyWith<DailyMissionProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyMissionProgressCopyWith<$Res> {
  factory $DailyMissionProgressCopyWith(
    DailyMissionProgress value,
    $Res Function(DailyMissionProgress) then,
  ) = _$DailyMissionProgressCopyWithImpl<$Res, DailyMissionProgress>;
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
class _$DailyMissionProgressCopyWithImpl<
  $Res,
  $Val extends DailyMissionProgress
>
    implements $DailyMissionProgressCopyWith<$Res> {
  _$DailyMissionProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyMissionProgress
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
abstract class _$$DailyMissionProgressImplCopyWith<$Res>
    implements $DailyMissionProgressCopyWith<$Res> {
  factory _$$DailyMissionProgressImplCopyWith(
    _$DailyMissionProgressImpl value,
    $Res Function(_$DailyMissionProgressImpl) then,
  ) = __$$DailyMissionProgressImplCopyWithImpl<$Res>;
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
class __$$DailyMissionProgressImplCopyWithImpl<$Res>
    extends _$DailyMissionProgressCopyWithImpl<$Res, _$DailyMissionProgressImpl>
    implements _$$DailyMissionProgressImplCopyWith<$Res> {
  __$$DailyMissionProgressImplCopyWithImpl(
    _$DailyMissionProgressImpl _value,
    $Res Function(_$DailyMissionProgressImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DailyMissionProgress
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
      _$DailyMissionProgressImpl(
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
class _$DailyMissionProgressImpl implements _DailyMissionProgress {
  const _$DailyMissionProgressImpl({
    required this.userId,
    required this.missionId,
    required this.currentValue,
    this.completed = false,
    required this.lastResetDate,
    required this.createdAt,
    this.completedAt,
  });

  factory _$DailyMissionProgressImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyMissionProgressImplFromJson(json);

  @override
  final String userId;
  @override
  final String missionId;
  @override
  final int currentValue;
  @override
  @JsonKey()
  final bool completed;
  @override
  final DateTime lastResetDate;
  @override
  final DateTime createdAt;
  @override
  final DateTime? completedAt;

  @override
  String toString() {
    return 'DailyMissionProgress(userId: $userId, missionId: $missionId, currentValue: $currentValue, completed: $completed, lastResetDate: $lastResetDate, createdAt: $createdAt, completedAt: $completedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyMissionProgressImpl &&
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

  /// Create a copy of DailyMissionProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyMissionProgressImplCopyWith<_$DailyMissionProgressImpl>
  get copyWith =>
      __$$DailyMissionProgressImplCopyWithImpl<_$DailyMissionProgressImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyMissionProgressImplToJson(this);
  }
}

abstract class _DailyMissionProgress implements DailyMissionProgress {
  const factory _DailyMissionProgress({
    required final String userId,
    required final String missionId,
    required final int currentValue,
    final bool completed,
    required final DateTime lastResetDate,
    required final DateTime createdAt,
    final DateTime? completedAt,
  }) = _$DailyMissionProgressImpl;

  factory _DailyMissionProgress.fromJson(Map<String, dynamic> json) =
      _$DailyMissionProgressImpl.fromJson;

  @override
  String get userId;
  @override
  String get missionId;
  @override
  int get currentValue;
  @override
  bool get completed;
  @override
  DateTime get lastResetDate;
  @override
  DateTime get createdAt;
  @override
  DateTime? get completedAt;

  /// Create a copy of DailyMissionProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyMissionProgressImplCopyWith<_$DailyMissionProgressImpl>
  get copyWith => throw _privateConstructorUsedError;
}

DailyMissionListItem _$DailyMissionListItemFromJson(Map<String, dynamic> json) {
  return _DailyMissionListItem.fromJson(json);
}

/// @nodoc
mixin _$DailyMissionListItem {
  DailyMission get mission => throw _privateConstructorUsedError;
  DailyMissionProgress get progress => throw _privateConstructorUsedError;
  bool get isLocked => throw _privateConstructorUsedError;
  int get progressPercentage => throw _privateConstructorUsedError;

  /// Serializes this DailyMissionListItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyMissionListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyMissionListItemCopyWith<DailyMissionListItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyMissionListItemCopyWith<$Res> {
  factory $DailyMissionListItemCopyWith(
    DailyMissionListItem value,
    $Res Function(DailyMissionListItem) then,
  ) = _$DailyMissionListItemCopyWithImpl<$Res, DailyMissionListItem>;
  @useResult
  $Res call({
    DailyMission mission,
    DailyMissionProgress progress,
    bool isLocked,
    int progressPercentage,
  });

  $DailyMissionCopyWith<$Res> get mission;
  $DailyMissionProgressCopyWith<$Res> get progress;
}

/// @nodoc
class _$DailyMissionListItemCopyWithImpl<
  $Res,
  $Val extends DailyMissionListItem
>
    implements $DailyMissionListItemCopyWith<$Res> {
  _$DailyMissionListItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyMissionListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mission = null,
    Object? progress = null,
    Object? isLocked = null,
    Object? progressPercentage = null,
  }) {
    return _then(
      _value.copyWith(
            mission: null == mission
                ? _value.mission
                : mission // ignore: cast_nullable_to_non_nullable
                      as DailyMission,
            progress: null == progress
                ? _value.progress
                : progress // ignore: cast_nullable_to_non_nullable
                      as DailyMissionProgress,
            isLocked: null == isLocked
                ? _value.isLocked
                : isLocked // ignore: cast_nullable_to_non_nullable
                      as bool,
            progressPercentage: null == progressPercentage
                ? _value.progressPercentage
                : progressPercentage // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }

  /// Create a copy of DailyMissionListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DailyMissionCopyWith<$Res> get mission {
    return $DailyMissionCopyWith<$Res>(_value.mission, (value) {
      return _then(_value.copyWith(mission: value) as $Val);
    });
  }

  /// Create a copy of DailyMissionListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DailyMissionProgressCopyWith<$Res> get progress {
    return $DailyMissionProgressCopyWith<$Res>(_value.progress, (value) {
      return _then(_value.copyWith(progress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DailyMissionListItemImplCopyWith<$Res>
    implements $DailyMissionListItemCopyWith<$Res> {
  factory _$$DailyMissionListItemImplCopyWith(
    _$DailyMissionListItemImpl value,
    $Res Function(_$DailyMissionListItemImpl) then,
  ) = __$$DailyMissionListItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DailyMission mission,
    DailyMissionProgress progress,
    bool isLocked,
    int progressPercentage,
  });

  @override
  $DailyMissionCopyWith<$Res> get mission;
  @override
  $DailyMissionProgressCopyWith<$Res> get progress;
}

/// @nodoc
class __$$DailyMissionListItemImplCopyWithImpl<$Res>
    extends _$DailyMissionListItemCopyWithImpl<$Res, _$DailyMissionListItemImpl>
    implements _$$DailyMissionListItemImplCopyWith<$Res> {
  __$$DailyMissionListItemImplCopyWithImpl(
    _$DailyMissionListItemImpl _value,
    $Res Function(_$DailyMissionListItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DailyMissionListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mission = null,
    Object? progress = null,
    Object? isLocked = null,
    Object? progressPercentage = null,
  }) {
    return _then(
      _$DailyMissionListItemImpl(
        mission: null == mission
            ? _value.mission
            : mission // ignore: cast_nullable_to_non_nullable
                  as DailyMission,
        progress: null == progress
            ? _value.progress
            : progress // ignore: cast_nullable_to_non_nullable
                  as DailyMissionProgress,
        isLocked: null == isLocked
            ? _value.isLocked
            : isLocked // ignore: cast_nullable_to_non_nullable
                  as bool,
        progressPercentage: null == progressPercentage
            ? _value.progressPercentage
            : progressPercentage // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyMissionListItemImpl implements _DailyMissionListItem {
  const _$DailyMissionListItemImpl({
    required this.mission,
    required this.progress,
    required this.isLocked,
    required this.progressPercentage,
  });

  factory _$DailyMissionListItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyMissionListItemImplFromJson(json);

  @override
  final DailyMission mission;
  @override
  final DailyMissionProgress progress;
  @override
  final bool isLocked;
  @override
  final int progressPercentage;

  @override
  String toString() {
    return 'DailyMissionListItem(mission: $mission, progress: $progress, isLocked: $isLocked, progressPercentage: $progressPercentage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyMissionListItemImpl &&
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

  /// Create a copy of DailyMissionListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyMissionListItemImplCopyWith<_$DailyMissionListItemImpl>
  get copyWith =>
      __$$DailyMissionListItemImplCopyWithImpl<_$DailyMissionListItemImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyMissionListItemImplToJson(this);
  }
}

abstract class _DailyMissionListItem implements DailyMissionListItem {
  const factory _DailyMissionListItem({
    required final DailyMission mission,
    required final DailyMissionProgress progress,
    required final bool isLocked,
    required final int progressPercentage,
  }) = _$DailyMissionListItemImpl;

  factory _DailyMissionListItem.fromJson(Map<String, dynamic> json) =
      _$DailyMissionListItemImpl.fromJson;

  @override
  DailyMission get mission;
  @override
  DailyMissionProgress get progress;
  @override
  bool get isLocked;
  @override
  int get progressPercentage;

  /// Create a copy of DailyMissionListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyMissionListItemImplCopyWith<_$DailyMissionListItemImpl>
  get copyWith => throw _privateConstructorUsedError;
}

WeeklyBonus _$WeeklyBonusFromJson(Map<String, dynamic> json) {
  return _WeeklyBonus.fromJson(json);
}

/// @nodoc
mixin _$WeeklyBonus {
  String get userId => throw _privateConstructorUsedError;
  int get consecutiveDays => throw _privateConstructorUsedError; // 0-7
  DateTime get lastCompletionDate => throw _privateConstructorUsedError;
  DateTime get resetDate =>
      throw _privateConstructorUsedError; // Reset every Sunday
  List<int> get completionDaysOfWeek =>
      throw _privateConstructorUsedError; // [0=Mon, 1=Tue, ... 6=Sun]
  bool get bonusClaimedThisWeek =>
      throw _privateConstructorUsedError; // Whether 7-day bonus already claimed
  int get totalWeeklyBonus => throw _privateConstructorUsedError;

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
    String userId,
    int consecutiveDays,
    DateTime lastCompletionDate,
    DateTime resetDate,
    List<int> completionDaysOfWeek,
    bool bonusClaimedThisWeek,
    int totalWeeklyBonus,
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
    Object? userId = null,
    Object? consecutiveDays = null,
    Object? lastCompletionDate = null,
    Object? resetDate = null,
    Object? completionDaysOfWeek = null,
    Object? bonusClaimedThisWeek = null,
    Object? totalWeeklyBonus = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            consecutiveDays: null == consecutiveDays
                ? _value.consecutiveDays
                : consecutiveDays // ignore: cast_nullable_to_non_nullable
                      as int,
            lastCompletionDate: null == lastCompletionDate
                ? _value.lastCompletionDate
                : lastCompletionDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            resetDate: null == resetDate
                ? _value.resetDate
                : resetDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            completionDaysOfWeek: null == completionDaysOfWeek
                ? _value.completionDaysOfWeek
                : completionDaysOfWeek // ignore: cast_nullable_to_non_nullable
                      as List<int>,
            bonusClaimedThisWeek: null == bonusClaimedThisWeek
                ? _value.bonusClaimedThisWeek
                : bonusClaimedThisWeek // ignore: cast_nullable_to_non_nullable
                      as bool,
            totalWeeklyBonus: null == totalWeeklyBonus
                ? _value.totalWeeklyBonus
                : totalWeeklyBonus // ignore: cast_nullable_to_non_nullable
                      as int,
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
    String userId,
    int consecutiveDays,
    DateTime lastCompletionDate,
    DateTime resetDate,
    List<int> completionDaysOfWeek,
    bool bonusClaimedThisWeek,
    int totalWeeklyBonus,
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
    Object? userId = null,
    Object? consecutiveDays = null,
    Object? lastCompletionDate = null,
    Object? resetDate = null,
    Object? completionDaysOfWeek = null,
    Object? bonusClaimedThisWeek = null,
    Object? totalWeeklyBonus = null,
  }) {
    return _then(
      _$WeeklyBonusImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        consecutiveDays: null == consecutiveDays
            ? _value.consecutiveDays
            : consecutiveDays // ignore: cast_nullable_to_non_nullable
                  as int,
        lastCompletionDate: null == lastCompletionDate
            ? _value.lastCompletionDate
            : lastCompletionDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        resetDate: null == resetDate
            ? _value.resetDate
            : resetDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        completionDaysOfWeek: null == completionDaysOfWeek
            ? _value._completionDaysOfWeek
            : completionDaysOfWeek // ignore: cast_nullable_to_non_nullable
                  as List<int>,
        bonusClaimedThisWeek: null == bonusClaimedThisWeek
            ? _value.bonusClaimedThisWeek
            : bonusClaimedThisWeek // ignore: cast_nullable_to_non_nullable
                  as bool,
        totalWeeklyBonus: null == totalWeeklyBonus
            ? _value.totalWeeklyBonus
            : totalWeeklyBonus // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WeeklyBonusImpl implements _WeeklyBonus {
  const _$WeeklyBonusImpl({
    required this.userId,
    required this.consecutiveDays,
    required this.lastCompletionDate,
    required this.resetDate,
    required final List<int> completionDaysOfWeek,
    this.bonusClaimedThisWeek = false,
    this.totalWeeklyBonus = 0,
  }) : _completionDaysOfWeek = completionDaysOfWeek;

  factory _$WeeklyBonusImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeeklyBonusImplFromJson(json);

  @override
  final String userId;
  @override
  final int consecutiveDays;
  // 0-7
  @override
  final DateTime lastCompletionDate;
  @override
  final DateTime resetDate;
  // Reset every Sunday
  final List<int> _completionDaysOfWeek;
  // Reset every Sunday
  @override
  List<int> get completionDaysOfWeek {
    if (_completionDaysOfWeek is EqualUnmodifiableListView)
      return _completionDaysOfWeek;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_completionDaysOfWeek);
  }

  // [0=Mon, 1=Tue, ... 6=Sun]
  @override
  @JsonKey()
  final bool bonusClaimedThisWeek;
  // Whether 7-day bonus already claimed
  @override
  @JsonKey()
  final int totalWeeklyBonus;

  @override
  String toString() {
    return 'WeeklyBonus(userId: $userId, consecutiveDays: $consecutiveDays, lastCompletionDate: $lastCompletionDate, resetDate: $resetDate, completionDaysOfWeek: $completionDaysOfWeek, bonusClaimedThisWeek: $bonusClaimedThisWeek, totalWeeklyBonus: $totalWeeklyBonus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeeklyBonusImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.consecutiveDays, consecutiveDays) ||
                other.consecutiveDays == consecutiveDays) &&
            (identical(other.lastCompletionDate, lastCompletionDate) ||
                other.lastCompletionDate == lastCompletionDate) &&
            (identical(other.resetDate, resetDate) ||
                other.resetDate == resetDate) &&
            const DeepCollectionEquality().equals(
              other._completionDaysOfWeek,
              _completionDaysOfWeek,
            ) &&
            (identical(other.bonusClaimedThisWeek, bonusClaimedThisWeek) ||
                other.bonusClaimedThisWeek == bonusClaimedThisWeek) &&
            (identical(other.totalWeeklyBonus, totalWeeklyBonus) ||
                other.totalWeeklyBonus == totalWeeklyBonus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    consecutiveDays,
    lastCompletionDate,
    resetDate,
    const DeepCollectionEquality().hash(_completionDaysOfWeek),
    bonusClaimedThisWeek,
    totalWeeklyBonus,
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
    required final String userId,
    required final int consecutiveDays,
    required final DateTime lastCompletionDate,
    required final DateTime resetDate,
    required final List<int> completionDaysOfWeek,
    final bool bonusClaimedThisWeek,
    final int totalWeeklyBonus,
  }) = _$WeeklyBonusImpl;

  factory _WeeklyBonus.fromJson(Map<String, dynamic> json) =
      _$WeeklyBonusImpl.fromJson;

  @override
  String get userId;
  @override
  int get consecutiveDays; // 0-7
  @override
  DateTime get lastCompletionDate;
  @override
  DateTime get resetDate; // Reset every Sunday
  @override
  List<int> get completionDaysOfWeek; // [0=Mon, 1=Tue, ... 6=Sun]
  @override
  bool get bonusClaimedThisWeek; // Whether 7-day bonus already claimed
  @override
  int get totalWeeklyBonus;

  /// Create a copy of WeeklyBonus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeeklyBonusImplCopyWith<_$WeeklyBonusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
