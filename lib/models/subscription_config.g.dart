// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubscriptionConfig _$SubscriptionConfigFromJson(Map<String, dynamic> json) =>
    _SubscriptionConfig(
      googleKey: json['googleKey'] as String,
      appleKey: json['appleKey'] as String,
      premiumEntitlementId: json['premiumEntitlementId'] as String? ?? 'premium',
      enableDebugLogging: json['enableDebugLogging'] as bool? ?? false,
    );

Map<String, dynamic> _$SubscriptionConfigToJson(
  _SubscriptionConfig instance,
) => <String, dynamic>{
  'googleKey': instance.googleKey,
  'appleKey': instance.appleKey,
  'premiumEntitlementId': instance.premiumEntitlementId,
  'enableDebugLogging': instance.enableDebugLogging,
};
