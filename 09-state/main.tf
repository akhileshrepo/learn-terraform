terraform {
  backend "s3" {
    bucket = "akhildevops.online"
    key    = "Dev/terraform.tfstate"
    region = "us-east-1"
  }
}



