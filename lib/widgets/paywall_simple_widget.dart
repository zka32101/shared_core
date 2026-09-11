// Phase 4.11: Paywall Simple Widget (Variant A)
// シンプルなPaywall UI - 最小限の機能表示

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/paywall_config.dart';
import '../providers/paywall_provider.dart';

class PaywallSimpleWidget extends ConsumerWidget {
  final String userId;
  final PaywallVariant variant;
  final VoidCallback onSubscribeTap;

  const PaywallSimpleWidget({
    required this.userId,
    required this.variant,
    required this.onSubscribeTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ヘッダー
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: variant.accentColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                '👑 プレミアム会員',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 24),

            // 価格表示
            Column(
              children: [
                Text(
                  '月額',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 4),
                Text(
                  '¥120',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: variant.accentColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '※来月から ¥120/月',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 40),

            // 機能リスト
            Column(
              children: variant.features
                  .map((feature) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: variant.accentColor,
                          size: 24,
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Text(
                            feature,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                  ))
                  .toList(),
            ),

            const SizedBox(height: 48),

            // CTA ボタン
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  ref.read(paywallEventsProvider.notifier).trackInteraction(
                    userId,
                    variant.variantId,
                    'subscribe_tapped',
                  );
                  onSubscribeTap();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: variant.accentColor,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  variant.primaryCTA,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // 免責事項
            Text(
              '※キャンセルはいつでも可能です',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
