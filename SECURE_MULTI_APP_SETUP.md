# 複数アプリ・複数リポジトリ セキュア自動化ガイド

RevenueCat / AdMob / Google Play Console / Firebase などの認証情報を、
**人間のパスワードを使わず**、複数アプリ・複数リポジトリで安全に自動化するための実装。

## 設計原則

1. **人間のログインパスワードは初期セットアップの1回のみ**（`gcloud auth login`）
2. **長期の JSON 鍵ファイルは作らない** — Workload Identity Federation (WIF) で
   GitHub Actions から一時トークンを発行する
3. **アプリごとに専用サービスアカウント** — 1つの漏洩が全アプリに波及しない
4. **シークレットの値は Git にもログにも残さない** — Secret Manager に一元管理
5. **Production リリースは自動化しない** — 人間の最終承認を必須にする

## 管理者アカウント

Google Cloud / Firebase / Google Play Console / AdMob の管理者アカウント（人間がログインする側）は
**すべて `yourwishdev@gmail.com` に統一**する。

- `gcloud auth login` はこのアカウントで実行する（初期セットアップ時のみ）
- Firebase プロジェクト作成・Play Console でのアプリ登録・AdMob アカウント作成も同アカウントで行う
- 複数アプリを1つの Google アカウント配下で「プロジェクト」として管理する構成（本ドキュメント冒頭の設計原則どおり）
- **このアカウント自体のログインパスワードは、CI/CD や自動化スクリプトのどこにも登場しない** — 自動化は本ドキュメントの Terraform モジュールが作る専用サービスアカウント + Workload Identity Federation 経由でのみ行う

再発防止のため、新しい GCP プロジェクトやアプリを追加する際は、この管理者アカウントで作業したことを
`infrastructure/terraform/environments/<app_name>/main.tf` 追加時のコミットメッセージ等に記録しておくとよい。

## ディレクトリ構成

```
shared_core/
├── infrastructure/
│   ├── terraform/
│   │   ├── modules/app-service-account/   # 再利用可能なTerraformモジュール
│   │   └── environments/
│   │       ├── yourwish/                  # yourwish 用の設定（個別ディレクトリ方式・旧）
│   │       ├── goen/                      # goen 用の設定（個別ディレクトリ方式・旧）
│   │       └── _template/                 # 汎用環境（tfvars駆動・コピー不要・推奨）
│   │           └── tfvars/<app>.tfvars    # アプリごとの設定値（add-new-app.shが自動生成）
│   └── scripts/
│       ├── add-new-app.sh                 # 【推奨】ワンコマンドで新規アプリ追加
│       ├── setup-service-accounts.sh      # 個別ディレクトリ方式の初期セットアップ（旧）
│       └── set-secret-value.sh            # シークレット値の投入・更新
└── .github/workflows/
    ├── secure-secrets-inject.yml          # 再利用可能: Secret取得
    └── play-store-deploy.yml              # 再利用可能: Play Store配布
```

## 新しいアプリを追加する手順（ワンコマンド・推奨）

アプリ名・GCPプロジェクトID・GitHubリポジトリ・シークレットキー一覧を渡すだけで、
tfvars生成 → `terraform apply` → GitHub Variables 設定まで1コマンドで完了する。

```bash
cd shared_core/infrastructure/scripts
./add-new-app.sh <app_name> <gcp_project_id> <github_repo> [secret_key ...]

# 例
./add-new-app.sh shogi_app shogi-app-prod-123456 zka32101/shogi_app \
    revenuecat-api-key admob-app-id firebase-admin-key
```

これで以下がまとめて実行される（人間のパスワード・長期鍵ファイルは一切生成しない）:
1. `infrastructure/terraform/environments/_template/tfvars/<app_name>.tfvars` を自動生成
2. 必要な GCP API 有効化 + `terraform apply`（専用サービスアカウント・Secret Manager の箱・WIF を作成）
3. GitHub リポジトリの Variables（`GCP_PROJECT_ID` / `GCP_SERVICE_ACCOUNT` / `GCP_WIF_PROVIDER`）を `gh` CLI で自動設定

最後に、シークレットの実際の値だけ投入する（これは自動化できない — 値そのものを人間が知っている必要があるため）:
```bash
echo -n "実際のAPIキー" | ./set-secret-value.sh <app_name> <gcp_project_id> revenuecat-api-key
```

**前提**: `gcloud auth login`（管理者アカウント `yourwishdev@gmail.com` で1回だけ）と `gh auth login` が済んでいること。

**既存アプリへのシークレット追加**は、同じコマンドを新しいシークレットキー付きで再実行すればよい
（Terraform は差分適用なので既存のサービスアカウントやシークレットは壊れない）。

## 新しいアプリを追加する手順（詳細に制御したい場合）

ワンコマンドではなく、各ステップを個別に確認しながら進めたい場合の手順。

### 1. GCP プロジェクトを用意
既存の GCP プロジェクトを使うか、新規作成する（1アプリ1プロジェクトを推奨）。

