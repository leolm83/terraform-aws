resource "aws_internet_gateway" "leolms-terraform-igw" {
  vpc_id = aws_vpc.eks_vpc.id

  tags = merge(local.tags,
    {
      Name = "${var.project_name}-igw"
    }
  )
}