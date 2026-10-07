provider "aws" {
  region = "ap-south-2"
}

module "ec2_dev" {
  source    = "./module/ec2"
  count     = (var.environment == "dev" || var.environment == "both") ? 1 : 0
  ami       = var.ami
  instances = var.instances_dev
}

module "ec2_prod" {
  source    = "./module/ec2"
  count     = (var.environment == "prod" || var.environment == "both") ? 1 : 0
  ami       = var.ami
  instances = var.instances_prod
}