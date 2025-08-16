locals {
  az_list = ["${var.aws_region}a", "${var.aws_region}b"]
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "6.0.1"

  name = "${var.app_name}-vpc"
  cidr = var.vpc_cidr

  azs             = local.az_list
  private_subnets = var.private_subnet_list
  public_subnets  = var.public_subnet_list

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Environment = var.ENV
  }
}
