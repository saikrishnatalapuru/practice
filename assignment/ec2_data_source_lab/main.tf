
provider "aws" {
  region = "ap-south-2"
}

data "aws_subnet" "existing" {
  id = "subnet-056ff54bf48a03842"
}

resource "aws_instance" "lab" {
  ami           = "ami-0199ac7c9fbf9ed83"
  instance_type = "t3.micro"
  subnet_id     = data.aws_subnet.existing.id

  tags = {
    Name = "terraform-data-source-ec2"
    Env  = "Dev"
  }
}

output "instance_id" {
  value = aws_instance.lab.id
}

output "instance_subnet_id" {
  value = aws_instance.lab.subnet_id
}
