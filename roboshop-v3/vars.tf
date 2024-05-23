
variable "vpc_security_group_ids" {
  default = ["sg-00367da009690cd34"]
}
variable "components" {
  default = {
    frontend = {
      name = "frontend-dev"
      instance_type = "t2.micro"
    }
    mongodb = {
      name = "mongodb-dev"
      instance_type = "t2.micro"
    }
    catalogue = {
      name = "catalogue-dev"
      instance_type = "t2.micro"
    }
  }
}

variable "zone_id" {
  default = "Z0960498ESFBGU8CHXSW"
}