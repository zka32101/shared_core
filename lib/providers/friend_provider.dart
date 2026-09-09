import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/friend_model.dart';

/// 実際の友達データ取得・追加処理（Firestore等）は各アプリ側から注入する。
/// 各アプリのバックエンド構成がバラバラなため、shared_core は型と共通ロジックのみを
/// 提供し、実処理はコールバックとして外から与えてもらう（feedback/ranking と同じ
/// 「型・共通ロジックは shared_core、実処理はアプリ側」という設計）。
typedef FriendFetchHandler = Future<List<Friend>> Function();
typedef FriendAddHandler = Future<Friend> Function(String friendCodeOrId);
typedef FriendRemoveHandler = Future<void> Function(String friendUserId);

class FriendState {
  final List<Friend> friends;
  final bool isLoading;
  final String? error;

  const FriendState({
    required this.friends,
    this.isLoading = false,
    this.error,
  });

  static const empty = FriendState(friends: []);

  FriendState copyWith({
    List<Friend>? friends,
    bool? isLoading,
    String? error,
    bool clearError = false,
  }) =>
      FriendState(
        friends: friends ?? this.friends,
        isLoading: isLoading ?? this.isLoading,
        error: clearError ? null : (error ?? this.error),
      );
}

class FriendNotifier extends Notifier<FriendState> {
  FriendFetchHandler? _fetchHandler;
  FriendAddHandler? _addHandler;
  FriendRemoveHandler? _removeHandler;

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
}

final friendProvider = NotifierProvider<FriendNotifier, FriendState>(FriendNotifier.new);
