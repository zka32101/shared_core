# shared_core — 小学コレシリーズ共通パッケージ

## プロジェクト概要

**shared_core** は、7つの小学コレシリーズアプリ（国語・算数・理科・英語・社会・プログラミング・道徳）で統一されたゲーミフィケーション機能とUI コンポーネントを提供する Flutter パッケージです。

- **名前**: shared_core
- **説明**: ゲーミフィケーション・ユーザー管理・マルチプレイ機能の一元化
- **タイプ**: Flutter Package (pubspec.yaml publish_to: 'none')
- **バージョン**: 0.1.0+
- **依存性**: flutter_riverpod 2.6.1+, firebase_auth, cloud_firestore, shared_preferences

## 主要特性

このパッケージにより、7つのアプリが以下を共有：
- **統一されたバッジシステム**: 60+ 共通バッジ（教科別タグ付与可）
- **統一されたキャラクターシステム**: ティアシステム、装備・進化メカニクス
- **統一されたランキング・フレンド機能**: Firestore 統合、マルチプレイ
- **統一されたコインショップ**: デイリーボーナス、アイテム購入
- **統一されたテーマ・UI コンポーネント**: Material Design 3 ライト/ダーク対応
- **共通プロフィール・進捗管理**: ユーザープロフィール、学習記録

---

## ディレクトリ構成

```
lib/
├── models/                          # データモデル定義（Freezed 対応）
│   ├── badge_model.dart            # バッジ（定義・獲得管理）
│   ├── character_data.dart          # キャラクター定義・ティアデータ
│   ├── avatar_model.dart            # アバター・装備
│   ├── ranking_model.dart           # ランキング・スコアデータ
│   ├── friend_model.dart            # フレンド・リクエスト
│   ├── lesson_content_model.dart    # 学習コンテンツ
│   ├── multiplayer_model.dart       # マッチ・バトルデータ
│   ├── feedback_model.dart          # ユーザーフィードバック
│   ├── user_profile.dart            # ユーザープロフィール
│   ├── quest_model.dart             # クエスト・チャレンジ
│   └── screen_time_model.dart       # スクリーンタイム・リミット
├── providers/                        # Riverpod StateNotifier/Provider
│   ├── badge_provider.dart          # BadgeNotifier（バッジ獲得管理）
│   ├── character_state_provider.dart # CharacterNotifier（キャラクター状態）
│   ├── coin_provider.dart           # CoinNotifier（ポイント管理）
│   ├── avatar_provider.dart         # AvatarNotifier（アバター・装備）
│   ├── equipped_items_provider.dart # EquippedItemsNotifier
│   ├── ranking_provider.dart        # RankingProvider（ランキング・順位計算）
│   ├── friend_provider.dart         # FriendNotifier（フレンド管理）
│   ├── match_provider.dart          # MatchNotifier（マッチ状態）
│   ├── matchmaking_provider.dart    # MatchmakingProvider（マッチング）
│   ├── lesson_provider.dart         # LessonProvider（学習コンテンツ取得）
│   ├── profile_provider.dart        # ProfileProvider（ユーザープロフィール）
│   ├── progress_provider.dart       # ProgressProvider（学習進捗）
│   ├── daily_bonus_provider.dart    # DailyBonusNotifier（デイリーボーナス）
│   ├── feedback_provider.dart       # FeedbackNotifier（ユーザーフィードバック）
│   ├── learning_timer_provider.dart # LearningTimerNotifier（学習タイマー）
│   ├── screen_time_provider.dart    # ScreenTimeNotifier（スクリーンタイム制限）
│   ├── inventory_provider.dart      # InventoryNotifier（インベントリ）
│   └── adaptive_provider.dart       # AdaptiveProvider（適応学習）
├── services/                        # Firebase・API サービス
│   ├── firebase_service.dart        # Firebase 初期化・通信
│   └── firestore_matchmaking_service.dart # マッチング API
├── widgets/                         # 共有 UI コンポーネント
│   ├── character_collection_page.dart      # キャラクターコレクション画面
│   ├── coin_shop_page.dart                 # コインショップ（デイリーボーナス・アイテム購入）
│   ├── daily_mission_card.dart             # デイリーミッション表示
│   ├── daily_bonus_dialog.dart             # デイリーボーナスダイアログ
│   ├── generic_quiz_widget.dart            # 汎用クイズウィジェット
│   ├── avatar_widget.dart                  # アバター表示ウィジェット
│   ├── coin_balance_widget.dart            # コイン残高表示
│   ├── timer_chip_widget.dart              # タイマーチップ
│   ├── lesson_menu_page.dart               # 学習メニューページ
│   ├── feedback_form_page.dart             # ユーザーフィードバック
│   ├── parental_gate.dart                  # 親ゲート（子ども情報保護）
│   ├── screen_time_limit_screen.dart       # スクリーンタイム制限画面
│   ├── multiplayer/                        # マルチプレイ UI
│   │   ├── match_lobby_widget.dart
│   │   ├── battle_screen.dart
│   │   └── match_result_screen.dart
│   └── reports/                            # レポート UI
│       ├── weekly_report_widget.dart
│       └── monthly_report_widget.dart
├── theme/                           # Material Design 3 テーマ
│   ├── app_theme.dart              # ThemeProvider・カラースキーム
│   ├── colors.dart                 # 色定義
│   └── typography.dart             # フォント定義
├── data/                            # 静的データ
│   └── badge_data.dart             # バッジ定義マスター（60+ バッジ）
├── utils/                           # ユーティリティ
│   ├── constants.dart              # グローバル定数
│   └── helpers.dart                # ヘルパー関数
├── assets/                          # 画像・icon
│   ├── badge_icons/                # バッジアイコン
│   ├── avatars/                    # キャラクター画像
│   ├── ui_elements/                # UI 用画像
│   └── shop/                       # ショップ用画像
└── shared_core.dart                # パッケージ エントリーポイント
```

