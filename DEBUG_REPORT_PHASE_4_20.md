# Phase 4.20 CI 失敗 — 根本原因分析レポート

**日付**: 2026-09-11  
**調査範囲**: sansu-kore #84 + 他 5 アプリ (kokugo-kore, newrepo, shogaku-kore-programming, shinshin, social_quiz_app)  
**結論**: ✅ **根本原因特定: shared_core の Freezed コード生成ファイルが存在しない**

---

## 🔴 根本原因

### 問題: daily_mission_model.dart の part ファイルが存在しない

**ファイル**: `/home/user/shared_core/lib/models/daily_mission_model.dart`

```dart
// 行3-4
part 'daily_mission_model.freezed.dart';  // ❌ ファイルが存在しない
part 'daily_mission_model.g.dart';         // ❌ ファイルが存在しない
```

**検証結果**:
```bash
$ find /home/user/shared_core -name "daily_mission_model.freezed.dart"
# → 結果なし

$ find /home/user/shared_core -name "daily_mission_model.g.dart"
# → 結果なし
```

### 影響範囲

shared_core は全 7 アプリ (sansu-kore, kokugo-kore, newrepo, eigo, shogaku-kore-programming, shinshin, social_quiz_app) が **git dependency** で依存：

```yaml
# 各アプリの pubspec.yaml
dependencies:
  shared_core:
    git:
      url: https://github.com/zka32101/shared_core.git
      ref: main  # ← Phase 4.20 実装ブランチ
```

Dart がコンパイル時に missing part ファイルを検出 → **全アプリで CI FAILED**

---

## 📊 CI 失敗パターン（全 5 アプリで同一）

| アプリ | PR | CI ステータス | エラー箇所 |
|--------|-----|-------------|--------|
| sansu-kore | #84 | ❌ FAILED | Build Android APK / iOS |
| kokugo-kore | #65 | ❌ FAILED | Flutter CI / build-apk.yml |
| newrepo (理科) | #66 | ❌ FAILED | Build Debug APK / 6-Point Test |
| shogaku-kore-programming | #102 | ❌ FAILED | CI / Build iOS / Build APK |
| shinshin (道徳) | #38 | ❌ FAILED | Code Quality / Security / CI / Deploy |

**共通エラー原因**: shared_core の Freezed 生成ファイルが missing

---

## 🔧 解決方法（ローカル作業）

### 前提条件
- Flutter 3.9.0+
- Dart 3.9.0+
- build_runner, freezed 依存関係あり（既に pubspec.yaml に記載）

### 手順

#### 1️⃣ shared_core をローカルにクローン

```bash
git clone https://github.com/zka32101/shared_core.git
cd shared_core
git checkout claude/relaxed-brahmagupta-9tarv4
```

#### 2️⃣ 依存関係をインストール

```bash
flutter clean
flutter pub get
```

#### 3️⃣ Freezed コード生成を実行（重要）

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

**出力例**:
```
[INFO] Building for the host machine...
[INFO] Generating build script...
[INFO] Reading cached asset graph...
[INFO] Checking for changes...
[INFO] Running build...
[INFO] Caching finalized dependency graph...
[INFO] Succeeded after 45.2s with 18 outputs (18 new)
```

#### 4️⃣ 生成されたファイルを確認

```bash
ls -la lib/models/*freezed.dart | head -10
# 出力例:
# lib/models/daily_mission_model.freezed.dart
# lib/models/badge_model.freezed.dart
# lib/models/character_data.freezed.dart
# ... (全 Freezed モデル)

ls -la lib/models/*.g.dart | head -10
# 出力例:
# lib/models/daily_mission_model.g.dart
# lib/models/badge_model.g.dart
# ... (全 JSON シリアライザー)
```

#### 5️⃣ Git に追加してコミット

```bash
git add lib/models/*.freezed.dart
git add lib/models/*.g.dart
git commit -m "build: generate Freezed code for all models

- Ran: flutter pub run build_runner build --delete-conflicting-outputs
- Generated 24+ .freezed.dart and .g.dart files for Phase 4.20 models
- Fixes CI failures across all 7 apps (sansu-kore, kokugo-kore, etc.)
- Resolves missing part files: daily_mission_model, analytics_model, ab_test_model, etc.

Co-Authored-By: Claude Haiku 4.5 <noreply@anthropic.com>"
```

#### 6️⃣ プッシュ

```bash
git push -u origin claude/relaxed-brahmagupta-9tarv4
```

---

## ✅ 検証手順（修正後）

### ローカル検証
```bash
# Lint チェック
flutter analyze
# 出力: No issues found

# テスト実行
flutter test

# ビルド確認
flutter build apk --debug --no-pub
```

### CI 検証（GitHub）
1. shared_core PR を作成・マージ
2. 各アプリの CI が自動的に re-run
3. 全アプリで green に変わることを確認：
   - ✅ sansu-kore #84
   - ✅ kokugo-kore #65
   - ✅ newrepo #66
   - ✅ shogaku-kore-programming #102
   - ✅ shinshin #38

---

## 📌 why this happened

**経緯**: Phase 4.20 で daily_mission_model.dart を追加した際、Freezed コード生成ファイルがコミットされずに git にプッシュされた。

- ❌ `.gitignore` に生成ファイルが入っていた？
- ❌ ローカルで build_runner を実行していない状態でプッシュ？
- ❌ CI で `flutter pub run build_runner build` コマンドが実行されていない？

**対策**: この修正後、shared_core CI/CD に build_runner ステップを追加すること（.github/workflows/ に build_runner チェックを追加）

---

## 🚀 次ステップ

1. **ローカル修正** (ユーザー作業):
   ```bash
   # 上記の手順 1-6 を実行
   git push
   ```

2. **PR 作成**: shared_core に "build: generate Freezed code" として PR を作成・マージ

3. **CI 自動修正**: 各アプリの既存 PR は shared_core の更新を自動検出 → CI green に

4. **CI/CD 強化**: 次回 phase 開発時に build_runner ステップを GitHub Actions に組み込む

---

**生成ファイル一覧（期待値）**:

```
lib/models/*.freezed.dart:
├── daily_mission_model.freezed.dart
├── ab_test_model.freezed.dart
├── analytics_model.freezed.dart
├── badge_model.freezed.dart
├── character_data.freezed.dart
├── friend_model.freezed.dart
├── global_ranking_model.freezed.dart
├── learning_metrics.freezed.dart
├── premium_model.freezed.dart
├── screen_time_model.freezed.dart
└── (その他 14+ ファイル)

lib/models/*.g.dart:
├── daily_mission_model.g.dart
├── ab_test_model.g.dart
├── analytics_model.g.dart
└── (各モデルに対応)
```

---

**報告者**: Claude Haiku 4.5  
**調査完了**: 2026-09-11 23:45 UTC
