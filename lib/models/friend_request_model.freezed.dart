// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friend_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FriendRequest _$FriendRequestFromJson(Map<String, dynamic> json) {
  return _FriendRequest.fromJson(json);
}

/// @nodoc
mixin _$FriendRequest {
  String get id => throw _privateConstructorUsedError; // リクエストID
  String get senderId => throw _privateConstructorUsedError; // 送信者ID
  String get senderName => throw _privateConstructorUsedError; // 送信者名
  String get senderAvatarEmoji =>
      throw _privateConstructorUsedError; // 送信者アバター絵文字
  String get recipientId => throw _privateConstructorUsedError; // 受信者ID
  DateTime get sentAt => throw _privateConstructorUsedError; // 送信日時
  FriendRequestStatus get status => throw _privateConstructorUsedError; // ステータス
  DateTime? get respondedAt => throw _privateConstructorUsedError; // 応答日時
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this FriendRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FriendRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FriendRequestCopyWith<FriendRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendRequestCopyWith<$Res> {
  factory $FriendRequestCopyWith(
    FriendRequest value,
    $Res Function(FriendRequest) then,
  ) = _$FriendRequestCopyWithImpl<$Res, FriendRequest>;
  @useResult
  $Res call({
    String id,
    String senderId,
    String senderName,
    String senderAvatarEmoji,
    String recipientId,
    DateTime sentAt,
    FriendRequestStatus status,
    DateTime? respondedAt,
    String? message,
  });
}

/// @nodoc
class _$FriendRequestCopyWithImpl<$Res, $Val extends FriendRequest>
    implements $FriendRequestCopyWith<$Res> {
  _$FriendRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FriendRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? senderId = null,
    Object? senderName = null,
    Object? senderAvatarEmoji = null,
    Object? recipientId = null,
    Object? sentAt = null,
    Object? status = null,
    Object? respondedAt = freezed,
    Object? message = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            senderId: null == senderId
                ? _value.senderId
                : senderId // ignore: cast_nullable_to_non_nullable
                      as String,
            senderName: null == senderName
                ? _value.senderName
                : senderName // ignore: cast_nullable_to_non_nullable
                      as String,
            senderAvatarEmoji: null == senderAvatarEmoji
                ? _value.senderAvatarEmoji
                : senderAvatarEmoji // ignore: cast_nullable_to_non_nullable
                      as String,
            recipientId: null == recipientId
                ? _value.recipientId
                : recipientId // ignore: cast_nullable_to_non_nullable
                      as String,
            sentAt: null == sentAt
                ? _value.sentAt
                : sentAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as FriendRequestStatus,
            respondedAt: freezed == respondedAt
                ? _value.respondedAt
                : respondedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            message: freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FriendRequestImplCopyWith<$Res>
    implements $FriendRequestCopyWith<$Res> {
  factory _$$FriendRequestImplCopyWith(
    _$FriendRequestImpl value,
    $Res Function(_$FriendRequestImpl) then,
  ) = __$$FriendRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String senderId,
    String senderName,
    String senderAvatarEmoji,
    String recipientId,
    DateTime sentAt,
    FriendRequestStatus status,
    DateTime? respondedAt,
    String? message,
  });
}

