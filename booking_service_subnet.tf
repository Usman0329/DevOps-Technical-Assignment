# this block will create 2 public subnets
module "public_subnets" {
  source             = "./global_web_service_modules/subnet"
  vpc_id             = module.vpc.vpc_id
  subnet_type        = var.public_subnet
  subnet_count       = var.subnet_count
  cidr_blocks        = var.public_subnet_cidr_blocks
  availability_zones = var.availability_zones
  subnet_name_prefix = var.subnet_name_prefix
  tags = {
    Name        = "${var.subnet_name_prefix}-${var.public_subnet}"
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

# this block will create 2 private subnets
module "private_subnets" {
  source             = "./global_web_service_modules/subnet"
  vpc_id             = module.vpc.vpc_id
  subnet_type        = var.private_subnet
  subnet_count       = var.subnet_count
  cidr_blocks        = var.private_subnet_cidr_blocks
  availability_zones = var.availability_zones
  subnet_name_prefix = var.subnet_name_prefix
  tags = {
    Name        = "${var.subnet_name_prefix}-${var.private_subnet}"
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

# Output block for public subnets
output "public_subnet_ids" {
  description = "The IDs of the public subnets"
  value       = module.public_subnets.subnet_ids
}

output "public_subnet_cidr_blocks" {
  description = "The CIDR blocks of the public subnets"
  value       = module.public_subnets.subnet_cidr_blocks
}

output "public_subnet_availability_zones" {
  description = "The availability zones of the public subnets"
  value       = module.public_subnets.subnet_availability_zones
}

# Output block for private subnets
output "private_subnet_ids" {
  description = "The IDs of the private subnets"
  value       = module.private_subnets.subnet_ids
}

output "private_subnet_cidr_blocks" {
  description = "The CIDR blocks of the private subnets"
  value       = module.private_subnets.subnet_cidr_blocks
}

output "private_subnet_availability_zones" {
  description = "The availability zones of the private subnets"
  value       = module.private_subnets.subnet_availability_zones
}
