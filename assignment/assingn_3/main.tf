provider "aws" {

     region     = var.region
}

resource "aws_instance" "example" {
    count = length(var.instance)
  ami           = var.ami_value
  instance_type = var.instance[count.index]


  tags = {
    Name = "ec2 instance"
  }
}