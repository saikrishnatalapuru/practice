resource "aws_instance" "example" {
    for_each = var.instances
     instance_type = each.value.instance_type
    ami             = var.ami

    tags = {
        Name = each.key
        Environment = each.value.environment
    }
}