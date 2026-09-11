import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/retention_model.dart';

/// チャーン予測取得ハンドラー
typedef FetchChurnPredictionsHandler = Future<List<ChurnPrediction>> Function({
  required int limit,
});

/// ユーザーリテンション分析取得ハンドラー
typedef FetchUserRetentionHandler = Future<UserRetentionAnalytics?> Function({
  required String userId,
});

/// リエンゲージメント施策保存ハンドラー
typedef SaveReengagementCampaignHandler = Future<void> Function({
  required ReengagementCampaign campaign,
});

/// コホート分析取得ハンドラー
typedef FetchCohortAnalysisHandler = Future<CohortAnalytics?> Function({
  required String cohortId,
});

/// 人口統計取得ハンドラー
typedef FetchPopulationStatsHandler = Future<PopulationStats?> Function();

/// リテンション設定取得ハンドラー
typedef FetchRetentionConfigHandler = Future<RetentionConfig?> Function();

/// リテンション管理状態
class RetentionState {
  final List<ChurnPrediction> churnPredictions;
  final Map<String, UserRetentionAnalytics> userRetentionAnalytics; // userId -> analytics
  final Map<String, ReengagementCampaign> activeReengagementCampaigns; // userId -> campaign
  final Map<String, CohortAnalytics> cohortAnalytics; // cohortId -> analytics
  final PopulationStats? populationStats;
  final RetentionConfig? retentionConfig;
  final bool isLoading;
  final String? error;

  const RetentionState({
    required this.churnPredictions,
    required this.userRetentionAnalytics,
    required this.activeReengagementCampaigns,
    required this.cohortAnalytics,
    this.populationStats,
    this.retentionConfig,
    this.isLoading = false,
    this.error,
  });

  static const empty = RetentionState(
    churnPredictions: [],
    userRetentionAnalytics: {},
    activeReengagementCampaigns: {},
    cohortAnalytics: {},
  );

  RetentionState copyWith({
    List<ChurnPrediction>? churnPredictions,
    Map<String, UserRetentionAnalytics>? userRetentionAnalytics,
    Map<String, ReengagementCampaign>? activeReengagementCampaigns,
    Map<String, CohortAnalytics>? cohortAnalytics,
    PopulationStats? populationStats,
    RetentionConfig? retentionConfig,
    bool? isLoading,
    String? error,
    bool clearError = false,
  }) =>
      RetentionState(
        churnPredictions: churnPredictions ?? this.churnPredictions,
        userRetentionAnalytics: userRetentionAnalytics ?? this.userRetentionAnalytics,
        activeReengagementCampaigns: activeReengagementCampaigns ?? this.activeReengagementCampaigns,
        cohortAnalytics: cohortAnalytics ?? this.cohortAnalytics,
        populationStats: populationStats ?? this.populationStats,
        retentionConfig: retentionConfig ?? this.retentionConfig,
        isLoading: isLoading ?? this.isLoading,
        error: clearError ? null : (error ?? this.error),
      );
}

/// リテンション管理 Notifier
class RetentionNotifier extends Notifier<RetentionState> {
  FetchChurnPredictionsHandler? _churnHandler;
  FetchUserRetentionHandler? _userRetentionHandler;
  SaveReengagementCampaignHandler? _campaignHandler;
  FetchCohortAnalysisHandler? _cohortHandler;
  FetchPopulationStatsHandler? _statsHandler;
  FetchRetentionConfigHandler? _configHandler;

  @override
  RetentionState build() {
    return const RetentionState(
      churnPredictions: [],
      userRetentionAnalytics: {},
      activeReengagementCampaigns: {},
      cohortAnalytics: {},
    );
  }

  void setHandlers({
    required FetchChurnPredictionsHandler churnHandler,
    required FetchUserRetentionHandler userRetentionHandler,
    required SaveReengagementCampaignHandler campaignHandler,
    required FetchCohortAnalysisHandler cohortHandler,
    required FetchPopulationStatsHandler statsHandler,
    required FetchRetentionConfigHandler configHandler,
  }) {
    _churnHandler = churnHandler;
    _userRetentionHandler = userRetentionHandler;
    _campaignHandler = campaignHandler;
    _cohortHandler = cohortHandler;
    _statsHandler = statsHandler;
    _configHandler = configHandler;
  }

  /// チャーン予測を取得
  Future<void> fetchChurnPredictions({int limit = 100}) async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final handler = _churnHandler;
      if (handler == null) {
        throw Exception('FetchChurnPredictionsHandler not set');
      }

