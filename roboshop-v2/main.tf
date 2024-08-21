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
  }
}

variable "zone_id" {
  default = "Z093842334KRCLE5WWCFA"
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
