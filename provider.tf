provider "aws" {
  region = lookup(var.aws_region,var.infrastructure)
}