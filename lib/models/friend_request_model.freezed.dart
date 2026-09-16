// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friend_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FriendRequest {

 String get id;// リクエストID
 String get senderId;// 送信者ID
 String get senderName;// 送信者名
 String get senderAvatarEmoji;// 送信者アバター絵文字
 String get recipientId;// 受信者ID
 DateTime get sentAt;// 送信日時
 FriendRequestStatus get status;// ステータス
 DateTime? get respondedAt;// 応答日時
 String? get message;
/// Create a copy of FriendRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FriendRequestCopyWith<FriendRequest> get copyWith => _$FriendRequestCopyWithImpl<FriendRequest>(this as FriendRequest, _$identity);

  /// Serializes this FriendRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FriendRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.senderAvatarEmoji, senderAvatarEmoji) || other.senderAvatarEmoji == senderAvatarEmoji)&&(identical(other.recipientId, recipientId) || other.recipientId == recipientId)&&(identical(other.sentAt, sentAt) || other.sentAt == sentAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.respondedAt, respondedAt) || other.respondedAt == respondedAt)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,senderId,senderName,senderAvatarEmoji,recipientId,sentAt,status,respondedAt,message);

@override
String toString() {
  return 'FriendRequest(id: $id, senderId: $senderId, senderName: $senderName, senderAvatarEmoji: $senderAvatarEmoji, recipientId: $recipientId, sentAt: $sentAt, status: $status, respondedAt: $respondedAt, message: $message)';
}


}

