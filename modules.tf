module "leolm_terraform_network" {
  source       = "./modules/network"
  cidr_block   = var.cidr_block
  project_name = var.project_name
  tags         = local.tags
}
module "leolm_terraform_eks_cluster" {
  source           = "./modules/cluster"
  project_name     = var.project_name
  tags             = local.tags
  public_subnet_1a = module.leolm_terraform_network.public_subnet_1a
  public_subnet_1b = module.leolm_terraform_network.public_subnet_1b
  my_ip_cidr       = var.my_ip_cidr
}
module "leolm_terraform_managed_node_group" {
  source            = "./modules/managed-node-group"
  project_name      = var.project_name
  tags              = local.tags
  cluster_name      = module.leolm_terraform_eks_cluster.cluster_name
  private_subnet_1a = module.leolm_terraform_network.private_subnet_1a
  private_subnet_1b = module.leolm_terraform_network.private_subnet_1b
}
