variable "region" {
    description = "region of AWS"
    
}

variable "instance_id" {
    description = " ami of instance"
}

variable "instance" {
    description = "instance type "
    type = map (object({
        instance_type = string
        environment = string
        Owner = string
    }))

    default = {
       frontend = { instance_type = "t3.micro", environment = "Front_end", Owner = "Frontend_executive" }
       backend = { instance_type = "t3.small", environment = "Back_end", Owner = "Backend_operations" }
       database = { instance_type = "t3.micro", environment = "Database_for" , Owner = "Database team" }
       monitoring = { instance_type = "t3.small", environment = "For_Monitoring" , Owner = "L1 team" }
       logging = { instance_type = "t3.micro", environment = "for_logs" , Owner = "L2 Team" }
  }

}
