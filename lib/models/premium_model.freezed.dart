// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'premium_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PremiumState _$PremiumStateFromJson(Map<String, dynamic> json) {
  return _PremiumState.fromJson(json);
}

/// @nodoc
mixin _$PremiumState {
  /// ユーザーがアクティブなサブスクリプションを持っているか
  bool get isSubscribed => throw _privateConstructorUsedError;

  /// サブスクリプションの有効期限（null の場合は無期限または未検証）
  DateTime? get subscriptionExpiryDate => throw _privateConstructorUsedError;

  /// サブスクリプション種別（'monthly', 'yearly', など）
  String? get subscriptionType => throw _privateConstructorUsedError;

  /// 最後の検証時刻
  DateTime? get lastValidatedAt => throw _privateConstructorUsedError;

  /// エラーメッセージ（検証失敗時）
  String? get error => throw _privateConstructorUsedError;

  /// ローディング状態
  bool get isLoading => throw _privateConstructorUsedError;

  /// Serializes this PremiumState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PremiumState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PremiumStateCopyWith<PremiumState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PremiumStateCopyWith<$Res> {
  factory $PremiumStateCopyWith(
    PremiumState value,
    $Res Function(PremiumState) then,
  ) = _$PremiumStateCopyWithImpl<$Res, PremiumState>;
  @useResult
  $Res call({
    bool isSubscribed,
    DateTime? subscriptionExpiryDate,
    String? subscriptionType,
    DateTime? lastValidatedAt,
    String? error,
    bool isLoading,
  });
}

