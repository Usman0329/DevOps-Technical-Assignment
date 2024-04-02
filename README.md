# Terraform AWS Environment Stack

This Terraform stack provisions a basic AWS environment using modules for VPC, subnets, and custom security group.

## Prerequisites

- Install Terraform
- AWS CLI configured with appropriate credentials

## Usage

1. Clone the repository:

   ```bash
   git clone https://github.com/Usman0329/DevOps-Technical-Assignment.git

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


## Inputs

The terraform.tfvars file contains the following inputs:
- **vpc_cidr_block:** `"10.0.0.0/16"` #example vpc cidr block
- **vpc_name:** `"my-vpc"` # example vpc name
- **access_key:** `"your access key"`
- **secret_key:** `"your secret key"`
- **vpc_id:** `"vpc-1234567890e9602ae"` #example vpc id
- **public_subnet:** `"public"`
- **private_subnet:** `"private"`
- **subnet_count:** `2`
- **public_subnet_cidr_blocks:** 
    - `"10.0.1.0/24"` # example cidr block for public subnet 1
    - `"10.0.2.0/24"` # example cidr block for public subnet 2
- **private_subnet_cidr_blocks:** 
    - `"10.0.3.0/24"` # example cidr block for private subnet 1
    - `"10.0.4.0/24"` # example cidr block for private subnet 2
- **availability_zones:** `["us-west-2a", "us-west-2b"]`
- **subnet_name_prefix:** `"my-subnet"` #example subnet name
- **Environment:** `dev` #example environment
- **Owner:** `usman` #sample owner
- **Project:** `MyProject` #sample project name
- **Cost Center:** `CC_313` #sample CC
- **Stack ID:** `a` #sample stackid
- **Region ID:** `05` #sample regionid
- **Component:** `ws` #sample component
- **Service ID:** `welcome_text` #sample service id
- **PCI:** `false` #compliance status
- **PII:** `false` #compliance status
- **security_group_name:** `"my-security-group"` #sample SG name
- **security_group_description:** `"My security group description"` #sample SG Description
- **from_port:** `443` #starting port range
- **to_port:** `443` #ending port range
- **protocol:** `"tcp"` #sample protocol
- **source_security_group_id:** `"sg-1234567"` # sample SG ID
- **destination_security_group_id:** `"sg-abcdefg"` # sample SG ID


## Outputs

After applying the Terraform configuration, you'll get the following outputs:
- **public_subnet_ids:** List of IDs of the created public subnets.
- **public_subnet_cidr_blocks:** List of CIDR blocks of the created public subnets.
- **private_subnet_ids:** List of IDs of the created private subnets.
- **private_subnet_cidr_blocks:** List of CIDR blocks of the created private subnets.
- **security_group_id:** The ID of the created security group.
- **security_group_name:** The name of the created security group.
- **security_group_arn:** The ARN of the created security group.
