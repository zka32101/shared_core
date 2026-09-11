import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/global_leaderboard_model.dart';

/// グローバルリーダーボード取得ハンドラー
typedef GlobalLeaderboardFetchHandler = Future<List<UnifiedLeaderboardEntry>>
    Function({
  required LeaderboardFilter filter,
});

/// ユーザー詳細情報取得ハンドラー
typedef UserDetailFetchHandler = Future<UserLeaderboardDetail> Function({
  required String userId,
});

/// リーダーボード統計取得ハンドラー
typedef LeaderboardStatsFetchHandler = Future<LeaderboardStats> Function();

/// グローバルリーダーボード状態
class GlobalLeaderboardState {
  final List<UnifiedLeaderboardEntry> entries;
  final LeaderboardFilter currentFilter;
  final LeaderboardStats? stats;
  final bool isLoading;
  final String? error;
  final int? userRank;
  final int? totalUsers;

  const GlobalLeaderboardState({
    required this.entries,
    required this.currentFilter,
    this.stats,
    this.isLoading = false,
    this.error,
    this.userRank,
    this.totalUsers,
  });

  static GlobalLeaderboardState empty() => GlobalLeaderboardState(
        entries: [],
        currentFilter: LeaderboardFilter(
          type: LeaderboardType.global,
          appFilter: null,
          ageGroupFilter: null,
          limit: 50,
          offset: 0,
        ),
      );

  GlobalLeaderboardState copyWith({
    List<UnifiedLeaderboardEntry>? entries,
    LeaderboardFilter? currentFilter,
    LeaderboardStats? stats,
    bool? isLoading,
    String? error,
    int? userRank,
    int? totalUsers,
    bool clearError = false,
  }) =>
      GlobalLeaderboardState(
        entries: entries ?? this.entries,
        currentFilter: currentFilter ?? this.currentFilter,
        stats: stats ?? this.stats,
        isLoading: isLoading ?? this.isLoading,
        error: clearError ? null : (error ?? this.error),
        userRank: userRank ?? this.userRank,
        totalUsers: totalUsers ?? this.totalUsers,
      );
}

