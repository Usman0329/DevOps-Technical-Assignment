# Terraform AWS Subnets Module

This Terraform module creates public and private subnets in AWS.

## Usage

```hcl
module "subnets" {
  source              = "github.com/username/terraform-aws-subnets"
  
  vpc_id              = module.vpc.vpc_id
  subnet_count        = 2
  public_subnet_cidr_blocks = ["10.0.1.0/24", "10.0.2.0/24"] #example
  private_subnet_cidr_blocks = ["10.0.3.0/24", "10.0.4.0/24"] #example
}

Inputs
vpc_id: The ID of the VPC.
subnet_count: The number of subnets to create.
public_subnet_cidr_blocks: List of CIDR blocks for public subnets.
private_subnet_cidr_blocks: List of CIDR blocks for private subnets.
Outputs
public_subnet_ids: List of IDs of the created public subnets.
public_subnet_cidr_blocks: List of CIDR blocks of the created public subnets.
private_subnet_ids: List of IDs of the created private subnets.
private_subnet_cidr_blocks: List of CIDR blocks of the created private subnets.