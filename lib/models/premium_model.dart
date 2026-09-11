import 'package:freezed_annotation/freezed_annotation.dart';

part 'premium_model.freezed.dart';
part 'premium_model.g.dart';

/// サブスクリプション状態を表すモデル
@freezed
class PremiumState with _$PremiumState {
  const factory PremiumState({
    /// ユーザーがアクティブなサブスクリプションを持っているか
    required bool isSubscribed,
    
    /// サブスクリプションの有効期限（null の場合は無期限または未検証）
    DateTime? subscriptionExpiryDate,
    
    /// サブスクリプション種別（'monthly', 'yearly', など）
    String? subscriptionType,
    
    /// 最後の検証時刻
    DateTime? lastValidatedAt,
    
    /// エラーメッセージ（検証失敗時）
    String? error,
    
    /// ローディング状態
    @Default(false) bool isLoading,
  }) = _PremiumState;

  factory PremiumState.fromJson(Map<String, dynamic> json) =>
      _$PremiumStateFromJson(json);
}

/// サブスクリプション確認用リクエストモデル
@freezed
class SubscriptionCheckRequest with _$SubscriptionCheckRequest {
  const factory SubscriptionCheckRequest({
    required String userId,
    required String platform, // 'android' or 'ios'
    required String packageName,
  }) = _SubscriptionCheckRequest;

  factory SubscriptionCheckRequest.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionCheckRequestFromJson(json);
}
