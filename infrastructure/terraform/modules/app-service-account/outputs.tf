output "service_account_email" {
  description = "GitHub Actions の workflow で使うサービスアカウントのメールアドレス"
  value       = google_service_account.app_ci.email
}

output "workload_identity_provider" {
  description = "GitHub Actions の `google-github-actions/auth` に渡す workload_identity_provider の値"
  value       = google_iam_workload_identity_pool_provider.github_provider.name
}

output "secret_ids" {
  description = "作成された Secret Manager シークレットの ID 一覧"
  value       = { for k, v in google_secret_manager_secret.app_secret : k => v.secret_id }
}
