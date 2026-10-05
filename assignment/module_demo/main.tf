provider "aws" {
  region = "ap-south-2"
}

module "ec2" {
  source = "./modules/ec2"

  ami       = var.ami
  instances = var.instances
}