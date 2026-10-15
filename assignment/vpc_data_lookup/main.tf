
provider "aws" {
  region = "ap-south-2"
}

data "aws_vpc" "existing" {
  id = "vpc-03a06aa0121ad2d71"
}


data "aws_subnet" "existing" {
  id = "subnet-056ff54bf48a03842"
}

output "discovered_subnet_id" {
  value = data.aws_subnet.existing.id
}

output "discovered_subnet_cidr" {
  value = data.aws_subnet.existing.cidr_block
}

output "discovered_subnet_vpc_id" {
  value = data.aws_subnet.existing.vpc_id
}

