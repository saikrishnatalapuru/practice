output "Application_Info" {

  description = "Application Information"
  value = {
    for key, instance in module.ec2 : key => {
      instance_id   = instance.instance_id
      public_ip     = instance.public_ip
      private_ip    = instance.private_ip
      }
  }
}