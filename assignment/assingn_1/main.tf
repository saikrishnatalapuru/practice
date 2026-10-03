provider "aws" {
    region = var.region
}

resource "aws_instance" "example" {
    ami = var.ami_value
    instance_type = lookup (var.instance_type, terraform.workspace,"error")
    
    tags = {
        Name = "my-app-${terraform.workspace}"
        Environment = terraform.workspace
    }
}

