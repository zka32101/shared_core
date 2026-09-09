import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/ranking_model.dart';

/// 実際のランキングデータ取得処理（Firestore/RTDBクエリ等）は各アプリ側から注入する。
/// shared_core は特定のデータソースに依存しないため、取得手段はコールバックとして
/// 外から与えてもらう（feedback_provider の setSubmitHandler、badge_provider の
/// setBadgeDefinitions と同じ「型・共通ロジックは shared_core、実処理はアプリ側」という
/// 設計）。
typedef RankingFetchHandler = Future<List<RankingEntry>> Function(RankingFilter filter);

class RankingState {
  final List<RankingEntry> entries;
  final RankingFilter filter;
  final bool isLoading;
  final String? error;

  const RankingState({
    required this.entries,
    required this.filter,
    this.isLoading = false,
    this.error,
  });

  static const empty = RankingState(entries: [], filter: RankingFilter());

  RankingState copyWith({
    List<RankingEntry>? entries,
    RankingFilter? filter,
    bool? isLoading,
    String? error,
    bool clearError = false,
  }) =>
      RankingState(
        entries: entries ?? this.entries,
        filter: filter ?? this.filter,
        isLoading: isLoading ?? this.isLoading,
        error: clearError ? null : (error ?? this.error),
      );
}

class RankingNotifier extends Notifier<RankingState> {
  RankingFetchHandler? _fetchHandler;

  /// 各アプリが実際のランキング取得処理（Firestoreの `rankings` コレクションへの
  /// クエリ等）を注入する。
  void setFetchHandler(RankingFetchHandler handler) {
    _fetchHandler = handler;
  }

  @override
  RankingState build() => RankingState.empty;

  /// 指定フィルタでランキングを取得し、[RankingState.entries] を更新する。
  ///
  /// [setFetchHandler] が未登録の場合はエラー状態にする。
  Future<void> loadRankings(RankingFilter filter) async {
    state = state.copyWith(filter: filter, isLoading: true, clearError: true);

    final handler = _fetchHandler;
    if (handler == null) {
      state = state.copyWith(
        isLoading: false,
        error: 'ランキング取得処理が未登録です（setFetchHandlerを呼び出してください）',
      );
      return;
    }

    try {
      final entries = await handler(filter);
      state = state.copyWith(entries: entries, isLoading: false, clearError: true);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  /// 現在のフィルタを保ったまま再読み込みする。
  Future<void> refresh() => loadRankings(state.filter);

  /// グループ化種別のみ変更して再読み込みする。
  Future<void> setGroupBy(RankingGroupBy groupBy) =>
      loadRankings(state.filter.copyWith(groupBy: groupBy));

  /// 学年フィルタのみ変更して再読み込みする。null を渡すと学年フィルタを解除する。
  Future<void> setGradeFilter(int? grade) => loadRankings(
        state.filter.copyWith(grade: grade, clearGrade: grade == null),
      );

  /// 開始時期フィルタ（例: '2026-09'）のみ変更して再読み込みする。
  /// null を渡すと開始時期フィルタを解除する。
  Future<void> setStartPeriodFilter(String? startPeriod) => loadRankings(
        state.filter.copyWith(
          startPeriod: startPeriod,
          clearStartPeriod: startPeriod == null,
        ),
      );
}

final rankingProvider = NotifierProvider<RankingNotifier, RankingState>(RankingNotifier.new);
