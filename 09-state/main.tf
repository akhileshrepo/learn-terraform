terraform {
  backend "s3" {
    bucket = "tf-roboshop-state"
    key    = "env-dev/state.tf"
    region = "us-east-1"
  }
}

variable "car" {
  default = "Nexa"
}

output "car" {
  value = var.car
}


