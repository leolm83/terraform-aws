resource "aws_route_table" "leolms_terraform_public_subnet_route_table" {
  vpc_id = aws_vpc.eks_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.leolms-terraform-igw.id
  }
  tags = merge(local.tags,
    {
      Name = "${var.project_name}-public-route-table"
    }
  )
}