variable "ami" {
    default = "ami-03265a0778a880afb"
}

variable "instance_type" {
    default = "t3.micro"
}

variable "security_groups" {
  default     = ["sg-0d3e4cc237236453f"]
}

variable "zone_id" {
    default = "Z045851830X54L3IRT9GH"
}

variable "components" {
  default = {
    frontend = { name = "frontend"}
    mongodb = { name = "mongodb"}
    catalogue = { name = "catalogue"}
    user = { name = "user"}
    redis = { name = "redis"}
    cart = { name = "cart"}
    mysql = { name = "mysql"}
    shipping = { name = "shipping"}
    payment = { name = "payment"}
    rabbitmq = { name = "rabbitmq"}
  }
}


resource "aws_instance" "instance" {
  for_each = var.components
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_groups

  tags = {
    Name = lookup(each.key, "name", null)
  }
}

resource "aws_route53_record" "record" {
  for_each = var.components
  zone_id = var.zone_id
  name    = "${lookup(each.value, "name", null)}.akhildevops.online"
  type    = "A"
  ttl     = 30
  records = [lookup(lookup(aws_instance.instance,each.key, null), "private-ip", null)]
}
