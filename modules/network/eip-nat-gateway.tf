resource "aws_eip" "leolm_terraform_nat_gateway_eip_1a" {
  domain = "vpc"
  tags = merge(var.tags,
    {
      Name = "${var.project_name}-nat-gateway-eip-1a"
    }
  )
  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.leolms-terraform-igw]
}
resource "aws_eip" "leolm_terraform_nat_gateway_eip_1b" {
  domain = "vpc"
  tags = merge(var.tags,
    {
      Name = "${var.project_name}-nat-gateway-eip-1b"
    }
  )
  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.leolms-terraform-igw]
}