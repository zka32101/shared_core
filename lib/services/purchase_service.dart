import 'dart:async';
import 'dart:io';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:shared_core/models/subscription_config.dart';

/// 統一 RevenueCat 購読サービス
///
/// shared_core における RevenueCat 統一インターフェース。
/// SubscriptionConfig で API キーを管理し、各アプリが共通の実装を使用できる。
class PurchaseService {
  static bool _initialized = false;
  static final _customerInfoController =
      StreamController<CustomerInfo>.broadcast();

  final SubscriptionConfig config;

  PurchaseService({required this.config});

  /// RevenueCat を初期化
  ///
  /// main.dart での呼び出し例:
  /// ```dart
  /// final purchaseService = PurchaseService(
  ///   config: SubscriptionConfig(
  ///     googleKey: 'goog_xxxxx',
  ///     appleKey: 'appl_xxxxx',
  ///   ),
  /// );
  /// await purchaseService.initialize();
  /// ```
  Future<void> initialize() async {
    if (_initialized) return;

    final apiKey = Platform.isIOS ? config.appleKey : config.googleKey;

    try {
      if (config.enableDebugLogging) {
        await Purchases.setLogLevel(LogLevel.debug);
      } else {
        await Purchases.setLogLevel(LogLevel.info);
      }

      final purchasesConfig = PurchasesConfiguration(apiKey);
      await Purchases.configure(purchasesConfig);
      _initialized = true;

      // カスタマー情報の変更をリッスン
      Purchases.addCustomerInfoUpdateListener((info) {
        if (!_customerInfoController.isClosed) {
          _customerInfoController.add(info);
        }
      });
    } catch (e) {
      throw Exception('RevenueCat initialization failed: $e');
    }
  }

  /// 現在のカスタマー情報を取得
  Future<CustomerInfo> getCustomerInfo() async {
    try {
      return await Purchases.getCustomerInfo();
    } catch (e) {
      throw Exception('Failed to get customer info: $e');
    }
  }

  /// プレミアム購読状態を確認
  Future<bool> isSubscribed(String userId) async {
    try {
      final info = await getCustomerInfo();
      return info.entitlements.active.containsKey(config.premiumEntitlementId);
    } catch (e) {
      return false;
    }
  }

  /// サブスクリプション有効期限を取得
  Future<DateTime?> getSubscriptionExpirationDate(String userId) async {
    try {
      final info = await getCustomerInfo();
      final entitlement = info.entitlements.active[config.premiumEntitlementId];
      final expirationDate = entitlement?.expirationDate;
      return expirationDate != null ? DateTime.tryParse(expirationDate) : null;
    } catch (e) {
      return null;
    }
  }

  /// 利用可能なオファリングを取得
  Future<Offerings?> getOfferings() async {
    try {
      return await Purchases.getOfferings();
    } catch (e) {
      return null;
    }
  }

  /// パッケージを購入
  ///
  /// 例:
  /// ```dart
  /// final offerings = await purchaseService.getOfferings();
  /// if (offerings != null && offerings.current != null) {
  ///   final package = offerings.current!.availablePackages.first;
  ///   final result = await purchaseService.purchase(package);
  ///   if (result != null) {
  ///     // 購入成功
  ///   }
  /// }
  /// ```
  Future<CustomerInfo?> purchase(Package package) async {
    try {
      final result = await Purchases.purchasePackage(package);
      return result.customerInfo;
    } on PurchasesErrorCode catch (e) {
      if (e == PurchasesErrorCode.purchaseCancelledError) return null;
      rethrow;
    }
  }

  /// 購入を復元
  Future<CustomerInfo> restorePurchases() async {
    try {
      return await Purchases.restorePurchases();
    } catch (e) {
      throw Exception('Failed to restore purchases: $e');
    }
  }

  /// カスタマー情報の変更を監視（Stream）
  Stream<CustomerInfo> get customerInfoStream =>
      _customerInfoController.stream;

  /// サービスをクリーンアップ
  void dispose() {
    _customerInfoController.close();
    _initialized = false;
  }
}
