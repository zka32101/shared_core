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
│       ├── service-presets.sh             # よく使うサービスのシークレットキープリセット定義
│       ├── error-troubleshooter.sh        # 失敗時にエラー内容から対処法を提示
│       ├── setup-service-accounts.sh      # 個別ディレクトリ方式の初期セットアップ（旧）
│       ├── set-secret-value.sh            # シークレット値の投入・更新
│       ├── check-secrets-status.sh        # 既存登録／未登録の自動判別（値の聞き直し防止）
│       ├── ensure-firebase-app.sh         # Firebaseアプリ登録の自動確認・自動登録
│       └── ensure-revenuecat-app.sh       # RevenueCatアプリ登録の自動確認・自動登録
└── .github/workflows/
    ├── secure-secrets-inject.yml          # 再利用可能: Secret取得
    ├── play-store-deploy.yml              # 再利用可能: Play Store配布
    └── release-readiness-check.yml        # 再利用可能: リリース前チェック一括実行
                                            #（add-new-app.shが各アプリに呼び出し設定を自動配置）
```

## 新しいアプリを追加する手順（ワンコマンド・推奨）

アプリ名・GCPプロジェクトID・GitHubリポジトリ・シークレットキー一覧を渡すだけで、
tfvars生成 → `terraform apply` → GitHub Variables 設定まで1コマンドで完了する。

```bash
cd shared_core/infrastructure/scripts
./add-new-app.sh <app_name> <gcp_project_id> <github_repo> [--services <name,...>] [secret_key ...]

# 例1: 個別キーを直接指定
./add-new-app.sh shogi_app shogi-app-prod-123456 zka32101/shogi_app \
    revenuecat-api-key admob-app-id firebase-admin-key

# 例2: よく使うサービスをプリセットでまとめて指定（推奨・こちらが簡単）
./add-new-app.sh shogi_app shogi-app-prod-123456 zka32101/shogi_app \
    --services standard,twitter
```

これで以下がまとめて実行される（人間のパスワード・長期鍵ファイルは一切生成しない）:
1. `infrastructure/terraform/environments/_template/tfvars/<app_name>.tfvars` を自動生成
2. **GCPプロジェクト自体の確認・自動作成** — 指定した `<gcp_project_id>` がまだ存在しなければ
   `gcloud projects create` で新規作成する。さらに課金アカウントも確認し、
   - 有効な課金アカウントが1つだけ → 自動でリンク
   - 0個 → 「課金アカウントが必要」と案内（自動化不可。GCP Consoleでの作成が必要）
   - 2個以上 → どれを使うか自動判断できないため一覧を出して手動リンクを案内
3. 必要な GCP API 有効化 + `terraform apply`（専用サービスアカウント・Secret Manager の箱・WIF を作成）
4. GitHub リポジトリの Variables（`GCP_PROJECT_ID` / `GCP_SERVICE_ACCOUNT` / `GCP_WIF_PROVIDER`）を `gh` CLI で自動設定
5. **`release-readiness-check.yml`（リリース前チェックの呼び出し設定）が
   アプリリポジトリに無ければ自動配置する**（`gh api` でリポジトリに直接コミット。
   既に配置済みなら変更しない）。これにより、「固定の対象アプリ一覧」を手作業で
   増やさなくても、`add-new-app.sh` で登録した全アプリが自動的に
   `pub get` / `build_runner` / `flutter analyze`（error 0件必須）/ `flutter test` /
   `google-services.json` 整合性チェックを `workflow_dispatch` から実行できるようになる

つまり、**まだ存在しないGCPプロジェクトIDを渡しても、そのプロジェクトの作成から自動で行われる**
（既に存在するプロジェクトIDを渡した場合はスキップされ、既存アプリの確認・不備修正の対象になる）。

最後に、シークレットの実際の値を投入する（これは自動化できない — 値そのものを人間が知っている必要があるため）:
```bash
echo -n "実際のAPIキー" | ./set-secret-value.sh <app_name> <gcp_project_id> revenuecat-api-key
```

`add-new-app.sh` は実行の最後に `check-secrets-status.sh` を自動で呼び出し、各シークレットキーが
**既に登録済みか／未登録か**を自動判別して表示する。

> ⚠️ **重要（Claude セッションなど呼び出し側の運用ルール）**:
> `check-secrets-status.sh` が「✅ 既に登録済み」と表示したキーについては、
> ユーザーに AdMob ID・RevenueCat キーなどの**値を聞き直してはいけない**。
> 代わりに「〇〇は既に登録されています（最終更新: yyyy-mm-dd）。今の値のままで
> 問題ないか確認してください」という**確認依頼**をユーザーに送ること。
> 「🆕 未登録」と表示されたキーについてのみ、実際の値をユーザーに尋ねて
> `set-secret-value.sh` で登録する。
>
> 単体で確認したい場合:
> ```bash
> ./check-secrets-status.sh <app_name> <gcp_project_id> <secret_key> [secret_key ...]
> ```

**前提**: `gcloud auth login`（管理者アカウント `yourwishdev@gmail.com` で1回だけ）と `gh auth login` が済んでいること。
新規プロジェクト作成には、この管理者アカウントに Organization 配下でのプロジェクト作成権限
（`roles/resourcemanager.projectCreator` 等）が必要。

## Firebase / RevenueCat の「アプリ登録自体」の自動確認・自動登録

`check-secrets-status.sh` は Secret Manager に**値が入っているか**を確認するだけで、
Firebase や RevenueCat の**ダッシュボード側にそのアプリが実際に登録されているか**は
別問題。この確認・登録を自動化するのが以下の2スクリプト。動作方針は
`check-secrets-status.sh` と同じ:

- ✅ 既に登録済み → 表示するだけ（重複作成しない）。呼び出し側は
  ユーザーに「この登録内容のままで良いか」の確認だけを依頼すること。
- 🆕 未登録 → 対象サービスのAPIで自動的に作成する（人間の追加操作は不要）。

### Firebase: `ensure-firebase-app.sh`

Firebase Management API を使い、GCPプロジェクトへのFirebase追加・
Android/iOSアプリの登録を自動確認・自動作成する。

```bash
./ensure-firebase-app.sh <app_name> <gcp_project_id> android <package_name>
./ensure-firebase-app.sh <app_name> <gcp_project_id> ios <bundle_id>

