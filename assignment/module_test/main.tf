provider "aws" {
    region = "ap-south-2"
}
module "ec2" {
    source = "./module/ec2"
    instance_type = var.instance_type
}