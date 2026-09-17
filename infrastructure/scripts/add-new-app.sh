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
#   ./add-new-app.sh <app_name> <gcp_project_id> <github_repo> [--services <name,...>] [secret_key ...]
#   ./add-new-app.sh --list-services
#
# よく使うサービスは --services でまとめて指定できる（個別キーを打つ必要がない）:
#   ./add-new-app.sh shogi_app shogi-app-prod-123456 zka32101/shogi_app \
#       --services standard,twitter
#
#   standard = revenuecat + admob + firebase + play_console（アプリの基本セット）
#   利用可能な全プリセットは --list-services で確認できる。
#
# --services と個別キーは併用できる（両方展開して重複は自動的に除去される）:
#   ./add-new-app.sh shogi_app shogi-app-prod-123456 zka32101/shogi_app \
#       --services standard custom-webhook-secret
# =============================================================================
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=./service-presets.sh
source "${SCRIPT_DIR}/service-presets.sh"
# shellcheck source=./error-troubleshooter.sh
source "${SCRIPT_DIR}/error-troubleshooter.sh"

print_usage() {
  cat <<'USAGE'
使い方:
  ./add-new-app.sh <app_name> <gcp_project_id> <github_repo> [--services <name,...>] [secret_key ...]
  ./add-new-app.sh --list-services

例:
  # 個別キーを直接指定
  ./add-new-app.sh shogi_app shogi-app-prod-123456 zka32101/shogi_app \
      revenuecat-api-key admob-app-id firebase-admin-key

  # よく使うサービスをプリセットでまとめて指定（推奨）
  ./add-new-app.sh shogi_app shogi-app-prod-123456 zka32101/shogi_app \
      --services standard,twitter

  # 利用可能なプリセット一覧を確認
  ./add-new-app.sh --list-services
USAGE
}

if [ "${1:-}" = "--list-services" ]; then
  list_service_presets
  exit 0
fi

if [ "$#" -lt 3 ]; then
  print_usage
  exit 1
fi

APP_NAME="$1"
PROJECT_ID="$2"
GITHUB_REPO="$3"
shift 3

# --- 残りの引数を解析: --services <names> と個別キーを両方受け付ける ---
declare -a EXPLICIT_KEYS=()
SERVICES_ARG=""

while [ "$#" -gt 0 ]; do
  case "$1" in
    --services)
      SERVICES_ARG="${2:?--services には値が必要です（例: standard,twitter）}"
      shift 2
      ;;
    --services=*)
      SERVICES_ARG="${1#--services=}"
      shift
      ;;
    *)
      EXPLICIT_KEYS+=("$1")
      shift
      ;;
  esac
done

declare -a SECRET_KEYS=()
if [ -n "$SERVICES_ARG" ]; then
  resolve_service_presets "$SERVICES_ARG"
  SECRET_KEYS+=("${RESOLVED_SECRET_KEYS[@]}")
fi
SECRET_KEYS+=("${EXPLICIT_KEYS[@]}")

# 重複除去（同じキーが --services と個別指定の両方に出た場合など）
if [ ${#SECRET_KEYS[@]} -gt 0 ]; then
  mapfile -t SECRET_KEYS < <(printf '%s\n' "${SECRET_KEYS[@]}" | awk '!seen[$0]++')
fi

TEMPLATE_DIR="$(cd "${SCRIPT_DIR}/../terraform/environments/_template" && pwd)"
TFVARS_FILE="${TEMPLATE_DIR}/tfvars/${APP_NAME}.tfvars"

echo "🚀 新規アプリ '${APP_NAME}' のセキュア自動化基盤を構築します"
echo "   GCP プロジェクト   : ${PROJECT_ID}"
echo "   GitHub リポジトリ : ${GITHUB_REPO}"
if [ -n "$SERVICES_ARG" ]; then
  echo "   サービスプリセット : ${SERVICES_ARG}"
fi
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
# 失敗した場合は run_step が error-troubleshooter.sh の suggest_fix を呼び、
# エラー内容から考えられる原因と具体的な対処コマンドを提示してから終了する。
echo "🔧 [2/3] GCP API を有効化し、Terraform を適用します..."
run_step "GCP API 有効化" gcloud services enable \
  secretmanager.googleapis.com \
  iam.googleapis.com \
  iamcredentials.googleapis.com \
  sts.googleapis.com \
  cloudresourcemanager.googleapis.com \
  --project="${PROJECT_ID}"

cd "${TEMPLATE_DIR}"
run_step "terraform init" terraform init -input=false
run_step "terraform apply" terraform apply -input=false -auto-approve -var-file="tfvars/${APP_NAME}.tfvars"

SA_EMAIL=$(terraform output -raw service_account_email)
WIF_PROVIDER=$(terraform output -raw workload_identity_provider)
echo ""

# --- Step 3: GitHub Variables に自動設定 ---
echo "🔧 [3/3] GitHub リポジトリの Variables を設定しています..."
if command -v gh >/dev/null 2>&1; then
  run_step "GitHub Variables 設定(GCP_PROJECT_ID)"      gh variable set GCP_PROJECT_ID      --repo "${GITHUB_REPO}" --body "${PROJECT_ID}"
  run_step "GitHub Variables 設定(GCP_SERVICE_ACCOUNT)" gh variable set GCP_SERVICE_ACCOUNT --repo "${GITHUB_REPO}" --body "${SA_EMAIL}"
  run_step "GitHub Variables 設定(GCP_WIF_PROVIDER)"    gh variable set GCP_WIF_PROVIDER    --repo "${GITHUB_REPO}" --body "${WIF_PROVIDER}"
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