/// @nodoc
class __$$FriendRequestImplCopyWithImpl<$Res>
    extends _$FriendRequestCopyWithImpl<$Res, _$FriendRequestImpl>
    implements _$$FriendRequestImplCopyWith<$Res> {
  __$$FriendRequestImplCopyWithImpl(
    _$FriendRequestImpl _value,
    $Res Function(_$FriendRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FriendRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? senderId = null,
    Object? senderName = null,
    Object? senderAvatarEmoji = null,
    Object? recipientId = null,
    Object? sentAt = null,
    Object? status = null,
    Object? respondedAt = freezed,
    Object? message = freezed,
  }) {
    return _then(
      _$FriendRequestImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        senderId: null == senderId
            ? _value.senderId
            : senderId // ignore: cast_nullable_to_non_nullable
                  as String,
        senderName: null == senderName
            ? _value.senderName
            : senderName // ignore: cast_nullable_to_non_nullable
                  as String,
        senderAvatarEmoji: null == senderAvatarEmoji
            ? _value.senderAvatarEmoji
            : senderAvatarEmoji // ignore: cast_nullable_to_non_nullable
                  as String,
        recipientId: null == recipientId
            ? _value.recipientId
            : recipientId // ignore: cast_nullable_to_non_nullable
                  as String,
        sentAt: null == sentAt
            ? _value.sentAt
            : sentAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as FriendRequestStatus,
        respondedAt: freezed == respondedAt
            ? _value.respondedAt
            : respondedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FriendRequestImpl implements _FriendRequest {
  const _$FriendRequestImpl({
    required this.id,
    required this.senderId,
    required this.senderName,
    required this.senderAvatarEmoji,
    required this.recipientId,
    required this.sentAt,
    this.status = FriendRequestStatus.pending,
    this.respondedAt,
    this.message,
  });

  factory _$FriendRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FriendRequestImplFromJson(json);

  @override
  final String id;
  // リクエストID
  @override
  final String senderId;
  // 送信者ID
  @override
  final String senderName;
  // 送信者名
  @override
  final String senderAvatarEmoji;
  // 送信者アバター絵文字
  @override
  final String recipientId;
  // 受信者ID
  @override
  final DateTime sentAt;
  // 送信日時
  @override
  @JsonKey()
  final FriendRequestStatus status;
  // ステータス
  @override
  final DateTime? respondedAt;
  // 応答日時
  @override
  final String? message;

  @override
  String toString() {
    return 'FriendRequest(id: $id, senderId: $senderId, senderName: $senderName, senderAvatarEmoji: $senderAvatarEmoji, recipientId: $recipientId, sentAt: $sentAt, status: $status, respondedAt: $respondedAt, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FriendRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.senderName, senderName) ||
                other.senderName == senderName) &&
            (identical(other.senderAvatarEmoji, senderAvatarEmoji) ||
                other.senderAvatarEmoji == senderAvatarEmoji) &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.respondedAt, respondedAt) ||
                other.respondedAt == respondedAt) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    senderId,
    senderName,
    senderAvatarEmoji,
    recipientId,
    sentAt,
    status,
    respondedAt,
    message,
  );

  /// Create a copy of FriendRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FriendRequestImplCopyWith<_$FriendRequestImpl> get copyWith =>
      __$$FriendRequestImplCopyWithImpl<_$FriendRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FriendRequestImplToJson(this);
  }
}

abstract class _FriendRequest implements FriendRequest {
  const factory _FriendRequest({
    required final String id,
    required final String senderId,
    required final String senderName,
    required final String senderAvatarEmoji,
    required final String recipientId,
    required final DateTime sentAt,
    final FriendRequestStatus status,
    final DateTime? respondedAt,
    final String? message,
  }) = _$FriendRequestImpl;

  factory _FriendRequest.fromJson(Map<String, dynamic> json) =
      _$FriendRequestImpl.fromJson;

  @override
  String get id; // リクエストID
  @override
  String get senderId; // 送信者ID
  @override
  String get senderName; // 送信者名
  @override
  String get senderAvatarEmoji; // 送信者アバター絵文字
  @override
  String get recipientId; // 受信者ID
  @override
  DateTime get sentAt; // 送信日時
  @override
  FriendRequestStatus get status; // ステータス
  @override
  DateTime? get respondedAt; // 応答日時
  @override
  String? get message;

  /// Create a copy of FriendRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FriendRequestImplCopyWith<_$FriendRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) {
  return _UserProfile.fromJson(json);
}

