import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_access_model.freezed.dart';

/// クイズアクセス制御モデル
@freezed
class QuizAccessControl with _$QuizAccessControl {
  const factory QuizAccessControl({
    /// ユーザー登録日
    required DateTime registeredAt,

    /// サブスク購読状態
    required bool isSubscribed,

    /// 無料期間（日数）
    @Default(14) int freeTrialDays,
  }) = _QuizAccessControl;
}

/// クイズアクセス状態
@freezed
class QuizAccessState with _$QuizAccessState {
  const factory QuizAccessState({
    /// 全問題へのアクセス可否
    required bool canAccessAllQuizzes,

    /// 無料期間の残り日数（-1 = 無制限またはサブスク購読者）
    required int remainingFreeDays,

    /// ペイウォール表示が必要か
    required bool shouldShowPaywall,

    /// ロック理由
    String? lockReason,
  }) = _QuizAccessState;
}

/// クイズアクセス制御ロジック
class QuizAccessLogic {
  /// アクセス可否を判定
  static QuizAccessState calculateAccess({
    required DateTime registeredAt,
    required bool isSubscribed,
    int freeTrialDays = 14,
  }) {
    final now = DateTime.now();
    final daysSinceRegistration = now.difference(registeredAt).inDays;
    final remainingDays = freeTrialDays - daysSinceRegistration;

    // サブスク購読者は常に全問題アクセス可
    if (isSubscribed) {
      return const QuizAccessState(
        canAccessAllQuizzes: true,
        remainingFreeDays: -1,
        shouldShowPaywall: false,
      );
    }

    // 無料期間内
    if (remainingDays > 0) {
      return QuizAccessState(
        canAccessAllQuizzes: true,
        remainingFreeDays: remainingDays,
        shouldShowPaywall: false,
      );
    }

    // 無料期間終了 → ペイウォール表示
    return QuizAccessState(
      canAccessAllQuizzes: false,
      remainingFreeDays: 0,
      shouldShowPaywall: true,
      lockReason: '無料期間が終了しました。プレミアムプランでアクセスを続ける',
    );
  }

  /// 無料期間の残り日数を取得
  static int getRemainingFreeDays({
    required DateTime registeredAt,
    int freeTrialDays = 14,
  }) {
    final now = DateTime.now();
    final daysSinceRegistration = now.difference(registeredAt).inDays;
    return freeTrialDays - daysSinceRegistration;
  }

  /// 無料期間内か判定
  static bool isWithinFreeTrial({
    required DateTime registeredAt,
    int freeTrialDays = 14,
  }) {
    return getRemainingFreeDays(
      registeredAt: registeredAt,
      freeTrialDays: freeTrialDays,
    ) > 0;
  }
}
