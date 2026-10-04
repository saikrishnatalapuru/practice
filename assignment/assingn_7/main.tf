provider "aws" {
    region = "ap-south-2"
}

resource "aws_instance" "frontend" {
    ami = "ami-0199ac7c9fbf9ed83"
    instance_type = "t3.micro"
    tags = {
        Name="Frontend_instance" 
        Owner ="Frontend_team"
        }
    lifecycle {
        create_before_destroy = true
        }
}

resource "aws_instance" "backend" {
    ami = "ami-0199ac7c9fbf9ed83"
    instance_type = "t3.micro"
    tags = {
        Name="Backendend_instance"
        Owner="Backend_team"}
    lifecycle {
        ignore_changes = [
        tags ["Owner"]
        ]
         }
}

resource "aws_instance" "database" {
    ami = "ami-0199ac7c9fbf9ed83"
    instance_type = "t3.micro"
    tags = {
        Name="database_instance"
        Owner="DB team"
        }
    /*lifecycle {
        prevent_destroy = true
        }*/
}

