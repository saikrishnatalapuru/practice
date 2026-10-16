provider "aws" {
  region = "ap-south-2"
}

resource "aws_vpc" "filter_lab" {
  cidr_block = "10.20.0.0/16"

  tags = {
    Name = "terraform-filter-lab"
    Env  = "Practice"
  }
}

data "aws_vpc" "by_name" {
  filter {
    name   = "tag:Name"
    values = ["terraform-filter-lab"]
  }
}

output "discovered_vpc_id" {
  value = data.aws_vpc.by_name.id
}

output "discovered_vpc_cidr" {
  value = data.aws_vpc.by_name.cidr_block
}