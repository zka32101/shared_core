import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/cross_app_friend_model.dart';

/// フレンドリスト取得ハンドラー
typedef FriendListFetchHandler = Future<List<CrossAppFriend>> Function({
  required String userId,
});

/// フレンドリクエスト取得ハンドラー
typedef FriendRequestsFetchHandler = Future<List<FriendRequest>> Function({
  required String userId,
  required FriendRequestType type, // incoming / outgoing
});

/// フレンド検索ハンドラー
typedef FriendSearchHandler = Future<List<FriendSearchResult>> Function({
  required String query,
  required int limit,
});

/// フレンド追加ハンドラー
typedef AddFriendHandler = Future<void> Function({
  required String fromUserId,
  required String toUserId,
  String? message,
});

/// フレンドリクエスト承認ハンドラー
typedef AcceptFriendRequestHandler = Future<void> Function({
  required String requestId,
  required String userId,
});

/// フレンドリクエスト拒否ハンドラー
typedef RejectFriendRequestHandler = Future<void> Function({
  required String requestId,
  required String userId,
});

/// フレンド削除ハンドラー
typedef RemoveFriendHandler = Future<void> Function({
  required String userId,
  required String friendUserId,
});

enum FriendRequestType {
  incoming,  // 受け取ったリクエスト
  outgoing,  // 送信したリクエスト
}

/// クロスアプリフレンド管理状態
class CrossAppFriendState {
  final FriendListState friendList;
  final List<FriendRankingEntry> friendRanking;
  final bool isLoading;
  final String? error;
  final int? unreadRequestCount; // 未読リクエスト数

  const CrossAppFriendState({
    required this.friendList,
    required this.friendRanking,
    this.isLoading = false,
    this.error,
    this.unreadRequestCount = 0,
  });

  static const empty = CrossAppFriendState(
    friendList: FriendListState(
      friends: [],
      incomingRequests: [],
      outgoingRequests: [],
      blockedUsers: [],
      isLoading: false,
      error: null,
      lastFetched: _nullDateTime,
    ),
    friendRanking: [],
  );

  static const _nullDateTime = 0; // Placeholder

  CrossAppFriendState copyWith({
    FriendListState? friendList,
    List<FriendRankingEntry>? friendRanking,
    bool? isLoading,
    String? error,
    int? unreadRequestCount,
    bool clearError = false,
  }) =>
      CrossAppFriendState(
        friendList: friendList ?? this.friendList,
        friendRanking: friendRanking ?? this.friendRanking,
        isLoading: isLoading ?? this.isLoading,
        error: clearError ? null : (error ?? this.error),
        unreadRequestCount: unreadRequestCount ?? this.unreadRequestCount,
      );
}

