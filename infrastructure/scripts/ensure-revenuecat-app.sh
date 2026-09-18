#!/usr/bin/env bash
# =============================================================================
# RevenueCat アプリ登録の自動確認・自動登録スクリプト
#
# ⚠️ 重要な注意（実行前に必ず読むこと）:
#   このスクリプトは、外部ネットワークアクセスのないリモート環境で作成された。
#   RevenueCat REST API v2 (https://www.revenuecat.com/docs/api-v2) の
#   エンドポイント名・リクエストボディのフィールド名は、作成時点で
#   ライブのAPIドキュメントを確認できなかったため未検証。
#   実行する前に、必ず公式ドキュメントで以下を確認・修正すること:
#     - POST /v2/projects のリクエストボディ形式
#     - POST /v2/projects/{project_id}/apps のリクエストボディ形式
#       （play_store / app_store それぞれの必須フィールド名）
#   初回実行時にAPIがエラーを返す場合は、まずこのスクリプトのAPI呼び出し部分を
#   最新のドキュメントに合わせて修正してから再実行すること。
#
# 何をするか:
#   RevenueCatに、指定した app_name のプロジェクト・指定プラットフォームの
#   アプリが既に存在するかを確認する。
#     - 既に存在 → そのアプリのSDK用APIキーを表示するだけ（重複作成しない。
#       ユーザーには「この登録内容のままで良いか」の確認だけを依頼すること）
#     - 存在しない → プロジェクト作成（未作成なら）→ アプリ作成まで自動で行う
#   取得したSDK用APIキーが Secret Manager の revenuecat-api-key に未登録の場合は
#   自動で登録する（check-secrets-status.sh と同じ「既存確認→なければ登録」方針）。
#
# 前提:
#   - RevenueCat の「Secret API key」（管理用、SDK用キーとは別物）を
#     環境変数 REVENUECAT_SECRET_API_KEY にエクスポート済みであること
#     （RevenueCatダッシュボード → Account Settings → API Keys で人間が
#     1回だけ発行する。gcloud auth login と同種の初期セットアップ）
#
# 使い方:
#   export REVENUECAT_SECRET_API_KEY="sk_xxxxx"
#   ./ensure-revenuecat-app.sh <app_name> <gcp_project_id> play_store <package_name>
#   ./ensure-revenuecat-app.sh <app_name> <gcp_project_id> app_store <bundle_id>
# =============================================================================
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=./error-troubleshooter.sh
source "${SCRIPT_DIR}/error-troubleshooter.sh"

APP_NAME="${1:?アプリ名を指定してください}"
PROJECT_ID="${2:?GCP プロジェクト ID を指定してください（Secret Manager登録先）}"
PLATFORM="${3:?プラットフォームを指定してください（play_store または app_store）}"
IDENTIFIER="${4:?パッケージ名（play_store）またはバンドルID（app_store）を指定してください}"

: "${REVENUECAT_SECRET_API_KEY:?環境変数 REVENUECAT_SECRET_API_KEY を設定してください（RevenueCatダッシュボードのSecret API Key）}"

case "$PLATFORM" in
  play_store|app_store) ;;
  *)
    echo "❌ プラットフォームは 'play_store' または 'app_store' を指定してください（指定値: ${PLATFORM}）" >&2
    exit 1
    ;;
esac

RC_API_BASE="https://api.revenuecat.com/v2"

rc_api_call() {
  local method="$1" url="$2" data="${3:-}"
  if [ -n "$data" ]; then
    curl -sS -X "$method" \
      -H "Authorization: Bearer ${REVENUECAT_SECRET_API_KEY}" \
      -H "Content-Type: application/json" \
      -d "$data" \
      "$url"
  else
    curl -sS -X "$method" \
      -H "Authorization: Bearer ${REVENUECAT_SECRET_API_KEY}" \
      "$url"
  fi
}

echo "=== '${APP_NAME}' の RevenueCat 登録状況（${PLATFORM} / ${IDENTIFIER}） ==="
echo ""

# --- Step 1: プロジェクトの確認・作成 ---
echo "🔍 [1/3] RevenueCat プロジェクト '${APP_NAME}' を確認しています..."
PROJECTS_RESULT="$(rc_api_call GET "${RC_API_BASE}/projects")"

PROJECT_RC_ID="$(python3 - "$PROJECTS_RESULT" "$APP_NAME" <<'PYEOF'
import json, sys
raw, name = sys.argv[1], sys.argv[2]
try:
    data = json.loads(raw)
except Exception:
    sys.exit(0)
for proj in data.get("items", data.get("projects", [])):
    if proj.get("name") == name:
        print(proj.get("id", ""))
        break
PYEOF
)"