### 2. tfvars ファイルを作成
```bash
cd shared_core/infrastructure/terraform/environments/_template
cp tfvars/example.tfvars.sample tfvars/<新アプリ名>.tfvars
# project_id, app_name, ci_repository, secrets を編集
```
（`environments/yourwish`, `environments/goen` のように専用ディレクトリを作る旧方式も動作するが、
新規アプリではこの tfvars 方式を推奨する — ディレクトリコピーが不要になる）

### 3. Terraform を適用（人間が1回だけ実行）
```bash
cd shared_core/infrastructure/terraform/environments/_template
terraform init
terraform apply -var-file="tfvars/<新アプリ名>.tfvars"
```
これで以下が自動生成される（パスワード不要）:
- 専用サービスアカウント
- Secret Manager の箱（値は空）
- Workload Identity Federation（GitHub Actions 用の鍵ファイル不要認証）

### 4. GitHub リポジトリに変数を設定
```bash
gh variable set GCP_SERVICE_ACCOUNT --repo zka32101/<新アプリ名> --body "$(terraform output -raw service_account_email)"
gh variable set GCP_WIF_PROVIDER    --repo zka32101/<新アプリ名> --body "$(terraform output -raw workload_identity_provider)"
```

### 5. シークレットの値を投入
```bash
cd shared_core/infrastructure/scripts
echo -n "実際のAPIキー" | ./set-secret-value.sh <新アプリ名> <GCPプロジェクトID> revenuecat-api-key
```

### 6. アプリ側のワークフローから呼び出す
```yaml
# <新アプリ>/.github/workflows/build.yml
jobs:
  secrets:
    uses: zka32101/shared_core/.github/workflows/secure-secrets-inject.yml@main
    permissions:
      id-token: write
      contents: read
    with:
      app_name: <新アプリ名>
      gcp_project_id: ${{ vars.GCP_PROJECT_ID }}
      gcp_service_account: ${{ vars.GCP_SERVICE_ACCOUNT }}
      gcp_wif_provider: ${{ vars.GCP_WIF_PROVIDER }}
      secret_keys: "revenuecat-api-key,admob-app-id"

  build:
    needs: secrets
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Build with secrets
        env:
          SECRETS_JSON: ${{ needs.secrets.outputs.secrets_json }}
        run: |
          REVENUECAT_API_KEY=$(echo "$SECRETS_JSON" | jq -r '.REVENUECAT_API_KEY')
          flutter build apk --dart-define=REVENUECAT_API_KEY=$REVENUECAT_API_KEY
```

## Google Play Console への配布

Internal Testing までは完全自動化、Production は手動必須:

```yaml
jobs:
  deploy_internal:
    uses: zka32101/shared_core/.github/workflows/play-store-deploy.yml@main
    permissions:
      id-token: write
      contents: read
    with:
      app_name: yourwish
      gcp_project_id: ${{ vars.GCP_PROJECT_ID }}
      gcp_service_account: ${{ vars.GCP_SERVICE_ACCOUNT }}
      gcp_wif_provider: ${{ vars.GCP_WIF_PROVIDER }}
      package_name: com.petitworks.yourwish
      track: internal   # production を指定すると自動的に失敗する（guard job）
      aab_path: build/app/outputs/bundle/release/app-release.aab
```

Production への反映は、Google Play Console の Web UI で人間が
「内部テストで問題ないことを確認 → 本番昇格」を手動操作する。

## サービス別の対応状況

| サービス | 自動化方式 | パスワード不要 | Production自動化 |
|---------|-----------|:---:|:---:|
| Google Cloud | サービスアカウント + WIF | ✅ | ✅ |
| Firebase | サービスアカウント (Admin SDK) | ✅ | ✅ |
| Secret Manager | サービスアカウント + WIF | ✅ | ✅ |
| RevenueCat | API キー（Secret Managerで管理） | ✅ | ✅ |
| AdMob | OAuth2 サービスアカウント | ✅ | ⚠️ 広告有効化は手動推奨 |
| Google Play Console | Play Developer API + サービスアカウント | ✅ | ❌ 手動承認必須 |
| Apple Developer | — | — | ❌ Web UI 自動化は規約違反 |

## やってはいけないこと

- ❌ 複数アプリで同じパスワードを使い回す
- ❌ サービスアカウントの JSON 鍵ファイルを GitHub Secrets に長期保存する
  （漏洩リスクが高い。WIF で代替できる場合は必ず WIF を使う）
- ❌ Google Play Console / Apple Developer の Web UI をスクレイピングする
- ❌ Production リリースを人間の確認なしに自動実行する
- ❌ シークレットの値を Terraform ファイルや Git にコミットする

## 関連ドキュメント

- [goen/KNOWN_ISSUES_AND_SOLUTIONS.md](https://github.com/zka32101/goen) — 個別アプリでの既知の問題と対策
- [Google Cloud Workload Identity Federation 公式ドキュメント](https://cloud.google.com/iam/docs/workload-identity-federation)
