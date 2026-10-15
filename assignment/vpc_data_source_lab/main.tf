
provider "aws" {
  region = "ap-south-2"
}

resource "aws_vpc" "lab_vpc" {
  cidr_block           = "10.10.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "terraform-data-source-lab"
  }
}

resource "aws_subnet" "lab_subnet" {
  vpc_id                  = aws_vpc.lab_vpc.id
  cidr_block              = "10.10.1.0/24"
  availability_zone       = "ap-south-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = "terraform-data-source-subnet"
  }
}

output "vpc_id" {
  value = aws_vpc.lab_vpc.id
}

output "subnet_id" {
  value = aws_subnet.lab_subnet.id
}
