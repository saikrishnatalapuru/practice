provider "aws" {
    region = "ap-south-2"
}

variable "ami" {
    description = "ami of instance"
}

variable "instance_type" {
    description = "instance_type"
}

resource "aws_instance" "example" {
    ami = var.ami
    instance_type = var.instance_type
    
}