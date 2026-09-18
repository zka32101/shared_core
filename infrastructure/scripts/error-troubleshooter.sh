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
【GCPプロジェクトが見つからない/作成できない】
  add-new-app.sh はプロジェクトが存在しない場合に自動作成を試みるが、それでも
  このエラーになった場合、プロジェクトIDの形式か権限に問題がある可能性が高い。

  対処法:
  - プロジェクトID（プロジェクト名ではなく英数字とハイフンのID、6-30文字）の
    形式を確認する: gcloud projects list --filter="name:<プロジェクト名>"
  - プロジェクトID作成の権限があるか確認する（Organization配下の場合、
    Project Creator ロールが必要な場合がある）:
      gcloud organizations list
      gcloud projects create <project_id> --name="<表示名>" --organization=<ORG_ID>
  - 既に他のユーザーが同じIDを使っている場合はIDを変える（プロジェクトIDは
    全体でグローバルに一意である必要がある）

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

  if echo "$output" | grep -qiE "command not found.*gcloud|command not found.*terraform|command not found.*gh\b|gcloud: command not found|terraform: command not found"; then
    matched=1
    cat <<'EOF'
【gcloud / gh / terraform がこの環境にインストールされていない】
  リモート実行環境（特にネットワーク制限のあるサンドボックス）では、これらの
  CLI がプリインストールされていないことがある。以下で代替できる:

  - terraform: releases.hashicorp.com から直接バイナリを取得
      curl -sS -o terraform.zip \
        https://releases.hashicorp.com/terraform/<version>/terraform_<version>_linux_amd64.zip
      unzip terraform.zip && chmod +x terraform
    （sdk.cloud.google.com や registry.terraform.io がプロキシでブロック
     されている環境では、次の「レジストリ到達不可」パターンも参照）

  - gcloud: pip で Python 版 GCP クライアントライブラリを使う
      pip3 install google-cloud-resource-manager google-cloud-secret-manager google-auth
    （gcloud CLI 自体の公式インストーラ sdk.cloud.google.com がブロック
     されている環境が多いため、CLI自体の導入は諦めて Python/curl で代替する）

  - gh: GitHub REST API を curl で直接叩く（後述の「GitHub Actions パス
     への直接アクセスがプロキシに拒否される」パターンも参照）

EOF
  fi

  if echo "$output" | grep -qiE "could not connect to registry.terraform.io|failed to request discovery document|forbidden.*registry.terraform.io"; then
    matched=1
    cat <<'EOF'
【Terraform provider レジストリ(registry.terraform.io)がプロキシでブロックされている】
  組織のネットワークポリシーで registry.terraform.io への接続が拒否される
  環境がある。releases.hashicorp.com は許可されていることが多いので、
  そこから provider バイナリを直接取得し、filesystem_mirror として使う。

  対処法:
    1. provider バイナリを直接ダウンロード:
       mkdir -p /tmp/tf-mirror/registry.terraform.io/hashicorp/google/<version>/linux_amd64
       curl -sS -o /tmp/provider.zip \
         https://releases.hashicorp.com/terraform-provider-google/<version>/terraform-provider-google_<version>_linux_amd64.zip
       unzip /tmp/provider.zip -d /tmp/tf-mirror/registry.terraform.io/hashicorp/google/<version>/linux_amd64/

    2. ~/.terraformrc (または /root/.terraformrc) を作成:
       provider_installation {
         filesystem_mirror {
           path    = "/tmp/tf-mirror"
           include = ["registry.terraform.io/*/*"]
         }
       }

    3. .terraform ディレクトリと .terraform.lock.hcl を削除してから
       terraform init をやり直す

EOF
  fi

  if echo "$output" | grep -qiE "cannot create projects without a parent|Service accounts cannot create projects"; then
    matched=1
    cat <<'EOF'
