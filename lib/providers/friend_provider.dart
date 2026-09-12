import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/friend_model.dart';

/// 実際の友達データ取得・追加処理（Firestore等）は各アプリ側から注入する。
/// 各アプリのバックエンド構成がバラバラなため、shared_core は型と共通ロジックのみを
/// 提供し、実処理はコールバックとして外から与えてもらう（feedback/ranking と同じ
/// 「型・共通ロジックは shared_core、実処理はアプリ側」という設計）。
typedef FriendFetchHandler = Future<List<Friend>> Function();
typedef FriendAddHandler = Future<Friend> Function(String friendCodeOrId);
typedef FriendRemoveHandler = Future<void> Function(String friendUserId);

/// Phase 4.4: フレンド検索・申請機能
/// ユーザー名またはユーザーID で検索、検索結果を返す
typedef FriendSearchHandler = Future<List<Friend>> Function(String query);

/// フレンドリクエストを送信
typedef FriendRequestHandler = Future<void> Function(String targetUserId);

class FriendState {
  final List<Friend> friends;
  final bool isLoading;
  final String? error;

  /// Phase 4.4: フレンド検索・申請機能
  /// 受け取ったペンディングリクエスト（他ユーザーからの申請）
  final List<Friend> pendingRequests;
  /// 検索結果（検索画面で表示）
  final List<Friend> searchResults;

  const FriendState({
    required this.friends,
    this.isLoading = false,
    this.error,
    this.pendingRequests = const [],
    this.searchResults = const [],
  });

  static const empty = FriendState(friends: []);

  FriendState copyWith({
    List<Friend>? friends,
    bool? isLoading,
    String? error,
    bool clearError = false,
    List<Friend>? pendingRequests,
    List<Friend>? searchResults,
  }) =>
      FriendState(
        friends: friends ?? this.friends,
        isLoading: isLoading ?? this.isLoading,
        error: clearError ? null : (error ?? this.error),
        pendingRequests: pendingRequests ?? this.pendingRequests,
        searchResults: searchResults ?? this.searchResults,
      );
}

class FriendNotifier extends Notifier<FriendState> {
  FriendFetchHandler? _fetchHandler;
  FriendAddHandler? _addHandler;
  FriendRemoveHandler? _removeHandler;

  /// Phase 4.4: フレンド検索・申請機能
  FriendSearchHandler? _searchHandler;
  FriendRequestHandler? _requestHandler;

  /// 各アプリが実際の友達一覧取得処理を注入する。
  void setFetchHandler(FriendFetchHandler handler) {
    _fetchHandler = handler;
  }

  /// 各アプリが実際の友達追加処理（招待コード解決等）を注入する。
  void setAddFriendHandler(FriendAddHandler handler) {
    _addHandler = handler;
  }

  /// 各アプリが実際の友達削除処理を注入する。
  void setRemoveFriendHandler(FriendRemoveHandler handler) {
    _removeHandler = handler;
  }

  /// Phase 4.4: 各アプリが実際のフレンド検索処理を注入する。
  void setSearchHandler(FriendSearchHandler handler) {
    _searchHandler = handler;
  }

  /// Phase 4.4: 各アプリが実際のフレンド申請処理を注入する。
  void setRequestHandler(FriendRequestHandler handler) {
    _requestHandler = handler;
  }

  @override
  FriendState build() => FriendState.empty;

  /// 友達一覧を取得し直す。[setFetchHandler] が未登録の場合はエラー状態にする。
  Future<void> loadFriends() async {
    state = state.copyWith(isLoading: true, clearError: true);

    final handler = _fetchHandler;
    if (handler == null) {
      state = state.copyWith(
        isLoading: false,
        error: '友達取得処理が未登録です（setFetchHandlerを呼び出してください）',
      );
      return;
    }

    try {
      final friends = await handler();
      state = state.copyWith(friends: friends, isLoading: false, clearError: true);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  /// 招待コード等から友達を追加する。[setAddFriendHandler] が未登録の場合は
  /// 何もせずエラー状態にする。
  Future<void> addFriend(String friendCodeOrId) async {
    final handler = _addHandler;
    if (handler == null) {
      state = state.copyWith(error: '友達追加処理が未登録です（setAddFriendHandlerを呼び出してください）');
      return;
    }

    try {
      final friend = await handler(friendCodeOrId);
      state = state.copyWith(
        friends: [...state.friends, friend],
        clearError: true,
      );
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }

  /// 友達を削除する。[setRemoveFriendHandler] が未登録の場合は何もせずエラー状態にする。
  Future<void> removeFriend(String friendUserId) async {
    final handler = _removeHandler;
    if (handler == null) {
      state = state.copyWith(error: '友達削除処理が未登録です（setRemoveFriendHandlerを呼び出してください）');
      return;
    }

    try {
      await handler(friendUserId);
      state = state.copyWith(
        friends: state.friends.where((f) => f.friendUserId != friendUserId).toList(),
        clearError: true,
      );
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }

  /// Phase 4.4: ユーザー名またはユーザーID でフレンドを検索する。
  /// [setSearchHandler] が未登録の場合はエラー状態にする。
  Future<void> searchFriends(String query) async {
    state = state.copyWith(isLoading: true, clearError: true);

    final handler = _searchHandler;
    if (handler == null) {
      state = state.copyWith(
        isLoading: false,
        error: 'フレンド検索処理が未登録です（setSearchHandlerを呼び出してください）',
      );
      return;
    }

    try {
      final results = await handler(query);
      state = state.copyWith(searchResults: results, isLoading: false, clearError: true);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  /// Phase 4.4: フレンド申請を送信する。
  /// [setRequestHandler] が未登録の場合はエラー状態にする。
  Future<void> sendFriendRequest(String targetUserId) async {
    final handler = _requestHandler;
    if (handler == null) {
      state = state.copyWith(error: 'フレンド申請処理が未登録です（setRequestHandlerを呼び出してください）');
      return;
    }

    try {
      await handler(targetUserId);
      state = state.copyWith(clearError: true);
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }
}

final friendProvider = NotifierProvider<FriendNotifier, FriendState>(FriendNotifier.new);
