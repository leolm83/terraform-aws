module "leolm_terraform_network" {
  source       = "./modules/network"
  cidr_block   = var.cidr_block
  project_name = var.project_name
}