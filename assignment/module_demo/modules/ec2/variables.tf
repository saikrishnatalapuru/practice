variable "ami" {
    description = "ami_ID of instance"
}



variable "instances" {
  type = map(object({
    instance_type = string
    environment = string
    owner = string

  }))

  default = {
    app1 = { instance_type = "t3.micro",environment = "Dev", owner = "Dev team"}
    app2 = { instance_type = "t3.small" ,environment = "Test", owner = "Testing team"}
    app3 = { instance_type = "t3.micro" ,environment = "Prod", owner = "DB"}
    app4 = { instance_type = "t3.micro" ,environment = "SRE", owner = "SRE"}

  }
}