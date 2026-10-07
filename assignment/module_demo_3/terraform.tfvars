ami         = "ami-0199ac7c9fbf9ed83"
environment = "dev"

instances_dev = {
  app1 = {
    instance_type = "t3.micro"
    environment   = "dev"

  }

  app2 = {
    instance_type = "t3.micro"
    environment   = "Dev"

  }
}

instances_prod = {
  frontend = {
    instance_type = "t3.small"
    environment   = "prod"

  }

  backend = {
    instance_type = "t3.small"
    environment   = "prod"

  }
}

