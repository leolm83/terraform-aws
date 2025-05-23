resource "aws_route_table" "leolms_terraform_private_subnet_route_table_1a" {
  vpc_id = aws_vpc.eks_vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.leolms_terraform_nat_gateway_1a.id
  }
  tags = merge(var.tags,
    {
      Name = "${var.project_name}-private-route-table-1a"
    }
  )
}