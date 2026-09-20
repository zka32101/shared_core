#!/usr/bin/env bash
# =============================================================================
# ワンコマンドで新規アプリのセキュア自動化基盤を追加/確認するスクリプト。
#
# 「アプリ名 + GCPプロジェクトID + GitHubリポジトリ + シークレットキー一覧」を
# 渡すだけで、以下をまとめて実行する:
#   0. まず「現在の登録状況」を確認し、これから自動登録する対象を明記する
#      （この時点では一切書き込みを行わない、読み取り専用の確認ステップ）
#   1. tfvars ファイルを生成/更新（既存なら差分を表示するだけで上書きしない）
#   2. terraform plan で「クラウド側の実際の状態」との差分（不備）を確認し、
#      差分がある場合のみ terraform apply で修正する（差分ゼロなら何もしない）
#   3. GitHub Variables も現在値を確認し、期待値と異なる場合のみ更新する
#   4. release-readiness-check.yml（リリース前チェックの呼び出し設定）が
#      アプリリポジトリに無ければ自動配置する（既にあれば変更しない）
#
# つまり、既に登録済みのアプリに対して再実行しても安全。
# 「新規登録」と「既存登録の確認・不備修正」は同じコマンドで自動判別される。
# これにより、このスクリプトで登録した全アプリが「固定の対象アプリ一覧」を
# 都度更新しなくても、自動的にリリース前チェックの対象になる。
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
#
# 既に登録済みのアプリで再実行した場合:
#   - 引数を変えなければ「差分なし」と表示されるだけで何も変更されない
#   - 新しいサービス/シークレットキーを追加すれば、その分だけ追加される
#   - クラウド側で手動変更されていた場合（ドリフト）も検知して元に戻す
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

既に登録済みのアプリに対して同じコマンドを再実行すると、"登録内容の確認"のみ行い、
クラウド側やGitHub側に不備（差分）がある場合だけ自動で修正します。

実行するとまず「現在の登録状況」（読み取り専用）を表示し、続けて
「これから自動登録する対象」を明記してから、実際の登録処理に進みます。
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
mkdir -p "${TEMPLATE_DIR}/tfvars"

IS_EXISTING=false
if [ -s "${TFVARS_FILE}" ]; then
  IS_EXISTING=true
fi

if [ "$IS_EXISTING" = true ]; then
  echo "🔍 '${APP_NAME}' は既に登録済みです。登録内容を確認します（不備があれば修正します）"
else
  echo "🚀 新規アプリ '${APP_NAME}' のセキュア自動化基盤を構築します"
fi
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

# =============================================================================
# Step 0: 現在の登録状況を確認する（読み取り専用。ここでは一切書き込まない）
# =============================================================================
echo "🔧 [0/5] 現在の登録状況を確認しています（読み取り専用）..."
echo ""

# --- 0a. tfvars（アプリ設定）の現在の状態 ---
if [ "$IS_EXISTING" = true ]; then
  echo "   📄 tfvars: 既存ファイルあり（${TFVARS_FILE}）"
else
  echo "   📄 tfvars: 未作成（このアプリは初回登録です）"
fi

# --- 0b. GCPプロジェクトの現在の状態（作成はしない、確認のみ） ---
PROJECT_EXISTS=false
if gcloud projects describe "${PROJECT_ID}" >/dev/null 2>&1; then
  PROJECT_EXISTS=true
  echo "   ☁️  GCPプロジェクト '${PROJECT_ID}': 既に存在します"
else
  echo "   ☁️  GCPプロジェクト '${PROJECT_ID}': 未作成"
fi