/// グローバルリーダーボード管理
class GlobalLeaderboardNotifier extends Notifier<GlobalLeaderboardState> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  GlobalLeaderboardFetchHandler? _fetchHandler;
  UserDetailFetchHandler? _userDetailHandler;
  LeaderboardStatsFetchHandler? _statsHandler;

  @override
  GlobalLeaderboardState build() {
    return GlobalLeaderboardState.empty();
  }

  void setFetchHandlers({
    required GlobalLeaderboardFetchHandler fetchHandler,
    required UserDetailFetchHandler userDetailHandler,
    required LeaderboardStatsFetchHandler statsHandler,
  }) {
    _fetchHandler = fetchHandler;
    _userDetailHandler = userDetailHandler;
    _statsHandler = statsHandler;
  }

  /// グローバルリーダーボードを取得
  Future<void> fetchGlobalLeaderboard({int limit = 50}) async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final handler = _fetchHandler;
      if (handler == null) {
        throw Exception('GlobalLeaderboardFetchHandler not set');
      }

      final filter = LeaderboardFilter(
        type: LeaderboardType.global,
        appFilter: null,
        ageGroupFilter: null,
        limit: limit,
        offset: 0,
      );

      final entries = await handler(filter: filter);
      final stats = await _statsHandler?.call();

      state = state.copyWith(
        entries: entries,
        currentFilter: filter,
        stats: stats,
        isLoading: false,
        totalUsers: stats?.totalUsers,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  /// フレンドランキングを取得
  Future<void> fetchFriendsLeaderboard({int limit = 50}) async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final handler = _fetchHandler;
      if (handler == null) {
        throw Exception('GlobalLeaderboardFetchHandler not set');
      }

      final filter = LeaderboardFilter(
        type: LeaderboardType.friends,
        appFilter: null,
        ageGroupFilter: null,
        limit: limit,
        offset: 0,
      );

      final entries = await handler(filter: filter);

      state = state.copyWith(
        entries: entries,
        currentFilter: filter,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  /// 週間ランキングを取得
  Future<void> fetchWeeklyLeaderboard({int limit = 50}) async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final handler = _fetchHandler;
      if (handler == null) {
        throw Exception('GlobalLeaderboardFetchHandler not set');
      }

      final filter = LeaderboardFilter(
        type: LeaderboardType.weekly,
        appFilter: null,
        ageGroupFilter: null,
        limit: limit,
        offset: 0,
      );

      final entries = await handler(filter: filter);

      state = state.copyWith(
        entries: entries,
        currentFilter: filter,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  /// 月間ランキングを取得
  Future<void> fetchMonthlyLeaderboard({int limit = 50}) async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final handler = _fetchHandler;
      if (handler == null) {
        throw Exception('GlobalLeaderboardFetchHandler not set');
      }

      final filter = LeaderboardFilter(
        type: LeaderboardType.monthly,
        appFilter: null,
        ageGroupFilter: null,
        limit: limit,
        offset: 0,
      );

      final entries = await handler(filter: filter);

      state = state.copyWith(
        entries: entries,
        currentFilter: filter,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  /// 特定アプリでフィルタ
  Future<void> filterByApp(String appId, {int limit = 50}) async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final handler = _fetchHandler;
      if (handler == null) {
        throw Exception('GlobalLeaderboardFetchHandler not set');
      }

      final newFilter = state.currentFilter.copyWith(
        appFilter: appId,
        limit: limit,
        offset: 0,
      );

      final entries = await handler(filter: newFilter);

      state = state.copyWith(
        entries: entries,
        currentFilter: newFilter,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  /// 学年でフィルタ
  Future<void> filterByAgeGroup(AgeGroup ageGroup, {int limit = 50}) async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final handler = _fetchHandler;
      if (handler == null) {
        throw Exception('GlobalLeaderboardFetchHandler not set');
      }

      final newFilter = state.currentFilter.copyWith(
        ageGroupFilter: ageGroup,
        limit: limit,
        offset: 0,
      );

      final entries = await handler(filter: newFilter);

      state = state.copyWith(
        entries: entries,
        currentFilter: newFilter,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  /// ページネーション（次ページ）
  Future<void> nextPage() async {
    final newFilter = state.currentFilter.copyWith(
      offset: state.currentFilter.offset + state.currentFilter.limit,
    );

    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final handler = _fetchHandler;
      if (handler == null) {
        throw Exception('GlobalLeaderboardFetchHandler not set');
      }

      final entries = await handler(filter: newFilter);

      state = state.copyWith(
        entries: [...state.entries, ...entries],
        currentFilter: newFilter,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  /// ユーザー詳細情報を取得
  Future<UserLeaderboardDetail?> fetchUserDetail(String userId) async {
    try {
      final handler = _userDetailHandler;
      if (handler == null) {
        throw Exception('UserDetailFetchHandler not set');
      }

      return await handler(userId: userId);
    } catch (e) {
      state = state.copyWith(error: e.toString());
      return null;
    }
  }

  /// ユーザーの現在の順位を取得
  Future<int?> getUserRank(String userId) async {
    try {
      final handler = _fetchHandler;
      if (handler == null) {
        throw Exception('GlobalLeaderboardFetchHandler not set');
      }

      final filter = LeaderboardFilter(
        type: LeaderboardType.global,
        appFilter: null,
        ageGroupFilter: null,
        limit: 100000, // 全ユーザーを取得して順位計算
        offset: 0,
      );

      final allEntries = await handler(filter: filter);
      for (int i = 0; i < allEntries.length; i++) {
        if (allEntries[i].userId == userId) {
          return i + 1; // 1-indexed
        }
      }

      return null;
    } catch (e) {
      return null;
    }
  }
}

/// グローバルリーダーボードプロバイダー
final globalLeaderboardProvider =
    NotifierProvider<GlobalLeaderboardNotifier, GlobalLeaderboardState>(
  () => GlobalLeaderboardNotifier(),
);

/// ユーザー詳細情報プロバイダー（特定ユーザーID）
final userLeaderboardDetailProvider =
    FutureProvider.autoDispose.family<UserLeaderboardDetail?, String>((ref, userId) async {
  final notifier = ref.watch(globalLeaderboardProvider.notifier);
  return notifier.fetchUserDetail(userId);
});

/// 統計情報プロバイダー
final leaderboardStatsProvider =
    FutureProvider.autoDispose<LeaderboardStats?>((ref) async {
  final state = ref.watch(globalLeaderboardProvider);
  return state.stats;
});

/// トップ10プロバイダー（キャッシュ用）
final leaderboardTop10Provider =
    Provider.autoDispose<List<UnifiedLeaderboardEntry>>((ref) {
  final state = ref.watch(globalLeaderboardProvider);
  return state.entries.take(10).toList();
});
