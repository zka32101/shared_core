// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'premium_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PremiumState _$PremiumStateFromJson(Map<String, dynamic> json) =>
    _PremiumState(
      isSubscribed: json['isSubscribed'] as bool,
      subscriptionExpiryDate: json['subscriptionExpiryDate'] == null
          ? null
          : DateTime.parse(json['subscriptionExpiryDate'] as String),
      subscriptionType: json['subscriptionType'] as String?,
      lastValidatedAt: json['lastValidatedAt'] == null
          ? null
          : DateTime.parse(json['lastValidatedAt'] as String),
      error: json['error'] as String?,
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$PremiumStateToJson(
  _PremiumState instance,
) => <String, dynamic>{
  'isSubscribed': instance.isSubscribed,
  'subscriptionExpiryDate': instance.subscriptionExpiryDate?.toIso8601String(),
  'subscriptionType': instance.subscriptionType,
  'lastValidatedAt': instance.lastValidatedAt?.toIso8601String(),
  'error': instance.error,
  'isLoading': instance.isLoading,
};

_SubscriptionCheckRequest _$SubscriptionCheckRequestFromJson(
  Map<String, dynamic> json,
) => _SubscriptionCheckRequest(
  userId: json['userId'] as String,
  platform: json['platform'] as String,
  packageName: json['packageName'] as String,
);

Map<String, dynamic> _$SubscriptionCheckRequestToJson(
  _SubscriptionCheckRequest instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'platform': instance.platform,
  'packageName': instance.packageName,
};
