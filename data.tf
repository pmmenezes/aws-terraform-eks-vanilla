data "aws_ssm_parameter" "aws_vpc" {
  name = var.ssm_vpc
}
data "aws_ssm_parameter" "public_subnet_ids" {
  for_each = toset(var.ssm_public_subnet_ids)
  name     = each.value
}
data "aws_ssm_parameter" "private_subnet_ids" {
  for_each = toset(var.ssm_private_subnet_ids)
  name     = each.value
}
data "aws_ssm_parameter" "pod_subnet_ids" {
  for_each = toset(var.ssm_pod_subnet_ids)
  name     = each.value
}