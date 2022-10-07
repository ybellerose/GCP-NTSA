variable "project_id" {}
variable "vpc_name" {}
variable "global_ip_name" {}

resource "google_compute_global_address" "private_ip_range" {
    project       = var.project_id
    name          = var.global_ip_name
    purpose       = "VPC_PEERING"
    address_type  = "INTERNAL"
    prefix_length = 24
    network       = var.vpc_name
}

resource "google_service_networking_connection" "private_service_connect" {
    network                 = "projects/${var.project_id}/global/networks/${var.vpc_name}"
    service                 = "servicenetworking.googleapis.com"
    reserved_peering_ranges = [google_compute_global_address.private_ip_range.name]
}