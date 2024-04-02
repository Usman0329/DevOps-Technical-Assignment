variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  default     = ""
}

variable "vpc_name" {
  description = "The name of the VPC"
  default     = ""
}

variable "tags" {
  description = "A map of tags to apply to the VPC"
  type        = map(string)
}