/// @nodoc
class _$PremiumStateCopyWithImpl<$Res, $Val extends PremiumState>
    implements $PremiumStateCopyWith<$Res> {
  _$PremiumStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PremiumState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubscribed = null,
    Object? subscriptionExpiryDate = freezed,
    Object? subscriptionType = freezed,
    Object? lastValidatedAt = freezed,
    Object? error = freezed,
    Object? isLoading = null,
  }) {
    return _then(
      _value.copyWith(
            isSubscribed: null == isSubscribed
                ? _value.isSubscribed
                : isSubscribed // ignore: cast_nullable_to_non_nullable
                      as bool,
            subscriptionExpiryDate: freezed == subscriptionExpiryDate
                ? _value.subscriptionExpiryDate
                : subscriptionExpiryDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            subscriptionType: freezed == subscriptionType
                ? _value.subscriptionType
                : subscriptionType // ignore: cast_nullable_to_non_nullable
                      as String?,
            lastValidatedAt: freezed == lastValidatedAt
                ? _value.lastValidatedAt
                : lastValidatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PremiumStateImplCopyWith<$Res>
    implements $PremiumStateCopyWith<$Res> {
  factory _$$PremiumStateImplCopyWith(
    _$PremiumStateImpl value,
    $Res Function(_$PremiumStateImpl) then,
  ) = __$$PremiumStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isSubscribed,
    DateTime? subscriptionExpiryDate,
    String? subscriptionType,
    DateTime? lastValidatedAt,
    String? error,
    bool isLoading,
  });
}

/// @nodoc
class __$$PremiumStateImplCopyWithImpl<$Res>
    extends _$PremiumStateCopyWithImpl<$Res, _$PremiumStateImpl>
    implements _$$PremiumStateImplCopyWith<$Res> {
  __$$PremiumStateImplCopyWithImpl(
    _$PremiumStateImpl _value,
    $Res Function(_$PremiumStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PremiumState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubscribed = null,
    Object? subscriptionExpiryDate = freezed,
    Object? subscriptionType = freezed,
    Object? lastValidatedAt = freezed,
    Object? error = freezed,
    Object? isLoading = null,
  }) {
    return _then(
      _$PremiumStateImpl(
        isSubscribed: null == isSubscribed
            ? _value.isSubscribed
            : isSubscribed // ignore: cast_nullable_to_non_nullable
                  as bool,
        subscriptionExpiryDate: freezed == subscriptionExpiryDate
            ? _value.subscriptionExpiryDate
            : subscriptionExpiryDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        subscriptionType: freezed == subscriptionType
            ? _value.subscriptionType
            : subscriptionType // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastValidatedAt: freezed == lastValidatedAt
            ? _value.lastValidatedAt
            : lastValidatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PremiumStateImpl implements _PremiumState {
  const _$PremiumStateImpl({
    required this.isSubscribed,
    this.subscriptionExpiryDate,
    this.subscriptionType,
    this.lastValidatedAt,
    this.error,
    this.isLoading = false,
  });

  factory _$PremiumStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PremiumStateImplFromJson(json);

  /// ユーザーがアクティブなサブスクリプションを持っているか
  @override
  final bool isSubscribed;

  /// サブスクリプションの有効期限（null の場合は無期限または未検証）
  @override
  final DateTime? subscriptionExpiryDate;

  /// サブスクリプション種別（'monthly', 'yearly', など）
  @override
  final String? subscriptionType;

  /// 最後の検証時刻
  @override
  final DateTime? lastValidatedAt;

  /// エラーメッセージ（検証失敗時）
  @override
  final String? error;

  /// ローディング状態
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'PremiumState(isSubscribed: $isSubscribed, subscriptionExpiryDate: $subscriptionExpiryDate, subscriptionType: $subscriptionType, lastValidatedAt: $lastValidatedAt, error: $error, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PremiumStateImpl &&
            (identical(other.isSubscribed, isSubscribed) ||
                other.isSubscribed == isSubscribed) &&
            (identical(other.subscriptionExpiryDate, subscriptionExpiryDate) ||
                other.subscriptionExpiryDate == subscriptionExpiryDate) &&
            (identical(other.subscriptionType, subscriptionType) ||
                other.subscriptionType == subscriptionType) &&
            (identical(other.lastValidatedAt, lastValidatedAt) ||
                other.lastValidatedAt == lastValidatedAt) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    isSubscribed,
    subscriptionExpiryDate,
    subscriptionType,
    lastValidatedAt,
    error,
    isLoading,
  );

  /// Create a copy of PremiumState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PremiumStateImplCopyWith<_$PremiumStateImpl> get copyWith =>
      __$$PremiumStateImplCopyWithImpl<_$PremiumStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PremiumStateImplToJson(this);
  }
}

abstract class _PremiumState implements PremiumState {
  const factory _PremiumState({
    required final bool isSubscribed,
    final DateTime? subscriptionExpiryDate,
    final String? subscriptionType,
    final DateTime? lastValidatedAt,
    final String? error,
    final bool isLoading,
  }) = _$PremiumStateImpl;

  factory _PremiumState.fromJson(Map<String, dynamic> json) =
      _$PremiumStateImpl.fromJson;

  /// ユーザーがアクティブなサブスクリプションを持っているか
  @override
  bool get isSubscribed;

  /// サブスクリプションの有効期限（null の場合は無期限または未検証）
  @override
  DateTime? get subscriptionExpiryDate;

  /// サブスクリプション種別（'monthly', 'yearly', など）
  @override
  String? get subscriptionType;

  /// 最後の検証時刻
  @override
  DateTime? get lastValidatedAt;

  /// エラーメッセージ（検証失敗時）
  @override
  String? get error;

  /// ローディング状態
  @override
  bool get isLoading;

  /// Create a copy of PremiumState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PremiumStateImplCopyWith<_$PremiumStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubscriptionCheckRequest _$SubscriptionCheckRequestFromJson(
  Map<String, dynamic> json,
) {
  return _SubscriptionCheckRequest.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionCheckRequest {
  String get userId => throw _privateConstructorUsedError;
  String get platform =>
      throw _privateConstructorUsedError; // 'android' or 'ios'
  String get packageName => throw _privateConstructorUsedError;

  /// Serializes this SubscriptionCheckRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubscriptionCheckRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionCheckRequestCopyWith<SubscriptionCheckRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionCheckRequestCopyWith<$Res> {
  factory $SubscriptionCheckRequestCopyWith(
    SubscriptionCheckRequest value,
    $Res Function(SubscriptionCheckRequest) then,
  ) = _$SubscriptionCheckRequestCopyWithImpl<$Res, SubscriptionCheckRequest>;
  @useResult
  $Res call({String userId, String platform, String packageName});
}

/// @nodoc
class _$SubscriptionCheckRequestCopyWithImpl<
  $Res,
  $Val extends SubscriptionCheckRequest
>
    implements $SubscriptionCheckRequestCopyWith<$Res> {
  _$SubscriptionCheckRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionCheckRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? platform = null,
    Object? packageName = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            platform: null == platform
                ? _value.platform
                : platform // ignore: cast_nullable_to_non_nullable
                      as String,
            packageName: null == packageName
                ? _value.packageName
                : packageName // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SubscriptionCheckRequestImplCopyWith<$Res>
    implements $SubscriptionCheckRequestCopyWith<$Res> {
  factory _$$SubscriptionCheckRequestImplCopyWith(
    _$SubscriptionCheckRequestImpl value,
    $Res Function(_$SubscriptionCheckRequestImpl) then,
  ) = __$$SubscriptionCheckRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String platform, String packageName});
}

/// @nodoc
class __$$SubscriptionCheckRequestImplCopyWithImpl<$Res>
    extends
        _$SubscriptionCheckRequestCopyWithImpl<
          $Res,
          _$SubscriptionCheckRequestImpl
        >
    implements _$$SubscriptionCheckRequestImplCopyWith<$Res> {
  __$$SubscriptionCheckRequestImplCopyWithImpl(
    _$SubscriptionCheckRequestImpl _value,
    $Res Function(_$SubscriptionCheckRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubscriptionCheckRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? platform = null,
    Object? packageName = null,
  }) {
    return _then(
      _$SubscriptionCheckRequestImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        platform: null == platform
            ? _value.platform
            : platform // ignore: cast_nullable_to_non_nullable
                  as String,
        packageName: null == packageName
            ? _value.packageName
            : packageName // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionCheckRequestImpl implements _SubscriptionCheckRequest {
  const _$SubscriptionCheckRequestImpl({
    required this.userId,
    required this.platform,
    required this.packageName,
  });

  factory _$SubscriptionCheckRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionCheckRequestImplFromJson(json);

  @override
  final String userId;
  @override
  final String platform;
  // 'android' or 'ios'
  @override
  final String packageName;

  @override
  String toString() {
    return 'SubscriptionCheckRequest(userId: $userId, platform: $platform, packageName: $packageName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionCheckRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, platform, packageName);

  /// Create a copy of SubscriptionCheckRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionCheckRequestImplCopyWith<_$SubscriptionCheckRequestImpl>
  get copyWith =>
      __$$SubscriptionCheckRequestImplCopyWithImpl<
        _$SubscriptionCheckRequestImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionCheckRequestImplToJson(this);
  }
}

abstract class _SubscriptionCheckRequest implements SubscriptionCheckRequest {
  const factory _SubscriptionCheckRequest({
    required final String userId,
    required final String platform,
    required final String packageName,
  }) = _$SubscriptionCheckRequestImpl;

  factory _SubscriptionCheckRequest.fromJson(Map<String, dynamic> json) =
      _$SubscriptionCheckRequestImpl.fromJson;

  @override
  String get userId;
  @override
  String get platform; // 'android' or 'ios'
  @override
  String get packageName;

  /// Create a copy of SubscriptionCheckRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionCheckRequestImplCopyWith<_$SubscriptionCheckRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}
