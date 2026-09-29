terraform {
    backend "s3" {
        bucket = "stalapur-s3-test"
        region = "ap-south-2"
        key = "saikrishna/terraform.tfstate"
    }
}