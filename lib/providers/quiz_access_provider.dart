import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_core/models/quiz_access_model.dart';

/// ユーザー登録日プロバイダー（各アプリで override）
final userRegisteredAtProvider = FutureProvider<DateTime>((ref) async {
  // 各アプリの profile_provider から登録日を取得
  // デフォルトは現在時刻（その場で全問題アクセス可）
  return DateTime.now();
});

/// サブスク購読状態プロバイダー（各アプリで override）
final subscriptionStatusProvider = FutureProvider<bool>((ref) async {
  // 各アプリの subscription_provider から購読状態を取得
  // デフォルトは false（未購読）
  return false;
});

/// クイズアクセス状態プロバイダー
final quizAccessProvider = FutureProvider<QuizAccessState>((ref) async {
  final registeredAt = await ref.watch(userRegisteredAtProvider.future);
  final isSubscribed = await ref.watch(subscriptionStatusProvider.future);

  return QuizAccessLogic.calculateAccess(
    registeredAt: registeredAt,
    isSubscribed: isSubscribed,
    freeTrialDays: 14,
  );
});

/// 無料期間の残り日数プロバイダー
final remainingFreeDaysProvider = FutureProvider<int>((ref) async {
  final registeredAt = await ref.watch(userRegisteredAtProvider.future);
  return QuizAccessLogic.getRemainingFreeDays(registeredAt: registeredAt);
});

/// クイズへのアクセス可否プロバイダー
final canAccessAllQuizzesProvider = FutureProvider<bool>((ref) async {
  final accessState = await ref.watch(quizAccessProvider.future);
  return accessState.canAccessAllQuizzes;
});

/// ペイウォール表示必要性プロバイダー
final shouldShowPaywallProvider = FutureProvider<bool>((ref) async {
  final accessState = await ref.watch(quizAccessProvider.future);
  return accessState.shouldShowPaywall;
});
