// 学習指標の記録・更新ロジック（Phase 4.10）
//
// クイズ完了時やセッション終了時に、学習指標をFirestoreに記録するための
// StateNotifier 実装。各アプリ側から呼び出される。

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/learning_metrics.dart';

// ─────────────────────────────────────────────────────────────────
// MetricsNotifier: 学習指標の記録・更新
// ─────────────────────────────────────────────────────────────────

/// 学習指標の記録・更新を管理する StateNotifier
///
/// 状態は不必要なため、単純に void で記録メソッドを提供します。
class MetricsNotifier extends StateNotifier<void> {
  MetricsNotifier() : super(null);

  final _firestore = FirebaseFirestore.instance;

  /// クイズ1問の解答を記録する
  ///
  /// [userId]: ユーザーID
  /// [subject]: 教科（'math', 'japanese' など）
  /// [isCorrect]: 正解か不正解か
  /// [responseTimeSeconds]: 回答時間（秒）
  ///
  /// 実装パターン（各アプリ側でのコード例）:
  /// ```dart
  /// await ref.read(metricsNotifierProvider).recordQuizAnswer(
  ///   userId: currentUserId,
  ///   subject: 'math',
  ///   isCorrect: userChoice == correctAnswer,
  ///   responseTimeSeconds: (DateTime.now().difference(startTime).inSeconds).toDouble(),
  /// );
  /// ```
  Future<void> recordQuizAnswer({
    required String userId,
    required String subject,
    required bool isCorrect,
    required double responseTimeSeconds,
  }) async {
    try {
      final now = DateTime.now();
      final dateKey =
          '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}';
      final docRef = _firestore.collection('users/$userId/metrics').doc(dateKey);

      // トランザクション内で原子的に更新
      await _firestore.runTransaction((transaction) async {
        final snapshot = transaction.get(docRef);
        final currentData = (await snapshot).data() as Map<String, dynamic>?;

        int currentQuestionsAnswered = currentData?['questionsAnswered'] as int? ?? 0;
        int currentCorrectAnswers = currentData?['correctAnswers'] as int? ?? 0;
        double currentAverageSpeed = currentData?['averageSpeed'] as double? ?? 0.0;

        // 新しい回答数・正解数・平均速度を計算
        final newQuestionsAnswered = currentQuestionsAnswered + 1;
        final newCorrectAnswers = isCorrect ? currentCorrectAnswers + 1 : currentCorrectAnswers;

        // 移動平均で平均速度を更新
        final newAverageSpeed = currentQuestionsAnswered == 0
            ? responseTimeSeconds
            : (currentAverageSpeed * currentQuestionsAnswered + responseTimeSeconds) / newQuestionsAnswered;

        // 正答率を再計算
        final correctRate = newCorrectAnswers / newQuestionsAnswered;

        transaction.update(docRef, {
          'userId': userId,
          'date': now,
          'questionsAnswered': newQuestionsAnswered,
          'correctAnswers': newCorrectAnswers,
          'correctRate': correctRate,
          'averageSpeed': newAverageSpeed,
          'subject': subject,
          'updatedAt': FieldValue.serverTimestamp(),
        });
      });
    } catch (e) {
      throw Exception('Failed to record quiz answer: $e');
    }
  }

  /// 学習セッション全体を記録する
  ///
  /// [userId]: ユーザーID
  /// [subject]: 教科（'math', 'japanese' など）
  /// [durationMinutes]: セッション時間（分）
  /// [questionsAnswered]: 回答問題数
  /// [correctAnswers]: 正解数
  ///
  /// 実装パターン（各アプリ側でのコード例）:
  /// ```dart
  /// await ref.read(metricsNotifierProvider).recordLearningSession(
  ///   userId: currentUserId,
  ///   subject: 'math',
  ///   durationMinutes: (stopwatch.elapsed.inSeconds / 60).toInt(),
  ///   questionsAnswered: totalQuestions,
  ///   correctAnswers: correctCount,
  /// );
  /// ```
  Future<void> recordLearningSession({
    required String userId,
    required String subject,
    required int durationMinutes,
    required int questionsAnswered,
    required int correctAnswers,
  }) async {
    try {
      final now = DateTime.now();
      final dateKey =
          '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}';
      final docRef = _firestore.collection('users/$userId/metrics').doc(dateKey);

      // 正答率を計算
      final correctRate = questionsAnswered > 0 ? correctAnswers / questionsAnswered : 0.0;

      // 平均回答速度を計算（秒）
      final averageSpeed =
          durationMinutes > 0 ? (durationMinutes * 60) / questionsAnswered : 0.0;

      await docRef.set(
        {
          'userId': userId,
          'date': DateTime(now.year, now.month, now.day),
          'studyTimeMinutes': durationMinutes,
          'questionsAnswered': questionsAnswered,
          'correctAnswers': correctAnswers,
          'correctRate': correctRate,
          'averageSpeed': averageSpeed,
          'subject': subject,
          'createdAt': FieldValue.serverTimestamp(),
          'updatedAt': FieldValue.serverTimestamp(),
        },
        SetOptions(merge: true),
      );
    } catch (e) {
      throw Exception('Failed to record learning session: $e');
    }
  }

  /// 連続学習日数を更新する
  ///
  /// [userId]: ユーザーID
  /// [streakDays]: 連続学習日数
  ///
  /// 実装パターン（各アプリ側でのコード例）:
  /// ```dart
  /// await ref.read(metricsNotifierProvider).updateStreakDays(
  ///   userId: currentUserId,
  ///   streakDays: calculateCurrentStreak(userId),
  /// );
  /// ```
  Future<void> updateStreakDays({
    required String userId,
    required int streakDays,
  }) async {
    try {
      final now = DateTime.now();
      final dateKey =
          '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}';
      final docRef = _firestore.collection('users/$userId/metrics').doc(dateKey);

      await docRef.update({
        'streakDays': streakDays,
        'updatedAt': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      throw Exception('Failed to update streak days: $e');
    }
  }

  /// 本日の学習指標を取得（キャッシュなし、直接Firestore）
  ///
  /// [userId]: ユーザーID
  /// 戻り値: 本日のメトリクス、存在しない場合は null
  Future<LearningMetrics?> getTodayMetrics({
    required String userId,
  }) async {
    try {
      final now = DateTime.now();
      final dateKey =
          '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}';

      final doc = await _firestore
          .collection('users/$userId/metrics')
          .doc(dateKey)
          .get();

      if (!doc.exists) {
        return null;
      }

      return LearningMetrics.fromJson(doc.data() as Map<String, dynamic>);
    } catch (e) {
      throw Exception('Failed to get today metrics: $e');
    }
  }
}

// ─────────────────────────────────────────────────────────────────
// Provider: MetricsNotifier のプロバイダー
// ─────────────────────────────────────────────────────────────────

/// MetricsNotifier を提供する StateNotifierProvider
///
/// 使用例:
/// ```dart
/// // クイズ1問の解答を記録
/// await ref.read(metricsNotifierProvider).recordQuizAnswer(
///   userId: userId,
///   subject: 'math',
///   isCorrect: isCorrect,
///   responseTimeSeconds: responseTime,
/// );
///
/// // セッション全体を記録
/// await ref.read(metricsNotifierProvider).recordLearningSession(
///   userId: userId,
///   subject: 'math',
///   durationMinutes: 15,
///   questionsAnswered: 10,
///   correctAnswers: 8,
/// );
/// ```
final metricsNotifierProvider = StateNotifierProvider<MetricsNotifier, void>((ref) {
  return MetricsNotifier();
});
