
variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "stage", "prod"], var.environment)
    error_message = "Environment must be dev, stage, or prod."
  }
}

variable "instance_type" {
  description = "AWS instance type approved for the environment"
  type        = string
  default     = "t3.micro"

  validation {
    condition = contains(
      var.environment == "dev" ? ["t3.micro", "t3.small"] :
      var.environment == "stage" ? ["t3.small", "t3.medium"] :
      ["t3.medium"],
      var.instance_type
    )
    error_message = "Instance type is not approved for the selected environment."
  }
}