# --- 0c. シークレットの現在の登録状況（値の有無まで確認。箱の作成はしない） ---
if [ ${#SECRET_KEYS[@]} -gt 0 ]; then
  echo ""
  "${SCRIPT_DIR}/check-secrets-status.sh" "${APP_NAME}" "${PROJECT_ID}" "${SECRET_KEYS[@]}"
fi

# --- 0d. GitHub Variables の現在の状態（読み取りのみ） ---
echo "   🐙 GitHub Variables（${GITHUB_REPO}）:"
if command -v gh >/dev/null 2>&1; then
  for var_name in GCP_PROJECT_ID GCP_SERVICE_ACCOUNT GCP_WIF_PROVIDER; do
    current_value="$(gh variable list --repo "${GITHUB_REPO}" --json name,value \
      -q ".[] | select(.name==\"${var_name}\") | .value" 2>/dev/null || true)"
    if [ -n "$current_value" ]; then
      echo "      - ${var_name}: 設定済み"
    else
      echo "      - ${var_name}: 未設定"
    fi
  done
else
  echo "      ⚠️  gh CLI が見つからないため確認をスキップしました"
fi

# --- 0e. release-readiness-check.yml（リリース前チェック呼び出し）の現在の状態 ---
RELEASE_CHECK_PATH=".github/workflows/release-readiness-check.yml"
RELEASE_CHECK_EXISTS=false
echo "   🧪 リリース前チェック（${RELEASE_CHECK_PATH}）:"
if command -v gh >/dev/null 2>&1; then
  if gh api "repos/${GITHUB_REPO}/contents/${RELEASE_CHECK_PATH}" >/dev/null 2>&1; then
    RELEASE_CHECK_EXISTS=true
    echo "      - 既に配置済みです"
  else
    echo "      - 未配置です"
  fi
else
  echo "      ⚠️  gh CLI が見つからないため確認をスキップしました"
fi
echo ""

# --- 現状確認のまとめ: これから自動登録する対象を明記する ---
echo "📋 これから自動登録する対象:"
AUTO_TARGETS_FOUND=false

if [ "$IS_EXISTING" = false ]; then
  echo "   - tfvars ファイルを新規作成します"
  AUTO_TARGETS_FOUND=true
fi

if [ "$PROJECT_EXISTS" = false ]; then
  echo "   - GCPプロジェクト '${PROJECT_ID}' を新規作成します"
  AUTO_TARGETS_FOUND=true
fi

echo "   - GCP API 有効化・Secret Managerの「箱」・サービスアカウント・WIF を"
echo "     terraform plan で確認し、差分があれば自動で作成/修正します"
AUTO_TARGETS_FOUND=true

if [ ${#SECRET_KEYS[@]} -gt 0 ]; then
  echo "   - シークレットの「箱」: 上記の登録状況で「未登録」「箱が存在しない」と"
  echo "     表示されたキーについて、このあとの手順で箱を作成します"
  echo "     （箱の作成のみ自動で行われます。値の入力はユーザーへの確認が必要です）"
fi

echo "   - GitHub Variables（GCP_PROJECT_ID / GCP_SERVICE_ACCOUNT / GCP_WIF_PROVIDER）を"
echo "     期待値と比較し、不一致があれば自動で修正します"

if [ "$RELEASE_CHECK_EXISTS" = false ]; then
  echo "   - ${RELEASE_CHECK_PATH} を新規作成します"
  echo "     （リリース前チェック: pub get/build_runner/analyze厳格チェック/test/"
  echo "     google-services.json整合性を workflow_dispatch から一括実行できるようになります）"
  AUTO_TARGETS_FOUND=true
fi

if [ "$AUTO_TARGETS_FOUND" = false ]; then
  echo "   （対象なし。現状のままで登録済みです）"
fi
echo ""

# =============================================================================
# ここから実際の自動登録処理（Step 1〜4）
# =============================================================================

# --- Step 1: tfvars ファイルを生成し、既存内容との差分を表示 ---
echo "🔧 [1/5] 設定内容(tfvars)を確認しています..."
TFVARS_NEW="$(mktemp)"
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
} > "${TFVARS_NEW}"

if [ "$IS_EXISTING" = true ] && diff -q "${TFVARS_FILE}" "${TFVARS_NEW}" >/dev/null 2>&1; then
  echo "   ✅ tfvars に変更はありません（既存の設定と同一）"
else
  if [ "$IS_EXISTING" = true ]; then
    echo "   ⚠️  tfvars に以下の差分があります:"
    diff -u "${TFVARS_FILE}" "${TFVARS_NEW}" | sed 's/^/     /' || true
  else
    echo "   🆕 新規に tfvars を生成します"
  fi
  cp "${TFVARS_NEW}" "${TFVARS_FILE}"
  echo "   ✅ ${TFVARS_FILE} を更新しました"
fi
rm -f "${TFVARS_NEW}"
echo ""

# --- Step 2: GCPプロジェクト自体の存在確認・自動作成・課金アカウントの自動リンク ---
echo "🔧 [2/5] GCPプロジェクトを確認しています..."
if gcloud projects describe "${PROJECT_ID}" >/dev/null 2>&1; then
  echo "   ✅ GCPプロジェクト '${PROJECT_ID}' は既に存在します"
else
  echo "   🆕 GCPプロジェクト '${PROJECT_ID}' が存在しません。作成します..."
  run_step "GCPプロジェクト作成" gcloud projects create "${PROJECT_ID}" --name="${APP_NAME}"
fi

# 課金アカウントのリンク確認・自動リンク
# （Secret Manager 等の一部APIは課金アカウントのリンクが前提のため）
BILLING_ENABLED="$(gcloud billing projects describe "${PROJECT_ID}" --format="value(billingEnabled)" 2>/dev/null || echo "false")"
if [ "${BILLING_ENABLED}" = "True" ] || [ "${BILLING_ENABLED}" = "true" ]; then
  echo "   ✅ 課金アカウントは既にリンクされています"
else
  mapfile -t OPEN_BILLING_ACCOUNTS < <(gcloud billing accounts list --filter="open=true" --format="value(name)" 2>/dev/null || true)
  case "${#OPEN_BILLING_ACCOUNTS[@]}" in
    0)
      echo "   ⚠️  利用可能な課金アカウントが見つかりません。以下を確認してください:"
      echo "      gcloud billing accounts list"
      echo "      （個人開発の場合、GCP Console で課金アカウントの新規作成が必要な場合があります）"
      ;;
    1)
      echo "   🔗 課金アカウントを自動でリンクします: ${OPEN_BILLING_ACCOUNTS[0]}"
      run_step "課金アカウントのリンク" gcloud billing projects link "${PROJECT_ID}" --billing-account="${OPEN_BILLING_ACCOUNTS[0]#billingAccounts/}"
      ;;
    *)
      echo "   ⚠️  複数の課金アカウントが見つかりました。どれを使うか自動判断できないため、手動でリンクしてください:"
      for ba in "${OPEN_BILLING_ACCOUNTS[@]}"; do
        echo "      - ${ba}"
      done
      echo "      gcloud billing projects link ${PROJECT_ID} --billing-account=<上記のいずれか>"
      ;;
  esac
