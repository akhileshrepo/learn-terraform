resource "aws_instance" "instance" {
  for_each               = var.components
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.security_groups

  tags = {
    Name = lookup(each.value, "name", null)
  }
}


resource "aws_route53_record" "record" {
  for_each = var.components
  zone_id  = var.zone_id
  name     = "${lookup(each.value, "name", null)}.vinithaws.online"
  type     = "A"
  ttl      = 30
  records  = [lookup(lookup(aws_instance.instance, each.key, null), "private_ip", null)]
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
      name = "catalogue"
      instance_type = "t2.micro"
    }
    redis = {
      name = "redis"
      instance_type = "t2.micro"
    }
    user = {
      name = "user"
      instance_type = "t2.micro"
    }
    cart = {
      name = "cart"
      instance_type = "t2.micro"
    }
    shipping = {
      name = "shipping"
      instance_type = "t2.micro"
    }
    mysql = {
      name = "mysql"
      instance_type = "t2.micro"
    }
    rabbitmq = {
      name = "rabbitmq"
      instance_type = "t2.micro"
    }
    payment = {
      name = "payment"
      instance_type = "t2.micro"
    }
  }
}

variable "zone_id" {
  default = "Z0345275C3S6UDSOR4CU"
}

variable "ami" {
  default = "ami-0b4f379183e5706b9"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "security_groups" {
  default = ["sg-0ad8ec6873fafd140"]
}
