resource "aws_instance" "instances" {
  for_each        = var.components
  ami             = var.ami
  instance_type   = var.instance_type
  vpc_security_group_ids = var.security_group

  tags = {
    Name = lookup(each.value, "name", null)
  }
}


variable "ami" {
  default = "ami-0f3c7d07486cad139"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "security_group" {
  default = ["sg-0e9e01d2f78b0dd9a"]
}

variable "components" {
  default = {
    frontend = { name = "frontend-dev" }
  }
}

variable "zone_id" {
  default = "Z0929615AH1MSD5PXATC"
}

resource "aws_route53_record" "records" {
  for_each = var.components
  zone_id = var.zone_id
  name    = "${lookup(each.value, "name", null )}.akhildevops.online"
  type    = "A"
  ttl     = 30
  records = [lookup(lookup(aws_instance.instances, each.key, null ), "private_ip", null)]
}