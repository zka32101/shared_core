# =============================================================================
# 汎用アプリ環境（コピー不要・tfvars駆動）
#
# このディレクトリ自体をコピーする必要はない。新しいアプリを追加するには
# tfvars/<app_name>.tfvars を1つ作り、以下を実行するだけでよい:
#
#   terraform init
#   terraform apply -var-file=tfvars/<app_name>.tfvars
#
# ワンコマンドで済ませたい場合は scripts/add-new-app.sh を使う（tfvars生成 →
# terraform apply → GitHub Variables 設定までを自動化）。
#
# 既存の environments/yourwish, environments/goen は個別ディレクトリのまま
# 残してよい（後方互換）。新規アプリはこの汎用ディレクトリを使うことを推奨する。
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
  description = "GCP プロジェクト ID"
  type        = string
}

variable "region" {
  type    = string
  default = "asia-northeast1"
}

variable "app_name" {
  description = "アプリ識別名（例: yourwish, goen, shogi_app）"
  type        = string
}

variable "secrets" {
  description = "このアプリで使うシークレットのキー一覧（値は含めない）"
  type        = list(string)
  default     = []
}

variable "ci_repository" {
  description = "GitHub リポジトリ（owner/repo 形式）"
  type        = string
}

variable "additional_roles" {
  description = "追加で付与するIAMロール（通常は空のままでよい）"
  type        = list(string)
  default     = []
}

module "app_ci" {
  source            = "../../modules/app-service-account"
  project_id        = var.project_id
  app_name          = var.app_name
  secrets           = var.secrets
  ci_repository     = var.ci_repository
  additional_roles  = var.additional_roles
}

output "service_account_email" {
  value = module.app_ci.service_account_email
}

output "workload_identity_provider" {
  value = module.app_ci.workload_identity_provider
}

output "secret_ids" {
  value = module.app_ci.secret_ids
}
