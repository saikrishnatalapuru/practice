output "instance_info" {

  description = "Instance Information"
  value = {
    for key, instance in aws_instance.example : key => {
      instance_id   = instance.id
      public_ip     = instance.public_ip
      private_ip    = instance.private_ip
      environment = instance.tags["Environment"]
      }
  }
}