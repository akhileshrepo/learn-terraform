variable "security_groups" {
  default = ["sg-0e9e01d2f78b0dd9a"]
}


variable "components" {
  default = {
    frontend = {
      name          = "frontend"
      instance_type = "t2.micro"
    }
    mongodb = {
      name          = "mongodb"
      instance_type = "t2.micro"
    }
    catalogue = {
      name          = "catalogue"
      instance_type = "t2.micro"
    }
    user = {
      name          = "user"
      instance_type = "t2.micro"
    }
    cart = {
      name          = "cart"
      instance_type = "t2.micro"
    }
    mysql = {
      name          = "mysql"
      instance_type = "t2.micro"
    }
    redis = {
      name          = "redis"
      instance_type = "t2.micro"
    }
    rabbitmq = {
      name          = "rabbitmq"
      instance_type = "t2.micro"
    }
    shipping = {
      name          = "shipping"
      instance_type = "t2.micro"
    }
    payment = {
      name          = "payment"
      instance_type = "t2.micro"
    }
  }
}



variable "zone_id" {
  default = "Z0929615AH1MSD5PXATC"
}
