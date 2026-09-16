// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pricing_strategy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PricingTierImpl _$$PricingTierImplFromJson(Map<String, dynamic> json) =>
    _$PricingTierImpl(
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

Map<String, dynamic> _$$PricingTierImplToJson(_$PricingTierImpl instance) =>
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

_$DynamicPriceImpl _$$DynamicPriceImplFromJson(Map<String, dynamic> json) =>
    _$DynamicPriceImpl(
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

Map<String, dynamic> _$$DynamicPriceImplToJson(_$DynamicPriceImpl instance) =>
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

_$SeasonalOfferImpl _$$SeasonalOfferImplFromJson(Map<String, dynamic> json) =>
    _$SeasonalOfferImpl(
      name: json['name'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      offerPrice: (json['offerPrice'] as num).toInt(),
      description: json['description'] as String,
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$$SeasonalOfferImplToJson(_$SeasonalOfferImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'offerPrice': instance.offerPrice,
      'description': instance.description,
      'isActive': instance.isActive,
    };

_$PricingConfigImpl _$$PricingConfigImplFromJson(
  Map<String, dynamic> json,
) => _$PricingConfigImpl(
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

Map<String, dynamic> _$$PricingConfigImplToJson(_$PricingConfigImpl instance) =>
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

_$PricingAnalyticsEventImpl _$$PricingAnalyticsEventImplFromJson(
  Map<String, dynamic> json,
) => _$PricingAnalyticsEventImpl(
  userId: json['userId'] as String,
  eventType: json['eventType'] as String,
  segment: $enumDecode(_$UserSegmentEnumMap, json['segment']),
  displayPrice: (json['displayPrice'] as num).toInt(),
  discountReason: json['discountReason'] as String,
  timestamp: DateTime.parse(json['timestamp'] as String),
);

Map<String, dynamic> _$$PricingAnalyticsEventImplToJson(
  _$PricingAnalyticsEventImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'eventType': instance.eventType,
  'segment': _$UserSegmentEnumMap[instance.segment]!,
  'displayPrice': instance.displayPrice,
  'discountReason': instance.discountReason,
  'timestamp': instance.timestamp.toIso8601String(),
};
