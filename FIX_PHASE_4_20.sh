#!/bin/bash
# =============================================================================
# Phase 4.20 CI 失敗 修正スクリプト
# 実行場所: ローカル環境（Flutter/Dart が利用可能な環境）
# 実行者: 開発者
# =============================================================================

set -e  # エラーで中止

echo "🚀 Phase 4.20 Freezed コード生成 - 自動修正スクリプト"
echo "================================================================"

# ① 環境確認
echo ""
echo "📋 ステップ 1: 環境確認"
if ! command -v flutter &> /dev/null; then
    echo "❌ エラー: Flutter がインストールされていません"
    echo "   → https://flutter.dev/docs/get-started/install にアクセスしてインストールしてください"
    exit 1
fi

flutter --version
dart --version

# ② git ブランチ確認
echo ""
echo "📋 ステップ 2: Git ブランチ確認"
CURRENT_BRANCH=$(git branch --show-current)
if [ "$CURRENT_BRANCH" != "claude/relaxed-brahmagupta-9tarv4" ]; then
    echo "⚠️  警告: ブランチが異なります（現在: $CURRENT_BRANCH）"
    echo "   → 切り替えますか？ (y/n)"
    read -r response
    if [ "$response" = "y" ]; then
        git checkout claude/relaxed-brahmagupta-9tarv4
    else
        echo "❌ 中止"
        exit 1
    fi
fi
echo "✅ ブランチ: $(git branch --show-current)"

# ③ 依存関係をクリア・インストール
echo ""
echo "📋 ステップ 3: 依存関係をクリア・インストール"
flutter clean
flutter pub get

# ④ Freezed コード生成（重要）
echo ""
echo "📋 ステップ 4: Freezed コード生成を実行..."
echo "   実行中: flutter pub run build_runner build --delete-conflicting-outputs"
flutter pub run build_runner build --delete-conflicting-outputs

# ⑤ 生成ファイル確認
echo ""
echo "📋 ステップ 5: 生成ファイル確認"
FREEZED_COUNT=$(find lib/models -name "*.freezed.dart" | wc -l)
G_COUNT=$(find lib/models -name "*.g.dart" | wc -l)

echo "✅ 生成された .freezed.dart ファイル: $FREEZED_COUNT 個"
echo "✅ 生成された .g.dart ファイル: $G_COUNT 個"

if [ "$FREEZED_COUNT" -lt 15 ] || [ "$G_COUNT" -lt 15 ]; then
    echo "⚠️  警告: 期待より少ないファイル数です"
    echo "   → ファイル一覧:"
    find lib/models -name "*.freezed.dart" -o -name "*.g.dart" | sort
fi

# ⑥ コード品質チェック
echo ""
echo "📋 ステップ 6: コード品質チェック"
flutter analyze
if [ $? -eq 0 ]; then
    echo "✅ Lint チェック: OK"
else
    echo "❌ Lint エラーが見つかりました"
    exit 1
fi

# ⑦ Git コミット
echo ""
echo "📋 ステップ 7: Git コミット・プッシュ"
git add lib/models/*.freezed.dart
git add lib/models/*.g.dart

UNCOMMITTED=$(git diff --cached --name-only | wc -l)
if [ "$UNCOMMITTED" -eq 0 ]; then
    echo "⚠️  警告: コミット対象ファイルがありません"
    echo "   → ファイルが既にコミットされている可能性があります"
    echo "   → git log -1 で最新コミットを確認してください"
else
    echo "📝 $UNCOMMITTED ファイルをコミット対象に追加"

    git commit -m "build: generate Freezed code for Phase 4.20 models

- Ran: flutter pub run build_runner build --delete-conflicting-outputs
- Fixes CI failures across all 7 apps:
  * sansu-kore #84
  * kokugo-kore #65
  * newrepo (理科) #66
  * shogaku-kore-programming #102
  * shinshin (道徳) #38
  * social_quiz_app
- Generated $FREEZED_COUNT .freezed.dart and $G_COUNT .g.dart files
- Resolves missing part files for Phase 4.20 daily mission models

Co-Authored-By: Claude Haiku 4.5 <noreply@anthropic.com>"

    # ⑧ プッシュ
    echo ""
    echo "📋 ステップ 8: GitHub にプッシュ"
    echo "   実行中: git push -u origin claude/relaxed-brahmagupta-9tarv4"
    git push -u origin claude/relaxed-brahmagupta-9tarv4

    if [ $? -eq 0 ]; then
        echo "✅ プッシュ成功"
    else
        echo "❌ プッシュ失敗"
        echo "   → ネットワーク接続を確認してください"
        exit 1
    fi
fi

# ✅ 完了
echo ""
echo "================================================================"
echo "✅ 完了！"
echo ""
echo "📌 次のステップ:"
echo "   1. GitHub で PR をご確認ください"
echo "   2. shared_core の CI が green になるのを待ちます"
echo "   3. 各アプリ (sansu-kore, kokugo-kore など) の CI が自動 re-run"
echo "   4. 全アプリが green に変わります ✨"
echo ""
echo "💬 トラブルシューティング:"
echo "   - Lint エラーが出た場合: flutter analyze でエラーを確認"
echo "   - プッシュが失敗した場合: git status で状態確認"
echo "   - ファイルが少ない場合: build_runner のログを確認"
echo ""
echo "📖 詳細: DEBUG_REPORT_PHASE_4_20.md を参照"
