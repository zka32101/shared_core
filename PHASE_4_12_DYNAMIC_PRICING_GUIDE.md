# Phase 4.12: ダイナミック Pricing システム実装ガイド

**実装日**: 2026-09-11  
**目的**: LTV +30～50% を実現する時間帯・ユーザータイプ・購買履歴ベースの動的価格設定  
**期待効果**: Conversion Rate 向上、チャーン減少、平均購買単価向上

---

## 概要

ダイナミック Pricing システムは、ユーザーの学習行動・滞在期間・チャーンリスク度に応じて、自動的に表示価格を変更する仕組みです。

### 5段階のユーザーセグメント

| セグメント | 条件 | 表示価格 | 割引率 | オファー期限 |
|-----------|------|--------|--------|-----------|
| **新規** | 初月内 | ¥50 | 58% OFF | 30日 |
| **非アクティブ** | 7日間学習なし | ¥79 | 34% OFF | 3日（限定） |
| **アクティブ** | 定期的に学習中 | ¥120 | - | - |
| **VIP** | 累積学習1000分+ | ¥150 | - | 無期限 |
| **チャーン** | 30日以上未使用 | ¥49 | 59% OFF | 7日 |

### セッション期間別オファー

| イベント | 期間 | 価格 | 説明 |
|---------|-----|------|------|
| 年末年始 | 12/15～1/15 | ¥98 | 50% OFF |
| ゴールデンウィーク | 4/25～5/5 | 変動 | 期間限定 |
| 新学期 | 4/1～4/15 | 変動 | 学習支援キャンペーン |

---

## 実装構成

### 1. モデル層 (`lib/models/pricing_strategy.dart`)

```dart
// ユーザーセグメント分類
enum UserSegment {
  newUser,      // 新規
  inactive,     // 非アクティブ
  active,       // アクティブ
  vip,          // VIP
  churnRisk,    // チャーン リスク
}

// ダイナミック価格オブジェクト
@freezed
class DynamicPrice {
  const factory DynamicPrice({
    required String userId,
    required UserSegment detectedSegment,
    required int displayPrice,      // 表示価格
    required int basePrice,         // 基本価格 ¥120
    required double appliedDiscount, // 適用割引率
    required String discountReason,  // 割引理由テキスト
    required DateTime validUntil,    // オファー有効期限
    required bool isLimited,         // 限定オファーか
  });
}

// セッション期間別オファー
@freezed
class SeasonalOffer {
  const factory SeasonalOffer({
    required String name,
    required DateTime startDate,
    required DateTime endDate,
    required int offerPrice,
    required String description,
    required bool isActive,
  });
}

// 全体設定
@freezed
class PricingConfig {
  const factory PricingConfig({
    required int basePrice,              // ¥120
    required Map<UserSegment, int> segmentPrices,
    required List<SeasonalOffer> seasonalOffers,
    required int vipThresholdMinutes,    // VIP判定
    required int inactiveThresholdDays,  // 非アクティブ判定
    required int churnRiskThresholdDays, // チャーン判定
  });
}
```

### 2. プロバイダー層

#### `user_segment_provider.dart` - ユーザーセグメント判定
```dart
// ユーザーを自動分類
final userSegmentProvider = FutureProvider.autoDispose
    .family<UserSegment, String>((ref, userId) async {
  // Firestore から users/{userId} を参照
  // createdAt, lastActivityAt, totalLearningMinutes で判定
  // → UserSegment 返却
});

// ダイナミック価格を計算
final dynamicPriceProvider = FutureProvider.autoDispose
    .family<DynamicPrice, String>((ref, userId) async {
  // userSegmentProvider と pricingConfigProvider を組み合わせ
  // → DynamicPrice を返却（表示価格、割引理由、有効期限など）
});
```

#### `dynamic_pricing_notifier.dart` - トラッキング・分析
```dart
class DynamicPricingNotifier extends StateNotifier {
  // Impression トラッキング：ユーザーが Paywall を表示した時点で記録
  Future<void> recordPricingImpression(
    String userId,
    DynamicPrice price,
  ) async;
  
  // Conversion トラッキング：購買完了時に記録
  Future<void> recordPricingConversion(
    String userId,
    DynamicPrice price,
  ) async;
}

// 分析用プロバイダー
final pricingConversionRateProvider // セグメント別 Conversion Rate
final averageDiscountBySegmentProvider // セグメント別平均割引額
```

