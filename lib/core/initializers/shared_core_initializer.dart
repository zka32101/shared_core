import 'package:firebase_core/firebase_core.dart';
import 'package:shared_core/models/subscription_config.dart';
import 'package:shared_core/services/firebase_service.dart';
import 'package:shared_core/services/purchase_service.dart';
import 'package:shared_core/services/push_notification_service.dart';
import 'package:shared_core/services/reminder_service.dart';

/// shared_core の統一初期化ユーティリティ
///
/// 各アプリの main.dart で使用して、shared_core のすべての機能を初期化します。
class SharedCoreInitializer {
  static PurchaseService? _purchaseService;

  /// 全機能を初期化
  ///
  /// Firebase と RevenueCat（購読機能）を一度に初期化します。
  /// main.dart での使用例:
  /// ```dart
  /// void main() async {
  ///   WidgetsFlutterBinding.ensureInitialized();
  ///
  ///   await SharedCoreInitializer.initialize(
  ///     subscriptionConfig: SubscriptionConfig(
  ///       googleKey: 'goog_xxxxx',
  ///       appleKey: 'appl_xxxxx',
  ///     ),
  ///   );
  ///
  ///   runApp(MyApp());
  /// }
  /// ```
  static Future<void> initialize({
    required SubscriptionConfig subscriptionConfig,
    FirebaseOptions? firebaseOptions,
  }) async {
    // Firebase を初期化
    if (Firebase.apps.isEmpty && firebaseOptions != null) {
      await Firebase.initializeApp(options: firebaseOptions);
    }

    // 購読機能（RevenueCat）を初期化
    await initializeSubscriptions(subscriptionConfig);
  }

  /// 購読機能のみを初期化
  ///
  /// Firebase は既に初期化済みの場合、こちらを使用します。
  ///
  /// 例:
  /// ```dart
  /// await Firebase.initializeApp();
  /// await SharedCoreInitializer.initializeSubscriptions(
  ///   SubscriptionConfig(
  ///     googleKey: 'goog_xxxxx',
  ///     appleKey: 'appl_xxxxx',
  ///   ),
  /// );
  /// ```
  static Future<void> initializeSubscriptions(
    SubscriptionConfig config,
  ) async {
    _purchaseService = PurchaseService(config: config);
    await _purchaseService!.initialize();
  }

  /// 通知機能のみを初期化
  ///
  /// PushNotificationService と ReminderService を初期化します。
  ///
  /// 例:
  /// ```dart
  /// await SharedCoreInitializer.initializeNotifications();
  /// ```
  static Future<void> initializeNotifications() async {
    await PushNotificationService.initialize();
    await ReminderService.instance.initialize();
  }

  /// 初期化済みの PurchaseService インスタンスを取得
  ///
  /// 例:
  /// ```dart
  /// final purchaseService = SharedCoreInitializer.getPurchaseService();
  /// if (purchaseService != null) {
  ///   final isSubscribed = await purchaseService.isSubscribed(userId);
  /// }
  /// ```
  static PurchaseService? getPurchaseService() => _purchaseService;

  /// サービスをクリーンアップ（アプリ終了時に呼び出し）
  static void dispose() {
    _purchaseService?.dispose();
    _purchaseService = null;
  }
}
