variable "project_id" {}
variable "dataset_name" {}
variable "dataset_location" {}

resource "google_bigquery_dataset" "dataset" {
    project                     = var.project_id
    dataset_id                  = var.dataset_name
    friendly_name               = "NTSA"
    description                 = "NTSA dataset"
    location                    = var.dataset_location
    delete_contents_on_destroy  = true
}

resource "google_bigquery_dataset_iam_member" "editor" {
    project    = var.project_id
    dataset_id = google_bigquery_dataset.dataset.dataset_id
    role       = "roles/bigquery.dataEditor"
    member     = "serviceAccount:ntsa-looker-sa@${var.project_id}.iam.gserviceaccount.com"
}