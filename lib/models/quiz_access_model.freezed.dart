// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_access_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$QuizAccessControl {
  /// ユーザー登録日
  DateTime get registeredAt => throw _privateConstructorUsedError;

  /// サブスク購読状態
  bool get isSubscribed => throw _privateConstructorUsedError;

  /// 無料期間（日数）
  int get freeTrialDays => throw _privateConstructorUsedError;

  /// Create a copy of QuizAccessControl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizAccessControlCopyWith<QuizAccessControl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizAccessControlCopyWith<$Res> {
  factory $QuizAccessControlCopyWith(
    QuizAccessControl value,
    $Res Function(QuizAccessControl) then,
  ) = _$QuizAccessControlCopyWithImpl<$Res, QuizAccessControl>;
  @useResult
  $Res call({DateTime registeredAt, bool isSubscribed, int freeTrialDays});
}

/// @nodoc
class _$QuizAccessControlCopyWithImpl<$Res, $Val extends QuizAccessControl>
    implements $QuizAccessControlCopyWith<$Res> {
  _$QuizAccessControlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizAccessControl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registeredAt = null,
    Object? isSubscribed = null,
    Object? freeTrialDays = null,
  }) {
    return _then(
      _value.copyWith(
            registeredAt: null == registeredAt
                ? _value.registeredAt
                : registeredAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            isSubscribed: null == isSubscribed
                ? _value.isSubscribed
                : isSubscribed // ignore: cast_nullable_to_non_nullable
                      as bool,
            freeTrialDays: null == freeTrialDays
                ? _value.freeTrialDays
                : freeTrialDays // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$QuizAccessControlImplCopyWith<$Res>
    implements $QuizAccessControlCopyWith<$Res> {
  factory _$$QuizAccessControlImplCopyWith(
    _$QuizAccessControlImpl value,
    $Res Function(_$QuizAccessControlImpl) then,
  ) = __$$QuizAccessControlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime registeredAt, bool isSubscribed, int freeTrialDays});
}

/// @nodoc
class __$$QuizAccessControlImplCopyWithImpl<$Res>
    extends _$QuizAccessControlCopyWithImpl<$Res, _$QuizAccessControlImpl>
    implements _$$QuizAccessControlImplCopyWith<$Res> {
  __$$QuizAccessControlImplCopyWithImpl(
    _$QuizAccessControlImpl _value,
    $Res Function(_$QuizAccessControlImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuizAccessControl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registeredAt = null,
    Object? isSubscribed = null,
    Object? freeTrialDays = null,
  }) {
    return _then(
      _$QuizAccessControlImpl(
        registeredAt: null == registeredAt
            ? _value.registeredAt
            : registeredAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        isSubscribed: null == isSubscribed
            ? _value.isSubscribed
            : isSubscribed // ignore: cast_nullable_to_non_nullable
                  as bool,
        freeTrialDays: null == freeTrialDays
            ? _value.freeTrialDays
            : freeTrialDays // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$QuizAccessControlImpl implements _QuizAccessControl {
  const _$QuizAccessControlImpl({
    required this.registeredAt,
    required this.isSubscribed,
    this.freeTrialDays = 14,
  });

  /// ユーザー登録日
  @override
  final DateTime registeredAt;

  /// サブスク購読状態
  @override
  final bool isSubscribed;

  /// 無料期間（日数）
  @override
  @JsonKey()
  final int freeTrialDays;

  @override
  String toString() {
    return 'QuizAccessControl(registeredAt: $registeredAt, isSubscribed: $isSubscribed, freeTrialDays: $freeTrialDays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizAccessControlImpl &&
            (identical(other.registeredAt, registeredAt) ||
                other.registeredAt == registeredAt) &&
            (identical(other.isSubscribed, isSubscribed) ||
                other.isSubscribed == isSubscribed) &&
            (identical(other.freeTrialDays, freeTrialDays) ||
                other.freeTrialDays == freeTrialDays));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, registeredAt, isSubscribed, freeTrialDays);

  /// Create a copy of QuizAccessControl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizAccessControlImplCopyWith<_$QuizAccessControlImpl> get copyWith =>
      __$$QuizAccessControlImplCopyWithImpl<_$QuizAccessControlImpl>(
        this,
        _$identity,
      );
}

abstract class _QuizAccessControl implements QuizAccessControl {
  const factory _QuizAccessControl({
    required final DateTime registeredAt,
    required final bool isSubscribed,
    final int freeTrialDays,
  }) = _$QuizAccessControlImpl;

  /// ユーザー登録日
  @override
  DateTime get registeredAt;

  /// サブスク購読状態
  @override
  bool get isSubscribed;

  /// 無料期間（日数）
  @override
  int get freeTrialDays;

  /// Create a copy of QuizAccessControl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizAccessControlImplCopyWith<_$QuizAccessControlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuizAccessState {
  /// 全問題へのアクセス可否
  bool get canAccessAllQuizzes => throw _privateConstructorUsedError;

  /// 無料期間の残り日数（-1 = 無制限またはサブスク購読者）
  int get remainingFreeDays => throw _privateConstructorUsedError;

  /// ペイウォール表示が必要か
  bool get shouldShowPaywall => throw _privateConstructorUsedError;

  /// ロック理由
  String? get lockReason => throw _privateConstructorUsedError;

  /// Create a copy of QuizAccessState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizAccessStateCopyWith<QuizAccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizAccessStateCopyWith<$Res> {
  factory $QuizAccessStateCopyWith(
    QuizAccessState value,
    $Res Function(QuizAccessState) then,
  ) = _$QuizAccessStateCopyWithImpl<$Res, QuizAccessState>;
  @useResult
  $Res call({
    bool canAccessAllQuizzes,
    int remainingFreeDays,
    bool shouldShowPaywall,
    String? lockReason,
  });
}

/// @nodoc
class _$QuizAccessStateCopyWithImpl<$Res, $Val extends QuizAccessState>
    implements $QuizAccessStateCopyWith<$Res> {
  _$QuizAccessStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizAccessState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canAccessAllQuizzes = null,
    Object? remainingFreeDays = null,
    Object? shouldShowPaywall = null,
    Object? lockReason = freezed,
  }) {
    return _then(
      _value.copyWith(
            canAccessAllQuizzes: null == canAccessAllQuizzes
                ? _value.canAccessAllQuizzes
                : canAccessAllQuizzes // ignore: cast_nullable_to_non_nullable
                      as bool,
            remainingFreeDays: null == remainingFreeDays
                ? _value.remainingFreeDays
                : remainingFreeDays // ignore: cast_nullable_to_non_nullable
                      as int,
            shouldShowPaywall: null == shouldShowPaywall
                ? _value.shouldShowPaywall
                : shouldShowPaywall // ignore: cast_nullable_to_non_nullable
                      as bool,
            lockReason: freezed == lockReason
                ? _value.lockReason
                : lockReason // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$QuizAccessStateImplCopyWith<$Res>
    implements $QuizAccessStateCopyWith<$Res> {
  factory _$$QuizAccessStateImplCopyWith(
    _$QuizAccessStateImpl value,
    $Res Function(_$QuizAccessStateImpl) then,
  ) = __$$QuizAccessStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool canAccessAllQuizzes,
    int remainingFreeDays,
    bool shouldShowPaywall,
    String? lockReason,
  });
}

/// @nodoc
class __$$QuizAccessStateImplCopyWithImpl<$Res>
    extends _$QuizAccessStateCopyWithImpl<$Res, _$QuizAccessStateImpl>
    implements _$$QuizAccessStateImplCopyWith<$Res> {
  __$$QuizAccessStateImplCopyWithImpl(
    _$QuizAccessStateImpl _value,
    $Res Function(_$QuizAccessStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuizAccessState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canAccessAllQuizzes = null,
    Object? remainingFreeDays = null,
    Object? shouldShowPaywall = null,
    Object? lockReason = freezed,
  }) {
    return _then(
      _$QuizAccessStateImpl(
        canAccessAllQuizzes: null == canAccessAllQuizzes
            ? _value.canAccessAllQuizzes
            : canAccessAllQuizzes // ignore: cast_nullable_to_non_nullable
                  as bool,
        remainingFreeDays: null == remainingFreeDays
            ? _value.remainingFreeDays
            : remainingFreeDays // ignore: cast_nullable_to_non_nullable
                  as int,
        shouldShowPaywall: null == shouldShowPaywall
            ? _value.shouldShowPaywall
            : shouldShowPaywall // ignore: cast_nullable_to_non_nullable
                  as bool,
        lockReason: freezed == lockReason
            ? _value.lockReason
            : lockReason // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$QuizAccessStateImpl implements _QuizAccessState {
  const _$QuizAccessStateImpl({
    required this.canAccessAllQuizzes,
    required this.remainingFreeDays,
    required this.shouldShowPaywall,
    this.lockReason,
  });

  /// 全問題へのアクセス可否
  @override
  final bool canAccessAllQuizzes;

  /// 無料期間の残り日数（-1 = 無制限またはサブスク購読者）
  @override
  final int remainingFreeDays;

  /// ペイウォール表示が必要か
  @override
  final bool shouldShowPaywall;

  /// ロック理由
  @override
  final String? lockReason;

  @override
  String toString() {
    return 'QuizAccessState(canAccessAllQuizzes: $canAccessAllQuizzes, remainingFreeDays: $remainingFreeDays, shouldShowPaywall: $shouldShowPaywall, lockReason: $lockReason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizAccessStateImpl &&
            (identical(other.canAccessAllQuizzes, canAccessAllQuizzes) ||
                other.canAccessAllQuizzes == canAccessAllQuizzes) &&
            (identical(other.remainingFreeDays, remainingFreeDays) ||
                other.remainingFreeDays == remainingFreeDays) &&
            (identical(other.shouldShowPaywall, shouldShowPaywall) ||
                other.shouldShowPaywall == shouldShowPaywall) &&
            (identical(other.lockReason, lockReason) ||
                other.lockReason == lockReason));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    canAccessAllQuizzes,
    remainingFreeDays,
    shouldShowPaywall,
    lockReason,
  );

  /// Create a copy of QuizAccessState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizAccessStateImplCopyWith<_$QuizAccessStateImpl> get copyWith =>
      __$$QuizAccessStateImplCopyWithImpl<_$QuizAccessStateImpl>(
        this,
        _$identity,
      );
}

abstract class _QuizAccessState implements QuizAccessState {
  const factory _QuizAccessState({
    required final bool canAccessAllQuizzes,
    required final int remainingFreeDays,
    required final bool shouldShowPaywall,
    final String? lockReason,
  }) = _$QuizAccessStateImpl;

  /// 全問題へのアクセス可否
  @override
  bool get canAccessAllQuizzes;

  /// 無料期間の残り日数（-1 = 無制限またはサブスク購読者）
  @override
  int get remainingFreeDays;

  /// ペイウォール表示が必要か
  @override
  bool get shouldShowPaywall;

  /// ロック理由
  @override
  String? get lockReason;

  /// Create a copy of QuizAccessState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizAccessStateImplCopyWith<_$QuizAccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
