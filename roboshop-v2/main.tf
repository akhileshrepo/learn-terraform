resource "aws_instance" "web-server" {
  for_each      = var.components
  ami           = "ami-0b4f379183e5706b9"
  instance_type = lookup(each.value, "instance_type", null)

  tags = {
    name = lookup(each.value, "name", null)
  }
}

resource "aws_route53_record" "www" {
  for_each = var.components
  zone_id  = var.zone_id
  name     = "${lookup(each.value, "name", null)}.akhildevops.online"
  type     = "A"
  ttl      = 30
  records  = lookup(lookup(each.value, "name", null), "private_ip", null)
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