# 例:
./ensure-firebase-app.sh kokugo-kore shougakukore android com.yourwish.shougakukore.kokugo
```

前提: `gcloud auth login` 済みで、対象GCPプロジェクトに対する Firebase Admin 権限
（`roles/firebase.admin` 等）を持つこと。追加の人間操作は不要。

### RevenueCat: `ensure-revenuecat-app.sh`

RevenueCat REST API v2 を使い、プロジェクト・アプリの存在確認と自動作成を行う。
既存アプリのSDK用公開APIキーが取れた場合は `check-secrets-status.sh` と連動して
Secret Manager (`revenuecat-api-key`) への登録状況もあわせて確認する。

```bash
export REVENUECAT_SECRET_API_KEY="sk_xxxxx"  # RevenueCatダッシュボードで人間が1回だけ発行
./ensure-revenuecat-app.sh <app_name> <gcp_project_id> play_store <package_name>
./ensure-revenuecat-app.sh <app_name> <gcp_project_id> app_store <bundle_id>
```

> ⚠️ **`ensure-revenuecat-app.sh` はネットワークアクセスのない環境で作成されたため、
> RevenueCat API v2 のリクエスト/レスポンス形式が公式ドキュメントで未検証**。
> 初回実行時にAPIエラーが出た場合は、スクリプト内のエンドポイント・フィールド名を
> [RevenueCat公式ドキュメント](https://www.revenuecat.com/docs/api-v2) と照合して
> 修正すること。動作確認が取れたら、この注記は削除してよい。

いずれも `app_name` / `gcp_project_id` / プラットフォーム / パッケージ名（バンドルID）を
引数に取る汎用スクリプトなので、特定のアプリに固定されない。開発中の全アプリ
（yourwish, goen, kokugo-kore, sansu-kore 等）で同じコマンドを使い回せる。

## 既に登録済みのアプリに対する動作（確認・不備修正）

`add-new-app.sh` は「新規登録」と「既存登録の確認・不備修正」を同じコマンドで自動判別する。
既に `tfvars/<app_name>.tfvars` があるアプリに対して実行すると、次のように動く:

1. **tfvars の確認** — 指定した引数から生成した内容と既存ファイルを比較し、差分があれば
   表示してから更新する（引数を変えていなければ「変更なし」と表示されるだけ）
2. **クラウド側(GCP)の確認** — `terraform plan` で実際のリソースとの差分を確認する
   - 差分なし → 「不備はありません」と表示して終了（`apply` は実行しない）
   - 差分あり（誰かが手動でリソースを変更した等） → 差分を表示し、`terraform apply` で
     自動修正する
3. **GitHub Variables の確認** — 各変数（`GCP_PROJECT_ID` / `GCP_SERVICE_ACCOUNT` /
   `GCP_WIF_PROVIDER`）の現在値を取得し、期待値と比較する
   - 一致 → 「変更なし」
   - 未設定 → 新規設定
   - 不一致（誰かが手動で書き換えた等） → 修正
4. **`release-readiness-check.yml` の確認** — アプリリポジトリに既にあるか `gh api` で確認する
   - あり → 「変更しません」（アプリ側でカスタマイズしていても上書きしない）
   - なし → 新規作成（`workflow_dispatch` から呼び出す13行程度のファイル）

つまり、**「登録済みかどうか分からないアプリ」でも、同じコマンドを実行するだけで
安全に確認・修正できる**（変更が無ければ何もしない。壊れることはない）。

```bash
# 既存アプリの確認（前回と同じ引数で再実行するだけ）
./add-new-app.sh shogi_app shogi-app-prod-123456 zka32101/shogi_app --services standard