【サービスアカウントは親組織/フォルダなしで新規GCPプロジェクトを作成できない】
  人間のユーザーアカウントは自分の直下（no-parent）にプロジェクトを作成
  できるが、サービスアカウントには常に parent（organizations/<ID> または
  folders/<ID>）の指定が必須という GCP 仕様上の制約がある。

  対処法（いずれか）:
  - ブートストラップ用サービスアカウントが属する組織IDを調べて指定する:
      gcloud organizations list
      （または既存プロジェクトの parent を調べる:
       gcloud projects describe <既存project_id> --format="value(parent)"）
    その上でプロジェクト作成時に parent を明示的に渡す。
  - 新規プロジェクトの分離にこだわらないなら、既存の管理用プロジェクトに
    アプリ用のリソース（サービスアカウント・Secret Manager・WIF）を
    同居させる方式に倒す（tfvars の project_id を既存プロジェクトIDにする）。
    課金・IAM境界の分離は失うが、権限昇格なしにすぐ動く。
  - GCP Console から人間が一度だけプロジェクトを作成し、以降のリソース
    管理だけを自動化に任せる。

EOF
  fi

  if echo "$output" | grep -qiE "Access to this GitHub Actions path is not permitted through this proxy"; then
    matched=1
    cat <<'EOF'
【GitHub Actions Variables/Secrets API への直接アクセスがプロキシに拒否される】
  このリモート実行環境のネットワークプロキシは、
  /repos/{owner}/{repo}/actions/variables や .../secrets 配下への直接の
  REST API 呼び出し（curl等）や gh CLI 経由の操作をセキュリティ上ブロック
  している。GitHub MCP ツール群にも Variables/Secrets を設定する機能はない。

  これは回避すべきでない意図的なガードレールなので、以下のいずれかで
  対応する:
  - 人間が手元の端末（gh CLI ログイン済み）で以下を実行する:
      gh variable set <NAME> --repo <owner>/<repo> --body "<value>"
  - GitHub Actions への書き込み権限を持つ別の実行環境（プロキシ制限のない
    セッション等）に依頼する。
  - 対処法をコミット/PR にまとめ、コマンドをそのまま提示して人間に
    実行してもらう。

EOF
  fi

  if echo "$output" | grep -qiE "doesn't match regexp.*a-z0-9|must contain only lowercase letters.*dashes|project display name contains invalid characters"; then
    matched=1
    cat <<'EOF'
【app_name にアンダースコア等、GCPの命名規則で許可されない文字が含まれている】
  サービスアカウントID・Workload Identity Pool ID は
  "^[a-z](?:[-a-z0-9]{4,28}[a-z0-9])$" のように英小文字・数字・ハイフン
  のみ許可され、アンダースコアは使えない（Secret ID 自体はアンダースコア
  を許容するため気づきにくい）。GCPプロジェクトの display_name も同様に
  制約がある。

  対処法:
    tfvars の app_name をハイフン区切りに変更する
    （例: "kokugo_kore" → "kokugo-kore"）。
    tfvars ファイル名自体も add-new-app.sh の規約 (${APP_NAME}.tfvars) に
    合わせてリネームしておくと以後の実行で迷わない。

EOF
  fi

  if echo "$output" | grep -qiE "Unable to load PEM file|Invalid private key|InvalidData.*Invalid symbol"; then
    matched=1
    cat <<'EOF'
【GCPサービスアカウントキーのPEM鍵が壊れている（手動転記によるタイプミスの可能性大）】
  Google Drive等から取得したサービスアカウントキーJSONを、一度読んだ内容を
  見ながら別ファイルに書き写す（Write ツールで手打ちする等）と、長い
  private_key 文字列の一部が転記ミスで欠落・変化し、PEMとして壊れることが
  ある。

  対処法:
  - 取得した base64 コンテンツは、絶対に手動で書き写さず、必ず機械的に
    デコードする:
      echo "<base64文字列>" | base64 -d > /path/to/key.json
    （Google Drive の download_file_content が返す content フィールドは
     base64 エンコード済みなので、1回だけデコードすればよい。
     search_files の contentSnippet は Markdown エスケープ済みの
     プレビュー文字列であり、絶対にこの用途に使わない）
  - デコード後は python3 -c "import json; json.load(open('key.json'))"
    で構造を検証し、さらに service_account.Credentials で実際に認証
    できることを確認してから使う。

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