      final predictions = await handler(limit: limit);
      state = state.copyWith(
        churnPredictions: predictions,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  /// ユーザーリテンション分析を取得
  Future<void> fetchUserRetentionAnalytics(String userId) async {
    try {
      final handler = _userRetentionHandler;
      if (handler == null) {
        throw Exception('FetchUserRetentionHandler not set');
      }

      final analytics = await handler(userId: userId);
      if (analytics != null) {
        state = state.copyWith(
          userRetentionAnalytics: {
            ...state.userRetentionAnalytics,
            userId: analytics,
          },
        );
      }
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }

  /// リエンゲージメント施策を保存
  Future<void> saveReengagementCampaign(ReengagementCampaign campaign) async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final handler = _campaignHandler;
      if (handler == null) {
        throw Exception('SaveReengagementCampaignHandler not set');
      }

      await handler(campaign: campaign);

      final updatedCampaigns = {
        ...state.activeReengagementCampaigns,
        campaign.userId: campaign,
      };

      state = state.copyWith(
        activeReengagementCampaigns: updatedCampaigns,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  /// コホート分析を取得
  Future<void> fetchCohortAnalytics(String cohortId) async {
    try {
      final handler = _cohortHandler;
      if (handler == null) {
        throw Exception('FetchCohortAnalysisHandler not set');
      }

      final analytics = await handler(cohortId: cohortId);
      if (analytics != null) {
        state = state.copyWith(
          cohortAnalytics: {
            ...state.cohortAnalytics,
            cohortId: analytics,
          },
        );
      }
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }

  /// 人口統計を取得
  Future<void> fetchPopulationStats() async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final handler = _statsHandler;
      if (handler == null) {
        throw Exception('FetchPopulationStatsHandler not set');
      }

      final stats = await handler();
      state = state.copyWith(
        populationStats: stats,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  /// リテンション設定を取得
  Future<void> fetchRetentionConfig() async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final handler = _configHandler;
      if (handler == null) {
        throw Exception('FetchRetentionConfigHandler not set');
      }

      final config = await handler();
      state = state.copyWith(
        retentionConfig: config,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  /// 高リスクユーザーを取得
  List<ChurnPrediction> getHighRiskUsers() {
    return state.churnPredictions
        .where((p) => p.riskLevel == ChurnRiskLevel.high || p.riskLevel == ChurnRiskLevel.critical)
        .toList();
  }

  /// 休止状態ユーザーを取得
  List<String> getDormantUsers() {
    return state.userRetentionAnalytics.entries
        .where((e) => e.value.activityLevel == ActivityLevel.dormant)
        .map((e) => e.key)
        .toList();
  }
}

/// リテンション管理プロバイダー
final retentionProvider = NotifierProvider<RetentionNotifier, RetentionState>(
  () => RetentionNotifier(),
);

/// チャーン予測（高リスク）プロバイダー
final highRiskUsersProvider = Provider.autoDispose<List<ChurnPrediction>>((ref) {
  final state = ref.watch(retentionProvider);
  return state.churnPredictions
      .where((p) => p.riskLevel == ChurnRiskLevel.high || p.riskLevel == ChurnRiskLevel.critical)
      .toList();
});

/// ユーザーリテンション分析プロバイダー（特定ユーザー）
final userRetentionAnalyticsProvider =
    Provider.autoDispose.family<UserRetentionAnalytics?, String>((ref, userId) {
  final state = ref.watch(retentionProvider);
  return state.userRetentionAnalytics[userId];
});

/// リエンゲージメント施策プロバイダー
final reengagementCampaignProvider = Provider.autoDispose<List<ReengagementCampaign>>((ref) {
  final state = ref.watch(retentionProvider);
  return state.activeReengagementCampaigns.values.toList();
});

/// 人口統計プロバイダー
final populationStatsProvider = Provider.autoDispose<PopulationStats?>((ref) {
  final state = ref.watch(retentionProvider);
  return state.populationStats;
});

/// リテンション設定プロバイダー
final retentionConfigProvider = Provider.autoDispose<RetentionConfig?>((ref) {
  final state = ref.watch(retentionProvider);
  return state.retentionConfig;
});

/// 休止状態ユーザープロバイダー
final dormantUsersProvider = Provider.autoDispose<List<String>>((ref) {
  final state = ref.watch(retentionProvider);
  return state.userRetentionAnalytics.entries
      .where((e) => e.value.activityLevel == ActivityLevel.dormant)
      .map((e) => e.key)
      .toList();
});
