# Configuration for the security group module
resource "aws_security_group" "main" {
  name        = var.security_group_name
  description = var.security_group_description
  vpc_id      = var.vpc_id
}

