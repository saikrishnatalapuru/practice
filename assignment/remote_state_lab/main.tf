resource "local_file" "app" {
  filename = "${path.module}/remote_state_test.txt"
  content  = "Terraform remote state learning  Day2"
}

terraform {
  backend "s3" {
    bucket       = "saikrishna-terraform-state-223662763733"
    key          = "remote_state_lab/terraform.tfstate"
    region       = "ap-south-2"
    encrypt      = true
    use_lockfile = true
  }
}

resource "time_sleep" "lock_test" {
  create_duration = "200s"
}
