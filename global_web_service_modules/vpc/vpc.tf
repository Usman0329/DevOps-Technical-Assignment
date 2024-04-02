# Resource block for creating an AWS VPC
resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr_block

  tags = var.tags
}