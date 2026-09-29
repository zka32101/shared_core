#!/usr/bin/env bash
# preflight → verify → store-check（リリース準備レポート込み）。最初に失敗した段で停止。
# 10観点デバイステストは device-10check.sh（ローカル実機）/ shared_core の device-test.yml（CI・全アプリ自動検出）。
set -uo pipefail
HERE="$(cd "$(dirname "$0")" && pwd)"; ROOT="${1:-.}"; start=$(date +%s)
for s in preflight verify store-check; do
  bash "$HERE/$s.sh" "$ROOT" || { echo "🛑 $s で停止（修正して再実行）"; exit 1; }
done
echo "🚀 ship-cycle 完了 ($(( $(date +%s) - start ))s)"
