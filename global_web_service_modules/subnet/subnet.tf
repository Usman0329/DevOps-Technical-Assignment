# Resource block for creating AWS subnets
resource "aws_subnet" "subnets" {
  count             = var.subnet_count
  vpc_id            = var.vpc_id
  cidr_block        = var.cidr_blocks[count.index]
  availability_zone = var.availability_zones[count.index]

  tags = merge(var.tags, {
    Name = "${var.subnet_name_prefix}-${var.subnet_type}-${count.index}"
  })

  map_public_ip_on_launch = var.subnet_type == "public" ? true : false
}
