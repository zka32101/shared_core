#!/usr/bin/env bash
# =============================================================================
# シークレットキーの登録状況チェッカー
#
# 指定したシークレットキーそれぞれについて、GCP Secret Manager に
# 既に値（バージョン）が入っているかを確認し、
#   - 既存 → 「確認が必要」（値の再入力は不要。ユーザーには「今の値のままで
#     良いか」だけ確認する）
#   - 未登録 → 「登録が必要」（ユーザーに実際の値を尋ねて登録する）
# の2グループに分けて表示する。
#
# add-new-app.sh から自動的に呼ばれるが、単体でも実行できる。
#
# 使い方:
#   ./check-secrets-status.sh <app_name> <gcp_project_id> [secret_key ...]
#
# 呼び出し側（Claude セッションなど）への注意:
#   このスクリプトが「既に登録済み」と表示したキーについて、ユーザーに
#   実際の値を尋ね直してはいけない。「〇〇は既に登録されています。
#   今の値のままで問題ないか確認してください」という形で確認を求めること。
#   「未登録」のキーについてのみ、実際の値を尋ねて
#   set-secret-value.sh で登録すること。
# =============================================================================
set -euo pipefail

APP_NAME="${1:?アプリ名を指定してください}"
PROJECT_ID="${2:?GCP プロジェクト ID を指定してください}"
shift 2

if [ "$#" -eq 0 ]; then
  echo "使い方: ./check-secrets-status.sh <app_name> <gcp_project_id> <secret_key> [secret_key ...]" >&2
  exit 1
fi

declare -a SECRET_KEYS=("$@")
declare -a EXISTING=()
declare -a MISSING=()
declare -a UNKNOWN=()

for key in "${SECRET_KEYS[@]}"; do
  secret_id="${APP_NAME}-${key}"

  # シークレットの箱自体が存在するか（terraform apply 前など）
  if ! gcloud secrets describe "${secret_id}" --project="${PROJECT_ID}" >/dev/null 2>&1; then
    UNKNOWN+=("${key}")
    continue
  fi

  latest_version="$(gcloud secrets versions list "${secret_id}" \
    --project="${PROJECT_ID}" \
    --filter="state=ENABLED" \
    --sort-by="~createTime" \
    --limit=1 \
    --format="value(createTime)" 2>/dev/null || true)"

  if [ -n "${latest_version}" ]; then
    EXISTING+=("${key}|${latest_version}")
  else
    MISSING+=("${key}")
  fi
done

echo "=== '${APP_NAME}' のシークレット登録状況 ==="
echo ""

if [ ${#EXISTING[@]} -gt 0 ]; then
  echo "✅ 既に登録済み（値が入っています）— ユーザーには「今の値のままで良いか」だけ確認すること。値の再入力は不要:"
  for entry in "${EXISTING[@]}"; do
    key="${entry%%|*}"
    updated="${entry##*|}"
    echo "   - ${key}（最終更新: ${updated}）"
  done
  echo ""
fi

if [ ${#MISSING[@]} -gt 0 ]; then
  echo "🆕 未登録 — ユーザーに実際の値を尋ねて登録すること:"
  for key in "${MISSING[@]}"; do
    echo "   - ${key}"
    echo "     echo -n \"実際の値\" | ./set-secret-value.sh ${APP_NAME} ${PROJECT_ID} ${key}"
  done
  echo ""
fi

if [ ${#UNKNOWN[@]} -gt 0 ]; then
  echo "⚠️  Secret Manager 側に箱自体が存在しません（terraform apply が未実行の可能性）:"
  for key in "${UNKNOWN[@]}"; do
    echo "   - ${key}"
  done
  echo "   add-new-app.sh を先に実行して箱を作成してください。"
  echo ""
fi

if [ ${#EXISTING[@]} -eq 0 ] && [ ${#MISSING[@]} -eq 0 ] && [ ${#UNKNOWN[@]} -eq 0 ]; then
  echo "対象キーがありません"
fi
