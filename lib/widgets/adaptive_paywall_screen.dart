// Phase 4.11: Adaptive Paywall Screen
// 自動バリアント選択・イベント追跡・統合画面

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/paywall_config.dart';
import '../providers/paywall_provider.dart';
import 'paywall_simple_widget.dart';
import 'paywall_featured_widget.dart';
import 'paywall_local_offer_widget.dart';

class AdaptivePaywallScreen extends ConsumerWidget {
  final String userId;
  final VoidCallback? onSubscribeSuccess;
  final VoidCallback? onTrialStart;
  final VoidCallback? onClose;

  const AdaptivePaywallScreen({
    required this.userId,
    this.onSubscribeSuccess,
    this.onTrialStart,
    this.onClose,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final variantAsync = ref.watch(userPaywallVariantProvider(userId));

    return WillPopScope(
      onWillPop: () async {
        onClose?.call();
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('プレミアム会員'),
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              onClose?.call();
              Navigator.pop(context);
            },
          ),
        ),
        body: variantAsync.when(
          data: (variant) {
            // Impression トラッキング（画面表示時に一度だけ実行）
            WidgetsBinding.instance.addPostFrameCallback((_) {
              ref.read(paywallEventsProvider.notifier).trackImpression(
                userId,
                variant.variantId,
              );
            });

            return _buildPaywallContent(
              variant,
              context,
              ref,
            );
          },
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          error: (err, stack) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.error_outline, size: 48, color: Colors.red[300]),
                const SizedBox(height: 16),
                Text(
                  'エラーが発生しました',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 8),
                Text(
                  'しばらく待ってから再度お試しください',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    ref.invalidate(userPaywallVariantProvider(userId));
                  },
                  child: const Text('再度読み込む'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPaywallContent(
    PaywallVariant variant,
    BuildContext context,
    WidgetRef ref,
  ) {
    switch (variant.variantId) {
      case 'A':
        return PaywallSimpleWidget(
          userId: userId,
          variant: variant,
          onSubscribeTap: () => _handleSubscribe(context, ref, variant),
        );
      case 'B':
        return PaywallFeaturedWidget(
          userId: userId,
          variant: variant,
          onSubscribeTap: () => _handleSubscribe(context, ref, variant),
          onTrialTap: () => _handleTrial(context, ref, variant),
        );
      case 'C':
        return PaywallLocalOfferWidget(
          userId: userId,
          variant: variant,
          onSubscribeTap: () => _handleSubscribe(context, ref, variant),
        );
      default:
        return PaywallSimpleWidget(
          userId: userId,
          variant: variant,
          onSubscribeTap: () => _handleSubscribe(context, ref, variant),
        );
    }
  }

  Future<void> _handleSubscribe(
    BuildContext context,
    WidgetRef ref,
    PaywallVariant variant,
  ) async {
    try {
      // TODO: RevenueCat の購入フロー実装
      // await revenueCatService.purchaseMonthly();

      // Conversion イベント記録
      await ref
          .read(paywallEventsProvider.notifier)
          .trackConversion(userId, variant.variantId);

      onSubscribeSuccess?.call();

      // 画面を閉じる
      if (context.mounted) {
        Navigator.pop(context, true);
      }
    } catch (e) {
      // エラー表示
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('購読に失敗しました'),
            action: SnackBarAction(
              label: '再試行',
              onPressed: () {
                _handleSubscribe(context, ref, variant);
              },
            ),
          ),
        );
      }
    }
  }

  Future<void> _handleTrial(
    BuildContext context,
    WidgetRef ref,
    PaywallVariant variant,
  ) async {
    try {
      // TODO: 3日無料トライアル付与ロジック
      // Cloud Functions で trial_start ドキュメント作成

      // Interaction イベント記録
      await ref.read(paywallEventsProvider.notifier).trackInteraction(
        userId,
        variant.variantId,
        'trial_started',
      );

      onTrialStart?.call();

      // 確認ダイアログ
      if (context.mounted) {
        showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title: const Text('🎉 トライアル開始'),
            content: const Text('3日間のトライアルが開始されました！\nこの期間中、すべての機能をお試しいただけます。'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(ctx);
                  Navigator.pop(context, true);
                },
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
    } catch (e) {
      // エラー表示
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('トライアル開始に失敗しました'),
            action: SnackBarAction(
              label: '再試行',
              onPressed: () {
                _handleTrial(context, ref, variant);
              },
            ),
          ),
        );
      }
    }
  }
}
