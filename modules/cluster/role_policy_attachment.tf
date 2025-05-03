resource "aws_iam_role_policy_attachment" "eks_cluster_role_attachment" {
  role       = aws_iam_role.leolms_terraform_eks_cluster_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSCLusterPolicy"
}