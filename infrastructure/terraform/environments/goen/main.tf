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

module "goen_ci" {
  source     = "../../modules/app-service-account"
  project_id = var.project_id
  app_name   = "goen"

  secrets = [
    "revenuecat-api-key",
    "twitter-bearer-token",
    "facebook-access-token",
    "instagram-access-token",
    "firebase-admin-key",
  ]

  ci_repository = "zka32101/goen"

  additional_roles = []
}

output "service_account_email" {
  value = module.goen_ci.service_account_email
}

output "workload_identity_provider" {
  value = module.goen_ci.workload_identity_provider
}
