// Phase 4.12: ユーザーセグメント判定プロバイダー
// Firestore ユーザーデータから自動的にセグメンテーション

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/pricing_strategy.dart';

/// ユーザーをセグメント別に分類
/// Firestore の users/{userId} ドキュメントから
/// createdAt, lastActivityAt, totalLearningMinutes を読み取り
final userSegmentProvider = FutureProvider.autoDispose
    .family<UserSegment, String>((ref, userId) async {
  try {
    final userDoc = await FirebaseFirestore.instance
        .collection('users')
        .doc(userId)
        .get();

    if (!userDoc.exists) {
      return UserSegment.newUser;
    }

    final userData = userDoc.data()!;
    final createdAt = userData['createdAt'] as Timestamp?;
    final lastActivityAt = userData['lastActivityAt'] as Timestamp?;
    final totalLearningMinutes = userData['totalLearningMinutes'] as int? ?? 0;

    final now = DateTime.now();

    // ─── VIP チェック ─────────────────────────────
    if (totalLearningMinutes >= 1000) {
      return UserSegment.vip;
    }

    // ─── チャーン リスク チェック ─────────────────
    if (lastActivityAt != null) {
      final daysSinceLastActivity =
          now.difference(lastActivityAt.toDate()).inDays;
      if (daysSinceLastActivity >= 30) {
        return UserSegment.churnRisk;
      }

      // ─── 非アクティブ チェック ───────────────────
      if (daysSinceLastActivity >= 7) {
        return UserSegment.inactive;
      }
    }

    // ─── 新規ユーザー チェック ───────────────────
    if (createdAt != null) {
      final daysSinceCreation = now.difference(createdAt.toDate()).inDays;
      if (daysSinceCreation <= 30) {
        return UserSegment.newUser;
      }
    }

    // デフォルト: アクティブユーザー
    return UserSegment.active;
  } catch (e) {
    // エラー時は安全にデフォルトを返す
    return UserSegment.active;
  }
});

/// Firestore RemoteConfig からダイナミック Pricing 設定を取得
final pricingConfigProvider = FutureProvider.autoDispose((ref) async {
  try {
    // FirebaseRemoteConfig を使用する場合
    // (実装はアプリ側で Firebase 初期化時に処理)
    // ここでは Firestore 直接参照版を提供
    final configDoc = await FirebaseFirestore.instance
        .collection('configs')
        .doc('pricing_config')
        .get();

    if (!configDoc.exists) {
      return _getDefaultPricingConfig();
    }

    return PricingConfig.fromJson(configDoc.data()!);
  } catch (e) {
    return _getDefaultPricingConfig();
  }
});

/// デフォルト価格設定
PricingConfig _getDefaultPricingConfig() {
  return PricingConfig(
    basePrice: 120,
    segmentPrices: {
      UserSegment.newUser: 50,      // 新規: 58% OFF
      UserSegment.inactive: 79,     // 非アクティブ: 34% OFF
      UserSegment.active: 120,      // 通常価格
      UserSegment.vip: 150,         // VIP プレミアム
      UserSegment.churnRisk: 49,    // チャーン: 59% OFF
    },
    seasonalOffers: [
      SeasonalOffer(
        name: '年末年始キャンペーン',
        startDate: DateTime(DateTime.now().year, 12, 15),
        endDate: DateTime(DateTime.now().year + 1, 1, 15),
        offerPrice: 98,
        description: '50% OFF キャンペーン',
        isActive: true,
      ),
    ],
    vipThresholdMinutes: 1000,
    inactiveThresholdDays: 7,
    churnRiskThresholdDays: 30,
  );
}

/// ダイナミック価格を計算
final dynamicPriceProvider = FutureProvider.autoDispose
    .family<DynamicPrice, String>((ref, userId) async {
  final segment = await ref.watch(userSegmentProvider(userId).future);
  final config = await ref.watch(pricingConfigProvider.future);

  final now = DateTime.now();

  // セッション オファー チェック（最優先）
  SeasonalOffer? activeSeasonalOffer;
  for (final offer in config.seasonalOffers) {
    if (offer.isActive &&
        offer.startDate.isBefore(now) &&
        offer.endDate.isAfter(now)) {
      activeSeasonalOffer = offer;
      break;
    }
  }

  int displayPrice = config.basePrice;
  double appliedDiscount = 0.0;
  String discountReason = '';
  bool isLimited = false;
  DateTime validUntil = now.add(const Duration(days: 7));

  // ─── セッション オファー処理 ──────────────────
  if (activeSeasonalOffer != null) {
    displayPrice = activeSeasonalOffer.offerPrice;
    appliedDiscount =
        ((config.basePrice - displayPrice) / config.basePrice) * 100;
    discountReason = activeSeasonalOffer.name;
    isLimited = true;
    validUntil = activeSeasonalOffer.endDate;
  } else {
    // ─── ユーザー セグメント別価格 ──────────────
    final segmentPrice = config.segmentPrices[segment];
    if (segmentPrice != null) {
      displayPrice = segmentPrice;
      appliedDiscount =
          ((config.basePrice - displayPrice) / config.basePrice) * 100;
    }

    switch (segment) {
      case UserSegment.newUser:
        discountReason = '新規ユーザー限定オファー';
        isLimited = true;
        validUntil = now.add(const Duration(days: 30));
        break;

      case UserSegment.inactive:
        discountReason = 'リエンゲージメント オファー';
        isLimited = true;
        validUntil = now.add(const Duration(days: 3));
        break;

      case UserSegment.churnRisk:
        discountReason = 'カムバック キャンペーン';
        isLimited = true;
        validUntil = now.add(const Duration(days: 7));
        break;

      case UserSegment.vip:
        discountReason = 'VIP エクスクルーシブ';
        isLimited = false;
        break;

      default:
        discountReason = '通常価格';
    }
  }

  return DynamicPrice(
    userId: userId,
    detectedSegment: segment,
    displayPrice: displayPrice,
    basePrice: config.basePrice,
    appliedDiscount: appliedDiscount,
    discountReason: discountReason,
    validUntil: validUntil,
    isLimited: isLimited,
  );
});
