resource "aws_instance" "instances" {
  for_each      = var.components
  ami           = data.aws_ami.ami
  instance_type = lookup(each.value, "instance_type", null)
  vpc_security_group_ids = var.security_groups

  tags = {
    name = lookup(each.value, "name", null)
  }
}

resource "aws_route53_record" "records" {
  for_each = var.components
  name    = "${lookup(each.value, "name", null)}.akhildevops.online"
  type    = "A"
  zone_id = var.zone_id
  ttl     = 30
  records = [lookup(lookup(aws_instance.instances, each.key), "private_ip", null)]
}


data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}





variable "zone_id" {
  default = "Z0929615AH1MSD5PXATC"
}





variable "ami" {
  default = "ami-0f3c7d07486cad139"
}

variable "security_groups" {
  default = ["sg-0e9e01d2f78b0dd9a"]
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
  }
}