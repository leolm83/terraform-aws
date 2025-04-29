resource "aws_nat_gateway" "leolms_terraform_nat_gateway_1a" {
  allocation_id = aws_eip.leolm_terraform_nat_gateway_eip_1a.id
  subnet_id     = aws_subnet.leolms_terraform_public_subnet_1a.id

  tags = merge(local.tags,
    {
      Name = "${var.project_name}-nat-gateway-1a"
    }
  )

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.leolms-terraform-igw]
}

resource "aws_nat_gateway" "leolms_terraform_nat_gateway_1b" {
  allocation_id = aws_eip.leolm_terraform_nat_gateway_eip_1b.id
  subnet_id     = aws_subnet.leolms_terraform_public_subnet_1b.id

  tags = merge(local.tags,
    {
      Name = "${var.project_name}-nat-gateway-1b"
    }
  )

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.leolms-terraform-igw]
}