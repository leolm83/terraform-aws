resource "kubernetes_service_account" "leolms_terraform_service_account" {
  metadata {
    name      = "aws-load-balancer-controller"
    namespace = "kube-system"
    annotations = {
      "eks.amazonaws.com/role-arn" = aws_iam_role.eks_controller_policy.arn
    }
  }
}