/// @nodoc
mixin _$UserProfile {
  String get userId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get avatarEmoji => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  int get completedStages => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  FriendshipStatus get friendshipStatus => throw _privateConstructorUsedError;

  /// Serializes this UserProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileCopyWith<UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
    UserProfile value,
    $Res Function(UserProfile) then,
  ) = _$UserProfileCopyWithImpl<$Res, UserProfile>;
  @useResult
  $Res call({
    String userId,
    String name,
    String avatarEmoji,
    int level,
    int completedStages,
    DateTime createdAt,
    FriendshipStatus friendshipStatus,
  });
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res, $Val extends UserProfile>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? name = null,
    Object? avatarEmoji = null,
    Object? level = null,
    Object? completedStages = null,
    Object? createdAt = null,
    Object? friendshipStatus = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            avatarEmoji: null == avatarEmoji
                ? _value.avatarEmoji
                : avatarEmoji // ignore: cast_nullable_to_non_nullable
                      as String,
            level: null == level
                ? _value.level
                : level // ignore: cast_nullable_to_non_nullable
                      as int,
            completedStages: null == completedStages
                ? _value.completedStages
                : completedStages // ignore: cast_nullable_to_non_nullable
                      as int,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            friendshipStatus: null == friendshipStatus
                ? _value.friendshipStatus
                : friendshipStatus // ignore: cast_nullable_to_non_nullable
                      as FriendshipStatus,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserProfileImplCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$$UserProfileImplCopyWith(
    _$UserProfileImpl value,
    $Res Function(_$UserProfileImpl) then,
  ) = __$$UserProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    String name,
    String avatarEmoji,
    int level,
    int completedStages,
    DateTime createdAt,
    FriendshipStatus friendshipStatus,
  });
}

/// @nodoc
class __$$UserProfileImplCopyWithImpl<$Res>
    extends _$UserProfileCopyWithImpl<$Res, _$UserProfileImpl>
    implements _$$UserProfileImplCopyWith<$Res> {
  __$$UserProfileImplCopyWithImpl(
    _$UserProfileImpl _value,
    $Res Function(_$UserProfileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? name = null,
    Object? avatarEmoji = null,
    Object? level = null,
    Object? completedStages = null,
    Object? createdAt = null,
    Object? friendshipStatus = null,
  }) {
    return _then(
      _$UserProfileImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        avatarEmoji: null == avatarEmoji
            ? _value.avatarEmoji
            : avatarEmoji // ignore: cast_nullable_to_non_nullable
                  as String,
        level: null == level
            ? _value.level
            : level // ignore: cast_nullable_to_non_nullable
                  as int,
        completedStages: null == completedStages
            ? _value.completedStages
            : completedStages // ignore: cast_nullable_to_non_nullable
                  as int,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        friendshipStatus: null == friendshipStatus
            ? _value.friendshipStatus
            : friendshipStatus // ignore: cast_nullable_to_non_nullable
                  as FriendshipStatus,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileImpl implements _UserProfile {
  const _$UserProfileImpl({
    required this.userId,
    required this.name,
    required this.avatarEmoji,
    required this.level,
    required this.completedStages,
    required this.createdAt,
    this.friendshipStatus = FriendshipStatus.none,
  });

  factory _$UserProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileImplFromJson(json);

  @override
  final String userId;
  @override
  final String name;
  @override
  final String avatarEmoji;
  @override
  final int level;
  @override
  final int completedStages;
  @override
  final DateTime createdAt;
  @override
  @JsonKey()
  final FriendshipStatus friendshipStatus;

  @override
  String toString() {
    return 'UserProfile(userId: $userId, name: $name, avatarEmoji: $avatarEmoji, level: $level, completedStages: $completedStages, createdAt: $createdAt, friendshipStatus: $friendshipStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarEmoji, avatarEmoji) ||
                other.avatarEmoji == avatarEmoji) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.completedStages, completedStages) ||
                other.completedStages == completedStages) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.friendshipStatus, friendshipStatus) ||
                other.friendshipStatus == friendshipStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    name,
    avatarEmoji,
    level,
    completedStages,
    createdAt,
    friendshipStatus,
  );

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      __$$UserProfileImplCopyWithImpl<_$UserProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileImplToJson(this);
  }
}

abstract class _UserProfile implements UserProfile {
  const factory _UserProfile({
    required final String userId,
    required final String name,
    required final String avatarEmoji,
    required final int level,
    required final int completedStages,
    required final DateTime createdAt,
    final FriendshipStatus friendshipStatus,
  }) = _$UserProfileImpl;

  factory _UserProfile.fromJson(Map<String, dynamic> json) =
      _$UserProfileImpl.fromJson;

  @override
  String get userId;
  @override
  String get name;
  @override
  String get avatarEmoji;
  @override
  int get level;
  @override
  int get completedStages;
  @override
  DateTime get createdAt;
  @override
  FriendshipStatus get friendshipStatus;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
