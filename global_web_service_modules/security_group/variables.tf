variable "security_group_name" {
  description = "The name of the security group"
}

variable "security_group_description" {
  description = "The description of the security group"
}

variable "from_port" {
  description = "The starting port for the rule"
  default     = ""
}

variable "to_port" {
  description = "The ending port for the rule"
  default = ""
}

variable "protocol" {
  description = "The protocol for the rule (tcp, udp, icmp, etc.)"
  default = ""
}

variable "vpc_id" {
  description = "The ID of the VPC"
  default =""
}
