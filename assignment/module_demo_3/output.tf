
output "instance_info" {
  description = "Information about the deployed EC2 instances"

  value = merge(
    try(module.ec2_dev[0].instance_info, {}),
    try(module.ec2_prod[0].instance_info, {})
  )
}
