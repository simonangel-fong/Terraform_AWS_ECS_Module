variable "app_name" {
  type    = string
  default = "myapp"
}

variable "aws_region" {
  type = string
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "private_subnet_list" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "public_subnet_list" {
  type    = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "ENV" {
  type    = string
  default = "prod"
}
