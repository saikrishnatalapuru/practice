provider "aws" {
    alias = "mumbai"
    region= "ap-south-1"
}
provider "aws" {
    alias = "hyderabad"
    region = "ap-south-2"
}

resource "aws_instance" "mumbai_region" {
    ami = "ami-01a00762f46d584a1"
    instance_type = "t3.micro"
    provider = "aws.mumbai"

}
 resource "aws_instance" "Hyderabad_region" {
    ami = "ami-0199ac7c9fbf9ed83"
    instance_type = "t3.micro"
    provider = "aws.hyderabad"
 }
