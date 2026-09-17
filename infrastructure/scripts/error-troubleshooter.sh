#!/usr/bin/env bash
# =============================================================================
# エラー診断・実装案の提示
#
# add-new-app.sh の各ステップ（gcloud / terraform / gh）が失敗した際に、
# 出力内容を既知のエラーパターンと照合し、「何が原因で・次に何をすべきか」を
# 具体的なコマンド付きで提示する。add-new-app.sh から `source` して使う。
#
# 新しいパターンを追加する場合は、下の if ブロックを1つ増やすだけでよい
# （検出できなかった場合の案内にも、その追加方法自体を書いている）。
# =============================================================================

# run_step <ステップ名> <コマンド...>
# コマンドを実行し、リアルタイムに出力を画面に流しつつ、失敗時は
# suggest_fix にキャプチャした出力を渡す。成功時は何もしない。
run_step() {
  local step_name="$1"
  shift
  local log_file
  log_file="$(mktemp)"

  set +e
  "$@" 2>&1 | tee "$log_file"
  local exit_code=${PIPESTATUS[0]}
  set -e

  if [ "$exit_code" -ne 0 ]; then
    suggest_fix "$step_name" "$(cat "$log_file")"
    rm -f "$log_file"
    exit "$exit_code"
  fi
  rm -f "$log_file"
}

