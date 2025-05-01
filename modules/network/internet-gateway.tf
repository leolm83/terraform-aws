resource "aws_internet_gateway" "leolms-terraform-igw" {
  vpc_id = aws_vpc.eks_vpc.id

  tags = merge(var.tags,
    {
      Name = "${var.project_name}-igw"
    }
  )
}