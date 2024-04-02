# Module call to create Security Group 1
module "security_group_1" {
  source                     = "./global_web_service_modules/security_group"
  security_group_name        = "security_group_1"
  security_group_description = "Security Group 1 allowing egress traffic to security_group_2"
  vpc_id                     = module.vpc.vpc_id
}

# Module call to create Security Group 2
module "security_group_2" {
  source                     = "./global_web_service_modules/security_group"
  security_group_name        = "security_group_2"
  security_group_description = "Security Group 2 allowing ingress traffic from security_group_1"
  vpc_id                     = module.vpc.vpc_id
}

# Allow ingress traffic from security_group_1 to security_group_2
resource "aws_security_group_rule" "ingress_security_group_1_to_security_group_2" {
  type                     = "ingress"
  from_port                = var.from_port
  to_port                  = var.to_port
  protocol                 = var.protocol
  description              = "Allow ingress traffic from ${module.security_group_1.security_group_name} to ${module.security_group_2.security_group_name} via ${var.protocol}"
  source_security_group_id = module.security_group_1.security_group_id
  security_group_id        = module.security_group_2.security_group_id
}

# Allow egress traffic from security_group_1 to security_group_2
resource "aws_security_group_rule" "egress_security_group_1_to_security_group_2" {
  type                     = "egress"
  from_port                = var.from_port
  to_port                  = var.to_port
  protocol                 = var.protocol
  description              = "Allow egress traffic from ${module.security_group_1.security_group_name} to ${module.security_group_2.security_group_name} via ${var.protocol}"
  source_security_group_id = module.security_group_2.security_group_id
  security_group_id        = module.security_group_1.security_group_id
}
