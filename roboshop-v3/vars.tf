
variable "security_groups" {
  default     = ["sg-0d3e4cc237236453f"]
}

variable "zone_id" {
    default = "Z045851830X54L3IRT9GH"
}

variable "components" {
    default = {
        frontend = {
            name = "frontend"
            instance_type = "t3.micro"
        }
        cart = {
            name = "cart"
            instance_type = "t3.micro"
        }
        catalogue = {
            name = "catalogue"
            instance_type = "t3.micro"
        }
        mongodb = {
            name = "mongodb"
            instance_type = "t3.micro"
        }
        user = {
            name = "user"
            instance_type = "t3.micro"
        }
        redis = {
            name = "redis"
            instance_type = "t3.micro"
        }
        mysql = {
            name = "mysql"
            instance_type = "t3.micro"
        }
        payment = {
            name = "payment"
            instance_type = "t3.micro"
        }
        shipping = {
            name = "shipping"
            instance_type = "t3.micro"
        }
        rabbitmq = {
            name = "rabbitmq"
            instance_type = "t3.micro"
        }
    }
}