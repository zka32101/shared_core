import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/global_ranking_model.dart';

/// グローバルランキングフェッチハンドラー
typedef GlobalRankingFetchHandler = Future<List<GlobalRankingEntry>> Function({
  required int limit,
  required String? subject, // null でグローバル、'math' など で教科別
});

/// グローバルランキング状態
class GlobalRankingState {
  final List<GlobalRankingEntry> entries;
  final String? selectedSubject; // null = グローバル
  final bool isLoading;
  final String? error;
  final int? userRank; // 現在ユーザーの順位

  const GlobalRankingState({
    required this.entries,
    this.selectedSubject,
    this.isLoading = false,
    this.error,
    this.userRank,
  });

  static const empty = GlobalRankingState(entries: []);

  GlobalRankingState copyWith({
    List<GlobalRankingEntry>? entries,
    String? selectedSubject,
    bool? isLoading,
    String? error,
    int? userRank,
    bool clearError = false,
  }) =>
      GlobalRankingState(
        entries: entries ?? this.entries,
        selectedSubject: selectedSubject ?? this.selectedSubject,
        isLoading: isLoading ?? this.isLoading,
        error: clearError ? null : (error ?? this.error),
        userRank: userRank ?? this.userRank,
      );
}

/// グローバルランキング管理 (Firestore)
class GlobalRankingNotifier extends Notifier<GlobalRankingState> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  GlobalRankingFetchHandler? _fetchHandler;

  void setFetchHandler(GlobalRankingFetchHandler handler) {
    _fetchHandler = handler;
  }

  /// グローバルランキングを取得（limit: 50件）
  Future<void> fetchGlobalRanking() async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final handler = _fetchHandler;
      if (handler == null) {
        throw Exception('GlobalRankingFetchHandler not set');
      }

      final entries = await handler(limit: 50, subject: null);
      state = state.copyWith(
        entries: entries,
        isLoading: false,
        selectedSubject: null,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  /// 教科別ランキングを取得
  Future<void> fetchSubjectRanking(String subject) async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final handler = _fetchHandler;
      if (handler == null) {
        throw Exception('GlobalRankingFetchHandler not set');
      }

      final entries = await handler(limit: 50, subject: subject);
      state = state.copyWith(
        entries: entries,
        isLoading: false,
        selectedSubject: subject,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  /// 現在のユーザーの順位を取得
  Future<int?> getUserRank(String userId) async {
    try {
      final subject = state.selectedSubject;

      if (subject == null) {
        // グローバルランキングで検索
        final query = await _firestore
            .collection('global_rankings')
            .orderBy('totalScore', descending: true)
            .where(FieldPath.documentId, isEqualTo: userId)
            .get();

        if (query.docs.isEmpty) return null;

        final userEntry = GlobalRankingEntry.fromJson(query.docs.first.data());
        return userEntry.globalRank;
      } else {
        // 教科別ランキングで検索
        final query = await _firestore
            .collection('subject_rankings')
            .doc(subject)
            .collection('users')
            .where(FieldPath.documentId, isEqualTo: userId)
            .get();

        if (query.docs.isEmpty) return null;

        final userEntry =
            SubjectRankingEntry.fromJson(query.docs.first.data());
        return userEntry.subjectRank;
      }
    } catch (e) {
      return null;
    }
  }

  @override
  GlobalRankingState build() => GlobalRankingState.empty;
}

/// グローバルランキング Provider
final globalRankingProvider =
    NotifierProvider<GlobalRankingNotifier, GlobalRankingState>(
  () => GlobalRankingNotifier(),
);

/// 教科別ランキング（リアルタイム）- Firestore Stream
final subjectRankingStreamProvider =
    StreamProvider.family<List<SubjectRankingEntry>, String>((ref, subject) {
  return FirebaseFirestore.instance
      .collection('subject_rankings')
      .doc(subject)
      .collection('users')
      .orderBy('score', descending: true)
      .limit(50)
      .snapshots()
      .map((snapshot) => snapshot.docs
          .map((doc) => SubjectRankingEntry.fromJson(doc.data()))
          .toList());
});

/// ユーザー統計（リアルタイム）
final userRankingStatsProvider =
    StreamProvider.family<UserRankingStats?, String>((ref, userId) {
  return FirebaseFirestore.instance
      .collection('user_ranking_stats')
      .doc(userId)
      .snapshots()
      .map((snapshot) {
    if (!snapshot.exists) return null;
    return UserRankingStats.fromJson(snapshot.data()!);
  });
});
