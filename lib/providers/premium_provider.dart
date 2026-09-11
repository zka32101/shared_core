import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_core/models/premium_model.dart';

/// 統一サブスクリプション状態プロバイダー
/// 
/// 各アプリで override して使用：
/// ```dart
/// premiumProvider.overrideWith(PremiumNotifier.new)
/// ```
final premiumProvider =
    StateNotifierProvider<PremiumNotifier, PremiumState>((ref) {
  return PremiumNotifier();
});

typedef PremiumCheckHandler = Future<bool> Function(String userId);
typedef PremiumExpiryHandler = Future<DateTime?> Function(String userId);

/// 統一サブスクリプション管理
/// 
/// 各アプリの RevenueCatService から handler を注入
class PremiumNotifier extends StateNotifier<PremiumState> {
  PremiumCheckHandler? _checkHandler;
  PremiumExpiryHandler? _expiryHandler;

  PremiumNotifier() : super(const PremiumState(isSubscribed: false));

  /// サブスクリプション確認ハンドラを設定
  /// （各アプリの main.dart で呼び出し）
  void setCheckHandler(PremiumCheckHandler handler) {
    _checkHandler = handler;
  }

  /// 有効期限取得ハンドラを設定
  void setExpiryHandler(PremiumExpiryHandler handler) {
    _expiryHandler = handler;
  }

  /// ユーザーのサブスクリプション状態を確認
  Future<void> checkSubscription(String userId) async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      if (_checkHandler == null) {
        throw Exception('PremiumCheckHandler not set');
      }

      final isSubscribed = await _checkHandler!(userId);

      if (isSubscribed && _expiryHandler != null) {
        final expiryDate = await _expiryHandler!(userId);
        state = state.copyWith(
          isSubscribed: true,
          subscriptionExpiryDate: expiryDate,
          lastValidatedAt: DateTime.now(),
          isLoading: false,
        );
      } else {
        state = state.copyWith(
          isSubscribed: isSubscribed,
          subscriptionExpiryDate: null,
          lastValidatedAt: DateTime.now(),
          isLoading: false,
        );
      }
    } catch (e) {
      state = state.copyWith(
        isSubscribed: false,
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  /// サブスクリプションをリセット（ログアウト時）
  void reset() {
    state = const PremiumState(isSubscribed: false);
  }
}
