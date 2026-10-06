provider "aws" {
  region = "ap-south-2"
}

module "ec2" {
  source           = "./modules/ec2"
  for_each         = var.instances
  instance_type    = each.value.instance_type
  environment      = var.environment
  application_name = each.key

}