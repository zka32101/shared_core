# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### 🔐 Phase 4.24 クイズアクセス制限（Paywall統合）

#### 新機能
- **無料期間制限** 💰
  - ユーザー登録から14日間の無料アクセス
  - 14日経過後はサブスク購読で全問題アクセス可能
  - SharedPreferences で登録日を管理
  - 各アプリで独立したペイウォール実装対応

- **モデル・プロバイダー** 🛠️
  - `quiz_access_model.dart`: QuizAccessControl, QuizAccessState
  - `quiz_access_provider.dart`: Riverpod provider ベース実装
  - `quiz_access_override_provider.dart`: 各アプリ用 override プロバイダー

- **UI コンポーネント** 🎨
  - `QuizAccessGuard`: クイズスクリーンをラップしてアクセス制御
  - `FreeDaysWarning`: 無料期間終了前の警告ウィジェット
  - ペイウォール画面との自動連携

#### 実装方法
1. shared_core: quiz_access_model.dart, quiz_access_provider.dart を追加
2. 各アプリ: quiz_access_override_provider.dart でローカル実装
3. クイズスクリーン: QuizAccessGuard でラップ
4. ローカルで `flutter pub run build_runner build` を実行

### [0.1.1] - 2026-09-12

### 📱 Phase 4.23 ローカル通知・リマインダーシステム統合

#### 新機能
- **ローカル通知・リマインダー** 🔔
  - ReminderService による毎日のリマインダー機能
  - NotificationBadge ウィジェット（未読通知数表示）
  - Firebase Cloud Messaging 連携
  - 学習リマインダー・週次ボーナス通知

- **shared_core 統一ゲーミフィケーション** 🎮
  - 全7アプリでバッジシステム統一（60+個の共通バッジ）
  - キャラクターシステム統一（16体キャラクター）
  - マルチアプリランキング・フレンド機能対応
  - 週次ボーナスシステム（7日連続達成で500コイン）
  - グローバルランキング機能（複数タブ表示対応）

#### 改善
- 通知システムの安定化・最適化
- shared_core との依存関係統合
- 全ブランチでのテスト検証完了

### 既知の問題
- なし

## [0.1.0] - 2026-09-01

### 初期実装
- 基本ゲーミフィケーション機能
- バッジシステム
- キャラクターシステム
- ランキング・フレンド機能
- UI コンポーネント統一化
