resource "aws_instance" "example" {
    ami = "ami-0199ac7c9fbf9ed83"
    instance_type = var.instance_type


    tags = {

        Name = "${var.application_name}-${var.environment}"
        Environment = var.environment
        Application = var.application_name

    }
    
}