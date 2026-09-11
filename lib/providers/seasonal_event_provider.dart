import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/seasonal_event_model.dart';

/// シーズナルイベント取得ハンドラー
typedef EventListFetchHandler = Future<List<SeasonalEvent>> Function({
  required EventFilterType filterType,
});

/// ユーザーのイベント参加情報取得ハンドラー
typedef UserEventProgressFetchHandler = Future<UserEventProgress?> Function({
  required String userId,
  required String eventId,
});

/// イベント参加ハンドラー
typedef JoinEventHandler = Future<void> Function({
  required String userId,
  required String eventId,
});

/// イベントタスク完了ハンドラー
typedef CompleteEventTaskHandler = Future<void> Function({
  required String userId,
  required String eventId,
  required String taskId,
});

/// イベントリーダーボード取得ハンドラー
typedef EventLeaderboardFetchHandler = Future<List<EventLeaderboardEntry>>
    Function({
  required String eventId,
  required int limit,
});

enum EventFilterType {
  active,    // 進行中のイベント
  upcoming,  // 今後のイベント
  past,      // 終了したイベント
  all,       // すべてのイベント
}

/// シーズナルイベント管理状態
class SeasonalEventState {
  final List<SeasonalEvent> events;
  final Map<String, UserEventProgress> userProgress; // eventId -> progress
  final Map<String, List<EventLeaderboardEntry>> eventLeaderboards;
  final String? selectedEventId;
  final bool isLoading;
  final String? error;
  final int? userCompletedEventsCount;

  const SeasonalEventState({
    required this.events,
    required this.userProgress,
    required this.eventLeaderboards,
    this.selectedEventId,
    this.isLoading = false,
    this.error,
    this.userCompletedEventsCount = 0,
  });

  static const empty = SeasonalEventState(
    events: [],
    userProgress: {},
    eventLeaderboards: {},
  );

  SeasonalEventState copyWith({
    List<SeasonalEvent>? events,
    Map<String, UserEventProgress>? userProgress,
    Map<String, List<EventLeaderboardEntry>>? eventLeaderboards,
    String? selectedEventId,
    bool? isLoading,
    String? error,
    int? userCompletedEventsCount,
    bool clearError = false,
  }) =>
      SeasonalEventState(
        events: events ?? this.events,
        userProgress: userProgress ?? this.userProgress,
        eventLeaderboards: eventLeaderboards ?? this.eventLeaderboards,
        selectedEventId: selectedEventId ?? this.selectedEventId,
        isLoading: isLoading ?? this.isLoading,
        error: clearError ? null : (error ?? this.error),
        userCompletedEventsCount:
            userCompletedEventsCount ?? this.userCompletedEventsCount,
      );
}