/// @nodoc
abstract mixin class $FriendRequestCopyWith<$Res>  {
  factory $FriendRequestCopyWith(FriendRequest value, $Res Function(FriendRequest) _then) = _$FriendRequestCopyWithImpl;
@useResult
$Res call({
 String id, String senderId, String senderName, String senderAvatarEmoji, String recipientId, DateTime sentAt, FriendRequestStatus status, DateTime? respondedAt, String? message
});




}
/// @nodoc
class _$FriendRequestCopyWithImpl<$Res>
    implements $FriendRequestCopyWith<$Res> {
  _$FriendRequestCopyWithImpl(this._self, this._then);

  final FriendRequest _self;
  final $Res Function(FriendRequest) _then;

/// Create a copy of FriendRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? senderId = null,Object? senderName = null,Object? senderAvatarEmoji = null,Object? recipientId = null,Object? sentAt = null,Object? status = null,Object? respondedAt = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as String,senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,senderAvatarEmoji: null == senderAvatarEmoji ? _self.senderAvatarEmoji : senderAvatarEmoji // ignore: cast_nullable_to_non_nullable
as String,recipientId: null == recipientId ? _self.recipientId : recipientId // ignore: cast_nullable_to_non_nullable
as String,sentAt: null == sentAt ? _self.sentAt : sentAt // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FriendRequestStatus,respondedAt: freezed == respondedAt ? _self.respondedAt : respondedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FriendRequest].
extension FriendRequestPatterns on FriendRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FriendRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FriendRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FriendRequest value)  $default,){
final _that = this;
switch (_that) {
case _FriendRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FriendRequest value)?  $default,){
final _that = this;
switch (_that) {
case _FriendRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String senderId,  String senderName,  String senderAvatarEmoji,  String recipientId,  DateTime sentAt,  FriendRequestStatus status,  DateTime? respondedAt,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FriendRequest() when $default != null:
return $default(_that.id,_that.senderId,_that.senderName,_that.senderAvatarEmoji,_that.recipientId,_that.sentAt,_that.status,_that.respondedAt,_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String senderId,  String senderName,  String senderAvatarEmoji,  String recipientId,  DateTime sentAt,  FriendRequestStatus status,  DateTime? respondedAt,  String? message)  $default,) {final _that = this;
switch (_that) {
case _FriendRequest():
return $default(_that.id,_that.senderId,_that.senderName,_that.senderAvatarEmoji,_that.recipientId,_that.sentAt,_that.status,_that.respondedAt,_that.message);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String senderId,  String senderName,  String senderAvatarEmoji,  String recipientId,  DateTime sentAt,  FriendRequestStatus status,  DateTime? respondedAt,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _FriendRequest() when $default != null:
return $default(_that.id,_that.senderId,_that.senderName,_that.senderAvatarEmoji,_that.recipientId,_that.sentAt,_that.status,_that.respondedAt,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FriendRequest implements FriendRequest {
  const _FriendRequest({required this.id, required this.senderId, required this.senderName, required this.senderAvatarEmoji, required this.recipientId, required this.sentAt, this.status = FriendRequestStatus.pending, this.respondedAt, this.message});
  factory _FriendRequest.fromJson(Map<String, dynamic> json) => _$FriendRequestFromJson(json);

@override final  String id;
// リクエストID
@override final  String senderId;
// 送信者ID
@override final  String senderName;
// 送信者名
@override final  String senderAvatarEmoji;
// 送信者アバター絵文字
@override final  String recipientId;
// 受信者ID
@override final  DateTime sentAt;
// 送信日時
@override@JsonKey() final  FriendRequestStatus status;
// ステータス
@override final  DateTime? respondedAt;
// 応答日時
@override final  String? message;

/// Create a copy of FriendRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FriendRequestCopyWith<_FriendRequest> get copyWith => __$FriendRequestCopyWithImpl<_FriendRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FriendRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FriendRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.senderAvatarEmoji, senderAvatarEmoji) || other.senderAvatarEmoji == senderAvatarEmoji)&&(identical(other.recipientId, recipientId) || other.recipientId == recipientId)&&(identical(other.sentAt, sentAt) || other.sentAt == sentAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.respondedAt, respondedAt) || other.respondedAt == respondedAt)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,senderId,senderName,senderAvatarEmoji,recipientId,sentAt,status,respondedAt,message);

@override
String toString() {
  return 'FriendRequest(id: $id, senderId: $senderId, senderName: $senderName, senderAvatarEmoji: $senderAvatarEmoji, recipientId: $recipientId, sentAt: $sentAt, status: $status, respondedAt: $respondedAt, message: $message)';
}


}

/// @nodoc
abstract mixin class _$FriendRequestCopyWith<$Res> implements $FriendRequestCopyWith<$Res> {
  factory _$FriendRequestCopyWith(_FriendRequest value, $Res Function(_FriendRequest) _then) = __$FriendRequestCopyWithImpl;
@override @useResult
$Res call({
 String id, String senderId, String senderName, String senderAvatarEmoji, String recipientId, DateTime sentAt, FriendRequestStatus status, DateTime? respondedAt, String? message
});




}
/// @nodoc
class __$FriendRequestCopyWithImpl<$Res>
    implements _$FriendRequestCopyWith<$Res> {
  __$FriendRequestCopyWithImpl(this._self, this._then);

  final _FriendRequest _self;
  final $Res Function(_FriendRequest) _then;

/// Create a copy of FriendRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? senderId = null,Object? senderName = null,Object? senderAvatarEmoji = null,Object? recipientId = null,Object? sentAt = null,Object? status = null,Object? respondedAt = freezed,Object? message = freezed,}) {
  return _then(_FriendRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as String,senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,senderAvatarEmoji: null == senderAvatarEmoji ? _self.senderAvatarEmoji : senderAvatarEmoji // ignore: cast_nullable_to_non_nullable
as String,recipientId: null == recipientId ? _self.recipientId : recipientId // ignore: cast_nullable_to_non_nullable
as String,sentAt: null == sentAt ? _self.sentAt : sentAt // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FriendRequestStatus,respondedAt: freezed == respondedAt ? _self.respondedAt : respondedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FriendSearchProfile {

 String get userId; String get name; String get avatarEmoji; int get level; int get completedStages; DateTime get createdAt; FriendshipStatus get friendshipStatus;
/// Create a copy of FriendSearchProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FriendSearchProfileCopyWith<FriendSearchProfile> get copyWith => _$FriendSearchProfileCopyWithImpl<FriendSearchProfile>(this as FriendSearchProfile, _$identity);

  /// Serializes this FriendSearchProfile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FriendSearchProfile&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatarEmoji, avatarEmoji) || other.avatarEmoji == avatarEmoji)&&(identical(other.level, level) || other.level == level)&&(identical(other.completedStages, completedStages) || other.completedStages == completedStages)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.friendshipStatus, friendshipStatus) || other.friendshipStatus == friendshipStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,name,avatarEmoji,level,completedStages,createdAt,friendshipStatus);

@override
String toString() {
  return 'FriendSearchProfile(userId: $userId, name: $name, avatarEmoji: $avatarEmoji, level: $level, completedStages: $completedStages, createdAt: $createdAt, friendshipStatus: $friendshipStatus)';
}


}

/// @nodoc
abstract mixin class $FriendSearchProfileCopyWith<$Res>  {
  factory $FriendSearchProfileCopyWith(FriendSearchProfile value, $Res Function(FriendSearchProfile) _then) = _$FriendSearchProfileCopyWithImpl;
@useResult
$Res call({
 String userId, String name, String avatarEmoji, int level, int completedStages, DateTime createdAt, FriendshipStatus friendshipStatus
});




}
/// @nodoc
class _$FriendSearchProfileCopyWithImpl<$Res>
    implements $FriendSearchProfileCopyWith<$Res> {
  _$FriendSearchProfileCopyWithImpl(this._self, this._then);

  final FriendSearchProfile _self;
  final $Res Function(FriendSearchProfile) _then;

/// Create a copy of FriendSearchProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? name = null,Object? avatarEmoji = null,Object? level = null,Object? completedStages = null,Object? createdAt = null,Object? friendshipStatus = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatarEmoji: null == avatarEmoji ? _self.avatarEmoji : avatarEmoji // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,completedStages: null == completedStages ? _self.completedStages : completedStages // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,friendshipStatus: null == friendshipStatus ? _self.friendshipStatus : friendshipStatus // ignore: cast_nullable_to_non_nullable
as FriendshipStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [FriendSearchProfile].
extension FriendSearchProfilePatterns on FriendSearchProfile {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FriendSearchProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FriendSearchProfile() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FriendSearchProfile value)  $default,){
final _that = this;
switch (_that) {
case _FriendSearchProfile():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FriendSearchProfile value)?  $default,){
final _that = this;
switch (_that) {
case _FriendSearchProfile() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String name,  String avatarEmoji,  int level,  int completedStages,  DateTime createdAt,  FriendshipStatus friendshipStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FriendSearchProfile() when $default != null:
return $default(_that.userId,_that.name,_that.avatarEmoji,_that.level,_that.completedStages,_that.createdAt,_that.friendshipStatus);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String name,  String avatarEmoji,  int level,  int completedStages,  DateTime createdAt,  FriendshipStatus friendshipStatus)  $default,) {final _that = this;
switch (_that) {
case _FriendSearchProfile():
return $default(_that.userId,_that.name,_that.avatarEmoji,_that.level,_that.completedStages,_that.createdAt,_that.friendshipStatus);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String name,  String avatarEmoji,  int level,  int completedStages,  DateTime createdAt,  FriendshipStatus friendshipStatus)?  $default,) {final _that = this;
switch (_that) {
case _FriendSearchProfile() when $default != null:
return $default(_that.userId,_that.name,_that.avatarEmoji,_that.level,_that.completedStages,_that.createdAt,_that.friendshipStatus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FriendSearchProfile implements FriendSearchProfile {
  const _FriendSearchProfile({required this.userId, required this.name, required this.avatarEmoji, required this.level, required this.completedStages, required this.createdAt, this.friendshipStatus = FriendshipStatus.none});
  factory _FriendSearchProfile.fromJson(Map<String, dynamic> json) => _$FriendSearchProfileFromJson(json);

@override final  String userId;
@override final  String name;
@override final  String avatarEmoji;
@override final  int level;
@override final  int completedStages;
@override final  DateTime createdAt;
@override@JsonKey() final  FriendshipStatus friendshipStatus;

/// Create a copy of FriendSearchProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FriendSearchProfileCopyWith<_FriendSearchProfile> get copyWith => __$FriendSearchProfileCopyWithImpl<_FriendSearchProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FriendSearchProfileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FriendSearchProfile&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatarEmoji, avatarEmoji) || other.avatarEmoji == avatarEmoji)&&(identical(other.level, level) || other.level == level)&&(identical(other.completedStages, completedStages) || other.completedStages == completedStages)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.friendshipStatus, friendshipStatus) || other.friendshipStatus == friendshipStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,name,avatarEmoji,level,completedStages,createdAt,friendshipStatus);

@override
String toString() {
  return 'FriendSearchProfile(userId: $userId, name: $name, avatarEmoji: $avatarEmoji, level: $level, completedStages: $completedStages, createdAt: $createdAt, friendshipStatus: $friendshipStatus)';
}


}

/// @nodoc
abstract mixin class _$FriendSearchProfileCopyWith<$Res> implements $FriendSearchProfileCopyWith<$Res> {
  factory _$FriendSearchProfileCopyWith(_FriendSearchProfile value, $Res Function(_FriendSearchProfile) _then) = __$FriendSearchProfileCopyWithImpl;
@override @useResult
$Res call({
 String userId, String name, String avatarEmoji, int level, int completedStages, DateTime createdAt, FriendshipStatus friendshipStatus
});




}
/// @nodoc
class __$FriendSearchProfileCopyWithImpl<$Res>
    implements _$FriendSearchProfileCopyWith<$Res> {
  __$FriendSearchProfileCopyWithImpl(this._self, this._then);

  final _FriendSearchProfile _self;
  final $Res Function(_FriendSearchProfile) _then;

/// Create a copy of FriendSearchProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? name = null,Object? avatarEmoji = null,Object? level = null,Object? completedStages = null,Object? createdAt = null,Object? friendshipStatus = null,}) {
  return _then(_FriendSearchProfile(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatarEmoji: null == avatarEmoji ? _self.avatarEmoji : avatarEmoji // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,completedStages: null == completedStages ? _self.completedStages : completedStages // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,friendshipStatus: null == friendshipStatus ? _self.friendshipStatus : friendshipStatus // ignore: cast_nullable_to_non_nullable
as FriendshipStatus,
  ));
}


}

// dart format on
