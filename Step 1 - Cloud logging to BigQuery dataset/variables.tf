variable "project_id" {
  type = string
  description = "The project id"  
}

variable "dataset_name" {
  type = string
  default = "NTSA"
  description = "Bigquery dataset for Cloud IDS & Cloud Armor logs"
}

variable "dataset_location" {
  type = string
  default = "US"
  description = "Bigquery dataset location"
}

variable "log_router_name" {
  type = string
  default = "NTSA"
  description = "Log router name"
}