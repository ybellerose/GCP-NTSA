variable "project_id" {}

resource "google_service_account" "service_account" {
    project  = var.project_id
    account_id   = "ntsa-looker-sa"
    display_name = "Looker Service account for Network threat Security assessment"
}