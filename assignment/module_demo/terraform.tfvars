ami = "ami-0199ac7c9fbf9ed83"
instances = {
  app1 = {
    instance_type = "t3.micro"
    environment   = "Dev"
    owner         = "Dev team"
  }

  app2 = {
    instance_type = "t3.micro"
    environment   = "Test"
    owner         = "Testing team"
  }

  app3 = {
    instance_type = "t3.micro"
    environment   = "Prod"
    owner         = "DB"
  }
    app4 = {
    instance_type = "t3.micro"
    environment   = "SRE"
    owner         = "SRE"
  }
}
