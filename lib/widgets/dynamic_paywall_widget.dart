// Phase 4.12: ダイナミック Paywall ウィジェット
// ユーザーセグメント別の動的価格表示

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../models/pricing_strategy.dart';
import '../providers/user_segment_provider.dart';
import '../providers/dynamic_pricing_notifier.dart';

/// ダイナミック Paywall ウィジェット
/// ユーザーセグメントに応じて自動的に価格・説明文を変更
class DynamicPaywallWidget extends ConsumerStatefulWidget {
  final String userId;
  final VoidCallback onSubscribeTap;
  final VoidCallback? onRestoreTap;

  const DynamicPaywallWidget({
    required this.userId,
    required this.onSubscribeTap,
    this.onRestoreTap,
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<DynamicPaywallWidget> createState() =>
      _DynamicPaywallWidgetState();
}

class _DynamicPaywallWidgetState extends ConsumerState<DynamicPaywallWidget> {
  bool _impressionTracked = false;

  @override
  void initState() {
    super.initState();
    // Impression トラッキング（一度だけ）
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _trackImpression();
    });
  }

  void _trackImpression() async {
    if (_impressionTracked) return;
    _impressionTracked = true;

    try {
      final dynamicPrice =
          await ref.read(dynamicPriceProvider(widget.userId).future);
      ref.read(dynamicPricingNotifierProvider.notifier)
          .recordPricingImpression(widget.userId, dynamicPrice);
    } catch (e) {
      // Impression トラッキング失敗は無視
      print('Failed to track impression: $e');
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dynamicPriceAsync = ref.watch(dynamicPriceProvider(widget.userId));

    return dynamicPriceAsync.when(
      data: (price) {
        return _buildPaywall(context, ref, price);
      },
      loading: () => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(),
            const SizedBox(height: 16),
            Text(
              '価格を読み込み中...',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
      error: (err, stack) => Center(
        child: Text('エラー: $err'),
      ),
    );
  }

  Widget _buildPaywall(
    BuildContext context,
    WidgetRef ref,
    DynamicPrice price,
  ) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final gradient = _getGradientForSegment(price.detectedSegment, isDarkMode);

    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          gradient: gradient,
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // ─── ヘッダー ────────────────────────────────
              _buildHeader(context, price),

              const SizedBox(height: 24),

              // ─── 割引バナー ──────────────────────────────
              if (price.appliedDiscount > 0)
                _buildDiscountBanner(context, price),

              const SizedBox(height: 32),

              // ─── 価格表示 ────────────────────────────────
              _buildPriceSection(context, price),

              const SizedBox(height: 12),

              // ─── オファー有効期限 ────────────────────────
              if (price.isLimited)
                Text(
                  '※このオファーは ${DateFormat('M月d日').format(price.validUntil)} まで',
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: Colors.orange.shade700,
                        fontWeight: FontWeight.bold,
                      ),
                ),

              const SizedBox(height: 32),

              // ─── 機能リスト ──────────────────────────────
              _buildFeaturesList(context, price),

              const SizedBox(height: 32),

              // ─── ボタングループ ──────────────────────────
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    // 購読ボタン
                    ElevatedButton(
                      onPressed: () {
                        _handleSubscribeTap(context, ref, price);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            _getButtonColorForSegment(price.detectedSegment),
                        minimumSize: const Size.fromHeight(56),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        '¥${price.displayPrice} で購読する',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    const SizedBox(height: 12),

                    // リストア・利用規約リンク
                    if (widget.onRestoreTap != null)
                      TextButton(
                        onPressed: widget.onRestoreTap,
                        child: const Text('以前の購入を復元する'),
                      ),

                    const SizedBox(height: 8),

                    Text(
                      '購読後、いつでもキャンセルできます',
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: Colors.grey[600],
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context, DynamicPrice price) {
    return Column(
      children: [
        // セグメント別アイコン
        _getIconForSegment(price.detectedSegment),

        const SizedBox(height: 12),

        // セグメント別タイトル
        Text(
          _getTitleForSegment(price.detectedSegment),
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
          textAlign: TextAlign.center,
        ),

        const SizedBox(height: 8),

        // セグメント別説明
        Text(
          _getDescriptionForSegment(price.detectedSegment),
          style: Theme.of(context).textTheme.bodySmall,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildDiscountBanner(BuildContext context, DynamicPrice price) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.red[50],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.red[300]!),
      ),
      child: Column(
        children: [
          Text(
            '🎉 特別割引中！',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.red[700],
            ),
          ),
          const SizedBox(height: 4),
          Text(
            price.discountReason,
            style: TextStyle(
              fontSize: 12,
              color: Colors.red[600],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPriceSection(BuildContext context, DynamicPrice price) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            if (price.appliedDiscount > 0)
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text(
                  '¥${price.basePrice}',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey,
                      ),
                ),
              ),
            Text(
              '¥${price.displayPrice}',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: _getButtonColorForSegment(price.detectedSegment),
                  ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                '/月',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
        if (price.appliedDiscount > 0)
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              '${price.appliedDiscount.toStringAsFixed(0)}% OFF',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.red[700],
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildFeaturesList(BuildContext context, DynamicPrice price) {
    final features = _getFeaturesForSegment(price.detectedSegment);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'プレミアム会員の特典',
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 12),
        ...features.map(
          (feature) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                const Icon(Icons.check_circle, color: Colors.green, size: 20),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    feature,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _handleSubscribeTap(
    BuildContext context,
    WidgetRef ref,
    DynamicPrice price,
  ) async {
    // Conversion トラッキング
    ref
        .read(dynamicPricingNotifierProvider.notifier)
        .recordPricingConversion(widget.userId, price);

    // キャッシュに保存
    ref
        .read(dynamicPricingNotifierProvider.notifier)
        .cacheDynamicPrice(widget.userId, price);

    // コールバック実行
    widget.onSubscribeTap();
  }

  // ─── ヘルパーメソッド ────────────────────────────────────────────

  LinearGradient _getGradientForSegment(UserSegment segment, bool isDarkMode) {
    final lightColor = _getLightColorForSegment(segment);
    final darkColor = _getDarkColorForSegment(segment);

    return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        isDarkMode ? darkColor.withOpacity(0.2) : lightColor.withOpacity(0.1),
        isDarkMode ? darkColor.withOpacity(0.1) : lightColor.withOpacity(0.05),
      ],
    );
  }

  Color _getLightColorForSegment(UserSegment segment) {
    switch (segment) {
      case UserSegment.newUser:
        return Colors.green;
      case UserSegment.churnRisk:
        return Colors.red;
      case UserSegment.vip:
        return Colors.purple;
      case UserSegment.inactive:
        return Colors.orange;
      default:
        return Colors.blue;
    }
  }

  Color _getDarkColorForSegment(UserSegment segment) {
    switch (segment) {
      case UserSegment.newUser:
        return Colors.green.shade400;
      case UserSegment.churnRisk:
        return Colors.red.shade400;
      case UserSegment.vip:
        return Colors.purple.shade400;
      case UserSegment.inactive:
        return Colors.orange.shade400;
      default:
        return Colors.blue.shade400;
    }
  }

  Color _getButtonColorForSegment(UserSegment segment) {
    switch (segment) {
      case UserSegment.newUser:
        return Colors.green;
      case UserSegment.churnRisk:
        return Colors.red;
      case UserSegment.vip:
        return Colors.purple;
      case UserSegment.inactive:
        return Colors.orange;
      default:
        return Colors.blue;
    }
  }

  Icon _getIconForSegment(UserSegment segment) {
    switch (segment) {
      case UserSegment.newUser:
        return const Icon(Icons.celebration, size: 48, color: Colors.green);
      case UserSegment.churnRisk:
        return const Icon(Icons.favorite, size: 48, color: Colors.red);
      case UserSegment.vip:
        return const Icon(Icons.star, size: 48, color: Colors.purple);
      case UserSegment.inactive:
        return const Icon(Icons.rocket, size: 48, color: Colors.orange);
      default:
        return const Icon(Icons.card_giftcard, size: 48, color: Colors.blue);
    }
  }

  String _getTitleForSegment(UserSegment segment) {
    switch (segment) {
      case UserSegment.newUser:
        return '新規ユーザー限定';
      case UserSegment.inactive:
        return 'リエンゲージメント';
      case UserSegment.churnRisk:
        return 'カムバックキャンペーン';
      case UserSegment.vip:
        return 'VIP エクスクルーシブ';
      default:
        return 'プレミアム会員';
    }
  }

  String _getDescriptionForSegment(UserSegment segment) {
    switch (segment) {
      case UserSegment.newUser:
        return '今なら特別価格！最初の1ヶ月をお得にお試し';
      case UserSegment.inactive:
        return 'また始めませんか？限定割引でお待ちしています';
      case UserSegment.churnRisk:
        return 'いますぐ復帰して、特別なオファーを享受しましょう';
      case UserSegment.vip:
        return 'ご利用いただきありがとうございます。プレミアム特典をご用意';
      default:
        return '学習を次のレベルへ';
    }
  }

  List<String> _getFeaturesForSegment(UserSegment segment) {
    final basicFeatures = [
      '全教科の無制限学習',
      '広告なしで快適に学習',
      '詳細な学習レポート',
    ];

    final vipFeatures = [
      ...basicFeatures,
      'AIによる個別学習支援',
      'オンライン家庭教師との相談',
      '優先サポート',
    ];

    return segment == UserSegment.vip ? vipFeatures : basicFeatures;
  }
}
