// Phase 4.12: ダイナミック Pricing Notifier
// Pricing トラッキングと分析ログ記録

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/pricing_strategy.dart';

/// ダイナミック Pricing の分析・トラッキングを管理する Notifier
class DynamicPricingNotifier extends StateNotifier<Map<String, DynamicPrice>> {
  final FirebaseFirestore _firestore;

  DynamicPricingNotifier({FirebaseFirestore? firestore})
      : _firestore = firestore ?? FirebaseFirestore.instance,
        super({});

  /// Impression トラッキング
  /// ユーザーが Paywall を表示した時点で記録
  Future<void> recordPricingImpression(
    String userId,
    DynamicPrice price,
  ) async {
    try {
      await _firestore
          .collection('analytics')
          .doc('pricing')
          .collection('impressions')
          .add({
            'userId': userId,
            'displayPrice': price.displayPrice,
            'basePrice': price.basePrice,
            'segment': price.detectedSegment.toString().split('.').last,
            'discountReason': price.discountReason,
            'appliedDiscount': price.appliedDiscount,
            'timestamp': FieldValue.serverTimestamp(),
            'isLimited': price.isLimited,
          });
    } catch (e) {
      // ログ記録エラーでもアプリは動作継続
      print('Error recording pricing impression: $e');
    }
  }

  /// Conversion トラッキング
  /// ユーザーが購買完了した時点で記録
  Future<void> recordPricingConversion(
    String userId,
    DynamicPrice price,
  ) async {
    try {
      // analytics/pricing/conversions コレクションに記録
      await _firestore
          .collection('analytics')
          .doc('pricing')
          .collection('conversions')
          .add({
            'userId': userId,
            'displayPrice': price.displayPrice,
            'basePrice': price.basePrice,
            'segment': price.detectedSegment.toString().split('.').last,
            'discountApplied': price.appliedDiscount,
            'discountReason': price.discountReason,
            'timestamp': FieldValue.serverTimestamp(),
            'isLimited': price.isLimited,
          });

      // ユーザーの購買履歴も別途記録
      await _firestore
          .collection('users')
          .doc(userId)
          .collection('purchases')
          .add({
            'price': price.displayPrice,
            'segment': price.detectedSegment.toString().split('.').last,
            'paidAt': FieldValue.serverTimestamp(),
            'discountReason': price.discountReason,
          });

      // ユーザープロフィールの最終購買情報を更新
      await _firestore.collection('users').doc(userId).update({
        'lastPurchasePrice': price.displayPrice,
        'lastPurchaseAt': FieldValue.serverTimestamp(),
        'purchaseSegment': price.detectedSegment.toString().split('.').last,
      });
    } catch (e) {
      print('Error recording pricing conversion: $e');
    }
  }

  /// キャッシュにダイナミック価格を保存
  void cacheDynamicPrice(String userId, DynamicPrice price) {
    state = {...state, userId: price};
  }

  /// キャッシュから削除
  void clearCache(String userId) {
    state = Map.from(state)..remove(userId);
  }

  /// 全キャッシュをクリア
  void clearAllCache() {
    state = {};
  }
}

/// Riverpod Provider
final dynamicPricingNotifierProvider =
    StateNotifierProvider<DynamicPricingNotifier, Map<String, DynamicPrice>>(
  (ref) => DynamicPricingNotifier(),
);

/// Conversion Rate 計算用 Provider
final pricingConversionRateProvider = FutureProvider.autoDispose
    .family<double, String>((ref, segment) async {
  try {
    final firestore = FirebaseFirestore.instance;

    // impressions と conversions のカウントを取得
    final impressionSnapshot = await firestore
        .collection('analytics')
        .doc('pricing')
        .collection('impressions')
        .where('segment', isEqualTo: segment)
        .count()
        .get();

    final conversionSnapshot = await firestore
        .collection('analytics')
        .doc('pricing')
        .collection('conversions')
        .where('segment', isEqualTo: segment)
        .count()
        .get();

    final impressions = impressionSnapshot.count;
    final conversions = conversionSnapshot.count;

    if (impressions == 0) {
      return 0.0;
    }

    return (conversions / impressions) * 100;
  } catch (e) {
    return 0.0;
  }
});

/// セグメント別の平均割引額
final averageDiscountBySegmentProvider = FutureProvider.autoDispose
    .family<double, String>((ref, segment) async {
  try {
    final firestore = FirebaseFirestore.instance;

    final snapshot = await firestore
        .collection('analytics')
        .doc('pricing')
        .collection('conversions')
        .where('segment', isEqualTo: segment)
        .limit(1000)
        .get();

    if (snapshot.docs.isEmpty) {
      return 0.0;
    }

    final totalDiscount = snapshot.docs
        .map((doc) => (doc['discountApplied'] as num?)?.toDouble() ?? 0.0)
        .reduce((a, b) => a + b);

    return totalDiscount / snapshot.docs.length;
  } catch (e) {
    return 0.0;
  }
});
