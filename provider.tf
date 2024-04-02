# AWS provider configuration
provider "aws" {
  region     = local.aws_regions["r5"]
  access_key = var.access_key
  secret_key = var.secret_key
}