### 3. UI層 (`dynamic_paywall_widget.dart`)

DynamicPaywallWidget は以下を自動処理：
- セグメント別グラデーション背景
- セグメント別アイコン・タイトル・説明文
- 割引バナー表示（動的）
- 機能リスト（セグメント別）
- Impression トラッキング（自動）
- Conversion トラッキング（購買時）

---

## Firebase RemoteConfig 設定例

Firebase Console → Remote Config → 新規パラメータを作成

### パラメータ名: `pricing_config`

**タイプ**: JSON

**デフォルト値**:
```json
{
  "basePrice": 120,
  "segmentPrices": {
    "newUser": 50,
    "inactive": 79,
    "active": 120,
    "vip": 150,
    "churnRisk": 49
  },
  "seasonalOffers": [
    {
      "name": "年末年始キャンペーン",
      "startDate": "2026-12-15",
      "endDate": "2027-01-15",
      "offerPrice": 98,
      "description": "50% OFF キャンペーン",
      "isActive": true
    },
    {
      "name": "ゴールデンウィーク",
      "startDate": "2026-04-25",
      "endDate": "2026-05-05",
      "offerPrice": 89,
      "description": "35% OFF",
      "isActive": false
    }
  ],
  "vipThresholdMinutes": 1000,
  "inactiveThresholdDays": 7,
  "churnRiskThresholdDays": 30
}
```

### 条件付きオファー例（A/B テスト）

**条件**: ユーザーセグメント = "inactive"
```json
{
  "segmentPrices": {
    "inactive": 69
  }
}
```
→ 一部ユーザーに対して ¥79 → ¥69 でテスト

---

## 各アプリでの統合方法

### 1. 既存 Paywall の置き換え

**以前**（固定価格）:
```dart
AdaptivePaywallScreen(
  onSubscribeTap: () { /* 購買処理 */ },
)
```

**新規**（ダイナミック価格）:
```dart
import 'package:shared_core/dynamic_paywall_widget.dart';

DynamicPaywallWidget(
  userId: currentUserId,
  onSubscribeTap: () { /* 購買処理 */ },
  onRestoreTap: () { /* リストア処理 */ },
)
```

### 2. Firestore ユーザースキーマ

Paywall UI が参照する Firestore フィールド:

```dart
// users/{userId}
{
  "createdAt": Timestamp,           // 新規判定用
  "lastActivityAt": Timestamp,      // 非アクティブ/チャーン判定用
  "totalLearningMinutes": int,      // VIP判定用（累積）
  
  // 購買ヒストリ（自動更新）
  "lastPurchasePrice": int,
  "lastPurchaseAt": Timestamp,
  "purchaseSegment": string,
}

// users/{userId}/purchases（履歴）
{
  "price": int,
  "segment": string,
  "paidAt": Timestamp,
  "discountReason": string,
}
```

### 3. Analytics ログスキーマ

自動的に Firestore に記録:

```dart
// analytics/pricing/impressions（Paywall 表示）
{
  "userId": string,
  "displayPrice": int,
  "basePrice": int,
  "segment": string,
  "discountReason": string,
  "appliedDiscount": double,
  "timestamp": Timestamp,
  "isLimited": bool,
}

// analytics/pricing/conversions（購買成功）
{
  "userId": string,
  "displayPrice": int,
  "basePrice": int,
  "segment": string,
  "discountApplied": double,
  "timestamp": Timestamp,
  "isLimited": bool,
}
```

---

## 期待効果・KPI

### LTV（ライフタイムバリュー）シミュレーション

#### ケース1: 新規ユーザー（初月）
- 従来: ¥120 × 1ヶ月 = ¥120
- 新規: ¥50 × 1ヶ月 → 継続率 60% → ¥120 × 6ヶ月 = ¥770
- **LTV向上**: +540%

