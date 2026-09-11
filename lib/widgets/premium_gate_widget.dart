import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_core/providers/premium_provider.dart';
import 'package:shared_core/theme/app_theme.dart';

/// プレミアム機能へのアクセスゲート
/// 
/// 使用例：
/// ```dart
/// PremiumGateWidget(
///   onPremiumAccess: () => Navigator.push(...),
///   featureName: '無制限クイズ',
///   child: Container(...),
/// )
/// ```
class PremiumGateWidget extends ConsumerWidget {
  final Widget child;
  final VoidCallback? onPremiumAccess;
  final String featureName;
  final Widget? lockedPlaceholder;

  const PremiumGateWidget({
    Key? key,
    required this.child,
    this.onPremiumAccess,
    this.featureName = 'プレミアム機能',
    this.lockedPlaceholder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final premiumState = ref.watch(premiumProvider);

    if (premiumState.isSubscribed) {
      return child;
    }

    // ロック状態を表示
    return Stack(
      children: [
        // コンテンツを薄暗く表示
        Opacity(
          opacity: 0.5,
          child: child,
        ),
        // オーバーレイ
        Center(
          child: lockedPlaceholder ??
              _DefaultLockedOverlay(
                featureName: featureName,
                onSubscribePressed: () {
                  onPremiumAccess?.call();
                  _showSubscriptionDialog(context, ref);
                },
              ),
        ),
      ],
    );
  }

  void _showSubscriptionDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('プレミアム必須'),
        content: Text(
          '$featureName を利用するにはプレミアムプランのご登録が必要です。\n\n'
          '月額¥120ですべての機能が使い放題！',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('キャンセル'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              onPremiumAccess?.call();
            },
            child: const Text('プレミアムに登録'),
          ),
        ],
      ),
    );
  }
}

class _DefaultLockedOverlay extends StatelessWidget {
  final String featureName;
  final VoidCallback onSubscribePressed;

  const _DefaultLockedOverlay({
    required this.featureName,
    required this.onSubscribePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.3),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.lock_outline,
            size: 48,
            color: Colors.white,
          ),
          const SizedBox(height: 16),
          Text(
            '$featureName\nはプレミアム限定',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: onSubscribePressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 12,
              ),
            ),
            child: const Text(
              '¥120 / 月 で登録',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// 条件付きプレミアム表示ウィジェット
/// 
/// 使用例：
/// ```dart
/// ConditionalPremiumWidget(
///   premiumChild: UnlimitedQuizScreen(),
///   freeChild: LimitedQuizScreen(),
/// )
/// ```
class ConditionalPremiumWidget extends ConsumerWidget {
  final Widget premiumChild;
  final Widget freeChild;

  const ConditionalPremiumWidget({
    Key? key,
    required this.premiumChild,
    required this.freeChild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final premiumState = ref.watch(premiumProvider);
    return premiumState.isSubscribed ? premiumChild : freeChild;
  }
}
