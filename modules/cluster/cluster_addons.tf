resource "aws_eks_addon" "leolms_terraform_addons_vpc_cni" {
  cluster_name = aws_eks_cluster.leolms_terraform_eks_cluster.name
  addon_name   = "vpc-cni"
}
resource "aws_eks_addon" "leolms_terraform_addons_kube_proxy" {
  cluster_name = aws_eks_cluster.leolms_terraform_eks_cluster.name
  addon_name   = "kube-proxy"
}
resource "aws_eks_addon" "leolms_terraform_addons_coredns" {
  cluster_name = aws_eks_cluster.leolms_terraform_eks_cluster.name
  addon_name   = "coredns"
}