# suggest_fix <ステップ名> <出力全文>
suggest_fix() {
  local step_name="$1"
  local output="$2"

  echo ""
  echo "❌ [${step_name}] が失敗しました。"
  echo ""
  echo "--- エラー内容（末尾20行） ---"
  echo "$output" | tail -20
  echo "-----------------------------"
  echo ""
  echo "💡 考えられる原因と対処法:"
  echo ""

  local matched=0

  if echo "$output" | grep -qiE "permission.?denied|does not have permission|caller does not have permission"; then
    matched=1
    cat <<'EOF'
【権限不足】
  管理者アカウント(yourwishdev@gmail.com)がこのGCPプロジェクトの Owner/Editor
  ロールを持っていない可能性があります。

  対処法:
    gcloud projects add-iam-policy-binding <project_id> \
      --member="user:yourwishdev@gmail.com" \
      --role="roles/owner"

  それでも失敗する場合、組織ポリシーでロール付与自体が制限されている可能性が
  あります。GCP Console の IAM 画面で該当プロジェクトの権限を確認してください。

EOF
  fi

  if echo "$output" | grep -qiE "has not been used in project|is disabled|API .* not enabled|SERVICE_DISABLED"; then
    matched=1
    cat <<'EOF'
【必要な API が有効化されていない】
  Terraform が使う API がプロジェクトで無効化されています。

  対処法:
    gcloud services enable secretmanager.googleapis.com iam.googleapis.com \
      iamcredentials.googleapis.com sts.googleapis.com \
      cloudresourcemanager.googleapis.com --project=<project_id>

  有効化直後は反映まで数分かかることがあるので、失敗したら1-2分待って
  add-new-app.sh を再実行してください（Terraform は差分適用なので安全）。

EOF
  fi

  if echo "$output" | grep -qiE "billing account|BILLING_DISABLED|has no billing|billing is not enabled"; then
    matched=1
    cat <<'EOF'
【課金アカウントが未リンク】
  このGCPプロジェクトに課金アカウントが紐付いていません（Secret Managerや
  一部APIの有効化には課金アカウントのリンクが必須です）。

  対処法:
    gcloud billing accounts list
    gcloud billing projects link <project_id> --billing-account=<BILLING_ACCOUNT_ID>

  （個人開発の場合、GCP Console で新規プロジェクト作成時に課金アカウントを
   選択するのが簡単です）

EOF
  fi

  if echo "$output" | grep -qiE "already exists|Requested entity already exists|Error 409"; then
    matched=1
    cat <<'EOF'
【リソースが既に存在する】
  サービスアカウントや Workload Identity Pool が既に存在しています。

  ケース別の対処法:
  - 前回の実行が途中で失敗し、一部だけ作成された
    → もう一度 add-new-app.sh を実行する（Terraform の差分適用で残りだけ
       作成される。既存分は壊れない）
  - 別の方法（Console等）で同名のリソースを既に作っていた
    → terraform import で既存リソースを state に取り込む必要がある:
       cd infrastructure/terraform/environments/_template
       terraform import module.app_ci.google_service_account.app_ci \
         "projects/<project_id>/serviceAccounts/<app_name>-ci-bot@<project_id>.iam.gserviceaccount.com"

EOF
  fi

  if echo "$output" | grep -qiE "project .* not found|PROJECT_NOT_FOUND|Unable to find project|does not exist"; then
    matched=1
    cat <<'EOF'
【GCPプロジェクトが見つからない】
  指定したプロジェクトIDが存在しません。

  対処法:
  - プロジェクトID（プロジェクト名ではなく英数字とハイフンのID）を確認する:
      gcloud projects list --filter="name:<プロジェクト名>"
  - 新規プロジェクトの場合は先に作成する:
      gcloud projects create <project_id> --name="<表示名>"

EOF
  fi

  if echo "$output" | grep -qiE "gh: To use|You are not logged into any GitHub hosts|401 Unauthorized|gh auth login"; then
    matched=1
    cat <<'EOF'
【GitHub CLI が未認証】
  gh CLI がログインしていません。

  対処法:
    gh auth login

  その後 add-new-app.sh を再実行してください（GCPリソースは既に作成済みの
  場合、terraform apply は no-op になり、GitHub Variables 設定だけやり直
  されます）。

EOF
  fi

  if echo "$output" | grep -qiE "Could not resolve to a Repository|repository not found|GraphQL: Could not resolve"; then
    matched=1
    cat <<'EOF'
【GitHubリポジトリが見つからない】
  指定したリポジトリ名が間違っているか、gh CLI のアカウントからアクセス
  できません。

  対処法:
  - owner/repo の形式を確認する（例: zka32101/shogi_app）
  - リポジトリがまだ存在しない場合は先に作成する:
      gh repo create <owner>/<repo> --private

EOF
  fi

  if echo "$output" | grep -qiE "HTTP 403|Resource not accessible by integration"; then
    matched=1
    cat <<'EOF'
【GitHubへの権限不足】
  gh CLI でログインしているアカウントに、このリポジトリの Variables を
  設定する権限（Admin/Write）がありません。

  対処法:
  - リポジトリの Settings > Collaborators and teams で権限を確認する
  - Organization 配下のリポジトリの場合、Organization 側の権限設定も確認する

EOF
  fi

  if echo "$output" | grep -qiE "Error acquiring the state lock|state lock"; then
    matched=1
    cat <<'EOF'
【Terraform state がロックされている】
  前回の実行が異常終了し、state ロックが残っている可能性があります。

  対処法（本当に他に実行中のプロセスがないことを確認してから）:
    cd infrastructure/terraform/environments/_template
    terraform force-unlock <LOCK_ID>
  （LOCK_ID はエラーメッセージ内に表示されている）

EOF
  fi

  if [ "$matched" -eq 0 ]; then
    cat <<EOF
【未知のエラーパターン】
  既知のパターンに一致しませんでした。上記の「エラー内容」を確認し、
  以下を検討してください:

  1. エラーメッセージの特徴的な部分をそのまま検索する
     （Terraform / gcloud / gh の公式ドキュメント、GitHub Issues）
  2. このエラーが再現するものなら、infrastructure/scripts/error-troubleshooter.sh
     に新しいパターンを追加しておくと、次回以降は自動で対処法が出るようになる:

       if echo "\$output" | grep -qiE "<エラーの特徴的な文字列>"; then
         matched=1
         cat <<'PATTERN_EOF'
       【<エラーの種類>】
         <原因の説明>

         対処法:
           <具体的なコマンドや手順>
       PATTERN_EOF
       fi

  3. 上記で解決しない場合は、この出力内容をそのまま開発者（このセッション）
     に伝えてください。実装案を検討します。
EOF
  fi
  echo ""
}
