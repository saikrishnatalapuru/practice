variable "environment" {
  description = "environment of instance"
  type        = string
}

variable "instances" {
  type = map(object({
    instance_type = string

  }))
}
