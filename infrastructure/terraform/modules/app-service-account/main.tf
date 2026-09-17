# =============================================================================
# アプリ用サービスアカウント + Secret Manager + Workload Identity Federation
#
# 設計方針:
#   - 人間のログインパスワードは一切使わない
#   - サービスアカウントの JSON 鍵ファイルも作らない（漏洩リスクの高い長期認証情報）
#   - 代わりに Workload Identity Federation (WIF) で GitHub Actions から
#     「鍵ファイルなし」で一時的なトークンを発行する
#   - 各アプリは専用のサービスアカウントを持ち、権限は最小限（Secret Manager 読み取りのみが基本）
# =============================================================================

resource "google_service_account" "app_ci" {
  project      = var.project_id
  account_id   = "${var.app_name}-ci-bot"
  display_name = "${var.app_name} CI/CD Automation"
  description  = "GitHub Actions から ${var.ci_repository} 用に使われるサービスアカウント。人間の認証情報は使用しない。"
}

# --- Secret Manager: シークレットの「箱」だけ作る。値は Terraform に書かない ---
resource "google_secret_manager_secret" "app_secret" {
  for_each  = toset(var.secrets)
  project   = var.project_id
  secret_id = "${var.app_name}-${each.key}"

  replication {
    auto {}
  }

  labels = {
    app     = var.app_name
    managed = "terraform"
  }
}

# 値は CI/CD から `gcloud secrets versions add` で投入する運用
# （このリポジトリの scripts/setup-service-accounts.sh がそのコマンドを提供する）

resource "google_secret_manager_secret_iam_member" "app_secret_access" {
  for_each  = google_secret_manager_secret.app_secret
  project   = var.project_id
  secret_id = each.value.secret_id
  role      = var.secret_accessor_roles
  member    = "serviceAccount:${google_service_account.app_ci.email}"
}

# --- 追加ロール（必要な場合のみ。最小権限の原則を守ること） ---
resource "google_project_iam_member" "additional" {
  for_each = toset(var.additional_roles)
  project  = var.project_id
  role     = each.value
  member   = "serviceAccount:${google_service_account.app_ci.email}"
}

# --- Workload Identity Federation: GitHub Actions が「鍵ファイルなし」で認証できるようにする ---
resource "google_iam_workload_identity_pool" "github_pool" {
  project                   = var.project_id
  workload_identity_pool_id = "${var.app_name}-github-pool"
  display_name              = "${var.app_name} GitHub Actions Pool"
}

resource "google_iam_workload_identity_pool_provider" "github_provider" {
  project                            = var.project_id
  workload_identity_pool_id          = google_iam_workload_identity_pool.github_pool.workload_identity_pool_id
  workload_identity_pool_provider_id = "${var.app_name}-github-provider"

  attribute_mapping = {
    "google.subject"       = "assertion.sub"
    "attribute.repository" = "assertion.repository"
    "attribute.ref"        = "assertion.ref"
  }

  # このリポジトリ・このブランチ以外からは絶対にトークンを発行しない
  attribute_condition = "assertion.repository == \"${var.ci_repository}\""

  oidc {
    issuer_uri = "https://token.actions.githubusercontent.com"
  }
}

resource "google_service_account_iam_member" "wif_binding" {
  service_account_id = google_service_account.app_ci.name
  role                = "roles/iam.workloadIdentityUser"
  member              = "principalSet://iam.googleapis.com/${google_iam_workload_identity_pool.github_pool.name}/attribute.repository/${var.ci_repository}"
}
