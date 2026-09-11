import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:riverpod/riverpod.dart';
import '../models/adaptive_difficulty_model.dart';

class AdaptiveDifficultyNotifier
    extends StateNotifier<UserAdaptiveDifficulty?> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseRemoteConfig _remoteConfig = FirebaseRemoteConfig.instance;

  AdaptiveDifficultyNotifier() : super(null);

  /// ユーザーの適応難易度を取得・初期化
  Future<UserAdaptiveDifficulty?> initializeAdaptiveDifficulty({
    required String userId,
    required String appId,
  }) async {
    try {
      final doc = await _firestore
          .collection('analytics/adaptive_difficulty/users')
          .doc(userId)
          .collection('apps')
          .doc(appId)
          .get();

      if (doc.exists) {
        final difficulty = UserAdaptiveDifficulty.fromJson(doc.data()!);
        state = difficulty;
        return difficulty;
      } else {
        // 初回ユーザーは NORMAL から開始
        final initial = UserAdaptiveDifficulty(
          userId: userId,
          appId: appId,
          currentLevel: DifficultyLevel.normal,
          recommendedLevel: DifficultyLevel.normal,
          metrics: AdaptiveMetrics(
            accuracy: 0.0,
            completionRate: 0.0,
            averageTimePerQuestion: 0,
            totalQuestionsAnswered: 0,
            correctAnswers: 0,
            wrongAnswers: 0,
            lastUpdatedAt: DateTime.now(),
          ),
          adjustmentCount: 0,
          lastAdjustedAt: null,
          isAutoAdjust: true,
          confidenceScore: 0.0,
        );

        await _firestore
            .collection('analytics/adaptive_difficulty/users')
            .doc(userId)
            .collection('apps')
            .doc(appId)
            .set(initial.toJson());

        state = initial;
        return initial;
      }
    } catch (e) {
      throw Exception('Failed to initialize adaptive difficulty: $e');
    }
  }

  /// パフォーマンスメトリクスを更新
  Future<void> updateMetrics({
    required String userId,
    required String appId,
    required int questionsAnswered,
    required int correctCount,
    required int totalTimeSeconds,
  }) async {
    try {
      if (state == null) {
        await initializeAdaptiveDifficulty(userId: userId, appId: appId);
      }

      final currentMetrics = state!.metrics;
      final newTotalQuestions =
          currentMetrics.totalQuestionsAnswered + questionsAnswered;
      final newCorrectCount = currentMetrics.correctAnswers + correctCount;
      final newAccuracy =
          newTotalQuestions > 0 ? newCorrectCount / newTotalQuestions : 0.0;
      final avgTimePerQuestion = newTotalQuestions > 0
          ? (currentMetrics.averageTimePerQuestion *
                  currentMetrics.totalQuestionsAnswered +
              totalTimeSeconds) ~/
              newTotalQuestions
          : 0;

      final updatedMetrics = AdaptiveMetrics(
        accuracy: newAccuracy,
        completionRate: (newAccuracy + 0.2) / 1.2, // シンプルな完了率計算
        averageTimePerQuestion: avgTimePerQuestion,
        totalQuestionsAnswered: newTotalQuestions,
        correctAnswers: newCorrectCount,
        wrongAnswers: currentMetrics.totalQuestionsAnswered -
            currentMetrics.correctAnswers +
            (questionsAnswered - correctCount),
        lastUpdatedAt: DateTime.now(),
      );

      // 推奨難易度を計算
      final recommendation = _calculateRecommendedDifficulty(updatedMetrics);

      final updated = state!.copyWith(
        metrics: updatedMetrics,
        recommendedLevel: recommendation.recommendedLevel,
        confidenceScore: recommendation.confidence,
      );

      // 自動調整が有効で推奨難易度が変わった場合
      if (state!.isAutoAdjust &&
          updated.recommendedLevel != state!.currentLevel) {
        await _adjustDifficulty(
          userId: userId,
          appId: appId,
          newLevel: recommendation.recommendedLevel,
          reason: recommendation.reason,
        );
      }

      await _firestore
          .collection('analytics/adaptive_difficulty/users')
          .doc(userId)
          .collection('apps')
          .doc(appId)
          .set(updated.toJson(), SetOptions(merge: true));

      state = updated;
    } catch (e) {
      throw Exception('Failed to update metrics: $e');
    }
  }

  /// 難易度を手動で変更
  Future<void> setDifficulty({
    required String userId,
    required String appId,
    required DifficultyLevel newLevel,
    required String reason,
  }) async {
    await _adjustDifficulty(
      userId: userId,
      appId: appId,
      newLevel: newLevel,
      reason: reason,
    );
  }

  /// 適応難易度統計を取得
  Future<DifficultyPerformanceStats?> getPerformanceStats({
    required String userId,
    required String appId,
    required DifficultyLevel level,
  }) async {
    try {
      final doc = await _firestore
          .collection('analytics/adaptive_difficulty/performance')
          .doc(userId)
          .collection('apps')
          .doc(appId)
          .collection('levels')
          .doc(level.toString())
          .get();

      if (doc.exists) {
        return DifficultyPerformanceStats.fromJson(doc.data()!);
      }
      return null;
    } catch (e) {
      throw Exception('Failed to get performance stats: $e');
    }
  }

  /// ユーザーの学習パターンを分析
  Future<UserLearningPattern?> analyzeLearningPattern({
    required String userId,
    required String appId,
  }) async {
    try {
      final doc = await _firestore
          .collection('analytics/adaptive_difficulty/patterns')
          .doc(userId)
          .collection('apps')
          .doc(appId)
          .get();

      if (doc.exists) {
        return UserLearningPattern.fromJson(doc.data()!);
      }
      return null;
    } catch (e) {
      throw Exception('Failed to analyze learning pattern: $e');
    }
  }

  // 推奨難易度を計算
  DifficultyRecommendation _calculateRecommendedDifficulty(
    AdaptiveMetrics metrics,
  ) {
    final accuracy = metrics.accuracy;
    final indicators = <String>[];
    var recommendedLevel = DifficultyLevel.normal;
    var confidence = 0.5;

    // 高い正答率 → 難易度UP
    if (accuracy >= 0.85) {
      indicators.add('high_accuracy');
      recommendedLevel = DifficultyLevel.hard;
      confidence = 0.8;
    } else if (accuracy >= 0.75) {
      indicators.add('good_accuracy');
      recommendedLevel = DifficultyLevel.normal;
      confidence = 0.7;
    } else if (accuracy >= 0.6) {
      indicators.add('moderate_accuracy');
      recommendedLevel = DifficultyLevel.easy;
      confidence = 0.6;
    } else {
      // 低い正答率 → 難易度DOWN
      indicators.add('low_accuracy');
      recommendedLevel = DifficultyLevel.veryEasy;
      confidence = 0.75;
    }

    // 完了率を考慮
    if (metrics.completionRate < 0.5) {
      indicators.add('low_completion');
      confidence *= 0.8;
    }

    return DifficultyRecommendation(
      recommendedLevel: recommendedLevel,
      confidence: confidence.clamp(0.0, 1.0),
      reason: indicators.join(', '),
      indicators: indicators,
      calculatedAt: DateTime.now(),
    );
  }

  // 難易度を実際に変更
  Future<void> _adjustDifficulty({
    required String userId,
    required String appId,
    required DifficultyLevel newLevel,
    required String reason,
  }) async {
    try {
      final previousLevel = state?.currentLevel ?? DifficultyLevel.normal;

      if (previousLevel == newLevel) {
        return; // 変更なし
      }

      final history = DifficultyAdjustmentHistory(
        userId: userId,
        appId: appId,
        previousLevel: previousLevel,
        newLevel: newLevel,
        reason: reason,
        adjustedAt: DateTime.now(),
        metricsSnapshot: state?.metrics.accuracy ?? 0.0,
      );

      // 履歴を保存
      await _firestore
          .collection('analytics/adaptive_difficulty/history')
          .doc(userId)
          .collection('apps')
          .doc(appId)
          .collection('adjustments')
          .add(history.toJson());

      // 状態を更新
      final updated = state!.copyWith(
        currentLevel: newLevel,
        lastAdjustedAt: DateTime.now(),
        adjustmentCount: state!.adjustmentCount + 1,
      );

      await _firestore
          .collection('analytics/adaptive_difficulty/users')
          .doc(userId)
          .collection('apps')
          .doc(appId)
          .set(updated.toJson(), SetOptions(merge: true));

      state = updated;
    } catch (e) {
      throw Exception('Failed to adjust difficulty: $e');
    }
  }
}

