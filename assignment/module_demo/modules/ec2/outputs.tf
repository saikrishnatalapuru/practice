output "instance_info" {

  description = "Instance Information"
  value = {
    for key, instance in aws_instance.example : key => {
      instance_id   = instance.id
      instance_name = instance.tags["Name"]
      public_ip     = instance.public_ip
      owner         = instance.tags["Owner"]
      environment = instance.tags["Environment"]

    
    }
  }
}