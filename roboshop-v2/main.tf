variable "ami" {
  default = "ami-03265a0778a880afb"
}

variable "security_groups" {
  default = ["sg-0e9e01d2f78b0dd9a"]
}

variable "instance_type" {
  default = "t2.micro"
}

variable "zone_id" {
  default = "Z0929615AH1MSD5PXATC"
}

variable "components" {
  default = {
    frontend = {}
    mongodb = {}
    catalogue = {}
    redis = {}
    user = {}
    cart = {}
    rabbitmq = {}
    mysql = {}
    shipping = {}
    payment = {}
  }
}



resource "aws_instance" "instance" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.security_groups

  for_each = var.components

  tags = {
    Name = lookup(each.key, null)
  }
}

output "instance" {
  value = aws_instance.instance
}