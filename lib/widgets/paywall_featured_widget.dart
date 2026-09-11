// Phase 4.11: Paywall Featured Widget (Variant B)
// おすすめプラン - 3日無料トライアル・年間割引付き

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/paywall_config.dart';
import '../providers/paywall_provider.dart';

class PaywallFeaturedWidget extends ConsumerWidget {
  final String userId;
  final PaywallVariant variant;
  final VoidCallback onSubscribeTap;
  final VoidCallback onTrialTap;

  const PaywallFeaturedWidget({
    required this.userId,
    required this.variant,
    required this.onSubscribeTap,
    required this.onTrialTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [variant.accentColor.withOpacity(0.05), Colors.white],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            children: [
              // おすすめ バッジ
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: variant.accentColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  '⭐ おすすめ',
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // ヘッダー
              Text(
                variant.title,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 8),

              Text(
                'もっと学ぼう！',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.grey[700],
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 32),

              // 価格比較表
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[300]!),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // 月額プラン
                    Column(
                      children: [
                        Text(
                          '月額プラン',
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '¥120',
                          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                          ),
                        ),
                        Text(
                          '/月',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),

                    // 区切り線
                    Container(
                      height: 60,
                      width: 1,
                      color: Colors.grey[300],
                    ),

                    // 年額プラン（10% 割引）
                    Column(
                      children: [
                        Text(
                          '年額プラン',
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '¥1,296',
                          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.red.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            '10% OFF',
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 32),

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

              const SizedBox(height: 40),

              // CTA ボタン（3日無料）
              if (variant.showTrialOption) ...[
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {
                      ref.read(paywallEventsProvider.notifier).trackInteraction(
                        userId,
                        variant.variantId,
                        'trial_tapped',
                      );
                      onTrialTap();
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

                const SizedBox(height: 12),

                // サブボタン（今すぐ購読）
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: OutlinedButton(
                    onPressed: () {
                      ref.read(paywallEventsProvider.notifier).trackInteraction(
                        userId,
                        variant.variantId,
                        'subscribe_tapped',
                      );
                      onSubscribeTap();
                    },
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: variant.accentColor, width: 2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      '今すぐ購読',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: variant.accentColor,
                      ),
                    ),
                  ),
                ),
              ] else ...[
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
              ],

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
      ),
    );
  }
}