#### ケース2: 非アクティブユーザー（リエンゲージ）
- 従来: 表示されず
- 新規: ¥79 で 3日限定 → 復帰率 30% → ¥120 × 4ヶ月 = ¥480
- **新規LTV**: ¥480

#### ケース3: VIP（高価値）
- 従来: ¥120
- 新規: ¥150（プレミアム機能追加）
- **ARPU向上**: +25%

### 全体期待効果
- **LTV**: +30～50%
- **Conversion Rate**: +40～60%（新規向け低価格オファー）
- **チャーン率**: -15～25%（リエンゲージメント効果）
- **ARPU**: +10～15%（VIP セグメント）

---

## トラッキング・分析

### ダッシュボード用クエリ例

#### セグメント別 Conversion Rate
```dart
final conversionRate = ref.watch(
  pricingConversionRateProvider('newUser')
);
// → 新規ユーザーの Conversion Rate（%）
```

#### セグメント別平均割引額
```dart
final avgDiscount = ref.watch(
  averageDiscountBySegmentProvider('inactive')
);
// → 非アクティブユーザーの平均割引額（¥）
```

#### Firestore 直接クエリ
```dart
// セグメント別インプレッション数
db.collection('analytics/pricing/impressions')
  .where('segment', '==', 'newUser')
  .count()
  .get()
```

---

## セキュリティ・注意点

### 1. 価格テンプレートは変更不可
各アプリが独自に価格を変更できないよう設計:
- Pricing 設定は Firestore / RemoteConfig 一元管理
- アプリ側では読み取り専用

### 2. Firestore セキュリティルール例
```javascript
match /analytics/pricing/{document=**} {
  allow read: if request.auth.uid != null;
  allow write: if request.auth.uid != null;
}

match /users/{userId} {
  allow read, write: if request.auth.uid == userId;
}
```

### 3. バージョンの互換性
- RemoteConfig が未初期化時: `_getDefaultPricingConfig()` で安全なデフォルト返却
- 古いアプリバージョンでも動作（forward compatible）

---

## トラブルシューティング

### Q. RemoteConfig が反映されない
**A.** Firebase Console で「公開」ボタンを押したか確認。アプリを再起動して `fetchAndActivate()` を実行。

### Q. ユーザーセグメント判定がおかしい
**A.** Firestore の `createdAt`, `lastActivityAt`, `totalLearningMinutes` フィールドが正しく更新されているか確認。

### Q. トラッキングログが記録されない
**A.** Firestore 書き込み権限を確認。`analytics/pricing/` コレクションが存在するか確認。

---

## 実装チェックリスト

### Part 1: モデル・プロバイダー（共通パッケージ）
- [x] `pricing_strategy.dart` 実装
- [x] `user_segment_provider.dart` 実装
- [x] `dynamic_pricing_notifier.dart` 実装
- [x] `shared_core.dart` にエクスポート追加

### Part 2: UI ウィジェット
- [x] `dynamic_paywall_widget.dart` 実装
- [x] セグメント別グラデーション対応
- [x] Impression/Conversion トラッキング統合

### Part 3: 各アプリ側の作業
- [ ] Firestore ユーザースキーマ更新（`createdAt`, `lastActivityAt`, `totalLearningMinutes`）
- [ ] 学習時間トラッキングのプロバイダー更新（`totalLearningMinutes` 集計）
- [ ] DynamicPaywallWidget を AdaptivePaywallScreen に置き換え
- [ ] Firebase RemoteConfig から `pricing_config` を fetch
- [ ] テスト・QA実施

### Part 4: 運用・監視
- [ ] Firebase RemoteConfig で初期オファー設定
- [ ] Analytics ダッシュボード構築（Conversion Rate, ARPU追跡）
- [ ] A/B テスト実施（セグメント別価格の最適化）
- [ ] 週次/月次レビュー（LTV, チャーン率の改善確認）

---

## 参考資料

- [Firebase RemoteConfig ドキュメント](https://firebase.google.com/docs/remote-config)
- [Riverpod ドキュメント](https://riverpod.dev)
- [Firestore セキュリティルール](https://firebase.google.com/docs/firestore/security/start)

---

**作成日**: 2026-09-11  
**バージョン**: v1.0  
**ステータス**: ✅ 実装完了
