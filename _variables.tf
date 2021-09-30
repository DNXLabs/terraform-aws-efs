


variable "environment_name" {
  description = "Name of the Environment, for example: Alpha/Gamma/Staging/Prod"
}

#variable "creation_token" {
#  description = "A unique name (a maximum of 64 characters are allowed) used as reference when creating the Elastic File System to ensure idempotent file system creation."
#}

variable "encrypted" {
  type        = bool
  description = "If true, the disk will be encrypted."
}

variable "kms_key_id" {
  description = "The ARN for the KMS encryption key. When specifying kms_key_id, encrypted needs to be set to true."
}

variable "performance_mode" {
  description = "The file system performance mode. Can be either ''generalPurpose'' or ''maxIO'' (Default: ''generalPurpose'')"
}

variable "provisioned_throughput_in_mibps" {
  default     = null
  description = "The throughput, measured in MiB/s, that you want to provision for the file system. Only applicable with throughput_mode set to provisioned."
}

variable "throughput_mode" {
  description = "Throughput mode for the file system. Defaults to bursting. Valid values: bursting, provisioned. When using provisioned, also set provisioned_throughput_in_mibps."
}

variable "access_points" {
  type        = list(string)
  description = "A list of the access points which will be created for the EFS volume"
}

variable "private_subnet_ids" {
  type        = list(string)
  description = "The private subnet IDs in which the EFS will have a mount."
}

# variable "security_groups" {
#   type        = list(string)
#   description = "A list of up to 5 VPC security group IDs (that must be for the same VPC as subnet specified) in effect for the mount target. If not provided a default Security Group will be created allowing access to VPC CIDR"
# }

variable "vpc_id" {
  description = "The VPC ID of the security group, in case the variable security_groups is empty"
}

