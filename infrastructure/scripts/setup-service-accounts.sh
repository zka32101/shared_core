#!/usr/bin/env bash
# =============================================================================
# 初期セットアップスクリプト（人間が1回だけ手動実行する）
#
# 前提:
#   - gcloud CLI にログイン済み（gcloud auth login）※これは「人間」の認証。
#     ここで作られるサービスアカウントは、これ以降は人間のパスワードを一切使わない。
#   - Terraform がインストール済み
#   - 対象プロジェクトの Owner/Editor 権限を持つこと
#
# 使い方:
#   ./setup-service-accounts.sh <app_name> <gcp_project_id>
#   例: ./setup-service-accounts.sh yourwish yourwish-prod-123456
# =============================================================================
set -euo pipefail

APP_NAME="${1:?アプリ名を指定してください（例: yourwish）}"
PROJECT_ID="${2:?GCP プロジェクト ID を指定してください}"

ENV_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../terraform/environments/${APP_NAME}" && pwd)"

if [ ! -d "$ENV_DIR" ]; then
  echo "❌ environments/${APP_NAME} が見つかりません。"
  echo "   infrastructure/terraform/environments/_template/ をコピーして作成してください。"
  exit 1
fi

echo "🔧 [1/4] 必要な GCP API を有効化しています..."
gcloud services enable \
  secretmanager.googleapis.com \
  iam.googleapis.com \
  iamcredentials.googleapis.com \
  sts.googleapis.com \
  --project="${PROJECT_ID}"

echo "🔧 [2/4] Terraform を適用します（サービスアカウント・Secret Manager・WIF を作成）..."
cd "$ENV_DIR"
terraform init
terraform apply -var="project_id=${PROJECT_ID}"

echo "🔧 [3/4] 出力値を取得しています..."
SA_EMAIL=$(terraform output -raw service_account_email)
WIF_PROVIDER=$(terraform output -raw workload_identity_provider)

echo "🔧 [4/4] GitHub リポジトリへの設定案内"
cat <<EOF

✅ サービスアカウントの作成が完了しました。パスワードは一切生成していません。

次にやること（1回だけ、GitHub CLI か Web UI で設定）:

  gh variable set GCP_SERVICE_ACCOUNT --repo zka32101/${APP_NAME} --body "${SA_EMAIL}"
  gh variable set GCP_WIF_PROVIDER    --repo zka32101/${APP_NAME} --body "${WIF_PROVIDER}"

その後、シークレットの「値」を投入してください（このスクリプトでは投入しません。
値は Terraform の state にも残さない設計です）:

  ./infrastructure/scripts/set-secret-value.sh ${APP_NAME} ${PROJECT_ID} revenuecat-api-key

EOF