# 出力例（不備なし）:
#   🔍 'shogi_app' は既に登録済みです。登録内容を確認します（不備があれば修正します）
#   ...
#   ✅ tfvars に変更はありません（既存の設定と同一）
#   ✅ 不備はありません。クラウド側は登録内容と一致しています。
#   ✅ GCP_PROJECT_ID: 変更なし
#   ✅ GCP_SERVICE_ACCOUNT: 変更なし
#   ✅ GCP_WIF_PROVIDER: 変更なし

# 出力例（新しいサービスを追加した場合）:
#   ⚠️  tfvars に以下の差分があります: ...（追加されたシークレットキーがdiff表示される）
#   ⚠️  以下の不備（クラウド側とのズレ）が見つかりました。自動修正します: ...
```

**既存アプリへのシークレット追加**も同じ仕組みで対応できる。同じコマンドを新しいサービス/
シークレットキー付きで再実行すればよい（Terraform は差分適用なので既存のサービスアカウントや
シークレットは壊れない）。

## サービスプリセット一覧

`--services` に指定できるプリセット。一覧はいつでも `./add-new-app.sh --list-services` で確認できる。

```bash
./add-new-app.sh --list-services
```

| サービス名 | 説明 | 展開されるキー |
|---|---|---|
| `revenuecat` | サブスクリプション・課金管理 | `revenuecat-api-key` |
| `admob` | Google AdMob 広告 | `admob-app-id`, `admob-banner-ad-unit-id`, `admob-interstitial-ad-unit-id`, `admob-rewarded-ad-unit-id` |
| `firebase` | Firebase Admin SDK（サーバーサイド） | `firebase-admin-key` |
| `play_console` | Google Play Console 配布（Play Developer API） | `play-console-sa-key` |
| `app_store_connect` | Apple App Store Connect 配布（API） | `app-store-connect-api-key`, `app-store-connect-issuer-id`, `app-store-connect-key-id` |
| `twitter` | Twitter/X API v2 連携 | `twitter-bearer-token`, `twitter-api-key`, `twitter-api-secret`, `twitter-access-token`, `twitter-access-token-secret` |
| `facebook` | Facebook/Meta Graph API 連携 | `facebook-app-id`, `facebook-app-secret`, `facebook-access-token` |
| `line` | LINE Messaging API 連携 | `line-channel-id`, `line-channel-secret`, `line-channel-access-token` |
| `sentry` | Sentry エラートラッキング | `sentry-dsn` |
| `onesignal` | OneSignal プッシュ通知 | `onesignal-app-id`, `onesignal-api-key` |
| `slack` | Slack 通知（Webhook） | `slack-webhook-url` |

**複合グループ**（よくある組み合わせをまとめて指定できる）:

| グループ名 | 展開されるサービス |
|---|---|
| `standard` | `revenuecat` + `admob` + `firebase` + `play_console`（アプリの基本セット） |
| `sns` | `twitter` + `facebook` + `line` |
| `monitoring` | `sentry` + `slack` |

`--services` と個別キーは併用できる: `--services standard,twitter custom-webhook-secret`

**新しいプリセットを追加したい場合**は `infrastructure/scripts/service-presets.sh` の
`SERVICE_PRESET_KEYS` / `SERVICE_PRESET_DESC`（必要なら `SERVICE_PRESET_GROUPS`）に1行追加するだけでよい。

## 登録に失敗した場合（エラー診断）

`add-new-app.sh` の各ステップ（GCP API有効化 / `terraform init` / `terraform apply` /
GitHub Variables 設定）は失敗すると、生のエラーを表示するだけでなく、
`infrastructure/scripts/error-troubleshooter.sh` が出力内容を既知パターンと照合して
**原因と具体的な対処コマンド**を自動で提示する。

現在カバーしているパターン:

| パターン | 想定される原因 |
|---|---|
| 権限不足 (`PERMISSION_DENIED` 等) | 管理者アカウントにOwner/Editorロールがない |
| API未有効化 | Terraformが使うAPIがプロジェクトで無効 |
| 課金未リンク | GCPプロジェクトに課金アカウントが紐付いていない |
| リソース重複 (`already exists`) | 前回実行の途中失敗、または別途作成済み |
| プロジェクト不明 | プロジェクトIDのtypo、または未作成 |
| GitHub CLI未認証 | `gh auth login` が必要 |
| GitHubリポジトリ不明 | リポジトリ名のtypo、または未作成 |
| GitHubへの権限不足 | Variables設定にAdmin/Write権限が必要 |
| Terraform state ロック | 前回実行が異常終了しロックが残留 |

いずれにも一致しない場合は「未知のエラーパターン」として、
`error-troubleshooter.sh` へのパターン追加方法（コードスニペット付き）を案内する
ので、次に同じエラーが起きたときは自動で対処法が出るようになる。

**新しいパターンを追加したい場合**は `error-troubleshooter.sh` の `suggest_fix()` に
以下の形式で1ブロック追加するだけでよい:
```bash
if echo "$output" | grep -qiE "<エラーの特徴的な文字列>"; then
  matched=1
  cat <<'EOF'
