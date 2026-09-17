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

module "yourwish_ci" {
  source     = "../../modules/app-service-account"
  project_id = var.project_id
  app_name   = "yourwish"

  # 値はここに書かない。キー名だけを宣言する
  secrets = [
    "revenuecat-api-key",
    "admob-app-id",
    "firebase-admin-key",
  ]

  ci_repository = "zka32101/yourwish"

  # 追加権限が必要な場合のみ最小限で列挙する（例: Firestore を直接操作する場合）
  additional_roles = []
}

output "service_account_email" {
  value = module.yourwish_ci.service_account_email
}

output "workload_identity_provider" {
  value = module.yourwish_ci.workload_identity_provider
}
