resource "aws_instance" "example" {
    ami = "ami-0199ac7c9fbf9ed83"
    instance_type = var.instance_type
}