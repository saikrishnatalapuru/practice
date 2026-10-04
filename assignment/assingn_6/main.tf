provider "aws" {
    region = "ap-south-2"
}

resource "aws_instance" "web-server" {
    ami = "ami-0199ac7c9fbf9ed83"
    instance_type = "t3.micro"
    tags = {
        Name = "web-server"
    }
    lifecycle  {
        create_before_destroy = true
    }
}