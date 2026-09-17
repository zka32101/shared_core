variable "project_id" {
  description = "GCP プロジェクト ID（アプリごとに1つ）"
  type        = string
}

variable "app_name" {
  description = "アプリ識別名（例: yourwish, goen）。サービスアカウント名に使用"
  type        = string
}

variable "secrets" {
  description = "このアプリで使うシークレットのキー一覧（値は含めない。値は別途 gcloud/CI で投入）"
  type        = list(string)
  default     = []
}

variable "secret_accessor_roles" {
  description = "Secret Manager へのアクセスを許可するロール（最小権限: accessor のみ推奨）"
  type        = string
  default     = "roles/secretmanager.secretAccessor"
}

variable "additional_roles" {
  description = "サービスアカウントに追加で付与するロール一覧（必要最小限に留めること）"
  type        = list(string)
  default     = []
}

variable "ci_repository" {
  description = "このサービスアカウントを使う GitHub リポジトリ（owner/repo）。Workload Identity Federation 用"
  type        = string
}
