
module "apis" {
  source      = "./apis"
  project_id = var.project_id
}

module "vpc" {
  source            = "./vpc"
  project_id        = var.project_id
  vpc_name          = var.vpc_name
  global_ip_name    = var.global_ip_name
  depends_on  = [
    module.apis
  ]
}