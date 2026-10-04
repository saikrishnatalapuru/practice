output "instance_info" {

  description = "INstance details "
  value = {
    for key, instance in aws_instance.example : key => {
      instance_id   = instance.id
      instance_name = instance.tags["Name"]
      instance_type = instance.instance_type
      public_ip     = instance.public_ip
      owner         = instance.tags["Owner"]
    }
  }
}