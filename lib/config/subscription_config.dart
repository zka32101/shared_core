/// Phase 4.7: 統一サブスクリプション設定
///
/// すべての小学コレシリーズアプリで統一された
/// RevenueCat 設定と価格情報を定義します。

import 'dart:io';

class SubscriptionConfig {
  SubscriptionConfig._();

  // ─── RevenueCat API キー ──────────────────────────────────
  // 環境変数 REVENUE_CAT_API_KEY で設定
  // プラットフォーム別に自動選択
  static const String _applePlaceholder = 'appl_PLACEHOLDER';
  static const String _googlePlaceholder = 'goog_PLACEHOLDER';

  static const String _appleKey = String.fromEnvironment(
    'REVENUE_CAT_APPLE_KEY',
    defaultValue: _applePlaceholder,
  );

  static const String _googleKey = String.fromEnvironment(
    'REVENUE_CAT_GOOGLE_KEY',
    defaultValue: _googlePlaceholder,
  );

  /// 現在のプラットフォームに対応する RevenueCat API キー
  static String get apiKey => Platform.isIOS ? _appleKey : _googleKey;

  /// API キーが正しく設定されているか確認
  static bool get isConfigured =>
      apiKey != _applePlaceholder &&
      apiKey != _googlePlaceholder &&
      apiKey.isNotEmpty;

  // ─── 統一エンタイトルメント ID ──────────────────────────
  // すべてのアプリで同じエンタイトルメント ID を使用
  // RevenueCat ダッシュボードで作成必須
  static const String premiumEntitlementId = 'premium';

  // ─── 統一商品 ID ────────────────────────────────────────
  // App Store Connect / Google Play Console で作成する商品 ID
  // すべてのアプリで統一
  static const String monthlyProductId = 'shogaku_kore_premium_monthly';
  static const String annualProductId = 'shogaku_kore_premium_annual';

  // ─── 統一価格 ──────────────────────────────────────────
  // 月額: ¥300/月
  // 年額: ¥2,400/年（20% 割引相当）
  static const double monthlyPrice = 300.0;
  static const double annualPrice = 2400.0;
  static const String currency = 'JPY';

  // ─── プレミアム機能リスト ────────────────────────────────
  // サブスクリプション購読者に提供される機能
  static const List<String> premiumFeatures = [
    '広告なしの体験',
    '無制限のクイズチャレンジ',
    '詳細な学習レポート',
    '新機能への早期アクセス',
    'オフラインでのクイズダウンロード',
    'AI チューター機能（計画中）',
  ];
}
