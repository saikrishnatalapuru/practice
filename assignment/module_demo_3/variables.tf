variable "ami" {
  description = "ami_ID of instance"
}

variable "environment" {
  description = "environment"
  type        = string

}

variable "instances_dev" {
  type = map(object({
    instance_type = string
    environment   = string

  }))
}

variable "instances_prod" {
  type = map(object({
    instance_type = string
    environment   = string

  }))
}



