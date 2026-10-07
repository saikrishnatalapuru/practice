variable "instances" {
  description = "Map of instances"

  type = map(object({
    instance_type = string
    environment   = string
  }))
}

variable "ami" {
    description = "Ami ID of instance"
    type = string 
}

