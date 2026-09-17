#!/usr/bin/env bash
# =============================================================================
# シークレット値の投入・更新スクリプト
#
# RevenueCat / AdMob / Firebase 等の API キーを Secret Manager に登録する。
# 値は標準入力から渡す（シェル履歴やプロセス一覧に平文が残らないようにするため）。
#
# 使い方:
#   echo -n "実際のAPIキー" | ./set-secret-value.sh <app_name> <gcp_project_id> <secret_key>
#   例: echo -n "sk_xxx..." | ./set-secret-value.sh yourwish yourwish-prod-123456 revenuecat-api-key
#
# 対話的に入力したい場合:
#   ./set-secret-value.sh yourwish yourwish-prod-123456 revenuecat-api-key
#   (プロンプトが表示されるので、その場でペーストして Enter → Ctrl+D)
# =============================================================================
set -euo pipefail

APP_NAME="${1:?アプリ名を指定してください}"
PROJECT_ID="${2:?GCP プロジェクト ID を指定してください}"
SECRET_KEY="${3:?シークレットキー名を指定してください（例: revenuecat-api-key）}"

SECRET_ID="${APP_NAME}-${SECRET_KEY}"

if [ -t 0 ]; then
  echo "🔑 シークレット値を入力してください（Enter → Ctrl+D で確定）:"
fi

gcloud secrets versions add "${SECRET_ID}" \
  --project="${PROJECT_ID}" \
  --data-file=-

echo "✅ ${SECRET_ID} に新しいバージョンを追加しました。"
echo "   値そのものはターミナル履歴・Terraform state・Gitのどこにも残りません。"
