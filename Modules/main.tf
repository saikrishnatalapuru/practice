
provider "aws" {
    region=var.region_var 
}

resource "aws_instance" "example" {
    ami = var.ami_value
    instance_type = var.ami_instance_type
}