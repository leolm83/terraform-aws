output "public_subnet_1a" {
  value = module.leolm_terraform_network.public_subnet_1a
}
output "public_subnet_1b" {
  value = module.leolm_terraform_network.public_subnet_1b
}
output "private_subnet_1a" {
  value = module.leolm_terraform_network.private_subnet_1a
}
output "private_subnet_1b" {
  value = module.leolm_terraform_network.private_subnet_1b
}
output "eks_vpc_config" {
  value = module.leolm_terraform_eks_cluster.eks_vpc_config
}
output "oidc" {
  value = module.leolm_terraform_eks_cluster.oidc
}
output "teste" {
  value = "teste"
}