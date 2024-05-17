terraform {
  backend "s3" {
    bucket = "akhildevops.online"
    key    = "Dev/terraform.tfstate"
    region = "us-east-1"
  }
}

variable "test" {
  default = "apple"
}

output "test" {
  value = var.test
}



