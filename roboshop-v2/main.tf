variable "ami" {
  default = "ami-0f3c7d07486cad139"
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
    frontend = { name = "frontend-dev"}
    mongodb = { name = "mongodb-dev"}
    catalogue = { name = "catalogue-dev"}
    redis = { name = "redis-dev"}
    user = { name = "user-dev"}
    cart = { name = "cart-dev"}
    rabbitmq = { name = "rabbitmq-dev"}
    mysql = { name = "mysql-dev"}
    shipping = { name = "shipping-dev"}
    payment = { name = "payment-dev"}
  }
}



resource "aws_instance" "instance" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.security_groups

  for_each = var.components

  tags = {
    Name = lookup(each.value, "name", null)
  }
}
