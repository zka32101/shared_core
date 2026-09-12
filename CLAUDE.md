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

## Phase 4.16: Analytics・レポート強化統一化 ✅ (2026-09-11 実装完了)

### 目的
RemoteConfig・Firestore を使ったユーザーセグメント分析・学習メトリクス集計・レポート生成・ダッシュボード表示を shared_core に統一実装

### 実装内容

#### モデル定義（`lib/models/analytics_model.dart`）✅
- **LearningMetric**: 学習メトリクス（クイズ完了数、正解数、学習時間など）
- **UserSegmentAnalytics**: ユーザーセグメント分析（エンゲージメント、リテンション、チャーン予測）
- **WeeklyReport**: 週次レポート（学習時間、正答率、目標達成度）
- **MonthlyReport**: 月次レポート（成長トレンド、改善率、成績分析）
- **LearningGoal**: 学習ゴール・チャレンジ管理（進捗追跡、報酬管理）
- **BehaviorAnalytics**: ユーザーの行動パターン分析（セッション時間、活動時間、学習パターン）
- **PopulationStats**: グローバル人口統計（総ユーザー、アクティブ、チャーン率）
- **CohortAnalytics**: コホート分析（同期登録ユーザーグループの継続率・エンゲージメント）
- **ABTestMetrics**: A/B テスト結果集計（コンバージョンレート、平均注文額、信頼度）
- **AnalyticsConfig**: RemoteConfig から読み込む分析設定

#### プロバイダー実装（`lib/providers/analytics_provider.dart`）✅
- **analyticsConfigProvider**: RemoteConfig から分析設定を取得
- **userSegmentAnalyticsProvider**: ユーザーセグメント分析を取得
- **weeklyReportProvider**: 週次レポートを取得
- **monthlyReportProvider**: 月次レポートを取得
- **userLearningGoalsProvider**: ユーザーの学習ゴール一覧を取得
- **activeGoalsProvider**: アクティブなゴールのみを取得
- **recentLearningMetricsProvider**: 過去7日間のメトリクスを取得
- **behaviorAnalyticsProvider**: ユーザーの行動パターン分析を取得
- **populationStatsProvider**: グローバル人口統計を取得
- **cohortAnalyticsProvider**: コホート分析データを取得
- **abTestMetricsProvider**: A/B テスト結果を取得

#### StateNotifier 実装（`lib/providers/analytics_notifier.dart`）✅
- **AnalyticsNotifier**: メトリクス記録・セグメント分析更新・レポート生成・ゴール管理
  - `recordMetric()`: 学習メトリクスを記録
  - `updateUserSegmentAnalytics()`: セグメント分析を更新
  - `generateWeeklyReport()`: 週次レポートを生成
  - `generateMonthlyReport()`: 月次レポートを生成
  - `createLearningGoal()`: 学習ゴールを作成
  - `updateGoalProgress()`: ゴールの進捗を更新
  - `markGoal()`: ゴールを完了・失敗としてマーク
  - `updateBehaviorAnalytics()`: 行動パターン分析を更新
  - `updatePopulationStats()`: グローバル統計を更新
  - `_updateAggregates()`: メトリクス集計を非同期で更新

#### UI コンポーネント（`lib/widgets/analytics_dashboard.dart`）✅
- **AnalyticsDashboard**: 統合分析ダッシュボード（セグメント分析・レポート・ゴール表示）
- **_SegmentAnalyticsCard**: セグメント分析カード（エンゲージメント・リテンション・チャーン予測）
- **_SegmentScore**: セグメントスコアプログレスバー（0-100 スケール）
- **_WeeklyReportCard**: 週次レポートカード
- **_MonthlyReportCard**: 月次レポートカード（成長トレンド、改善率表示）
- **_BehaviorAnalyticsCard**: 行動パターン分析カード
- **_LearningGoalsCard**: 学習ゴール表示（進行中・完了別表示）
- **_GoalItem**: 個別ゴール進捗表示

