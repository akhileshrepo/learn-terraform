
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
    redis = {
      name = "redis-dev"
      instance_type = "t2.micro"
    }
    user = {
      name = "user-dev"
      instance_type = "t2.micro"
    }
    cart = {
      name = "cart-dev"
      instance_type = "t2.micro"
    }
    mysql = {
      name = "mysql-dev"
      instance_type = "t2.micro"
    }
    rabbitmq = {
      name = "rabbitmq-dev"
      instance_type = "t2.micro"
    }
    shipping = {
      name = "shipping-dev"
      instance_type = "t2.micro"
    }
    payment = {
      name = "payment-dev"
      instance_type = "t2.micro"
    }
  }
}

variable "zone_id" {
  default = "Z0960498ESFBGU8CHXSW"
}