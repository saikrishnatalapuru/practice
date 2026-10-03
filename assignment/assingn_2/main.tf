provider "aws" {
  region = var.region
}

resource "aws_instance" "example" {
  for_each      = var.instances
  ami           = var.ami_value
  instance_type = each.value.instance_type

  tags = {

    Name = each.key
    Env  = each.value.environment
  }
}