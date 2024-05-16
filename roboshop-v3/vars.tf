variable "security_group" {
  default = ["sg-0e9e01d2f78b0dd9a"]
}

variable "zone_id" {
  default = "Z0929615AH1MSD5PXATC"
}

variable "components" {
  default = {
    frontend = {
      name = "frontend"
      instance_type = "t2.micro"
    }
    mongodb = {
      name = "mongodb"
      instance_type = "t2.micro"
    }
    catalogue = {
      instance_type = "t2.micro"
      name = "catalogue"
    }
  }
}