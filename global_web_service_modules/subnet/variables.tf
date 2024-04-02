variable "vpc_id" {
  description = "The ID of the VPC"
}

variable "subnet_type" {
  description = "Type of subnets to create: 'public' or 'private'"
}

variable "subnet_count" {
  description = "Number of subnets to create"
}

variable "cidr_blocks" {
  type        = list(string)
  description = "CIDR blocks for subnets"
}

variable "availability_zones" {
  type        = list(string)
  description = "Availability zones for subnets"
}

variable "subnet_name_prefix" {
  description = "Prefix for subnet names"
}

variable "tags" {
  description = "A map of tags to apply to the subnets"
  type        = map(string)
}

