provider "aws" {
  region = "ap-south-2"
}

module "ec2" {
  source = "git::https://github.com/saikrishnatalapuru/practice.git//assignment/module_demo/modules/ec2?ref=0e89753f092fbc8a5467f06d6628387c1d7f8a02"

  ami       = var.ami
  instances = var.instances
}