### 使用例（各アプリ）

```dart
import 'package:shared_core/models/analytics_model.dart';
import 'package:shared_core/providers/analytics_provider.dart';
import 'package:shared_core/providers/analytics_notifier.dart';
import 'package:shared_core/widgets/analytics_dashboard.dart';

// ① セグメント分析を監視
final segmentAnalytics = ref.watch(userSegmentAnalyticsProvider(userId));

// ② メトリクスを記録
await ref.read(analyticsNotifierProvider.notifier).recordMetric(
  userId: userId,
  type: LearningMetricType.quizCompleted,
  value: 5,
  appId: 'sansu', // アプリID
);

// ③ 週次レポートを生成
await ref.read(analyticsNotifierProvider.notifier).generateWeeklyReport(
  userId: userId,
  totalMinutes: 180,
  totalQuizzesCompleted: 42,
  averageAccuracy: 87.5,
  topicsFocused: ['計算', '図形'],
  newBadgesEarned: 2,
  coinsEarned: 250,
);

// ④ 学習ゴールを作成
final goalId = await ref.read(analyticsNotifierProvider.notifier).createLearningGoal(
  userId: userId,
  goalType: 'daily_time',
  targetValue: 30, // 30分
  deadline: DateTime.now().add(Duration(days: 7)),
);

// ⑤ ゴール進捗を更新
await ref.read(analyticsNotifierProvider.notifier).updateGoalProgress(
  userId: userId,
  goalId: goalId,
  currentProgress: 15, // 15分達成
);

// ⑥ 分析ダッシュボード表示
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (_) => AnalyticsDashboard(userId: userId),
  ),
);
```

### Firebase RemoteConfig 設定例

```json
{
  "analytics_config": {
    "enableMetricsTracking": true,
    "enableReportGeneration": true,
    "enabledMetrics": [
      "quizCompleted",
      "correctAnswers",
      "timeSpent",
      "streakDays",
      "badgesEarned"
    ],
    "reportGenerationIntervalDays": 7,
    "goalsConfig": {
      "daily_time": 30,
      "quizzes": 5,
      "accuracy": 80,
      "streak": 7
    },
    "enableSegmentation": true,
    "enableAIPredictions": true,
    "segmentThresholds": {
      "churnRiskThreshold": 0.7,
      "activeThreshold": 0.5,
      "vipThreshold": 0.9
    }
  }
}
```

### Firestore スキーマ

