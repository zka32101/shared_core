import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'friend_request_model.freezed.dart';
part 'friend_request_model.g.dart';

/// フレンドリクエストの状態
enum FriendRequestStatus {
  pending,   // 待機中
  accepted,  // 承認済み
  rejected,  // 拒否
  cancelled, // キャンセル済み
}

/// フレンドシップの状態
enum FriendshipStatus {
  none,      // フレンドではない
  friends,   // フレンド
  blocked,   // ブロック済み
}

/// フレンドリクエストモデル
@freezed
class FriendRequest with _$FriendRequest {
  const factory FriendRequest({
    required String id,                    // リクエストID
    required String senderId,              // 送信者ID
    required String senderName,            // 送信者名
    required String senderAvatarEmoji,     // 送信者アバター絵文字
    required String recipientId,           // 受信者ID
    required DateTime sentAt,              // 送信日時
    @Default(FriendRequestStatus.pending)
    FriendRequestStatus status,            // ステータス
    DateTime? respondedAt,                 // 応答日時
    String? message,                       // メッセージ（オプション）
  }) = _FriendRequest;

  factory FriendRequest.fromJson(Map<String, dynamic> json) =>
      _$FriendRequestFromJson(json);

  factory FriendRequest.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return FriendRequest(
      id: doc.id,
      senderId: data['senderId'] as String,
      senderName: data['senderName'] as String,
      senderAvatarEmoji: data['senderAvatarEmoji'] as String? ?? '👤',
      recipientId: data['recipientId'] as String,
      sentAt: (data['sentAt'] as Timestamp).toDate(),
      status: FriendRequestStatus.values.firstWhere(
        (e) => e.name == data['status'] as String? ?? 'pending',
        orElse: () => FriendRequestStatus.pending,
      ),
      respondedAt: data['respondedAt'] != null
          ? (data['respondedAt'] as Timestamp).toDate()
          : null,
      message: data['message'] as String?,
    );
  }

  Map<String, dynamic> toFirestore() => {
    'senderId': senderId,
    'senderName': senderName,
    'senderAvatarEmoji': senderAvatarEmoji,
    'recipientId': recipientId,
    'sentAt': Timestamp.fromDate(sentAt),
    'status': status.name,
    'respondedAt': respondedAt != null ? Timestamp.fromDate(respondedAt!) : null,
    'message': message,
  };
}

/// ユーザープロフィール（フレンド検索用）
@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    required String userId,
    required String name,
    required String avatarEmoji,
    required int level,
    required int completedStages,
    required DateTime createdAt,
    @Default(FriendshipStatus.none)
    FriendshipStatus friendshipStatus,   // フレンド状態
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);

  factory UserProfile.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return UserProfile(
      userId: doc.id,
      name: data['name'] as String,
      avatarEmoji: data['avatarEmoji'] as String? ?? '👤',
      level: data['level'] as int? ?? 1,
      completedStages: data['completedStages'] as int? ?? 0,
      createdAt: data['createdAt'] != null
          ? (data['createdAt'] as Timestamp).toDate()
          : DateTime.now(),
      friendshipStatus: FriendshipStatus.values.firstWhere(
        (e) => e.name == data['friendshipStatus'] as String? ?? 'none',
        orElse: () => FriendshipStatus.none,
      ),
    );
  }

  Map<String, dynamic> toFirestore() => {
    'name': name,
    'avatarEmoji': avatarEmoji,
    'level': level,
    'completedStages': completedStages,
    'createdAt': Timestamp.fromDate(createdAt),
    'friendshipStatus': friendshipStatus.name,
  };
}
