variable "ami" {
    description = "ami_ID of instance"
}

variable "instances" {
  type = map(object({
    instance_type = string
    environment = string
    owner = string

  }))
}