// 適応難易度プロバイダー
final adaptiveDifficultyNotifierProvider = StateNotifierProvider<
    AdaptiveDifficultyNotifier,
    UserAdaptiveDifficulty?>((ref) {
  return AdaptiveDifficultyNotifier();
});

// 適応難易度設定プロバイダー（RemoteConfig から取得）
final adaptiveDifficultyConfigProvider =
    FutureProvider<AdaptiveDifficultyConfig>((ref) async {
  final remoteConfig = FirebaseRemoteConfig.instance;

  try {
    await remoteConfig.fetchAndActivate();
  } catch (e) {
    // RemoteConfig fetch failed, use default values
  }

  final configJson = remoteConfig.getString('adaptive_difficulty_config');

  if (configJson.isNotEmpty) {
    return AdaptiveDifficultyConfig.fromJson(
        Map<String, dynamic>.from(
            (remoteConfig.getAll()['adaptive_difficulty_config'] as Map)
                .cast<String, dynamic>()) ??
            {});
  }

  // デフォルト設定
  return AdaptiveDifficultyConfig(
    enableAutoAdjust: true,
    adjustmentIntervalDays: 3,
    highAccuracyThreshold: 0.85,
    lowAccuracyThreshold: 0.60,
    completionThreshold: 0.8,
    minQuestionsBeforeAdjust: 10,
    difficultyMultipliers: {
      'veryEasy': 0.5,
      'easy': 0.75,
      'normal': 1.0,
      'hard': 1.25,
      'veryHard': 1.5,
    },
  );
});