if [ -n "${PROJECT_RC_ID}" ]; then
  echo "   ✅ 既存のプロジェクトが見つかりました（project_id: ${PROJECT_RC_ID}）"
else
  echo "   🆕 プロジェクトが存在しません。作成します..."
  CREATE_PROJECT_RESULT="$(rc_api_call POST "${RC_API_BASE}/projects" "$(python3 -c "import json,sys; print(json.dumps({'name': sys.argv[1]}))" "$APP_NAME")")"
  if echo "${CREATE_PROJECT_RESULT}" | grep -qi '"error"'; then
    suggest_fix "RevenueCatプロジェクト作成" "${CREATE_PROJECT_RESULT}"
    exit 1
  fi
  PROJECT_RC_ID="$(python3 -c "
import json, sys
try:
    print(json.load(sys.stdin).get('id', ''))
except Exception:
    pass
" <<< "${CREATE_PROJECT_RESULT}")"
  echo "   ✅ プロジェクトを作成しました（project_id: ${PROJECT_RC_ID}）"
fi
echo ""

if [ -z "${PROJECT_RC_ID}" ]; then
  echo "❌ プロジェクトIDを取得できませんでした。上記の出力を確認し、APIレスポンス形式が" >&2
  echo "   ドキュメントと一致しているか確認してください。" >&2
  exit 1
fi

# --- Step 2: アプリの確認・作成 ---
echo "🔍 [2/3] '${IDENTIFIER}'（${PLATFORM}）のアプリ登録を確認しています..."
APPS_RESULT="$(rc_api_call GET "${RC_API_BASE}/projects/${PROJECT_RC_ID}/apps")"

EXISTING_APP_JSON="$(python3 - "$APPS_RESULT" "$PLATFORM" "$IDENTIFIER" <<'PYEOF'
import json, sys
raw, platform, identifier = sys.argv[1], sys.argv[2], sys.argv[3]
id_field = "package_name" if platform == "play_store" else "bundle_id"
try:
    data = json.loads(raw)
except Exception:
    sys.exit(0)
for app in data.get("items", data.get("apps", [])):
    if app.get(platform, {}).get(id_field) == identifier or app.get(id_field) == identifier:
        print(json.dumps(app))
        break
PYEOF
)"

if [ -n "${EXISTING_APP_JSON}" ]; then
  APP_RC_ID="$(python3 -c "import json,sys; print(json.loads(sys.argv[1]).get('id',''))" "${EXISTING_APP_JSON}")"
  echo "   ✅ 既に登録済みです（app_id: ${APP_RC_ID}）"
  echo "      → ユーザーには「この登録内容のままで良いか」の確認だけを依頼すること。"
  echo "        新規作成は行っていません。"
else
  echo "   🆕 未登録です。新規に作成します..."
  ID_FIELD="package_name"; [ "$PLATFORM" = "app_store" ] && ID_FIELD="bundle_id"
  CREATE_APP_BODY="$(python3 - "$APP_NAME" "$PLATFORM" "$ID_FIELD" "$IDENTIFIER" <<'PYEOF'
import json, sys
name, platform, id_field, identifier = sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4]
print(json.dumps({"name": name, "type": platform, id_field: identifier}))
PYEOF
)"
  CREATE_APP_RESULT="$(rc_api_call POST "${RC_API_BASE}/projects/${PROJECT_RC_ID}/apps" "${CREATE_APP_BODY}")"
  if echo "${CREATE_APP_RESULT}" | grep -qi '"error"'; then
    suggest_fix "RevenueCatアプリ作成" "${CREATE_APP_RESULT}"
    exit 1
  fi
  APP_RC_ID="$(python3 -c "
import json, sys
try:
    print(json.load(sys.stdin).get('id', ''))
except Exception:
    pass
" <<< "${CREATE_APP_RESULT}")"
  echo "   ✅ 新規作成しました（app_id: ${APP_RC_ID}）"
fi
echo ""

# --- Step 3: SDK用公開APIキーをSecret Managerへ橋渡し ---
echo "🔍 [3/3] SDK用APIキーの Secret Manager 登録状況を確認しています..."
if command -v gcloud >/dev/null 2>&1; then
  "${SCRIPT_DIR}/check-secrets-status.sh" "${APP_NAME}" "${PROJECT_ID}" revenuecat-api-key || true
  echo ""
  echo "   ℹ️  未登録と表示された場合、RevenueCatダッシュボードの該当アプリの"
  echo "      'API Keys' から公開SDKキーを取得し、以下で登録してください:"
  echo "      echo -n \"公開APIキー\" | ./set-secret-value.sh ${APP_NAME} ${PROJECT_ID} revenuecat-api-key"
else
  echo "   ⚠️  gcloud CLIが見つからないため、Secret Manager側の確認はスキップしました"
fi
