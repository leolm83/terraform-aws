resource "aws_iam_role_policy_attachment" "eks_mng_role_attachment_worker" {
  role       = aws_iam_role.leolms_terraform_eks_mng_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
}
resource "aws_iam_role_policy_attachment" "eks_mng_role_attachment_ecr" {
  role       = aws_iam_role.leolms_terraform_eks_mng_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
}

resource "aws_iam_role_policy_attachment" "eks_mng_role_attachment_cni" {
  role       = aws_iam_role.leolms_terraform_eks_mng_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
}