fi
echo ""

# --- Step 3: 必要なAPIを有効化し、クラウド側の実際の状態を確認して不備があれば修正 ---
echo "🔧 [3/5] クラウド側(GCP)の状態を確認しています..."
run_step "GCP API 有効化" gcloud services enable \
  secretmanager.googleapis.com \
  iam.googleapis.com \
  iamcredentials.googleapis.com \
  sts.googleapis.com \
  cloudresourcemanager.googleapis.com \
  --project="${PROJECT_ID}"

cd "${TEMPLATE_DIR}"
run_step "terraform init" terraform init -input=false

PLAN_FILE="$(mktemp)"
PLAN_LOG="$(mktemp)"
set +e
terraform plan -input=false -detailed-exitcode \
  -var-file="tfvars/${APP_NAME}.tfvars" -out="${PLAN_FILE}" \
  2>&1 | tee "${PLAN_LOG}"
PLAN_EXIT=${PIPESTATUS[0]}
set -e

case "$PLAN_EXIT" in
  0)
    echo "   ✅ 不備はありません。クラウド側は登録内容と一致しています。"
    ;;
  2)
    echo "   ⚠️  以下の不備（クラウド側とのズレ）が見つかりました。自動修正します:"
    run_step "terraform apply(不備を修正)" terraform apply -input=false -auto-approve "${PLAN_FILE}"
    echo "   ✅ 修正を適用しました"
    ;;
  *)
    suggest_fix "terraform plan" "$(cat "${PLAN_LOG}")"
    rm -f "${PLAN_FILE}" "${PLAN_LOG}"
    exit 1
    ;;
esac
rm -f "${PLAN_FILE}" "${PLAN_LOG}"

SA_EMAIL=$(terraform output -raw service_account_email)
WIF_PROVIDER=$(terraform output -raw workload_identity_provider)
echo ""

# --- Step 4: GitHub Variables を確認し、不一致がある場合のみ更新 ---
echo "🔧 [4/5] GitHub リポジトリの Variables を確認しています..."

# GitHub Variables の現在値を取得する（未設定なら空文字を返す）
get_github_variable() {
  local var_name="$1"
  gh variable list --repo "${GITHUB_REPO}" --json name,value \
    -q ".[] | select(.name==\"${var_name}\") | .value" 2>/dev/null || true
}

# 期待値と現在値を比較し、異なる場合のみ set する
check_and_sync_variable() {
  local var_name="$1"
  local expected_value="$2"
  local current_value
  current_value="$(get_github_variable "${var_name}")"

  if [ "$current_value" = "$expected_value" ]; then
    echo "   ✅ ${var_name}: 変更なし"
  elif [ -z "$current_value" ]; then
    echo "   🆕 ${var_name}: 未設定 → 設定します"
    run_step "GitHub Variables 設定(${var_name})" gh variable set "${var_name}" --repo "${GITHUB_REPO}" --body "${expected_value}"
  else
    echo "   ⚠️  ${var_name}: 不一致（クラウド側の実際の値と異なる） → 修正します"
    run_step "GitHub Variables 修正(${var_name})" gh variable set "${var_name}" --repo "${GITHUB_REPO}" --body "${expected_value}"
  fi
}

