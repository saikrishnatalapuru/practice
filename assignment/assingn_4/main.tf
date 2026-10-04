provider "aws" {
    region = var.region
}

resource "aws_instance" "example" {
    for_each = var.instance
    ami = var.instance_id
    instance_type = each.value.instance_type

    tags = {
        Name = each.key
        Env  = each.value.environment
        Owner = each.value.Owner
    }
}
