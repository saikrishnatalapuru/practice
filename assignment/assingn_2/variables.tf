variable "ami_value" {
  description = "ami value "
}

variable "region" {
  description = "region of aws"
}

variable "instances" {
  type = map(object({
    instance_type = string
    environment   = string
    owner = string
  }))

  default = {
    app1 = { instance_type = "t3.micro", environment = "app1" , owner ="Test" }
    app2 = { instance_type = "t3.micro", environment = "app2" , owner = "Stage" }
    app3 = { instance_type = "t3.small", environment = "app3" , owner = "Prod" }

  }
}
