// Phase 4.12: ダイナミック Pricing システム
// ユーザーセグメント別・時間帯別・イベント別価格設定

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pricing_strategy.freezed.dart';
part 'pricing_strategy.g.dart';

// ─── ユーザータイプ分類 ────────────────────────────────────────────────
enum UserSegment {
  newUser,          // 新規ユーザー（初月）
  inactive,         // 非アクティブ（7日間学習なし）
  active,           // アクティブ（定期的に学習）
  vip,              // VIP（合計学習時間1000分+）
  churnRisk,        // チャーン リスク（最後のアクティビティ30日以上前）
}

// ─── ティアモデル ──────────────────────────────────────────────────────
@freezed
class PricingTier with _$PricingTier {
  const factory PricingTier({
    required UserSegment segment,
    required int basePrice,           // 基本価格（¥）
    required double discountPercent,  // 割引率（%）
    required String label,            // 表示テキスト
    String? description,              // 説明（オプション）
    @Default([]) List<String> bonusFeatures, // 追加ボーナス
  }) = _PricingTier;

  factory PricingTier.fromJson(Map<String, dynamic> json) =>
      _$PricingTierFromJson(json);
}

// ─── ダイナミック価格モデル ────────────────────────────────────────────
@freezed
class DynamicPrice with _$DynamicPrice {
  const factory DynamicPrice({
    required String userId,
    required UserSegment detectedSegment,
    required int displayPrice,        // 表示価格
    required int basePrice,           // 通常価格（¥120）
    required double appliedDiscount,  // 適用割引率
    required String discountReason,   // 割引理由（表示用）
    required DateTime validUntil,     // オファー有効期限
    required bool isLimited,          // 限定オファーか
  }) = _DynamicPrice;

  factory DynamicPrice.fromJson(Map<String, dynamic> json) =>
      _$DynamicPriceFromJson(json);
}

// ─── セッション期間による価格設定 ──────────────────────────────────────
@freezed
class SeasonalOffer with _$SeasonalOffer {
  const factory SeasonalOffer({
    required String name,
    required DateTime startDate,
    required DateTime endDate,
    required int offerPrice,
    required String description,
    required bool isActive,
  }) = _SeasonalOffer;

  factory SeasonalOffer.fromJson(Map<String, dynamic> json) =>
      _$SeasonalOfferFromJson(json);
}

// ─── 価格設定ルール全体 ────────────────────────────────────────────────
@freezed
class PricingConfig with _$PricingConfig {
  const factory PricingConfig({
    required int basePrice,                    // ¥120
    required Map<UserSegment, int> segmentPrices,
    @Default([]) List<SeasonalOffer> seasonalOffers,
    @Default(1000) int vipThresholdMinutes,          // VIP判定: 1000分
    @Default(7) int inactiveThresholdDays,          // 非アクティブ: 7日
    @Default(30) int churnRiskThresholdDays,        // チャーン: 30日
  }) = _PricingConfig;

  factory PricingConfig.fromJson(Map<String, dynamic> json) =>
      _$PricingConfigFromJson(json);
}

// ─── インプレッション・コンバージョントラッキング ───────────────────────
@freezed
class PricingAnalyticsEvent with _$PricingAnalyticsEvent {
  const factory PricingAnalyticsEvent({
    required String userId,
    required String eventType,        // 'impression' or 'conversion'
    required UserSegment segment,
    required int displayPrice,
    required String discountReason,
    required DateTime timestamp,
  }) = _PricingAnalyticsEvent;

  factory PricingAnalyticsEvent.fromJson(Map<String, dynamic> json) =>
      _$PricingAnalyticsEventFromJson(json);
}
