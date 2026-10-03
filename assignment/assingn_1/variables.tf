variable "ami_value" {
    description = "type of ami "
}

variable "instance_type" {
    description = " type of instance "
    type = map (string)

    default = {
    "app1" = "t3.micro"
    "app2" = "t3.micro"
    "app3" = "t3.micro"
  }
}

variable "region" {
    description = "region name"
}