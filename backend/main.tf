provider "aws" {
    region = "ap-south-2"
    
}

resource "aws_instance" "example_backend" {
    instance_type = "t3.micro"
    ami = "ami-0199ac7c9fbf9ed83"
}

