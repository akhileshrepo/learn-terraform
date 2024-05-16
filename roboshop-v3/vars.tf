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
      instance_type = "t3.micro"
    }
    mongodb = {
      name = "mongodb"
      instance_type = "t3.micro"
    }
    catalogue = {
      instance_type = "t3.micro"
      name = "catalogue"
    }
    redis = {
      instance_type = "t3.micro"
      name = "redis"
    }
    user = {
      instance_type = "t3.micro"
      name = "user"
    }
    cart = {
      instance_type = "t3.micro"
      name = "cart"
    }
    rabbitmq = {
      instance_type = "t3.micro"
      name = "rabbitmq"
    }
    shipping = {
      instance_type = "t3.micro"
      name = "shipping"
    }
    mysql = {
      instance_type = "t3.micro"
      name = "mysql"
    }
    payment = {
      name = "payment"
      instance_type = "t3.micro"
    }
  }
}