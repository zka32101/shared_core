// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'premium_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PremiumStateImpl _$$PremiumStateImplFromJson(Map<String, dynamic> json) =>
    _$PremiumStateImpl(
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

Map<String, dynamic> _$$PremiumStateImplToJson(
  _$PremiumStateImpl instance,
) => <String, dynamic>{
  'isSubscribed': instance.isSubscribed,
  'subscriptionExpiryDate': instance.subscriptionExpiryDate?.toIso8601String(),
  'subscriptionType': instance.subscriptionType,
  'lastValidatedAt': instance.lastValidatedAt?.toIso8601String(),
  'error': instance.error,
  'isLoading': instance.isLoading,
};

_$SubscriptionCheckRequestImpl _$$SubscriptionCheckRequestImplFromJson(
  Map<String, dynamic> json,
) => _$SubscriptionCheckRequestImpl(
  userId: json['userId'] as String,
  platform: json['platform'] as String,
  packageName: json['packageName'] as String,
);

Map<String, dynamic> _$$SubscriptionCheckRequestImplToJson(
  _$SubscriptionCheckRequestImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'platform': instance.platform,
  'packageName': instance.packageName,
};
