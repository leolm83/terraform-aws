resource "aws_route_table_association" "leolms_terraform_rt_assossiation_private_subnet_to_1a" {
  subnet_id      = aws_subnet.leolms_terraform_private_subnet_1a.id
  route_table_id = aws_route_table.leolms_terraform_private_subnet_route_table_1a.id
}
resource "aws_route_table_association" "leolms_terraform_rt_assossiation_private_subnet_to_1b" {
  subnet_id      = aws_subnet.leolms_terraform_private_subnet_1b.id
  route_table_id = aws_route_table.leolms_terraform_private_subnet_route_table_1b.id
}