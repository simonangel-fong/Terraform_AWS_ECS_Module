variable "vpc_block" {}


resource "aws_vpc" "main" {
  cidr_block = var.vpc_block
}
