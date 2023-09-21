terraform {
    backend "s3" {
      bucket = "akhildevops.online"
      key = "09-state/terraform.tfstate"
      region = "us-east1"
    }
    
}

variable "test" {
    default = "Hello"
}

output "test" {
    value = var.test
}