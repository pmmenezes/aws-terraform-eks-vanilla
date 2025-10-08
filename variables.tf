variable "project_name" {
  description = "The name of the project"
  type        = string
}

variable "region" {
  description = "value for region"
  type        = string
  default     = "us-east-1"
}

variable "default_tags" {
  description = "A map of tags to assign to all resources"
  type        = map(string)
  default     = {}
}


variable "ssm_vpc" {
  description = "SSM Parameter name for VPC ID"
  type        = string
}

variable "ssm_public_subnet_ids" {
  description = "SSM Parameter names for Public Subnet IDs"
  type        = list(string)
  default     = []
}
variable "ssm_private_subnet_ids" {
  description = "SSM Parameter names for Private Subnet IDs"
  type        = list(string)
  default     = []
}
variable "ssm_pod_subnet_ids" {
  description = "SSM Parameter names for Pod Subnet IDs"
  type        = list(string)
  default     = []
}
  