/// シーズナルイベント管理Notifier
class SeasonalEventNotifier extends Notifier<SeasonalEventState> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  EventListFetchHandler? _listHandler;
  UserEventProgressFetchHandler? _progressHandler;
  JoinEventHandler? _joinHandler;
  CompleteEventTaskHandler? _taskHandler;
  EventLeaderboardFetchHandler? _leaderboardHandler;

  @override
  SeasonalEventState build() {
    return const SeasonalEventState(
      events: [],
      userProgress: {},
      eventLeaderboards: {},
    );
  }

  void setHandlers({
    required EventListFetchHandler listHandler,
    required UserEventProgressFetchHandler progressHandler,
    required JoinEventHandler joinHandler,
    required CompleteEventTaskHandler taskHandler,
    required EventLeaderboardFetchHandler leaderboardHandler,
  }) {
    _listHandler = listHandler;
    _progressHandler = progressHandler;
    _joinHandler = joinHandler;
    _taskHandler = taskHandler;
    _leaderboardHandler = leaderboardHandler;
  }

  /// アクティブなイベントを取得
  Future<void> fetchActiveEvents() async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final handler = _listHandler;
      if (handler == null) {
        throw Exception('EventListFetchHandler not set');
      }

      final events = await handler(filterType: EventFilterType.active);
      state = state.copyWith(
        events: events,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  /// 今後のイベントを取得
  Future<void> fetchUpcomingEvents() async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final handler = _listHandler;
      if (handler == null) {
        throw Exception('EventListFetchHandler not set');
      }

      final events = await handler(filterType: EventFilterType.upcoming);
      state = state.copyWith(
        events: events,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  /// すべてのイベントを取得
  Future<void> fetchAllEvents() async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final handler = _listHandler;
      if (handler == null) {
        throw Exception('EventListFetchHandler not set');
      }

      final events = await handler(filterType: EventFilterType.all);
      state = state.copyWith(
        events: events,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  /// ユーザーのイベント参加情報を取得
  Future<void> fetchUserEventProgress(String userId, String eventId) async {
    try {
      final handler = _progressHandler;
      if (handler == null) {
        throw Exception('UserEventProgressFetchHandler not set');
      }

      final progress = await handler(userId: userId, eventId: eventId);

      if (progress != null) {
        state = state.copyWith(
          userProgress: {
            ...state.userProgress,
            eventId: progress,
          },
        );
      }
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }

  /// イベントに参加
  Future<void> joinEvent(String userId, String eventId) async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final handler = _joinHandler;
      if (handler == null) {
        throw Exception('JoinEventHandler not set');
      }

      await handler(userId: userId, eventId: eventId);

      // ユーザーの参加情報を取得
      await fetchUserEventProgress(userId, eventId);

      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  /// イベントタスクを完了
  Future<void> completeEventTask(
    String userId,
    String eventId,
    String taskId,
  ) async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final handler = _taskHandler;
      if (handler == null) {
        throw Exception('CompleteEventTaskHandler not set');
      }

      await handler(userId: userId, eventId: eventId, taskId: taskId);

      // ユーザーの進捗情報を再取得
      await fetchUserEventProgress(userId, eventId);

      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  /// イベントリーダーボードを取得
  Future<void> fetchEventLeaderboard(String eventId, {int limit = 50}) async {
    try {
      final handler = _leaderboardHandler;
      if (handler == null) {
        throw Exception('EventLeaderboardFetchHandler not set');
      }

      final leaderboard = await handler(eventId: eventId, limit: limit);

      state = state.copyWith(
        eventLeaderboards: {
          ...state.eventLeaderboards,
          eventId: leaderboard,
        },
      );
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }

  /// イベントを選択
  void selectEvent(String eventId) {
    state = state.copyWith(selectedEventId: eventId);
  }

  /// 特定のイベント情報を取得
  SeasonalEvent? getEventById(String eventId) {
    try {
      return state.events.firstWhere((e) => e.eventId == eventId);
    } catch (e) {
      return null;
    }
  }

  /// ユーザーの完了イベント数を計算
  void updateCompletedEventsCount(String userId) {
    int count = 0;
    for (var progress in state.userProgress.values) {
      if (progress.hasCompletedEvent) {
        count++;
      }
    }
    state = state.copyWith(userCompletedEventsCount: count);
  }
}

/// シーズナルイベント管理プロバイダー
final seasonalEventProvider =
    NotifierProvider<SeasonalEventNotifier, SeasonalEventState>(
  () => SeasonalEventNotifier(),
);

/// アクティブなイベントプロバイダー
final activeEventsProvider =
    Provider.autoDispose<List<SeasonalEvent>>((ref) {
  final state = ref.watch(seasonalEventProvider);
  return state.events.where((e) => e.isActive).toList();
});

/// ユーザーの参加イベント一覧プロバイダー
final userJoinedEventsProvider = Provider.autoDispose<List<SeasonalEvent>>((ref) {
  final state = ref.watch(seasonalEventProvider);
  return state.events
      .where((e) => state.userProgress.containsKey(e.eventId))
      .toList();
});

/// イベント進捗プロバイダー（特定イベントID）
final eventProgressProvider = Provider.autoDispose
    .family<UserEventProgress?, String>((ref, eventId) {
  final state = ref.watch(seasonalEventProvider);
  return state.userProgress[eventId];
});

/// イベントリーダーボードプロバイダー（特定イベントID）
final eventLeaderboardProvider = Provider.autoDispose
    .family<List<EventLeaderboardEntry>, String>((ref, eventId) {
  final state = ref.watch(seasonalEventProvider);
  return state.eventLeaderboards[eventId] ?? [];
});

/// イベントリーダーボードトップ10プロバイダー
final eventLeaderboardTop10Provider = Provider.autoDispose
    .family<List<EventLeaderboardEntry>, String>((ref, eventId) {
  final leaderboard = ref.watch(eventLeaderboardProvider(eventId));
  return leaderboard.take(10).toList();
});

/// ユーザー完了イベント数プロバイダー
final userCompletedEventsCountProvider =
    Provider.autoDispose<int>((ref) {
  final state = ref.watch(seasonalEventProvider);
  int count = 0;
  for (var progress in state.userProgress.values) {
    if (progress.hasCompletedEvent) {
      count++;
    }
  }
  return count;
});
