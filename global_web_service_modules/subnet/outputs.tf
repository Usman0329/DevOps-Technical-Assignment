# Output block for subnet IDs
output "subnet_ids" {
  description = "The IDs of the subnets"
  value       = aws_subnet.subnets[*].id
}

# Output block for subnet CIDR blocks
output "subnet_cidr_blocks" {
  description = "The CIDR blocks of the subnets"
  value       = aws_subnet.subnets[*].cidr_block
}

# Output block for subnet availability zones
output "subnet_availability_zones" {
  description = "The availability zones of the subnets"
  value       = aws_subnet.subnets[*].availability_zone
}
