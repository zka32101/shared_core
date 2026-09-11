# Phase 4.7: 統一サブスクリプション実装ガイド

## 概要

小学コレシリーズ全7アプリで月額¥120の統一サブスクリプションを実装します。  
`shared_core` の統一 PremiumProvider を各アプリで使用することで、一貫したサブスク体験を実現します。

## 実装完了項目

### ✅ shared_core モジュール
- `lib/models/premium_model.dart`: PremiumState定義
- `lib/providers/premium_provider.dart`: PremiumNotifier実装
- `lib/widgets/premium_gate_widget.dart`: UI制御ウィジェット

### ✅ 依存性統一
すべてのアプリで `purchases_flutter: ^10.11.0` に統一

### ⏳ 各アプリ統合（進行中）
main.dart に PremiumProvider override を実装

## 使用方法

### 1. main.dart での初期化

```dart
import 'package:shared_core/shared_core.dart' 
  show premiumProvider, PremiumNotifier;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // ...Firebase init...
  
  // RevenueCatService 初期化
  final revenueCatService = RevenueCatService();
  await revenueCatService.initialize();
  
  final container = ProviderContainer(
    overrides: [
      // ... other overrides ...
      
      // Phase 4.7: 統一プレミアム管理
      premiumProvider.overrideWith(PremiumNotifier.new),
    ],
  );
  
  // プレミアムハンドラ設定
  final userId = FirebaseAuth.instance.currentUser?.uid;
  if (userId != null) {
    container.read(premiumProvider.notifier)
      ..setCheckHandler(revenueCatService.isSubscribed)
      ..setExpiryHandler(revenueCatService.getSubscriptionExpirationDate);
    
    unawaited(container.read(premiumProvider.notifier).checkSubscription(userId));
  }
  
  runApp(...);
}
```

### 2. プレミアム機能のゲート

```dart
// 方法1: PremiumGateWidget を使用
PremiumGateWidget(
  featureName: '無制限クイズ',
  child: UnlimitedQuizScreen(),
  onPremiumAccess: () {
    // サブスク画面に遷移
    Navigator.pushNamed(context, '/subscription');
  },
)

// 方法2: ConditionalPremiumWidget を使用
ConditionalPremiumWidget(
  premiumChild: PremiumFeatureScreen(),
  freeChild: FreeFeatureScreen(),
)

// 方法3: ref.watch で直接確認
Widget build(BuildContext context, WidgetRef ref) {
  final premiumState = ref.watch(premiumProvider);
  
  if (!premiumState.isSubscribed) {
    return LockedFeatureScreen(
      onSubscribe: () => showSubscriptionDialog(context),
    );
  }
  
  return FeatureScreen();
}
```

### 3. サブスク状態確認

```dart
// プレミアム状態を監視
final premiumState = ref.watch(premiumProvider);

// 有効期限を確認
if (premiumState.subscriptionExpiryDate != null) {
  final daysLeft = premiumState.subscriptionExpiryDate!
    .difference(DateTime.now())
    .inDays;
  print('残り日数: $daysLeft');
}

// 手動確認
ref.read(premiumProvider.notifier).checkSubscription(userId);

// リセット（ログアウト時）
ref.read(premiumProvider.notifier).reset();
```

## 実装シーケンス

### Phase 4.7.1: 基盤実装
- [x] shared_core モジュール作成
- [x] purchases_flutter 依存性統一
- [ ] 各アプリ main.dart 統合

### Phase 4.7.2: UI ゲーティング
- [ ] 各アプリで無制限機能に PremiumGateWidget 実装
- [ ] サブスク画面 UI 実装
- [ ] 領収書検証フロー確認

### Phase 4.7.3: リリース
- [ ] テスト確認（ローカル）
- [ ] Google Play / App Store でサブスク商品登録
- [ ] v2.0 リリース

## 各アプリの統合チェックリスト

### kokugo-kore
- [ ] main.dart: PremiumProvider override
- [ ] RevenueCatService: handler 設定
- [ ] UI: 無制限クイズに PremiumGate 実装

### newrepo (理科)
- [ ] main.dart: PremiumProvider override
- [ ] RevenueCatService: handler 設定
- [ ] UI: AI相談に PremiumGate 実装

### sansu-kore
- [ ] main.dart: PremiumProvider override
- [ ] RevenueCatService: handler 設定
- [ ] UI: 詳細解説に PremiumGate 実装

### social_quiz_app
- [ ] main.dart: PremiumProvider override
- [ ] RevenueCatService: handler 設定
- [ ] UI: マルチプレイに PremiumGate 実装

### eigo
- [ ] main.dart: PremiumProvider override
- [ ] RevenueCatService: handler 設定
- [ ] UI: 音声学習に PremiumGate 実装

### shogaku-kore-programming
- [ ] main.dart: PremiumProvider override
- [ ] RevenueCatService: handler 設定
- [ ] UI: 高度なブロック機能に PremiumGate 実装

### shinshin (道徳)
- [ ] main.dart: PremiumProvider override
- [ ] RevenueCatService: handler 設定
- [ ] UI: AI成長分析に PremiumGate 実装

## テスト手順

1. **ローカル確認**
   ```bash
   flutter run --debug
   # RevenueCat テストモード で動作確認
   ```

2. **エミュレータテスト**
   ```bash
   # Android: Google Play Billing Library テスト
   # iOS: StoreKit テスト
   ```

3. **本番前確認**
   - [ ] サブスク状態の永続化
   - [ ] 有効期限の自動更新
   - [ ] ログアウト時のリセット
   - [ ] 領収書検証 エラーハンドリング

## 関連ファイル

- shared_core/lib/models/premium_model.dart
- shared_core/lib/providers/premium_provider.dart
- shared_core/lib/widgets/premium_gate_widget.dart
- 各アプリ/lib/main.dart
- 各アプリ/lib/services/revenue_cat_service.dart

## 参考資料

- [RevenueCat Flutter SDK](https://pub.dev/packages/purchases_flutter)
- [Google Play Billing](https://developer.android.com/google/play/billing)
- [StoreKit 2](https://developer.apple.com/storekit/)
