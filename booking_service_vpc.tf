# Module call to create a VPC
module "vpc" {
  source         = "./global_web_service_modules/vpc"
  vpc_cidr_block = var.vpc_cidr_block
  vpc_name       = var.vpc_name
  tags = {
    Name        = var.vpc_name
    Environment = var.environment
    Owner       = var.owner
    Project     = var.project
    CostCenter  = var.cost_center
    StackId     = var.stack_id
    RegionId    = var.region_id
    Component   = var.component
    ServiceId   = var.service_id
    PCI         = var.pci
    PII         = var.pii
  }
}

# Output block for VPC ID
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

# Output block for VPC CIDR block
output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = module.vpc.vpc_cidr_block
}