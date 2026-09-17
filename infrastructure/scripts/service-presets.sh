#!/usr/bin/env bash
# =============================================================================
# サービスプリセット定義
#
# よく使われる外部サービスごとに、必要なシークレットキー名をまとめたもの。
# add-new-app.sh から `source` して使う（単体実行はしない）。
#
# 新しいプリセットを追加する場合は SERVICE_PRESET_KEYS / SERVICE_PRESET_DESC
# の両方に1行追加するだけでよい。
# =============================================================================

# サービス名 -> スペース区切りのシークレットキー名一覧
declare -A SERVICE_PRESET_KEYS=(
  [revenuecat]="revenuecat-api-key"
  [admob]="admob-app-id admob-banner-ad-unit-id admob-interstitial-ad-unit-id admob-rewarded-ad-unit-id"
  [firebase]="firebase-admin-key"
  [play_console]="play-console-sa-key"
  [app_store_connect]="app-store-connect-api-key app-store-connect-issuer-id app-store-connect-key-id"
  [twitter]="twitter-bearer-token twitter-api-key twitter-api-secret twitter-access-token twitter-access-token-secret"
  [facebook]="facebook-app-id facebook-app-secret facebook-access-token"
  [line]="line-channel-id line-channel-secret line-channel-access-token"
  [sentry]="sentry-dsn"
  [onesignal]="onesignal-app-id onesignal-api-key"
  [slack]="slack-webhook-url"
)

# サービス名 -> 説明（--list 表示・ドキュメント生成用）
declare -A SERVICE_PRESET_DESC=(
  [revenuecat]="サブスクリプション・課金管理"
  [admob]="Google AdMob 広告（バナー/インタースティシャル/リワード）"
  [firebase]="Firebase Admin SDK（サーバーサイド）"
  [play_console]="Google Play Console 配布（Play Developer API）"
  [app_store_connect]="Apple App Store Connect 配布（API）"
  [twitter]="Twitter/X API v2 連携"
  [facebook]="Facebook/Meta Graph API 連携"
  [line]="LINE Messaging API 連携"
  [sentry]="Sentry エラートラッキング"
  [onesignal]="OneSignal プッシュ通知"
  [slack]="Slack 通知（Webhook）"
)

# 複合プリセット：よくある組み合わせをまとめて指定できる
declare -A SERVICE_PRESET_GROUPS=(
  [standard]="revenuecat admob firebase play_console"
  [sns]="twitter facebook line"
  [monitoring]="sentry slack"
)

# 引数のサービス名・グループ名リスト（カンマ区切り）を実際のシークレットキー配列に展開する
# 使い方: resolve_service_presets "revenuecat,admob,standard"
# 結果はグローバル変数 RESOLVED_SECRET_KEYS (配列) にセットされる
resolve_service_presets() {
  local input="$1"
  local -a services=()
  IFS=',' read -ra services <<< "$input"

  RESOLVED_SECRET_KEYS=()
  local -a expanded_services=()

  for svc in "${services[@]}"; do
    svc="$(echo "$svc" | xargs)" # trim
    [ -z "$svc" ] && continue
    if [ -n "${SERVICE_PRESET_GROUPS[$svc]:-}" ]; then
      # グループ名 -> 展開
      for sub in ${SERVICE_PRESET_GROUPS[$svc]}; do
        expanded_services+=("$sub")
      done
    else
      expanded_services+=("$svc")
    fi
  done

  for svc in "${expanded_services[@]}"; do
    if [ -z "${SERVICE_PRESET_KEYS[$svc]:-}" ]; then
      echo "⚠️  未知のサービス名: '${svc}' — スキップします（--list-services で一覧確認）" >&2
      continue
    fi
    for key in ${SERVICE_PRESET_KEYS[$svc]}; do
      RESOLVED_SECRET_KEYS+=("$key")
    done
  done
}

# プリセット一覧を表示する
list_service_presets() {
  local -a sorted_svcs=()
  mapfile -t sorted_svcs < <(printf '%s\n' "${!SERVICE_PRESET_DESC[@]}" | sort)

  local -a sorted_grps=()
  mapfile -t sorted_grps < <(printf '%s\n' "${!SERVICE_PRESET_GROUPS[@]}" | sort)

  echo "利用可能なサービスプリセット:"
  echo ""
  echo "【個別サービス】"
  for svc in "${sorted_svcs[@]}"; do
    printf "  %-20s %s\n      keys: %s\n" "$svc" "${SERVICE_PRESET_DESC[$svc]}" "${SERVICE_PRESET_KEYS[$svc]}"
  done
  echo ""
  echo "【複合グループ】"
  for grp in "${sorted_grps[@]}"; do
    printf "  %-20s -> %s\n" "$grp" "${SERVICE_PRESET_GROUPS[$grp]}"
  done
}
