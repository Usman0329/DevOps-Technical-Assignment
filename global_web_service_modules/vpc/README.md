# Terraform AWS VPC Module

This Terraform module creates a Virtual Private Cloud (VPC) in AWS.

## Usage

```hcl
module "vpc" {
  source              = "github.com/username/terraform-aws-vpcs"
  
  vpc_cidr_block = "10.0.0.0/16" #example
  vpc_name       = "my-vpc"
}

Inputs
vpc_cidr_block: The CIDR block for the VPC.
vpc_name: The name of the VPC.
Outputs
vpc_id: The ID of the created VPC.
vpc_cidr_block: The CIDR block of the created VPC.