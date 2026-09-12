import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/friend_request_model.dart';

final friendRequestProvider =
    StateNotifierProvider<FriendRequestNotifier, FriendRequestState>(
  (ref) => FriendRequestNotifier(ref),
);

final incomingFriendRequestsProvider = StreamProvider.autoDispose<List<FriendRequest>>((ref) async* {
  final userId = FirebaseAuth.instance.currentUser?.uid;
  if (userId == null) {
    yield [];
    return;
  }

  final firestore = FirebaseFirestore.instance;
  yield* firestore
      .collection('friend_requests')
      .where('recipientId', isEqualTo: userId)
      .where('status', isEqualTo: 'pending')
      .orderBy('sentAt', descending: true)
      .snapshots()
      .map((snapshot) =>
          snapshot.docs.map((doc) => FriendRequest.fromFirestore(doc)).toList());
});

final outgoingFriendRequestsProvider = StreamProvider.autoDispose<List<FriendRequest>>((ref) async* {
  final userId = FirebaseAuth.instance.currentUser?.uid;
  if (userId == null) {
    yield [];
    return;
  }

  final firestore = FirebaseFirestore.instance;
  yield* firestore
      .collection('friend_requests')
      .where('senderId', isEqualTo: userId)
      .where('status', isEqualTo: 'pending')
      .orderBy('sentAt', descending: true)
      .snapshots()
      .map((snapshot) =>
          snapshot.docs.map((doc) => FriendRequest.fromFirestore(doc)).toList());
});

final userSearchResultsProvider = StateProvider<List<UserProfile>>((ref) => []);

class FriendRequestNotifier extends StateNotifier<FriendRequestState> {
  FriendRequestNotifier(this.ref) : super(const FriendRequestState());

  final Ref ref;
  final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

  /// ユーザーを検索（名前またはID）
  Future<List<UserProfile>> searchUsers(String query) async {
    try {
      if (query.isEmpty) return [];

      final currentUserId = _auth.currentUser?.uid;
      if (currentUserId == null) return [];

      // ユーザープロフィール検索
      final snapshot = await _firestore
          .collection('users')
          .where('searchName', isGreaterThanOrEqualTo: query.toLowerCase())
          .where('searchName', isLessThan: query.toLowerCase() + 'z')
          .limit(10)
          .get();

      final results = <UserProfile>[];
      for (var doc in snapshot.docs) {
        if (doc.id == currentUserId) continue; // 自分を除外

        final profile = UserProfile.fromFirestore(doc);
        // フレンド状態を確認
        final status = await _getFriendshipStatus(currentUserId, doc.id);
        results.add(profile.copyWith(friendshipStatus: status));
      }

      ref.read(userSearchResultsProvider.notifier).state = results;
      return results;
    } catch (e) {
      print('User search error: $e');
      return [];
    }
  }

  /// フレンドリクエストを送信
  Future<bool> sendFriendRequest(
    String recipientId,
    String recipientName,
    String recipientAvatarEmoji, {
    String? message,
  }) async {
    try {
      final userId = _auth.currentUser?.uid;
      if (userId == null) return false;

      // 現在のユーザー情報を取得
      final userDoc = await _firestore.collection('users').doc(userId).get();
      final userName = userDoc.data()?['name'] as String? ?? 'ユーザー';
      final userAvatarEmoji =
          userDoc.data()?['avatarEmoji'] as String? ?? '👤';

      // リクエストをFirestoreに追加
      final requestRef = _firestore.collection('friend_requests').doc();
      await requestRef.set(
        FriendRequest(
          id: requestRef.id,
          senderId: userId,
          senderName: userName,
          senderAvatarEmoji: userAvatarEmoji,
          recipientId: recipientId,
          sentAt: DateTime.now(),
          message: message,
        ).toFirestore(),
      );

      state = state.copyWith(lastAction: 'リクエストを送信しました');
      return true;
    } catch (e) {
      state = state.copyWith(error: 'エラー: $e');
      return false;
    }
  }

  /// フレンドリクエストを承認
  Future<bool> acceptFriendRequest(String requestId) async {
    try {
      final userId = _auth.currentUser?.uid;
      if (userId == null) return false;

      final requestDoc =
          await _firestore.collection('friend_requests').doc(requestId).get();
      final request = FriendRequest.fromFirestore(requestDoc);

      // リクエストを承認済みに更新
      await _firestore.collection('friend_requests').doc(requestId).update({
        'status': 'accepted',
        'respondedAt': FieldValue.serverTimestamp(),
      });

      // フレンドシップを作成
      await _firestore
          .collection('friendships')
          .doc('${request.senderId}_$userId')
          .set({
        'user1': request.senderId,
        'user2': userId,
        'createdAt': FieldValue.serverTimestamp(),
        'status': 'active',
      });

      await _firestore
          .collection('friendships')
          .doc('${userId}_${request.senderId}')
          .set({
        'user1': userId,
        'user2': request.senderId,
        'createdAt': FieldValue.serverTimestamp(),
        'status': 'active',
      });

      state = state.copyWith(lastAction: 'フレンドリクエストを承認しました');
      return true;
    } catch (e) {
      state = state.copyWith(error: 'エラー: $e');
      return false;
    }
  }

  /// フレンドリクエストを拒否
  Future<bool> rejectFriendRequest(String requestId) async {
    try {
      await _firestore.collection('friend_requests').doc(requestId).update({
        'status': 'rejected',
        'respondedAt': FieldValue.serverTimestamp(),
      });

      state = state.copyWith(lastAction: 'フレンドリクエストを拒否しました');
      return true;
    } catch (e) {
      state = state.copyWith(error: 'エラー: $e');
      return false;
    }
  }

  /// フレンドリクエストをキャンセル
  Future<bool> cancelFriendRequest(String requestId) async {
    try {
      await _firestore.collection('friend_requests').doc(requestId).update({
        'status': 'cancelled',
        'respondedAt': FieldValue.serverTimestamp(),
      });

      state = state.copyWith(lastAction: 'リクエストをキャンセルしました');
      return true;
    } catch (e) {
      state = state.copyWith(error: 'エラー: $e');
      return false;
    }
  }

  /// フレンドシップの状態を取得
  Future<FriendshipStatus> _getFriendshipStatus(
    String userId1,
    String userId2,
  ) async {
    try {
      // フレンド確認
      final friendshipDoc = await _firestore
          .collection('friendships')
          .doc('${userId1}_$userId2')
          .get();
      if (friendshipDoc.exists &&
          friendshipDoc.data()?['status'] == 'active') {
        return FriendshipStatus.friends;
      }

      // ブロック確認
      final blockDoc = await _firestore
          .collection('blocks')
          .doc('${userId1}_$userId2')
          .get();
      if (blockDoc.exists) {
        return FriendshipStatus.blocked;
      }

      return FriendshipStatus.none;
    } catch (e) {
      return FriendshipStatus.none;
    }
  }
}

class FriendRequestState {
  final String? lastAction;
  final String? error;

  const FriendRequestState({
    this.lastAction,
    this.error,
  });

  FriendRequestState copyWith({
    String? lastAction,
    String? error,
  }) {
    return FriendRequestState(
      lastAction: lastAction ?? this.lastAction,
      error: error ?? this.error,
    );
  }
}