---

## コア機能と使用方法

### 1. BadgeNotifier（バッジシステム）

バッジ定義・獲得管理を統一化。各アプリは教科別タグでフィルタリング可能。

**実装ファイル**: `lib/models/badge_model.dart`, `lib/providers/badge_provider.dart`

**使用例**（各アプリ）:
```dart
import 'package:shared_core/models/badge.dart';
import 'package:shared_core/providers/badge_provider.dart';

// バッジを獲得
ref.read(badgeProvider.notifier).awardBadge(
  badgeId: 'beginner_stage_5',
  subject: 'math',  // 教科タグ（統一）
);

// 獲得済みバッジを監視
final earnedBadges = ref.watch(badgeProvider);
```

**共通バッジライブラリ**（60+ バッジ）:
- `beginner_*`: 初級 (5-10個)
- `intermediate_*`: 中級 (5-10個)
- `advanced_*`: 上級 (5-10個)
- `streak_*`: 連続学習 (5個)
- `perfect_*`: 完璧クリア (5個)
- `social_*`: ソーシャル機能 (5個)
- `subject_specific`: 教科別特別バッジ (20+個)

---

### 2. CharacterNotifier（キャラクターシステム）

キャラクター管理・ティアシステム・装備メカニクスを統一化。

**実装ファイル**: `lib/models/character_data.dart`, `lib/providers/character_state_provider.dart`

**ティアシステム**:
- **Tier 1** (Starter): 初期キャラ 3体 → 0/3/5 ステージで解放
- **Tier 2** (Intermediate): 4体 → 12/16/20/24 ステージで解放
- **Tier 3** (Advanced): 4体 → 28/32/36/40 ステージで解放
- **Tier 4** (Master): 4体 → 44/48/52/56+ ステージで解放

**使用例**（各アプリ）:
```dart
import 'package:shared_core/models/character_data.dart';
import 'package:shared_core/providers/character_state_provider.dart';

// 現在のキャラクターを監視
final character = ref.watch(characterStateProvider);

// キャラクターを装備
ref.read(characterStateProvider.notifier).equipCharacter('char_001');

// 共有キャラクターコレクション画面を使用
Navigator.push(
  context,
  MaterialPageRoute(builder: (_) => CharacterCollectionPage()),
);
```

---

