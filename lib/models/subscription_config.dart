import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription_config.freezed.dart';
part 'subscription_config.g.dart';

/// RevenueCat API キーと設定情報
@freezed
abstract class SubscriptionConfig with _$SubscriptionConfig {
  const factory SubscriptionConfig({
    /// Google Play Billing API キー
    required String googleKey,

    /// Apple App Store Server API キー
    required String appleKey,

    /// プレミアム Entitlement ID
    @Default('premium') String premiumEntitlementId,

    /// ロギングレベル
    @Default(false) bool enableDebugLogging,
  }) = _SubscriptionConfig;

  factory SubscriptionConfig.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionConfigFromJson(json);
}
