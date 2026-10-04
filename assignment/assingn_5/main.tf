###### demo on prevent_destory #############

provider "aws" {
    region = "ap-south-2"
}

resource "aws_instance" "production-db" {
    ami = "ami-0a717262ea9adab3f"
    instance_type = "t3.small"
    tags = {
        Name = "production-db"
    }
    /*lifecycle {
  prevent_destroy = true
}*/
}