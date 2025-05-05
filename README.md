<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.96.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 3.0.0-pre2 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.36.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.96.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_eks_aws_load_balancer_controller"></a> [eks\_aws\_load\_balancer\_controller](#module\_eks\_aws\_load\_balancer\_controller) | ./modules/aws-load-balancer-controller | n/a |
| <a name="module_leolm_terraform_eks_cluster"></a> [leolm\_terraform\_eks\_cluster](#module\_leolm\_terraform\_eks\_cluster) | ./modules/cluster | n/a |
| <a name="module_leolm_terraform_managed_node_group"></a> [leolm\_terraform\_managed\_node\_group](#module\_leolm\_terraform\_managed\_node\_group) | ./modules/managed-node-group | n/a |
| <a name="module_leolm_terraform_network"></a> [leolm\_terraform\_network](#module\_leolm\_terraform\_network) | ./modules/network | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_eks_cluster.current](https://registry.terraform.io/providers/hashicorp/aws/5.96.0/docs/data-sources/eks_cluster) | data source |
| [aws_eks_cluster_auth.current](https://registry.terraform.io/providers/hashicorp/aws/5.96.0/docs/data-sources/eks_cluster_auth) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | Network CIDR block to be used for the VPC | `string` | n/a | yes |
| <a name="input_my_ip_cidr"></a> [my\_ip\_cidr](#input\_my\_ip\_cidr) | My current Public IP | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Project name to be used to name the resources (Name tag) | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_eks_vpc_config"></a> [eks\_vpc\_config](#output\_eks\_vpc\_config) | n/a |
| <a name="output_oidc"></a> [oidc](#output\_oidc) | n/a |
| <a name="output_private_subnet_1a"></a> [private\_subnet\_1a](#output\_private\_subnet\_1a) | n/a |
| <a name="output_private_subnet_1b"></a> [private\_subnet\_1b](#output\_private\_subnet\_1b) | n/a |
| <a name="output_public_subnet_1a"></a> [public\_subnet\_1a](#output\_public\_subnet\_1a) | n/a |
| <a name="output_public_subnet_1b"></a> [public\_subnet\_1b](#output\_public\_subnet\_1b) | n/a |
| <a name="output_teste"></a> [teste](#output\_teste) | n/a |
<!-- END_TF_DOCS -->