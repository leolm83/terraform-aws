output "eks_vpc_config" {
  value = aws_eks_cluster.leolms_terraform_eks_cluster.vpc_config
}
output "oidc" {
  value = data.tls_certificate.eks_oidc_tls_certificate.certificates[*].sha1_fingerprint
}
output "cluster_name" {
  value = aws_eks_cluster.leolms_terraform_eks_cluster.id
}