【<エラーの種類>】
  <原因の説明>

  対処法:
    <具体的なコマンドや手順>
EOF
fi
```

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

### 7. リリース前チェックを追加

`add-new-app.sh` が自動配置する内容と同じもの。手作業で追加する場合:

```yaml
# <新アプリ>/.github/workflows/release-readiness-check.yml
name: Release Readiness Check

on:
  workflow_dispatch:

jobs:
  check:
    uses: zka32101/shared_core/.github/workflows/release-readiness-check.yml@main
    with:
      flutter_version: '3.x'   # アプリ固有のバージョンがあれば書き換える
```

Actionsタブから手動実行すると、`pub get` / `build_runner` / `flutter analyze`（errorレベル0件必須）/
`flutter test` / Android `applicationId` と `google-services.json` の整合性を一括確認できる。

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

| サービス | 自動化方式 | パスワード不要 | アプリ登録自体の自動化 | Production自動化 |
|---------|-----------|:---:|:---:|:---:|
| Google Cloud | サービスアカウント + WIF | ✅ | — | ✅ |
| Firebase | サービスアカウント (Admin SDK) | ✅ | ✅ `ensure-firebase-app.sh` | ✅ |
| Secret Manager | サービスアカウント + WIF | ✅ | — | ✅ |
| RevenueCat | API キー（Secret Managerで管理） | ✅ | ✅ `ensure-revenuecat-app.sh`（要動作確認） | ✅ |
| AdMob | OAuth2 サービスアカウント | ✅ | ❌ アプリ新規作成はAPI未提供 | ⚠️ 広告有効化は手動推奨 |
| Google Play Console | Play Developer API + サービスアカウント | ✅ | ❌ アプリ新規作成はAPI未提供 | ❌ 手動承認必須 |
| Apple Developer | — | — | ❌ | ❌ Web UI 自動化は規約違反 |

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
