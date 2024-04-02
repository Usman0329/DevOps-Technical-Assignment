# Terraform configuration block
terraform {
  required_version = ">= 1.2.0"

  required_providers {
    aws   = ">= 3.4.0"
    null  = ">= 2.1.2"
    vault = ">= 2.13.0"
  }
}