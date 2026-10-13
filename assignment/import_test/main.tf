provider "aws" {
  region = "ap-south-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0199ac7c9fbf9ed83"
  instance_type = "t3.micro"
  tags = {
    Name = "Test Ec2 instance from TF"
  }
}