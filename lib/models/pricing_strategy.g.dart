// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pricing_strategy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PricingTier _$PricingTierFromJson(Map<String, dynamic> json) => _PricingTier(
  segment: $enumDecode(_$UserSegmentEnumMap, json['segment']),
  basePrice: (json['basePrice'] as num).toInt(),
  discountPercent: (json['discountPercent'] as num).toDouble(),
  label: json['label'] as String,
  description: json['description'] as String?,
  bonusFeatures:
      (json['bonusFeatures'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
);

Map<String, dynamic> _$PricingTierToJson(_PricingTier instance) =>
    <String, dynamic>{
      'segment': _$UserSegmentEnumMap[instance.segment]!,
      'basePrice': instance.basePrice,
      'discountPercent': instance.discountPercent,
      'label': instance.label,
      'description': instance.description,
      'bonusFeatures': instance.bonusFeatures,
    };

const _$UserSegmentEnumMap = {
  UserSegment.newUser: 'newUser',
  UserSegment.inactive: 'inactive',
  UserSegment.active: 'active',
  UserSegment.vip: 'vip',
  UserSegment.churnRisk: 'churnRisk',
};

_DynamicPrice _$DynamicPriceFromJson(Map<String, dynamic> json) =>
    _DynamicPrice(
      userId: json['userId'] as String,
      detectedSegment: $enumDecode(
        _$UserSegmentEnumMap,
        json['detectedSegment'],
      ),
      displayPrice: (json['displayPrice'] as num).toInt(),
      basePrice: (json['basePrice'] as num).toInt(),
      appliedDiscount: (json['appliedDiscount'] as num).toDouble(),
      discountReason: json['discountReason'] as String,
      validUntil: DateTime.parse(json['validUntil'] as String),
      isLimited: json['isLimited'] as bool,
    );

Map<String, dynamic> _$DynamicPriceToJson(_DynamicPrice instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'detectedSegment': _$UserSegmentEnumMap[instance.detectedSegment]!,
      'displayPrice': instance.displayPrice,
      'basePrice': instance.basePrice,
      'appliedDiscount': instance.appliedDiscount,
      'discountReason': instance.discountReason,
      'validUntil': instance.validUntil.toIso8601String(),
      'isLimited': instance.isLimited,
    };

_SeasonalOffer _$SeasonalOfferFromJson(Map<String, dynamic> json) =>
    _SeasonalOffer(
      name: json['name'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      offerPrice: (json['offerPrice'] as num).toInt(),
      description: json['description'] as String,
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$SeasonalOfferToJson(_SeasonalOffer instance) =>
    <String, dynamic>{
      'name': instance.name,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'offerPrice': instance.offerPrice,
      'description': instance.description,
      'isActive': instance.isActive,
    };

_PricingConfig _$PricingConfigFromJson(
  Map<String, dynamic> json,
) => _PricingConfig(
  basePrice: (json['basePrice'] as num).toInt(),
  segmentPrices: (json['segmentPrices'] as Map<String, dynamic>).map(
    (k, e) =>
        MapEntry($enumDecode(_$UserSegmentEnumMap, k), (e as num).toInt()),
  ),
  seasonalOffers:
      (json['seasonalOffers'] as List<dynamic>?)
          ?.map((e) => SeasonalOffer.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  vipThresholdMinutes: (json['vipThresholdMinutes'] as num?)?.toInt() ?? 1000,
  inactiveThresholdDays: (json['inactiveThresholdDays'] as num?)?.toInt() ?? 7,
  churnRiskThresholdDays:
      (json['churnRiskThresholdDays'] as num?)?.toInt() ?? 30,
);

Map<String, dynamic> _$PricingConfigToJson(_PricingConfig instance) =>
    <String, dynamic>{
      'basePrice': instance.basePrice,
      'segmentPrices': instance.segmentPrices.map(
        (k, e) => MapEntry(_$UserSegmentEnumMap[k]!, e),
      ),
      'seasonalOffers': instance.seasonalOffers,
      'vipThresholdMinutes': instance.vipThresholdMinutes,
      'inactiveThresholdDays': instance.inactiveThresholdDays,
      'churnRiskThresholdDays': instance.churnRiskThresholdDays,
    };

_PricingAnalyticsEvent _$PricingAnalyticsEventFromJson(
  Map<String, dynamic> json,
) => _PricingAnalyticsEvent(
  userId: json['userId'] as String,
  eventType: json['eventType'] as String,
  segment: $enumDecode(_$UserSegmentEnumMap, json['segment']),
  displayPrice: (json['displayPrice'] as num).toInt(),
  discountReason: json['discountReason'] as String,
  timestamp: DateTime.parse(json['timestamp'] as String),
);

Map<String, dynamic> _$PricingAnalyticsEventToJson(
  _PricingAnalyticsEvent instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'eventType': instance.eventType,
  'segment': _$UserSegmentEnumMap[instance.segment]!,
  'displayPrice': instance.displayPrice,
  'discountReason': instance.discountReason,
  'timestamp': instance.timestamp.toIso8601String(),
};