**collections/analytics/users/{userId}/metrics/**
```json
{
  userId: string,
  type: string,           // 'quizCompleted', 'correctAnswers', 'timeSpent'...
  value: int,
  recordedAt: Timestamp,
  appId: string,          // 'kokugo', 'sansu', など
  customData: map,        // カスタムデータ
}
```

**collections/analytics/users/{userId}/segment_analytics/current**
```json
{
  userId: string,
  segmentId: string,      // 'newUser', 'active', 'vip', 'churnRisk'
  engagementScore: int,   // 0-100
  retentionScore: int,    // 0-100
  lastActiveAt: Timestamp,
  totalLearningMinutes: int,
  consecutiveAbsenceDays: int,
  subjectScores: { 'kokugo': 85, 'sansu': 72 },
  churnRiskLevel: string, // 'low', 'medium', 'high'
}
```

**collections/analytics/users/{userId}/reports/weekly_YYYY_M_D**
```json
{
  userId: string,
  weekStartDate: Timestamp,
  totalMinutes: int,
  totalQuizzesCompleted: int,
  averageAccuracy: double,
  topicsFocused: [string],
  newBadgesEarned: int,
  coinsEarned: int,
  weeklyGoalStatus: string, // 'completed', 'partial', 'missed'
  subjectBreakdown: { 'kokugo': 45, 'sansu': 60 }
}
```

**collections/analytics/users/{userId}/reports/monthly_YYYY_M**
```json
{
  userId: string,
  month: int,
  year: int,
  totalMinutes: int,
  totalQuizzesCompleted: int,
  averageAccuracy: double,
  badgesEarned: int,
  coinsEarned: int,
  friendsAdded: int,
  growthTrend: string,    // 'improving', 'stable', 'declining'
  subjectPerformance: { 'kokugo': { 'accuracy': 85, 'time': 120 } },
  achievements: [string],
  longestStreak: int,
  improvementRate: double,
}
```

**collections/analytics/users/{userId}/goals/**
```json
{
  goalId: string,
  userId: string,
  goalType: string,       // 'daily_time', 'quizzes', 'accuracy', 'streak'
  targetValue: int,
  startDate: Timestamp,
  deadline: Timestamp,
  currentProgress: int,
  isCompleted: bool,
  completedAt: Timestamp,
  status: string,         // 'active', 'completed', 'failed', 'abandoned'
  difficulty: double,     // 1.0-3.0
  rewards: int,
}
```

**collections/analytics/users/{userId}/behavior/latest**
```json
{
  userId: string,
  analyzedDate: Timestamp,
  sessionCounts: { 'morning': 5, 'afternoon': 3 },
  preferredTopics: { 'topic1': 10, 'topic2': 8 },
  averageSessionDurationMinutes: int,
  weekdayVsWeekendRatio: double,
  peakActivityHour: int,  // 0-23
  learningPattern: string, // 'bursty', 'consistent', 'irregular'
}
```

**collections/analytics/global/population_stats**
```json
{
  totalUsers: int,
  activeUsersLast7Days: int,
  activeUsersLast30Days: int,
  churnedUsersLast30Days: int,
  churnRate: double,
  sampledAt: Timestamp,
  segmentDistribution: { 'newUser': 100, 'active': 500 },
  retentionByDay: { '1': 0.95, '2': 0.87 },
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
| **Phase 4.16** | Analytics・レポート強化統一化 | ✅ 実装完了 |
| **Phase 4.17** | Cloud Functions・ユーザー分析自動実行 | ✅ 実装完了 |

---

## Phase 4.17: Cloud Functions・ユーザー分析自動実行 ✅ (2026-09-11 実装完了)

### 目的
Firebase Cloud Functions を使った自動レポート生成・セグメント分析・コホート分析・リアルタイム通知を shared_core に統一実装（**AI相談機能は除外**）

### 実装内容

#### モデル定義（`lib/models/cloud_functions_model.dart`）✅
- **CloudFunctionConfig**: Cloud Functions 設定（自動実行間隔、通知設定）
- **SegmentationResult**: ユーザーセグメンテーション結果（セグメント変更、スコア）
- **CohortAnalysisResult**: コホート分析結果（継続率、エンゲージメント）
- **NotificationPayload**: リアルタイム通知ペイロード（スケジュール、カスタムデータ）
- **FunctionExecutionLog**: 関数実行ログ（実行状態、処理ユーザー数、実行時間）
- **ChurnPrediction**: チャーン予測結果（リスクスコア、推奨アクション）
- **FunctionType**: 実行可能な関数種別（週次・月次レポート、セグメンテーション、コホート分析など）

#### プロバイダー実装（`lib/providers/cloud_functions_provider.dart`）✅
- **cloudFunctionsConfigProvider**: RemoteConfig から Cloud Functions 設定を取得
- **latestSegmentationResultsProvider**: 最新のセグメンテーション結果を監視（過去1日分）
- **cohortAnalysisProvider**: コホート分析結果を取得（コホートIDベース）
- **churnPredictionsProvider**: チャーン予測ユーザーを取得（高リスクのみ）
- **functionExecutionLogsProvider**: 関数実行ログを取得（過去7日分、最新50件）

#### StateNotifier 実装（`lib/providers/cloud_functions_notifier.dart`）✅
- **CloudFunctionsNotifier**: Cloud Functions 実行ロジック
  - `executeWeeklyReportGeneration()`: 週次レポート生成
  - `executeMonthlyReportGeneration()`: 月次レポート生成
  - `executeUserSegmentation()`: ユーザーセグメンテーション更新
  - `executeCohortAnalysis()`: コホート分析実行
  - `executeChurnPrediction()`: チャーン予測実行
  - `updateSegmentationForUser()`: 特定ユーザーのセグメンテーション更新
  - `predictChurnRiskForUser()`: 特定ユーザーのチャーン予測
  - `sendNotification()`: リアルタイム通知送信
  - `updatePopulationStatistics()`: 人口統計更新

#### サービス実装（`lib/services/cloud_functions_service.dart`）✅
- **CloudFunctionsService**: Cloud Functions 実行サービス
  - Firebase Cloud Functions への HTTP リクエスト
  - タイムアウト設定（各関数に適切な実行時間を設定）
  - エラーハンドリング・ログ出力

#### UI コンポーネント（`lib/widgets/cloud_functions_dashboard.dart`）✅
- **CloudFunctionsDashboard**: 統合 Cloud Functions 管理ダッシュボード
- **_FunctionExecutionButtons**: 手動実行ボタン群（全5関数 + 詳細実行3関数）
- **_SegmentationResultsCard**: セグメンテーション結果表示
- **_ChurnPredictionsCard**: チャーン予測リスト表示
- **_FunctionExecutionLogsCard**: 実行ログ表示（ステータス・処理数・実行時間）

### 使用例（各アプリ）

```dart
import 'package:shared_core/models/cloud_functions_model.dart';
import 'package:shared_core/providers/cloud_functions_provider.dart';
import 'package:shared_core/providers/cloud_functions_notifier.dart';
import 'package:shared_core/widgets/cloud_functions_dashboard.dart';

// ① セグメンテーション結果を監視
final segmentationResults = ref.watch(latestSegmentationResultsProvider);

// ② チャーン予測を監視
final churnPredictions = ref.watch(churnPredictionsProvider);

// ③ 週次レポート生成を実行
await ref.read(cloudFunctionsNotifier.notifier).executeWeeklyReportGeneration();

// ④ ユーザーセグメンテーション更新を実行
await ref.read(cloudFunctionsNotifier.notifier).executeUserSegmentation();

// ⑤ チャーン予測を実行
await ref.read(cloudFunctionsNotifier.notifier).executeChurnPrediction();

// ⑥ リアルタイム通知を送信
await ref.read(cloudFunctionsNotifier.notifier).sendNotification(
  userId: userId,
  title: 'セグメント変更のお知らせ',
  body: 'あなたは VIP ユーザーに昇格しました！',
  data: {'segmentId': 'vip', 'timestamp': DateTime.now().toIso8601String()},
);

// ⑦ Cloud Functions ダッシュボード表示
Navigator.push(
  context,
  MaterialPageRoute(builder: (_) => CloudFunctionsDashboard()),
);
```

### Firebase RemoteConfig 設定例

```json
{
  "cloud_functions_config": {
    "enableAutoReportGeneration": true,
    "enableSegmentationUpdates": true,
    "enableCohortAnalysis": true,
    "enableNotifications": true,
    "reportGenerationIntervalDays": 7,
    "segmentationUpdateIntervalHours": 24,
    "cohortAnalysisIntervalDays": 7,
    "notificationConfig": {
      "enableSegmentChangeNotification": true,
      "enableGoalAchievedNotification": true,
      "enableStreakReminder": true
    },
    "enableChurnPrediction": true
  }
}
```

### Firestore スキーマ

**collections/analytics/segmentation/results/**
```json
{
  userId: string,
  previousSegment: string,
  newSegment: string,
  engagementScore: int,
  retentionScore: int,
  churnRiskScore: double,
  analyzedAt: Timestamp,
}
```

**collections/analytics/cohorts/{cohortId}**
```json
{
  cohortId: string,
  cohortStartDate: Timestamp,
  totalUsersInCohort: int,
  retentionByDaysSinceSignup: { "0": 100, "7": 87, "14": 72 },
  engagementByWeek: { "1": 0.95, "2": 0.85, "4": 0.72 },
  avgSessionDurationMinutes: double,
  totalQuizzesCompleted: int,
  avgAccuracy: double,
  analyzedAt: Timestamp,
}
```

**collections/analytics/churn_predictions/**
```json
{
  userId: string,
  churnRiskScore: double,
  riskLevel: string,           // 'low', 'medium', 'high', 'critical'
  riskIndicators: [string],    // ['no_activity_7days', 'declining_accuracy']
  predictedChurnDate: Timestamp,
  recommendedActions: [string], // ['send_reminder', 'offer_discount']
  analyzedAt: Timestamp,
}
```

**collections/analytics/function_logs/**
```json
{
  functionId: string,
  functionType: string,        // 'generateWeeklyReport', 'updateUserSegmentation'...
  executedAt: Timestamp,
  status: string,              // 'success', 'failed', 'partial'
  processedUsers: int,
  failedUsers: int,
  durationSeconds: int,
  errorMessage: string,        // エラー時のみ
}
```

---

## Phase 4.20: デイリーミッション統一・週次ボーナスシステム ✅ (2026-09-12 実装完了)

### 目的
複数日の連続学習達成で500コインボーナスを獲得できる「週次ボーナスシステム」を shared_core に統一実装。Sunday ベースの週単位で自動リセット。

### 実装内容

#### モデル定義（`lib/models/daily_mission_model.dart`）✅
- **WeeklyBonus**: 週次ボーナストラッキング（Freezed で自動生成）
  - `userId`: ユーザーID
  - `consecutiveDays`: 連続達成日数（0-7）
  - `lastCompletionDate`: 最後の完了日
  - `resetDate`: 週次リセット日（毎週Sunday 5:00 AM）
  - `completionDaysOfWeek`: 曜日別完了状況（List<int> 0=Mon, 6=Sun）
  - `bonusClaimedThisWeek`: 当週のボーナスクレーム済みフラグ
  - `totalWeeklyBonus`: 当週の累計ボーナスコイン

#### プロバイダー実装（`lib/providers/weekly_bonus_provider.dart`）✅
- **WeeklyBonusState**: 状態管理（currentBonus, isLoading, error）
- **WeeklyBonusNotifier**: StateNotifier<WeeklyBonusState>
  - `initializeWeeklyBonus(userId)`: 初期化・キャッシュロード・週次リセット判定
  - `recordDailyCompletion()`: デイリーミッション完了時の連続日数更新
  - `claimWeeklyBonus()`: 7日達成時に500コイン付与
  - `getDaysUntilBonus()`: 残り日数計算
  - `getWeekCompletionEmojis()`: 曜日別の可視化（✅/⭕）
  - `setPersistHandler()`: Firestore 永続化ハンドラ注入
- **Riverpod Providers**:
  - `weeklyBonusProvider`: StateNotifierProvider
  - `consecutiveDaysProvider`: Provider<int>（UI監視用）
  - `weekCompletionEmojisProvider`: Provider<List<String>>（曜日表示）
  - `canClaimWeeklyBonusProvider`: Provider<bool>（クレーム可否判定）

#### UI コンポーネント（`lib/widgets/weekly_bonus_widget.dart`）✅
- **WeeklyBonusWidget**: フル表示版
  - 🔥連続日数カウント（火マーク付き）
  - 📅週間進捗グリッド（月火水木金土日、✅/⭕表示）
  - 📊プログレスバー（0-100%）
  - 💰ボーナス情報（7日達成で500コイン）
  - 🎁クレームボタン（クレーム可時のみ表示）
- **CompactWeeklyBonusWidget**: コンパクト版（スペース制約用）
  - 火マークと連続数（×N形式）
  - 最小限のクレームボタン

### 各アプリへの統合手順

#### Step 1: pubspec.yaml 確認
```yaml
dependencies:
  shared_core:
    git:
      url: https://github.com/org-zka32101/shared_core.git
      ref: main  # または指定ブランチ
```

#### Step 2: main.dart で週次ボーナス初期化
```dart
// Firebase 認証後、ユーザーID が確定したら実行
await ref.read(weeklyBonusProvider.notifier).initializeWeeklyBonus(userId);

// Firestore 永続化ハンドラを設定（オプション）
ref.read(weeklyBonusProvider.notifier).setPersistHandler((userId, bonus) async {
  await FirebaseFirestore.instance
    .collection('users')
    .doc(userId)
    .collection('bonuses')
    .doc('weekly')
    .set(bonus.toJson());
});
```

#### Step 3: デイリーミッション完了時に記録
```dart
// デイリーミッション完了後に呼び出し
await ref.read(weeklyBonusProvider.notifier).recordDailyCompletion();
```

#### Step 4: ホーム画面に Widget を追加
```dart
import 'package:shared_core/widgets/weekly_bonus_widget.dart';

// ホーム画面レイアウト内に追加
WeeklyBonusWidget(
  onBonusClaimed: (coins) {
    // コイン加算処理
    ref.read(coinProvider.notifier).addCoins(coins);
    // 任意：アナリティクス送信
  },
)
```

#### Step 5: クレーム完了後のボーナス配分
```dart
// weeklyBonusWidget の onBonusClaimed コールバック内で実装
// coins は WeeklyBonusNotifier.WEEKLY_BONUS_COINS (500)

Future<void> _handleWeeklyBonusClaim(int coins) async {
  // ① コイン加算
  ref.read(coinProvider.notifier).addCoins(coins);
  
  // ② Firestore に記録（app-specific）
  await FirebaseFirestore.instance
    .collection('users')
    .doc(userId)
    .update({'totalCoinsEarned': FieldValue.increment(coins)});
  
  // ③ バッジ付与（streak達成）
  ref.read(badgeProvider.notifier).awardBadge(
    badgeId: 'weekly_streak_7',
    subject: appId,
  );
  
  // ④ Analytics 送信
  await FirebaseAnalytics.instance.logEvent(
    name: 'weekly_bonus_claimed',
    parameters: {
      'app_id': appId,
      'coins': coins,
      'timestamp': DateTime.now().toIso8601String(),
    },
  );
}
```

### 実装状況（各アプリ）

| アプリ | ブランチ | 状態 | 作業予定 |
|---|---|---|---|
| eigo（英語） | `claude/eigo-phase-4-23-ukrjs3` | ⏳ 統合待ち | Step 1-5 |
| sansu-kore（算数） | `claude/eigo-phase-4-23-ukrjs3` | ⏳ 統合待ち | Step 1-5 |
| kokugo-kore（国語） | `claude/eigo-phase-4-23-ukrjs3` | ⏳ 統合待ち | Step 1-5 |
| newrepo（理科） | `claude/eigo-phase-4-23-ukrjs3` | ⏳ 統合待ち | Step 1-5 |
| social_quiz_app（社会） | `claude/eigo-phase-4-23-ukrjs3` | ⏳ 統合待ち | Step 1-5 |
| shinshin（道徳） | `claude/eigo-phase-4-23-ukrjs3` | ⏳ 統合待ち | Step 1-5 |
| shogaku-kore-programming（プログラミング） | `claude/eigo-phase-4-23-ukrjs3` | ⏳ 統合待ち | Step 1-5 |
| yourwish（SNS配信） | `claude/eigo-phase-4-23-ukrjs3` | ⏳ 統合待ち | Step 1-5 |

### 動作仕様

**週次リセット**:
- 毎週日曜日 5:00 AM に自動リセット（Sunday = DateTime.weekday == 7）
- リセット時に `completionDaysOfWeek` を 0クリア、`bonusClaimedThisWeek = false` に

**連続日数計算**:
- 当日から過去に向かってカウント（今日が月曜で月火が✅なら、連続2日）
- スキップされた場合は途中でカウント止止

**クレーム条件**:
- `consecutiveDays >= 7 && !bonusClaimedThisWeek`

### Firestore スキーマ例

**collections/users/{userId}/bonuses/weekly**:
```json
{
  "userId": "user123",
  "consecutiveDays": 7,
  "lastCompletionDate": "2026-09-12T15:30:00Z",
  "resetDate": "2026-09-14T05:00:00Z",
  "completionDaysOfWeek": [1, 1, 1, 1, 1, 1, 1],
  "bonusClaimedThisWeek": true,
  "totalWeeklyBonus": 500,
  "updatedAt": "2026-09-12T15:35:00Z"
}
```

---

## Phase 4.21: Parental Gate Enhancement — 親管理機能統一化 ✅ (2026-09-12 実装完了)

### 目的
スクリーンタイム制限機能を大幅強化し、保護者による詳細な利用管理・リアルタイム監視・統計分析を実現。

### 実装内容

#### モデル拡張（`lib/models/screen_time_model.dart`）✅
- **TimeSlot**: 時間帯別利用制限（平日/休日別、朝/昼/夜の時間帯ごと）
  - `dayType`: 'weekday' | 'weekend'
  - `startTime`/`endTime`: HH:MM 形式の時刻
  - `limitMinutes`: その時間帯の上限（null = 無制限）
- **MonitoringConfig**: 保護者向けの監視・通知設定
  - `notificationThreshold`: 上限 80% で通知（カスタマイズ可能）
  - `notificationsEnabled`/`weeklyReportEnabled`: 機能の ON/OFF
- **UsageReport**: 週間・月間の利用統計
  - `totalMinutes`, `averageMinutesPerDay`, `dailyBreakdown`

#### UI コンポーネント（`lib/widgets/`）✅
- **TimeSlotSettingsWidget** （新規）
  - 平日・休日別の時間帯設定
  - 時間帯の追加・編集・削除機能
  - TimeOfDay ピッカーで直感的な設定
- **ParentalDashboard** （新規）
  - 子どもの週間利用グラフ（バーチャート）
  - 統計情報（合計・平均・最高利用時間）
  - 現在の設定情報表示
  - 保護者専用の監視画面

#### StateNotifier 拡張（`lib/providers/screen_time_provider.dart`）✅
- `addTimeSlot()`: 時間帯制限を追加
- `removeTimeSlot()`: 時間帯制限を削除
- `updateTimeSlot()`: 時間帯制限を更新
- `setMonitoringConfig()`: 監視設定を更新

### 使用例（各アプリ）

```dart
import 'package:shared_core/models/screen_time_model.dart';
import 'package:shared_core/widgets/time_slot_settings_widget.dart';
import 'package:shared_core/widgets/parental_dashboard.dart';

// ① 保護者ゲートを通す
final passedGate = await requireParentalGate(context);
if (!passedGate) return;

// ② 時間帯設定画面を表示
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (_) => Scaffold(
      appBar: AppBar(title: const Text('利用時間の詳細設定')),
      body: TimeSlotSettingsWidget(primaryColor: kAccentBlue),
    ),
  ),
);

// ③ 時間帯を追加（例：平日朝 9時-12時は 30分制限）
final timeSlot = TimeSlot(
  dayType: 'weekday',
  startTime: '09:00',
  endTime: '12:00',
  limitMinutes: 30,
);
ref.read(screenTimeProvider.notifier).addTimeSlot(timeSlot);

// ④ ダッシュボードを表示
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (_) => ParentalDashboard(
      childName: '太郎',
      primaryColor: kAccentBlue,
    ),
  ),
);

// ⑤ 監視設定を更新
ref.read(screenTimeProvider.notifier).setMonitoringConfig(
  const MonitoringConfig(
    notificationThreshold: 0.75, // 75% で通知
    notificationsEnabled: true,
    weeklyReportEnabled: true,
  ),
);
```

### 実装ファイル一覧

| ファイル | 説明 | 状態 |
|---------|------|------|
| `lib/models/screen_time_model.dart` | TimeSlot, MonitoringConfig, UsageReport 追加 | ✅ |
| `lib/widgets/time_slot_settings_widget.dart` | **【新規】** 時間帯制限設定 UI | ✅ |
| `lib/widgets/parental_dashboard.dart` | **【新規】** 保護者向けダッシュボード | ✅ |
| `lib/providers/screen_time_provider.dart` | TimeSlot/Monitor 管理メソッド追加 | ✅ |

### Firestore スキーマ拡張

**collections/users/{userId}/screen_time/settings**
```json
{
  "enabled": true,
  "dailyLimitMinutes": 120,
  "timeSlots": [
    {
      "dayType": "weekday",
      "startTime": "09:00",
      "endTime": "12:00",
      "limitMinutes": 30
    },
    {
      "dayType": "weekend",
      "startTime": "14:00",
      "endTime": "17:00",
      "limitMinutes": 60
    }
  ],
  "monitoringConfig": {
    "notificationThreshold": 0.8,
    "notificationsEnabled": true,
    "weeklyReportEnabled": true
  }
}
```

---

## 最新更新ログ

- **2026-09-12**: Phase 4.21 Parental Gate Enhancement 実装完了 ✅
  - TimeSlot モデル：時間帯別利用制限対応
  - MonitoringConfig: 監視・通知設定
  - TimeSlotSettingsWidget: 時間帯設定 UI
  - ParentalDashboard: 保護者向けダッシュボード
  - screen_time_provider.dart: TimeSlot 管理メソッド拡張
- **2026-09-12**: Phase 4.20 デイリーミッション統一・週次ボーナスシステム実装完了 ✅
  - weekly_bonus_provider.dart: 状態管理・リセット・連続日数計算
  - weekly_bonus_widget.dart: フル版・コンパクト版 UI
  - daily_mission_model.dart: WeeklyBonus モデル追加
- **2026-09-11**: Cloud Functions・ユーザー分析自動実行実装完了（cloud_functions_model.dart, cloud_functions_provider.dart, cloud_functions_service.dart, cloud_functions_notifier.dart, cloud_functions_dashboard.dart）- Phase 4.17
- **2026-09-11**: Analytics・レポート強化統一化実装完了（analytics_model.dart, analytics_provider.dart, analytics_notifier.dart, analytics_dashboard.dart）- Phase 4.16
- **2026-09-11**: A/B テストフレームワーク実装完了（ab_test_model.dart, ab_test_providers.dart, ab_test_notifier.dart, ab_test_dashboard.dart）
- **2026-09-09**: screen_time_model.dart 追加, screen_time_limit_screen.dart 実装
- **2026-09-09**: ScreenTimeNotifier, DailyBonusNotifier 機能強化
- **2026-09-07**: cross_promo_kit git dependency 追加
- **2026-09-06**: Feedback ウィジェット・プロバイダー実装完了
- **2026-09-05**: RankingProvider マッチング API 統合完了

---

**最終更新**: 2026-09-12  
**状態**: ✅ Phase 4.20 実装完了  
**次フェーズ**: 各アプリへの Phase 4.20 統合（eigo, sansu-kore, kokugo-kore, newrepo, social_quiz_app, shinshin, shogaku-kore-programming, yourwish）
