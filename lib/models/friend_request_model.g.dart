// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FriendRequestImpl _$$FriendRequestImplFromJson(Map<String, dynamic> json) =>
    _$FriendRequestImpl(
      id: json['id'] as String,
      senderId: json['senderId'] as String,
      senderName: json['senderName'] as String,
      senderAvatarEmoji: json['senderAvatarEmoji'] as String,
      recipientId: json['recipientId'] as String,
      sentAt: DateTime.parse(json['sentAt'] as String),
      status:
          $enumDecodeNullable(_$FriendRequestStatusEnumMap, json['status']) ??
          FriendRequestStatus.pending,
      respondedAt: json['respondedAt'] == null
          ? null
          : DateTime.parse(json['respondedAt'] as String),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$FriendRequestImplToJson(_$FriendRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'senderId': instance.senderId,
      'senderName': instance.senderName,
      'senderAvatarEmoji': instance.senderAvatarEmoji,
      'recipientId': instance.recipientId,
      'sentAt': instance.sentAt.toIso8601String(),
      'status': _$FriendRequestStatusEnumMap[instance.status]!,
      'respondedAt': instance.respondedAt?.toIso8601String(),
      'message': instance.message,
    };

const _$FriendRequestStatusEnumMap = {
  FriendRequestStatus.pending: 'pending',
  FriendRequestStatus.accepted: 'accepted',
  FriendRequestStatus.rejected: 'rejected',
  FriendRequestStatus.cancelled: 'cancelled',
};

_$UserProfileImpl _$$UserProfileImplFromJson(Map<String, dynamic> json) =>
    _$UserProfileImpl(
      userId: json['userId'] as String,
      name: json['name'] as String,
      avatarEmoji: json['avatarEmoji'] as String,
      level: (json['level'] as num).toInt(),
      completedStages: (json['completedStages'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      friendshipStatus:
          $enumDecodeNullable(
            _$FriendshipStatusEnumMap,
            json['friendshipStatus'],
          ) ??
          FriendshipStatus.none,
    );

Map<String, dynamic> _$$UserProfileImplToJson(_$UserProfileImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'name': instance.name,
      'avatarEmoji': instance.avatarEmoji,
      'level': instance.level,
      'completedStages': instance.completedStages,
      'createdAt': instance.createdAt.toIso8601String(),
      'friendshipStatus': _$FriendshipStatusEnumMap[instance.friendshipStatus]!,
    };

const _$FriendshipStatusEnumMap = {
  FriendshipStatus.none: 'none',
  FriendshipStatus.friends: 'friends',
  FriendshipStatus.blocked: 'blocked',
};
