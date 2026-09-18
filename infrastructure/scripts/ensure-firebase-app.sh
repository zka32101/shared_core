#!/usr/bin/env bash
# =============================================================================
# Firebase アプリ登録の自動確認・自動登録スクリプト
#
# 指定したGCPプロジェクトに、指定プラットフォーム・パッケージ名/バンドルIDの
# Firebaseアプリが既に登録されているかを Firebase Management API で確認する。
#   - 既に登録済み → その appId を表示するだけ（重複作成しない。
#     呼び出し側はユーザーに「この登録内容で問題ないか」だけ確認すること）
#   - 未登録       → プロジェクトへのFirebase追加（未追加なら）→ アプリ作成まで
#     自動的に行う（人間の追加操作は不要）
#
# 前提:
#   - gcloud auth login 済み（人間はこの1回だけ）
#   - このGCPプロジェクトに対して Firebase Admin 権限（roles/firebase.admin 等）
#     を持つアカウント/サービスアカウントで実行すること
#
# 使い方:
#   ./ensure-firebase-app.sh <app_name> <gcp_project_id> android <package_name>
#   ./ensure-firebase-app.sh <app_name> <gcp_project_id> ios <bundle_id>
#
# 例:
#   ./ensure-firebase-app.sh kokugo-kore shougakukore android com.yourwish.shougakukore.kokugo
# =============================================================================
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=./error-troubleshooter.sh
source "${SCRIPT_DIR}/error-troubleshooter.sh"

APP_NAME="${1:?アプリ名を指定してください}"
PROJECT_ID="${2:?GCP プロジェクト ID を指定してください}"
PLATFORM="${3:?プラットフォームを指定してください（android または ios）}"
IDENTIFIER="${4:?パッケージ名（android）またはバンドルID（ios）を指定してください}"

case "$PLATFORM" in
  android) API_PATH="androidApps"; ID_FIELD="packageName" ;;
  ios) API_PATH="iosApps"; ID_FIELD="bundleId" ;;
  *)
    echo "❌ プラットフォームは 'android' または 'ios' を指定してください（指定値: ${PLATFORM}）" >&2
    exit 1
    ;;
esac

if ! command -v curl >/dev/null 2>&1; then
  echo "❌ curl が見つかりません。インストールしてください。" >&2
  exit 1
fi

ACCESS_TOKEN="$(gcloud auth print-access-token)"

api_call() {
  local method="$1" url="$2" data="${3:-}"
  if [ -n "$data" ]; then
    curl -sS -X "$method" \
      -H "Authorization: Bearer ${ACCESS_TOKEN}" \
      -H "Content-Type: application/json" \
      -d "$data" \
      "$url"
  else
    curl -sS -X "$method" \
      -H "Authorization: Bearer ${ACCESS_TOKEN}" \
      "$url"
  fi
}

echo "=== '${APP_NAME}' の Firebase アプリ登録状況（${PLATFORM} / ${IDENTIFIER}） ==="
echo ""

# --- Step 1: プロジェクトにFirebase自体が追加されているか確認 ---
echo "🔍 [1/3] GCPプロジェクトにFirebaseが追加されているか確認しています..."
FIREBASE_PROJECT="$(api_call GET "https://firebase.googleapis.com/v1beta1/projects/${PROJECT_ID}")"
if echo "${FIREBASE_PROJECT}" | grep -q '"projectId"'; then
  echo "   ✅ Firebaseは既にこのプロジェクトに追加されています"
else
  echo "   🆕 Firebaseが未追加です。追加します..."
  ADD_RESULT="$(api_call POST "https://firebase.googleapis.com/v1beta1/projects/${PROJECT_ID}:addFirebase" '{}')"
  if echo "${ADD_RESULT}" | grep -qi '"error"'; then
    suggest_fix "Firebase追加(addFirebase)" "${ADD_RESULT}"
    exit 1
  fi
  echo "   ✅ Firebaseを追加しました（反映まで数十秒かかる場合があります）"
fi
echo ""

# --- Step 2: 指定プラットフォーム・識別子のアプリが既に登録されているか確認 ---
echo "🔍 [2/3] '${IDENTIFIER}'（${PLATFORM}）の登録状況を確認しています..."
EXISTING_APPS="$(api_call GET "https://firebase.googleapis.com/v1beta1/projects/${PROJECT_ID}/${API_PATH}")"

EXISTING_APP_ID="$(python3 - "$EXISTING_APPS" "$ID_FIELD" "$IDENTIFIER" <<'PYEOF'
import json, sys
raw, id_field, identifier = sys.argv[1], sys.argv[2], sys.argv[3]
try:
    data = json.loads(raw)
except Exception:
    sys.exit(0)
for app in data.get("apps", []):
    if app.get(id_field) == identifier:
        print(app.get("appId", ""))
        break
PYEOF
)"

if [ -n "${EXISTING_APP_ID}" ]; then
  echo "   ✅ 既に登録済みです（appId: ${EXISTING_APP_ID}）"
  echo "      → ユーザーには「この登録内容のままで良いか」の確認だけを依頼すること。"
  echo "        新規作成は行っていません。"
  APP_ID="${EXISTING_APP_ID}"
else
  echo "   🆕 未登録です。新規に作成します..."
  CREATE_BODY="$(python3 - "$ID_FIELD" "$IDENTIFIER" "$APP_NAME" <<'PYEOF'
import json, sys
id_field, identifier, app_name = sys.argv[1], sys.argv[2], sys.argv[3]
print(json.dumps({id_field: identifier, "displayName": app_name}))
PYEOF
)"
  CREATE_RESULT="$(api_call POST "https://firebase.googleapis.com/v1beta1/projects/${PROJECT_ID}/${API_PATH}" "${CREATE_BODY}")"
  if echo "${CREATE_RESULT}" | grep -qi '"error"'; then
    suggest_fix "Firebaseアプリ作成(${API_PATH})" "${CREATE_RESULT}"
    exit 1
  fi

  # Firebase のアプリ作成は Long Running Operation として返ることがあるため、
  # response.appId があればそれを、無ければ operation 名を表示する。
  APP_ID="$(python3 - "$CREATE_RESULT" <<'PYEOF'
import json, sys
try:
    data = json.loads(sys.argv[1])
    print(data.get("response", {}).get("appId") or data.get("name", ""))
except Exception:
    pass
PYEOF
)"
  echo "   ✅ 新規作成しました（appId/operation: ${APP_ID:-不明}）"
fi
echo ""

echo "🔍 [3/3] 完了"
cat <<EOF

✅ '${APP_NAME}' の Firebase アプリ登録確認が完了しました。
   プラットフォーム : ${PLATFORM}
   識別子           : ${IDENTIFIER}
   appId            : ${APP_ID:-(取得できず。上の出力を確認してください)}

次のステップ（必要な場合のみ）:
  設定ファイルを取得する:
    curl -H "Authorization: Bearer \$(gcloud auth print-access-token)" \\
      "https://firebase.googleapis.com/v1beta1/projects/${PROJECT_ID}/${API_PATH}/${APP_ID}/config"

  firebase-admin-key（サービスアカウントJSON）を Secret Manager に登録する場合:
    ./check-secrets-status.sh ${APP_NAME} ${PROJECT_ID} firebase-admin-key
EOF