### 3. RankingProvider & FriendProvider（ランキング・フレンド機能）

Firestore を活用したマルチプレイランキング・フレンド管理。

**実装ファイル**: `lib/models/ranking_model.dart`, `lib/providers/ranking_provider.dart`, `lib/providers/friend_provider.dart`

**使用例**:
```dart
// グローバルランキングを取得
final ranking = ref.watch(rankingProvider);

// フレンドを追加
ref.read(friendProvider.notifier).sendFriendRequest(userId);

// フレンドランキングを監視
final friendRanking = ref.watch(friendRankingProvider);
```

---

### 4. CoinShopPage（コインショップ）

デイリーボーナス・アイテム購入を一元管理。

**実装ファイル**: `lib/widgets/coin_shop_page.dart`

**使用例**（各アプリ）:
```dart
import 'package:shared_core/widgets/coin_shop_page.dart';

// ショップを表示
Navigator.push(
  context,
  MaterialPageRoute(builder: (_) => CoinShopPage()),
);
```

---

### 5. LessonProvider（学習コンテンツ）

学習用ガイドコンテンツを管理。各アプリで拡張。

**実装ファイル**: `lib/models/lesson_content_model.dart`, `lib/providers/lesson_provider.dart`

**使用例**:
```dart
import 'package:shared_core/providers/lesson_provider.dart';

// 学習コンテンツを取得
final lessons = ref.watch(lessonProvider);

// フィルタ（学年別など）
final grade3Lessons = lessons.where((l) => l.gradeLevel == 3).toList();
```

---

### 6. スクリーンタイム制限 & 保護者ゲート

子どもの利用時間を制御・親管理機能。

**実装ファイル**: `lib/models/screen_time_model.dart`, `lib/widgets/screen_time_limit_screen.dart`, `lib/widgets/parental_gate.dart`

**使用例**:
```dart
import 'package:shared_core/widgets/screen_time_limit_screen.dart';
import 'package:shared_core/widgets/parental_gate.dart';

// スクリーンタイム制限画面を表示
showDialog(
  context: context,
  builder: (_) => ScreenTimeLimitScreen(),
);

// 親ゲート（パスワード確認）
showDialog(
  context: context,
  builder: (_) => ParentalGate(onVerified: () { /* ... */ }),
);
```

---

### 7. テーマプロバイダー（統一 UI）

Material Design 3 ライト/ダーク対応テーマ。

**実装ファイル**: `lib/theme/app_theme.dart`

**使用例**:
```dart
import 'package:shared_core/theme/app_theme.dart';

MaterialApp(
  theme: appLightTheme,
  darkTheme: appDarkTheme,
  themeMode: ThemeMode.system,  // システム設定に従う
);
```

---

## 各アプリでの使用パターン

### pubspec.yaml での依存設定

```yaml
dependencies:
  flutter:
    sdk: flutter
  shared_core:
    git:
      url: https://github.com/org-zka32101/shared_core.git
      ref: main  # または特定タグ
```

### インポート例（各アプリ）

```dart
// モデル
import 'package:shared_core/models/badge.dart';
import 'package:shared_core/models/character_data.dart';
import 'package:shared_core/models/ranking_model.dart';

// プロバイダー
import 'package:shared_core/providers/badge_provider.dart';
import 'package:shared_core/providers/character_state_provider.dart';
import 'package:shared_core/providers/coin_provider.dart';

// UI コンポーネント
import 'package:shared_core/widgets/character_collection_page.dart';
import 'package:shared_core/widgets/coin_shop_page.dart';
import 'package:shared_core/widgets/daily_mission_card.dart';

// テーマ
import 'package:shared_core/theme/app_theme.dart';
```

### アプリ別キャラクター定義（拡張例）

各アプリは `lib/data/characters.dart` で独自キャラセットを定義し、`characterStateProvider` に注入：

```dart
// 国語コレ (kokugo_kore)
final kokugoCharacters = [
  Character(id: 'kokugo_001', name: 'コムシ', tier: 1, subject: 'japanese'),
  // ...
];

// 算数コレ (sansu_kore)
final sansuCharacters = [
  Character(id: 'sansu_001', name: 'マグネ', tier: 1, subject: 'math'),
  // ...
];

// main.dart で override
final characterStateProvider = StateNotifierProvider<CharacterNotifier, Character?>((ref) {
  return CharacterNotifier(initialCharacters: getAppCharacters());  // アプリ固有キャラ
});
```

