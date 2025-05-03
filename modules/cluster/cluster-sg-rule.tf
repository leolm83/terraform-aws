resource "aws_vpc_security_group_ingress_rule" "eks_sg_rule" {
  security_group_id = aws_eks_cluster.leolms_terraform_eks_cluster.vpc_config[0].cluster_security_group_id
  # todo testar
  # cidr_ipv4   = "0.0.0.0/0"
  cidr_ipv4   = var.my_ip_cidr
  from_port   = 443
  ip_protocol = "tcp"
  to_port     = 443
}