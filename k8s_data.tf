data "aws_eks_cluster_auth" "current" {
  name = module.leolm_terraform_eks_cluster.cluster_name
}
data "aws_eks_cluster" "current" {
  name = module.leolm_terraform_eks_cluster.cluster_name
}