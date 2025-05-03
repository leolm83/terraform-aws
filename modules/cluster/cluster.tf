resource "aws_eks_cluster" "leolms_terraform_eks_cluster" {
  name = "${var.project_name}-cluster"

  access_config {
    authentication_mode = "API"
  }

  role_arn = aws_iam_role.leolms_terraform_eks_cluster_role.arn
  version  = "1.31"

  vpc_config {
    subnet_ids = [
      var.public_subnet_1a,
      var.public_subnet_1b
    ]
    endpoint_private_access = true
    endpoint_public_access  = true
  }

  # Ensure that IAM Role permissions are created before and deleted
  # after EKS Cluster handling. Otherwise, EKS will not be able to
  # properly delete EKS managed EC2 infrastructure such as Security Groups.
  depends_on = [
    aws_iam_role_policy_attachment.eks_cluster_role_attachment,
  ]
  tags = merge(
    var.tags, {
      Name = "${var.project_name}-eks-cluster",

    }
  )
}