if command -v gh >/dev/null 2>&1; then
  check_and_sync_variable "GCP_PROJECT_ID" "${PROJECT_ID}"
  check_and_sync_variable "GCP_SERVICE_ACCOUNT" "${SA_EMAIL}"
  check_and_sync_variable "GCP_WIF_PROVIDER" "${WIF_PROVIDER}"
else
  echo "   ⚠️  gh CLI が見つかりません。以下を手動で実行してください:"
  echo ""
  echo "   gh variable set GCP_PROJECT_ID      --repo ${GITHUB_REPO} --body \"${PROJECT_ID}\""
  echo "   gh variable set GCP_SERVICE_ACCOUNT --repo ${GITHUB_REPO} --body \"${SA_EMAIL}\""
  echo "   gh variable set GCP_WIF_PROVIDER    --repo ${GITHUB_REPO} --body \"${WIF_PROVIDER}\""
fi
echo ""

# =============================================================================
# Step 5: release-readiness-check.yml をアプリリポジトリに自動配置
#
# これにより、このスクリプトで登録した全アプリが「固定の対象アプリ一覧」を
# 手作業で更新しなくても、自動的にリリース前チェック
# （pub get / build_runner / analyze厳格チェック / test /
#   google-services.json整合性）の対象になる。
# 既に配置済みの場合は変更しない（アプリ側で内容をカスタマイズしていても上書きしない）。
# =============================================================================
echo "🔧 [5/5] release-readiness-check.yml の呼び出し設定を確認しています..."

if command -v gh >/dev/null 2>&1; then
  if [ "$RELEASE_CHECK_EXISTS" = true ]; then
    echo "   ✅ ${RELEASE_CHECK_PATH} は既に配置済みです（変更しません）"
  else
    echo "   🆕 ${RELEASE_CHECK_PATH} が存在しないため新規作成します"
    WORKFLOW_CONTENT="name: Release Readiness Check

# リリース前チェックを一括実行する。実体は shared_core の再利用可能ワークフロー。
# 実行方法: Actionsタブ → \"Release Readiness Check\" → Run workflow

on:
  workflow_dispatch:

jobs:
  check:
    uses: zka32101/shared_core/.github/workflows/release-readiness-check.yml@main
    with:
      flutter_version: '3.x'
"
    ENCODED_CONTENT="$(printf '%s' "${WORKFLOW_CONTENT}" | base64 | tr -d '\n')"
    run_step "release-readiness-check.yml 作成" gh api "repos/${GITHUB_REPO}/contents/${RELEASE_CHECK_PATH}" \
      --method PUT \
      -f message="feat: リリース前チェック(shared_core reusable workflow)の呼び出しを追加" \
      -f content="${ENCODED_CONTENT}" \
      -f branch="main"
    echo "   ✅ ${RELEASE_CHECK_PATH} を作成しました（mainブランチに直接コミット）"
    echo "      Flutterバージョンがこのアプリ独自の場合は、後で手動で書き換えてください"
  fi
else
  echo "   ⚠️  gh CLI が見つからないため配置をスキップしました。手動で以下を配置してください:"
  echo "      ${RELEASE_CHECK_PATH}"
fi

cat <<EOF

✅ '${APP_NAME}' の確認が完了しました（不備があった箇所のみ修正済み）。
   パスワード・長期鍵ファイルは一切生成していません。

EOF

# シークレットの値を「ユーザーに聞くべきか」「既存値の確認だけで良いか」を
# 自動判別する。呼び出し側（Claudeセッション等）は、ここで「既に登録済み」と
# 表示されたキーについてはユーザーに値を聞き直さず、確認だけを求めること。
if [ ${#SECRET_KEYS[@]} -gt 0 ]; then
  echo "🔁 登録処理後の最終状況（Step 0 の確認と比較してください）:"
  "${SCRIPT_DIR}/check-secrets-status.sh" "${APP_NAME}" "${PROJECT_ID}" "${SECRET_KEYS[@]}"
fi

cat <<EOF

アプリ側のワークフローからの呼び出し方は SECURE_MULTI_APP_SETUP.md を参照してください。
EOF
