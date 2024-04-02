variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
}

variable "vpc_name" {
  description = "The name of the VPC"
  default     = ""
}

variable "access_key" {
  description = "The AWS access key"
}

variable "secret_key" {
  description = "The AWS secret key"
}

variable "vpc_id" {
  description = "The ID of the VPC"
}

variable "public_subnet" {
  description = "Type of public subnets to create"
}

variable "private_subnet" {
  description = "Type of private subnets to create"
}

variable "subnet_count" {
  description = "Number of subnets to create"
}

variable "public_subnet_cidr_blocks" {
  type        = list(string)
  description = "CIDR blocks for public subnets"
}

variable "private_subnet_cidr_blocks" {
  type        = list(string)
  description = "CIDR blocks for private subnets"
}

variable "availability_zones" {
  type        = list(string)
  description = "Availability zones for subnets"
}

variable "subnet_name_prefix" {
  description = "Prefix for subnet names"
}

variable "environment" {
  description = "The environment of the VPC"
}

variable "owner" {
  description = "The owner of the VPC"
}

variable "project" {
  description = "The project associated with the VPC"
}

variable "cost_center" {
  description = "The cost center associated with the VPC"
}

variable "stack_id" {
  description = "The StackId associated with the VPC"
}

variable "region_id" {
  description = "The RegionId associated with the VPC"
}

variable "component" {
  description = "The component associated with the VPC"
}

variable "service_id" {
  description = "The ServiceId associated with the VPC"
}

variable "pci" {
  description = "Specifies whether PCI data is handled"
}

variable "pii" {
  description = "Specifies whether PII data is handled"
}

variable "from_port" {
  description = "Specifies whether PII dacdscdcbkhdbhvcbbhvcbireh"
  default     = ""
}
variable "to_port" {
  description = "Specifies whether PII dacdscdcbkhdbhvcbbhvcbireh"
  default     = ""
}
variable "protocol" {}
