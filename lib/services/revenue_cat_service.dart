import 'dart:async';
import 'dart:io';
import 'package:purchases_flutter/purchases_flutter.dart';

/// 統一RevenueCat基本サービス
///
/// 各アプリで継承して使用：
/// ```dart
/// class MyAppPurchaseService extends RevenueCatService {
///   MyAppPurchaseService() : super(
///     googleKey: 'goog_xxxxx',
///     appleKey: 'appl_xxxxx',
///     premiumEntitlementId: 'premium',
///   );
/// }
/// ```
abstract class RevenueCatService {
  static bool _initialized = false;
  static final _customerInfoController =
      StreamController<CustomerInfo>.broadcast();

  final String googleKey;
  final String appleKey;
  final String premiumEntitlementId;

  RevenueCatService({
    required this.googleKey,
    required this.appleKey,
    required this.premiumEntitlementId,
  });

  /// RevenueCat初期化
  Future<void> initialize() async {
    if (_initialized) return;

    final apiKey = Platform.isIOS ? appleKey : googleKey;

    try {
      await Purchases.setLogLevel(LogLevel.debug);
      final config = PurchasesConfiguration(apiKey);
      await Purchases.configure(config);
      _initialized = true;

      // カスタマー情報更新リスナー（v8.x+ API）
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

  /// プレミアム状態を確認
  Future<bool> isSubscribed(String userId) async {
    try {
      final info = await getCustomerInfo();
      return info.entitlements.active.containsKey(premiumEntitlementId);
    } catch (e) {
      return false;
    }
  }

  /// サブスクリプション有効期限を取得
  Future<DateTime?> getSubscriptionExpirationDate(String userId) async {
    try {
      final info = await getCustomerInfo();
      final entitlement = info.entitlements.active[premiumEntitlementId];
      return entitlement?.expirationDate;
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
  Future<CustomerInfo?> purchase(Package package) async {
    try {
      final result = await Purchases.purchasePackage(package);
      return result;
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

  /// カスタマー情報の変更を監視
  Stream<CustomerInfo> get customerInfoStream =>
      _customerInfoController.stream;

  /// サービスをクリーンアップ
  void dispose() {
    _customerInfoController.close();
    _initialized = false;
  }
}
