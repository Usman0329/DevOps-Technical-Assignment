# Output block for security group ID
output "security_group_id" {
  description = "The ID of the created security group"
  value       = aws_security_group.main.id
}

# Output block for security group name
output "security_group_name" {
  description = "The name of the created security group"
  value       = aws_security_group.main.name
}


# Output block for security group ARN
output "security_group_arn" {
  description = "The ARN of the created security group"
  value       = aws_security_group.main.arn
}
