variable "project_id" {
  type = string
  description = "The project id"  
}

variable "vpc_name" {
  type = string
  description = "Name of the VPC where you want to deploy Cloud IDS"  
}

variable "global_ip_name" {
  type = string
  default = "iprange1"
  description = "The global ip name"  
}