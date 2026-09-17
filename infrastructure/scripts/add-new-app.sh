#!/usr/bin/env bash
# =============================================================================
# ワンコマンドで新規アプリのセキュア自動化基盤を追加するスクリプト。
#
# 「アプリ名 + GCPプロジェクトID + GitHubリポジトリ + シークレットキー一覧」を
# 渡すだけで、以下をまとめて実行する:
#   1. tfvars ファイルを自動生成（汎用 _template ディレクトリはコピー不要）
#   2. terraform apply（サービスアカウント・Secret Manager・WIF を作成）
#   3. GitHub リポジトリの Variables に自動設定（gh CLI 使用）
#
# 前提:
#   - gcloud CLI にログイン済み（人間の認証はこの1回だけ。以降は一切不要）
#   - gh CLI にログイン済み（GitHub Variables 設定に使用）
#   - Terraform インストール済み
#
# 使い方:
#   ./add-new-app.sh <app_name> <gcp_project_id> <github_repo> [secret_key ...]
#
# 例:
#   ./add-new-app.sh shogi_app shogi-app-prod-123456 zka32101/shogi_app \
#       revenuecat-api-key admob-app-id firebase-admin-key
#
# シークレットキーを何も渡さない場合は Secret Manager の箱を作らない
# （後から必要になったら再実行すれば追加できる — Terraform は差分適用のため
#  既存のリソースは壊れない）。
# =============================================================================
set -euo pipefail

if [ "$#" -lt 3 ]; then
  cat <<'USAGE'
使い方:
  ./add-new-app.sh <app_name> <gcp_project_id> <github_repo> [secret_key ...]

例:
  ./add-new-app.sh shogi_app shogi-app-prod-123456 zka32101/shogi_app \
      revenuecat-api-key admob-app-id firebase-admin-key
USAGE
  exit 1
fi

APP_NAME="$1"
PROJECT_ID="$2"
GITHUB_REPO="$3"
shift 3
SECRET_KEYS=("$@")

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TEMPLATE_DIR="$(cd "${SCRIPT_DIR}/../terraform/environments/_template" && pwd)"
TFVARS_FILE="${TEMPLATE_DIR}/tfvars/${APP_NAME}.tfvars"

echo "🚀 新規アプリ '${APP_NAME}' のセキュア自動化基盤を構築します"
echo "   GCP プロジェクト   : ${PROJECT_ID}"
echo "   GitHub リポジトリ : ${GITHUB_REPO}"
if [ ${#SECRET_KEYS[@]} -gt 0 ]; then
  echo "   シークレット       : ${SECRET_KEYS[*]}"
else
  echo "   シークレット       : (なし — 後から追加可能)"
fi
echo ""

# --- Step 1: tfvars ファイルを生成 ---
echo "🔧 [1/3] tfvars ファイルを生成しています..."
mkdir -p "${TEMPLATE_DIR}/tfvars"

{
  echo "project_id    = \"${PROJECT_ID}\""
  echo "app_name      = \"${APP_NAME}\""
  echo "ci_repository = \"${GITHUB_REPO}\""
  if [ ${#SECRET_KEYS[@]} -gt 0 ]; then
    echo "secrets = ["
    for key in "${SECRET_KEYS[@]}"; do
      echo "  \"${key}\","
    done
    echo "]"
  else
    echo "secrets = []"
  fi
} > "${TFVARS_FILE}"

echo "   ✅ ${TFVARS_FILE} を生成しました"
echo ""

# --- Step 2: 必要な GCP API を有効化 + terraform apply ---
echo "🔧 [2/3] GCP API を有効化し、Terraform を適用します..."
gcloud services enable \
  secretmanager.googleapis.com \
  iam.googleapis.com \
  iamcredentials.googleapis.com \
  sts.googleapis.com \
  --project="${PROJECT_ID}"

cd "${TEMPLATE_DIR}"
terraform init -input=false
terraform apply -input=false -auto-approve -var-file="tfvars/${APP_NAME}.tfvars"

SA_EMAIL=$(terraform output -raw service_account_email)
WIF_PROVIDER=$(terraform output -raw workload_identity_provider)
echo ""

# --- Step 3: GitHub Variables に自動設定 ---
echo "🔧 [3/3] GitHub リポジトリの Variables を設定しています..."
if command -v gh >/dev/null 2>&1; then
  gh variable set GCP_PROJECT_ID       --repo "${GITHUB_REPO}" --body "${PROJECT_ID}"
  gh variable set GCP_SERVICE_ACCOUNT  --repo "${GITHUB_REPO}" --body "${SA_EMAIL}"
  gh variable set GCP_WIF_PROVIDER     --repo "${GITHUB_REPO}" --body "${WIF_PROVIDER}"
  echo "   ✅ GCP_PROJECT_ID / GCP_SERVICE_ACCOUNT / GCP_WIF_PROVIDER を設定しました"
else
  echo "   ⚠️  gh CLI が見つかりません。以下を手動で実行してください:"
  echo ""
  echo "   gh variable set GCP_PROJECT_ID      --repo ${GITHUB_REPO} --body \"${PROJECT_ID}\""
  echo "   gh variable set GCP_SERVICE_ACCOUNT --repo ${GITHUB_REPO} --body \"${SA_EMAIL}\""
  echo "   gh variable set GCP_WIF_PROVIDER    --repo ${GITHUB_REPO} --body \"${WIF_PROVIDER}\""
fi

cat <<EOF

✅ '${APP_NAME}' のセキュア自動化基盤の構築が完了しました。
   パスワード・長期鍵ファイルは一切生成していません。

次にやること（シークレットの値がある場合のみ）:
EOF

for key in "${SECRET_KEYS[@]}"; do
  echo "  echo -n \"実際の値\" | ./set-secret-value.sh ${APP_NAME} ${PROJECT_ID} ${key}"
done

cat <<EOF

アプリ側のワークフローからの呼び出し方は SECURE_MULTI_APP_SETUP.md を参照してください。
EOF