---

## Phase 4: ゲーミフィケーション統一工事（拡張予定）

### 4.1 Character/Badge モデル拡張（10月予定）

- **教科別タグシステム**: `subject: 'math' | 'japanese' | 'english' | 'science' | 'social' | 'programming' | 'morality'`
- **クロスアプリ連動**: ユーザーが複数アプリを進めると、統一ユーザープロフィールで総合成長が表示
- **マスターバッジ**: 複数アプリでの成就条件（例: 3教科でビギナーバッジ獲得）

### 4.2 Ranking/Friend マルチプレイ拡張（11月予定）

- **グローバルランキング**: 7アプリ合計スコア
- **教科別ランキング**: 各教科ごとの順位
- **フレンド機能**: ユーザーID 検索・友達登録・プライベートランキング
- **マッチメイキング**: ±300 レート範囲でのマッチング

### 4.3 デイリーミッション統一（12月予定）

- **共通ミッションテンプレート**: 各アプリが独立して実装
- **共有リワード**: コイン・バッジ・キャラ経験値

### 4.4 サブスクリプション統一（v2.0 計画中）

- **RevenueCat 統合**: 全アプリで月額¥120の統一プラン
- **プレミアム機能**: 無制限クイズ・AI 相談・広告削除

---

## セットアップ・初回開発

### 1. リポジトリクローン

```bash
git clone https://github.com/org-zka32101/shared_core.git
cd shared_core
```

### 2. 依存をインストール

```bash
flutter pub get
```

### 3. ローカル開発（アプリから参照）

アプリの `pubspec.yaml` で path dependency を使用（開発時のみ）:
```yaml
dependencies:
  shared_core:
    path: ../shared_core
```

または git dependency（本番）:
```yaml
dependencies:
  shared_core:
    git:
      url: https://github.com/org-zka32101/shared_core.git
      ref: main
```

### 4. ビルド・テスト

```bash
# Lint チェック
flutter analyze

# テスト実行
flutter test

# コード生成（Freezed など）
flutter pub run build_runner build --delete-conflicting-outputs
```

---

## セキュリティ・設計原則

### 1. 依存分離

- **各アプリは独立した状態管理** を保持（`progressProvider` など教科固有のものはアプリ内）
- **shared_core は共有機能のみ** を提供（Badge, Character, Ranking, Friend, Theme）
- **プロバイダーの上書き不可**: アプリ側が `characterStateProvider` を override する場合、`characterStateProvider.notifier` のメソッドシグネチャは変更しない

### 2. バージョン競合回避

- `pubspec.yaml` は広いバージョン範囲を指定
  ```yaml
  flutter_riverpod: ^2.6.1     # 2.6.1 以上 3.0 未満
  shared_preferences: ^2.3.0   # 2.3.0 以上 3.0 未満
  ```
- アプリ側が特定バージョンロック時は、`pubspec.lock` で管理

### 3. Firebase セキュリティ

- **API キーは各アプリで管理** （shared_core には不要）
- **Firestore セキュリティルール** は各アプリ側で設定
  ```
  match /users/{userId} {
    allow read, write: if request.auth.uid == userId;
  }
  ```

### 4. 子どもに関わる実装

- **COPPA 対応**: 子ども個人情報の最小化（名前・学年のみ）
- **保護者ゲート**: `ParentalGate` ウィジェット利用で親認証必須
- **スクリーンタイム制限**: `ScreenTimeLimitScreen` で利用時間管理

### 5. データスキーマ バージョニング

- Firestore コレクション名は明示的にバージョン管理 (`users_v2`, `badges_v2`)
- モデル更新時は `.copyWith()` 構文を使用（backwards compatible）

---

## トラブルシューティング

### Firebase 初期化エラー

```
Error: Firebase.initializeApp() not called before using Firebase services
```

