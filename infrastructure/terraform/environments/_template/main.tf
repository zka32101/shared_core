# =============================================================================
# 新しいアプリを追加する手順:
#   1. このディレクトリを infrastructure/terraform/environments/<app_name>/ にコピー
#   2. app_name, secrets, ci_repository を書き換える
#   3. terraform init && terraform plan で確認
#   4. terraform apply で適用（要 GCP 権限）
#   5. 出力された service_account_email / workload_identity_provider を
#      対象リポジトリの GitHub Actions ワークフローに設定する
#      （値そのものは Secret ではないので GitHub Variables でも可）
# =============================================================================

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

variable "project_id" {
  type = string
}

variable "region" {
  type    = string
  default = "asia-northeast1"
}

module "app_ci" {
  source     = "../../modules/app-service-account"
  project_id = var.project_id
  app_name   = "REPLACE_ME" # 例: "shogi_app"

  secrets = [
    # 例: "revenuecat-api-key", "admob-app-id"
  ]

  ci_repository = "zka32101/REPLACE_ME" # 例: "zka32101/shogi_app"

  additional_roles = []
}

output "service_account_email" {
  value = module.app_ci.service_account_email
}

output "workload_identity_provider" {
  value = module.app_ci.workload_identity_provider
}