/// クロスアプリフレンド管理Notifier
class CrossAppFriendNotifier extends Notifier<CrossAppFriendState> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  FriendListFetchHandler? _listHandler;
  FriendRequestsFetchHandler? _requestsHandler;
  FriendSearchHandler? _searchHandler;
  AddFriendHandler? _addHandler;
  AcceptFriendRequestHandler? _acceptHandler;
  RejectFriendRequestHandler? _rejectHandler;
  RemoveFriendHandler? _removeHandler;

  @override
  CrossAppFriendState build() {
    return const CrossAppFriendState(
      friendList: FriendListState(
        friends: [],
        incomingRequests: [],
        outgoingRequests: [],
        blockedUsers: [],
        isLoading: false,
        error: null,
        lastFetched: 0,
      ),
      friendRanking: [],
    );
  }

  void setHandlers({
    required FriendListFetchHandler listHandler,
    required FriendRequestsFetchHandler requestsHandler,
    required FriendSearchHandler searchHandler,
    required AddFriendHandler addHandler,
    required AcceptFriendRequestHandler acceptHandler,
    required RejectFriendRequestHandler rejectHandler,
    required RemoveFriendHandler removeHandler,
  }) {
    _listHandler = listHandler;
    _requestsHandler = requestsHandler;
    _searchHandler = searchHandler;
    _addHandler = addHandler;
    _acceptHandler = acceptHandler;
    _rejectHandler = rejectHandler;
    _removeHandler = removeHandler;
  }

  /// フレンドリストを取得
  Future<void> fetchFriendList(String userId) async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final handler = _listHandler;
      if (handler == null) {
        throw Exception('FriendListFetchHandler not set');
      }

      final friends = await handler(userId: userId);
      final incomingRequests =
          await _requestsHandler?.call(userId: userId, type: FriendRequestType.incoming) ?? [];
      final outgoingRequests =
          await _requestsHandler?.call(userId: userId, type: FriendRequestType.outgoing) ?? [];

      final friendList = FriendListState(
        friends: friends,
        incomingRequests: incomingRequests,
        outgoingRequests: outgoingRequests,
        blockedUsers: state.friendList.blockedUsers,
        isLoading: false,
        error: null,
        lastFetched: DateTime.now().millisecondsSinceEpoch as dynamic,
      );

      state = state.copyWith(
        friendList: friendList,
        isLoading: false,
        unreadRequestCount: incomingRequests.length,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  /// フレンドランキングを計算・取得
  Future<void> fetchFriendRanking(String userId) async {
    try {
      final friends = state.friendList.friends;
      if (friends.isEmpty) {
        state = state.copyWith(friendRanking: []);
        return;
      }

      // フレンド情報をソート（スコア降順）
      final sortedFriends = List<CrossAppFriend>.from(friends)
        ..sort((a, b) => b.totalScore.compareTo(a.totalScore));

      // ランキング形式に変換
      final ranking = sortedFriends.asMap().entries.map((entry) {
        final friend = entry.value;
        final rank = entry.key + 1;

        return FriendRankingEntry(
          userId: friend.friendUserId,
          displayName: friend.friendDisplayName,
          avatarUrl: friend.friendAvatarUrl,
          totalScore: friend.totalScore,
          friendRank: rank,
          appScores: friend.appScores,
          isOnline: friend.isOnline,
          lastPlayedAt: friend.lastUpdated,
        );
      }).toList();

      state = state.copyWith(friendRanking: ranking);
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }

  /// フレンド検索
  Future<List<FriendSearchResult>> searchFriends(String query,
      {int limit = 20}) async {
    try {
      final handler = _searchHandler;
      if (handler == null) {
        throw Exception('FriendSearchHandler not set');
      }

      return await handler(query: query, limit: limit);
    } catch (e) {
      state = state.copyWith(error: e.toString());
      return [];
    }
  }

  /// フレンドリクエストを送信
  Future<void> sendFriendRequest(
    String fromUserId,
    String toUserId, {
    String? message,
  }) async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final handler = _addHandler;
      if (handler == null) {
        throw Exception('AddFriendHandler not set');
      }

      await handler(
        fromUserId: fromUserId,
        toUserId: toUserId,
        message: message,
      );

      // リクエスト再取得
      await fetchFriendList(fromUserId);

      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  /// フレンドリクエストを承認
  Future<void> acceptFriendRequest(String requestId, String userId) async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final handler = _acceptHandler;
      if (handler == null) {
        throw Exception('AcceptFriendRequestHandler not set');
      }

      await handler(requestId: requestId, userId: userId);

      // フレンドリスト再取得
      await fetchFriendList(userId);

      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  /// フレンドリクエストを拒否
  Future<void> rejectFriendRequest(String requestId, String userId) async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final handler = _rejectHandler;
      if (handler == null) {
        throw Exception('RejectFriendRequestHandler not set');
      }

      await handler(requestId: requestId, userId: userId);

      // フレンドリスト再取得
      await fetchFriendList(userId);

      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  /// フレンドを削除
  Future<void> removeFriend(String userId, String friendUserId) async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final handler = _removeHandler;
      if (handler == null) {
        throw Exception('RemoveFriendHandler not set');
      }

      await handler(userId: userId, friendUserId: friendUserId);

      // フレンドリスト再取得
      await fetchFriendList(userId);

      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }
}

/// クロスアプリフレンド管理プロバイダー
final crossAppFriendProvider =
    NotifierProvider<CrossAppFriendNotifier, CrossAppFriendState>(
  () => CrossAppFriendNotifier(),
);

/// フレンドランキングプロバイダー
final friendRankingProvider =
    Provider.autoDispose<List<FriendRankingEntry>>((ref) {
  final state = ref.watch(crossAppFriendProvider);
  return state.friendRanking;
});

/// フレンド数プロバイダー
final friendCountProvider = Provider.autoDispose<int>((ref) {
  final state = ref.watch(crossAppFriendProvider);
  return state.friendList.friends.length;
});

/// 未読リクエスト数プロバイダー
final unreadFriendRequestsProvider = Provider.autoDispose<int>((ref) {
  final state = ref.watch(crossAppFriendProvider);
  return state.friendList.incomingRequests
      .where((r) => r.status == FriendRequestStatus.pending)
      .length;
});

/// フレンド検索プロバイダー
final friendSearchProvider = FutureProvider.autoDispose
    .family<List<FriendSearchResult>, String>((ref, query) async {
  final notifier = ref.watch(crossAppFriendProvider.notifier);
  return notifier.searchFriends(query);
});
