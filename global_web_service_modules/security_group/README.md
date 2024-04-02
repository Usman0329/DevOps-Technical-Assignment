# Terraform AWS Security Group Module

This Terraform module creates a custom security group in AWS.

## Usage

```hcl
module "security_group" {
  source              = "github.com/username/terraform-aws-security_groups"
  
  security_group_name        = "my-security-group"
  security_group_description = "My custom security group"
  vpc_id                     = module.vpc.vpc_id
}

Inputs
security_group_name: The name of the security group.
security_group_description: The description of the security group.
vpc_id: The ID of the VPC.
Outputs
security_group_id: The ID of the created security group.
security_group_name: The name of the created security group.
security_group_arn: The ARN of the created security group.