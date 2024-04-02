# Terraform AWS Environment Stack

This Terraform stack provisions a basic AWS environment using modules for VPC, subnets, and custom security group.

## Prerequisites

- Install Terraform
- AWS CLI configured with appropriate credentials

## Usage

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/terraform-aws-environment.git

Navigate to the cloned directory:
cd terraform-aws-environment

Initialize Terraform:
terraform init

Review and customize the terraform.tfvars file:

Modules
This stack leverages the following modules:

terraform-aws-vpc
terraform-aws-subnet
terraform-aws-security_group


Inputs
The terraform.tfvars file contains the following inputs:

region: The AWS region to deploy resources.
vpc_cidr_block: The CIDR block for the VPC.
vpc_name: The name of the VPC.
subnet_count: The number of subnets to create.
public_subnet_cidr_blocks: List of CIDR blocks for public subnets.
private_subnet_cidr_blocks: List of CIDR blocks for private subnets.
security_group_name: The name of the security group.
security_group_description: The description of the security group.
Outputs
After applying the Terraform configuration, you'll get the following outputs:

public_subnet_ids: List of IDs of the created public subnets.
public_subnet_cidr_blocks: List of CIDR blocks of the created public subnets.
private_subnet_ids: List of IDs of the created private subnets.
private_subnet_cidr_blocks: List of CIDR blocks of the created private subnets.
security_group_id: The ID of the created security group.
security_group_name: The name of the created security group.
security_group_arn: The ARN of the created security group.