**原因**: アプリ側で Firebase 初期化が実行されていない  
**解決**: `main.dart` で以下を実行:
```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
```

### Provider 型エラー

```
StateNotifierProvider<CharacterNotifier, Character?> cannot be cast to StateNotifierProvider<CharacterNotifier, Character>
```

**原因**: `Character?` vs `Character` の型違い  
**解決**: Provider 監視時に型を明示:
```dart
final character = ref.watch(characterStateProvider as Provider<Character?>);
```

### バージョン競合

```
The lower bound of "shared_core" (git 3fa23b from git) must be <= the lower bound of dependency "flutter_riverpod" (^2.6.1)
```

**原因**: `pubspec.yaml` のバージョン範囲が競合  
**解決**: 以下の順序で修正:
1. `flutter pub get` 前に `flutter clean` を実行
2. `pubspec.lock` を削除
3. `flutter pub get` 再実行

---

## 参考資料・リンク

- [Flutter Package 開発ガイド](https://flutter.dev/docs/development/packages-and-plugins/developing-packages)
- [Riverpod ドキュメント](https://riverpod.dev)
- [Firebase for Flutter](https://firebase.flutter.dev)
- [Material Design 3 ガイド](https://m3.material.io)
- [COPPA 準拠ガイドライン](https://www.ftc.gov/business-guidance/privacy-security/childrens-privacy)

---

## Phase 4.15: A/B テストフレームワーク統一化 ✅ (2026-09-11 実装完了)

### 目的
RemoteConfig を使った Paywall・Dynamic Pricing の A/B テスト・ユーザーセグメント統計・パフォーマンス追跡を shared_core に統一実装

### 実装内容

#### モデル定義（`lib/models/ab_test_model.dart`）
- **ABTestConfig**: テスト設定（テストID、バリアント配置、トラフィック割り当て）
- **ABTestAssignment**: ユーザー割り当て（Sticky: 一度割り当てたら固定）
- **ABTestEvent**: イベント記録（表示・クリック・変換・売上）
- **ABTestResult**: 集計結果（CVR、AOV、売上）
- **PopulationStats**: 母集団統計（アクティブユーザー、チャーン率、セグメント分布）
- **TestVariant**: control, variant_b, variant_c
- **TestMetric**: impression, click, conversion, revenue, churnRate

#### プロバイダー実装（`lib/providers/ab_test_providers.dart`）
- **abTestConfigProvider**: RemoteConfig から A/B テスト設定を読み込み
- **userABTestAssignmentsProvider**: ユーザーの割り当てを管理（初回ランダム、その後Sticky）
- **abTestResultsProvider**: リアルタイムで集計結果を監視
- **populationStatsProvider**: 母集団統計をリアルタイム監視
- **userTestVariantProvider**: 特定テストのユーザー割り当てを取得

#### StateNotifier 実装（`lib/providers/ab_test_notifier.dart`）
- **ABTestNotifier**: イベント記録・結果集計・母集団統計更新
  - `recordTestEvent()`: テストイベントを記録
  - `updatePopulationStats()`: 母集団統計を更新（毎日自動実行）
  - Firestore Transaction で原子的に更新

#### UI コンポーネント（`lib/widgets/ab_test_dashboard.dart`）
- **ABTestDashboard**: 分析ダッシュボード（テスト結果・母集団統計表示）
- **_PopulationStatsCard**: 母集団統計カード（総ユーザー・アクティブ・チャーン率）
- **_TestResultCard**: テスト結果カード（CVR、AOV、売上表示）
- **ABTestEventRecorder**: イベント記録ヘルパー

### 使用例（各アプリ）

```dart
import 'package:shared_core/models/ab_test_model.dart';
import 'package:shared_core/providers/ab_test_providers.dart';
import 'package:shared_core/widgets/ab_test_dashboard.dart';

// ① ユーザーの割り当てを確認
final variant = ref.watch(userTestVariantProvider('paywall_variant_test'));

// ② Paywall を表示（バリアント別に異なるデザイン）
if (variant == TestVariant.control) {
  // PaywallSimpleWidget
} else if (variant == TestVariant.variant_b) {
  // PaywallFeaturedWidget
} else {
  // PaywallLocalOfferWidget
}

// ③ 表示イベント記録
ABTestEventRecorder.recordImpressionEvent(ref, 
  testId: 'paywall_variant_test',
  variant: variant!,
);

// ④ 購買成功時に変換イベント記録
ABTestEventRecorder.recordConversionEvent(ref,
  testId: 'paywall_variant_test',
  variant: variant!,
  revenue: 120, // ¥120の売上
);

// ⑤ 分析ダッシュボード表示
Navigator.push(
  context,
  MaterialPageRoute(builder: (_) => ABTestDashboard()),
);
```

### Firebase RemoteConfig 設定例

```json
{
  "ab_tests_config": {
    "paywall_variant_test": {
      "testId": "paywall_variant_test",
      "testName": "Paywall バリアント A/B テスト",
      "description": "3つの Paywall デザインをテスト",
      "variants": ["control", "variant_b", "variant_c"],
      "startDate": "2026-09-15T00:00:00Z",
      "endDate": "2026-10-15T23:59:59Z",
      "isActive": true,
      "trafficAllocation": {
        "control": 0.5,
        "variant_b": 0.3,
        "variant_c": 0.2
      },
      "config": {
        "paywallVariant": "auto"
      }
    },
    "pricing_segment_test": {
      "testId": "pricing_segment_test",
      "testName": "セグメント別価格テスト",
      "variants": ["control", "variant_b"],
      "startDate": "2026-09-15T00:00:00Z",
      "endDate": "2026-10-15T23:59:59Z",
      "isActive": true,
      "trafficAllocation": {
        "control": 0.5,
        "variant_b": 0.5
      },
      "config": {
        "newUserPrice": {
          "control": 50,
          "variant_b": 39
        }
      }
    }
  }
}
```

### Firestore スキーマ

**collections/analytics/ab_tests/events/**
```json
{
  userId: string,
  testId: string,
  variant: string,
  metric: string,
  value: int,
  eventTime: Timestamp,
  customData: map,
}
```

**collections/analytics/ab_tests/results/**
```json
{
  testId: string,
  variant: string,
  impressions: int,
  conversions: int,
  conversionRate: double,
  totalRevenue: int,
  averageOrderValue: double,
  updatedAt: Timestamp,
}
```

**collections/analytics/population/**
```json
{
  totalUsers: int,
  activeUsers: int,
  churned: int,
  churnRate: double,
  segmentDistribution: map,
  sampledAt: Timestamp,
}
```

---

## 実装状況（2026-09-11）

| フェーズ | 機能 | 状態 |
|---|---|---|
| **Core** | BadgeNotifier, CharacterNotifier, CoinProvider | ✅ 完成 |
| **Social** | RankingProvider, FriendProvider, MatchProvider | ✅ 完成 |
| **UI** | CharacterCollectionPage, CoinShopPage, 共有ウィジェット | ✅ 完成 |
| **Theme** | Material Design 3 テーマ | ✅ 完成 |
| **Gamification** | デイリーボーナス, LessonProvider, スクリーンタイム | ✅ 完成 |
| **Paywall & Pricing** | Paywall A/B テスト, Dynamic Pricing | ✅ 完成 |
| **Phase 4.15** | A/B テストフレームワーク統一 | ✅ 実装完了 |

---

## 最新更新ログ

- **2026-09-11**: A/B テストフレームワーク実装完了（ab_test_model.dart, ab_test_providers.dart, ab_test_notifier.dart, ab_test_dashboard.dart）
- **2026-09-09**: screen_time_model.dart 追加, screen_time_limit_screen.dart 実装
- **2026-09-09**: ScreenTimeNotifier, DailyBonusNotifier 機能強化
- **2026-09-07**: cross_promo_kit git dependency 追加
- **2026-09-06**: Feedback ウィジェット・プロバイダー実装完了
- **2026-09-05**: RankingProvider マッチング API 統合完了

---

**最終更新**: 2026-09-11  
**状態**: ✅ Phase 4.15 実装完了  
**次フェーズ**: Phase 4.16 ユーザーセグメント最適化（計画中）
