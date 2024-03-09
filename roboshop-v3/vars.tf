variable "security_groups" {
  default = "sg-0e9e01d2f78b0dd9a"
}


variable "components" {
  default = {
    frontend = {
      name          = "frontend-dev"
      instance_type = "t2.micro"
    }
    mongodb = {
      name          = "mongodb-dev"
      instance_type = "t2.micro"
    }
    catalogue = {
      name          = "catalogue-dev"
      instance_type = "t2.micro"
    }
    user = {
      name          = "user-dev"
      instance_type = "t2.micro"
    }
    cart = {
      name          = "cart-dev"
      instance_type = "t2.micro"
    }
    mysql = {
      name          = "mysql-dev"
      instance_type = "t2.micro"
    }
    redis = {
      name          = "user-dev"
      instance_type = "t2.micro"
    }
    rabbitmq = {
      name          = "cart-dev"
      instance_type = "t2.micro"
    }
    shipping = {
      name          = "cart-dev"
      instance_type = "t2.micro"
    }
    payment = {
      name          = "cart-dev"
      instance_type = "t2.micro"
    }
  }
}



variable "zone_id" {
  default = "Z0929615AH1MSD5PXATC"
}
