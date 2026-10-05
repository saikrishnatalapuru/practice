
resource "aws_instance" "example" {
    for_each = var.instances 
    ami = var.ami
    instance_type = each.value.instance_type

    tags = {
        Name = each.key
        Environment = each.value.environment
        Owner = each.value.owner
    }
}
