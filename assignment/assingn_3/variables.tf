variable "ami_value" {
  description = "ami value"
}

variable "region" {
  description = "Region in aws"
}

variable "instance" {
  description = "instance_type"
  type        = list(string)
  default     = ["t3.micro", "t3.small", "t3.micro"]

}