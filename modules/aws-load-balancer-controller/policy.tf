resource "aws_iam_role" "eks_controller_policy" {
  name = "AWSLoadBalancerControllerIAMPolicy"

  assume_role_policy = file("${path.module}/iam_policy.json")

  tags = merge(var.tags,
    {
      Name = "${var.project_name}-manually-created-role"
  })
}