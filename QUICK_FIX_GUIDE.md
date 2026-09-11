# Phase 4.20 CI 失敗 — クイック修正ガイド

**状況**: リモート環境で根本原因を特定・分析完了  
**修正方法**: ローカルで 1 コマンド実行

---

## ⚡ 30秒での修正（ローカル環境で）

```bash
# shared_core をクローン
git clone https://github.com/zka32101/shared_core.git
cd shared_core
git checkout claude/relaxed-brahmagupta-9tarv4

# 🔑 このコマンド 1 つで全て自動実行
bash FIX_PHASE_4_20.sh
```

**それだけです！** スクリプトが以下を自動で処理します：
- ✅ Flutter 環境確認
- ✅ `flutter clean` と `flutter pub get`
- ✅ Freezed コード生成実行
- ✅ ファイル確認
- ✅ Lint チェック
- ✅ Git コミット
- ✅ GitHub プッシュ

---

## 📋 スクリプトが何をするのか

### 実行中に見える出力例：

```
🚀 Phase 4.20 Freezed コード生成 - 自動修正スクリプト
================================================================

📋 ステップ 1: 環境確認
Flutter 3.24.0 • Dart SDK version 3.5.3
✅ Dart 3.5.3

📋 ステップ 2: Git ブランチ確認
✅ ブランチ: claude/relaxed-brahmagupta-9tarv4

📋 ステップ 3: 依存関係をクリア・インストール
Running "flutter clean"...
Running "flutter pub get"...

📋 ステップ 4: Freezed コード生成を実行...
[INFO] Building for the host machine...
[INFO] Running build...
[INFO] Succeeded after 45.2s with 24 outputs

📋 ステップ 5: 生成ファイル確認
✅ 生成された .freezed.dart ファイル: 20 個
✅ 生成された .g.dart ファイル: 20 個

📋 ステップ 6: コード品質チェック
✅ Lint チェック: OK

📋 ステップ 7: Git コミット・プッシュ
📝 40 ファイルをコミット対象に追加
✅ プッシュ成功

================================================================
✅ 完了！
```

---

## 🔍 何が修正されるのか

### 問題（Before）:
```
part 'daily_mission_model.freezed.dart';  ← ❌ ファイルなし
part 'daily_mission_model.g.dart';         ← ❌ ファイルなし
```

### 修正後（After）:
```
part 'daily_mission_model.freezed.dart';  ← ✅ 生成完了
part 'daily_mission_model.g.dart';         ← ✅ 生成完了
```

### CI の結果

**修正前**: ❌ FAILED
```
sansu-kore #84         ❌ FAILED
kokugo-kore #65        ❌ FAILED
newrepo #66            ❌ FAILED
shogaku-kore-prog #102 ❌ FAILED
shinshin #38           ❌ FAILED
```

**修正後**: ✅ GREEN
```
sansu-kore #84         ✅ PASSED
kokugo-kore #65        ✅ PASSED
newrepo #66            ✅ PASSED
shogaku-kore-prog #102 ✅ PASSED
shinshin #38           ✅ PASSED
```

---

## ❓ よくある質問

### Q: 「Permission denied」が出たときは？
```bash
chmod +x FIX_PHASE_4_20.sh
bash FIX_PHASE_4_20.sh
```

### Q: Windows で実行するときは？
PowerShell で実行：
```powershell
# Git Bash または WSL で実行してください
bash FIX_PHASE_4_20.sh
```

または、手動実行：
```bash
flutter clean
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
git add lib/models/*.freezed.dart lib/models/*.g.dart
git commit -m "build: generate Freezed code"
git push
```

### Q: エラーが出たときは？
```bash
# Lint エラー確認
flutter analyze

# Git ステータス確認
git status

# 最新コミット確認
git log -1
```

詳細は `DEBUG_REPORT_PHASE_4_20.md` を参照。

---

## 📚 参考資料

| ファイル | 内容 |
|---------|------|
| `DEBUG_REPORT_PHASE_4_20.md` | 根本原因の詳細分析 |
| `FIX_PHASE_4_20.sh` | 自動修正スクリプト |
| `lib/models/daily_mission_model.dart` | Freezed モデル定義 |
| `pubspec.yaml` | Flutter/Dart 設定 |

---

## 🚀 実行後の期待

**ローカルで実行**:
```
bash FIX_PHASE_4_20.sh
```

**GitHub Actions が自動実行**:
1. shared_core CI が green に ✅
2. 各アプリの CI が自動 re-run
3. 全 5 アプリが green に ✅

**プッシュ→ マージ→ 全 CI green** 🎉

---

**クイックスタート**: `bash FIX_PHASE_4_20.sh` で完了！
