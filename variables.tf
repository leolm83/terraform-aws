variable "cidr_block" {
  type        = string
  description = "Network CIDR block to be used for the VPC"
}
variable "project_name" {
  type        = string
  description = "Project name to be used to name the resources (Name tag)"
}
variable "my_ip_cidr" {
  type        = string
  description = "My current Public IP"
}