import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/multiplayer_model.dart';

/// バトルセッション関連の handlers（各アプリで注入）。
typedef GetBattleSessionHandler = Future<BattleSession?> Function(String sessionId);
typedef WatchBattleSessionHandler = Stream<BattleSession> Function(String sessionId);
typedef GetUserRatingHandler = Future<UserRating> Function(String userId);
typedef GetGlobalLeaderboardHandler = Future<List<LeaderboardEntry>> Function({
  int limit,
  int offset,
});
typedef GetSubjectLeaderboardHandler = Future<List<LeaderboardEntry>> Function(
  String subject, {
  int limit,
  int offset,
});

/// 各アプリが [battleSessionHandlersProvider] を override して注入するハンドラ束。
class BattleSessionHandlers {
  final GetBattleSessionHandler getBattleSession;
  final WatchBattleSessionHandler watchBattleSession;
  final GetUserRatingHandler getUserRating;
  final GetGlobalLeaderboardHandler getGlobalLeaderboard;
  final GetSubjectLeaderboardHandler getSubjectLeaderboard;

  const BattleSessionHandlers({
    required this.getBattleSession,
    required this.watchBattleSession,
    required this.getUserRating,
    required this.getGlobalLeaderboard,
    required this.getSubjectLeaderboard,
  });
}

/// 各アプリがこの provider を override してハンドラを注入する。
///
/// ```dart
/// ProviderScope(
///   overrides: [
///     battleSessionHandlersProvider.overrideWithValue(
///       BattleSessionHandlers(...), // 例: FirestoreBattleSessionService から生成
///     ),
///   ],
///   child: MyApp(),
/// )
/// ```
final battleSessionHandlersProvider = Provider<BattleSessionHandlers>((ref) {
  throw UnimplementedError(
    'battleSessionHandlersProvider must be overridden in each app\'s ProviderScope',
  );
});

/// アクティブなバトルセッションを取得（単一）。
///
/// アプリ側で [watchBattleSession] を注入することで、リアルタイム同期が可能。
final activeBattleSessionProvider =
    StreamProvider.autoDispose.family<BattleSession, String>((ref, sessionId) {
  final handlers = ref.watch(battleSessionHandlersProvider);
  return handlers.watchBattleSession(sessionId);
});

/// 特定のユーザーレーティングを取得。
///
/// Glicko-2ベースの詳細レーティング情報を提供。
final userRatingProvider = FutureProvider.autoDispose.family<UserRating, String>((ref, userId) async {
  final handlers = ref.watch(battleSessionHandlersProvider);
  return handlers.getUserRating(userId);
});

/// グローバルランキング（全体）。
///
/// 全7アプリのユーザーを統合したランキング。
final globalLeaderboardProvider = FutureProvider.autoDispose<List<LeaderboardEntry>>((ref) async {
  final handlers = ref.watch(battleSessionHandlersProvider);
  return handlers.getGlobalLeaderboard(limit: 100, offset: 0);
});

/// 教科別ランキング。
///
/// 各教科ごと（sansu, kokugo等）の独立したランキング。
final subjectLeaderboardProvider =
    FutureProvider.autoDispose.family<List<LeaderboardEntry>, String>((ref, subject) async {
  final handlers = ref.watch(battleSessionHandlersProvider);
  return handlers.getSubjectLeaderboard(subject, limit: 50, offset: 0);
});

/// ユーザーの自分順位を計算するヘルパー。
final userRankProvider = FutureProvider.autoDispose.family<int?, String>((ref, userId) async {
  final leaderboard = await ref.watch(globalLeaderboardProvider.future);
  for (final entry in leaderboard) {
    if (entry.userId == userId) {
      return entry.rank;
    }
  }
  return null;
});

/// 教科別ランキングでのユーザー順位。
final userSubjectRankProvider = FutureProvider.autoDispose
    .family<int?, (String subject, String userId)>((ref, args) async {
  final leaderboard = await ref.watch(subjectLeaderboardProvider(args.$1).future);
  for (final entry in leaderboard) {
    if (entry.userId == args.$2) {
      return entry.rank;
    }
  }
  return null;
});

/// バトルセッションの購読・管理ロジック（オプション拡張用）。
///
/// デフォルトではハンドラ注入のみだが、複雑なキャッシングや
/// ローカルストレージとの同期が必要な場合、このクラスをサブクラス化できる
/// （[BaseMatchmakingNotifier] と同じ設計哲学）。
abstract class BaseBattleSessionNotifier extends Notifier<BattleSession?> {
  BattleSessionHandlers get handlers => ref.watch(battleSessionHandlersProvider);

  /// バトルセッションの変更を監視開始。
  Future<void> watchSession(String sessionId) async {
    // ハンドラから取得
    final session = await handlers.getBattleSession(sessionId);
    state = session;
  }

  @override
  BattleSession? build() {
    return null;
  }
}

// デフォルト実装（ハンドラ注入のみ）
class _DefaultBattleSessionNotifier extends BaseBattleSessionNotifier {}

/// アクティブなバトルセッションの状態を管理する provider（オプション）。
///
/// リアルタイム同期が必要でない場合の単純なキャッシング用。
/// 通常は [activeBattleSessionProvider] (Stream) を使用推奨。
final battleSessionNotifierProvider =
    NotifierProvider<BaseBattleSessionNotifier, BattleSession?>(_DefaultBattleSessionNotifier.new);

/// ユーザーのランキング履歴（複数の試合結果）を取得。
///
/// アプリ側で実装する際の参考用。
typedef GetUserMatchHistoryHandler = Future<List<MatchResult>> Function(
  String userId, {
  int limit,
  int offset,
});

/// ユーザーの試合履歴 provider。
final userMatchHistoryProvider =
    FutureProvider.autoDispose.family<List<MatchResult>, String>((ref, userId) async {
  // 注: この provider は各アプリで matchResultsHandlerProvider を別途定義する必要がある
  // 例: final matchResultsHandlerProvider = Provider<GetUserMatchHistoryHandler>(...);
  // ref.watch(matchResultsHandlerProvider)(userId, limit: 20, offset: 0);
  return [];
});
