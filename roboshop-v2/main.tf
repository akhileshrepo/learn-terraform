resource "aws_instance" "instances" {
  for_each        = var.components
  ami             = data.aws_ami_ids.ami.id
  instance_type   = lookup(each.value, "type", null)
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    name = lookup(each.value, "name", null)
  }
}

data "aws_ami_ids" "ami" {
  most_recent = true
  name_regex = "Centos-*"
  owners     = ["973714476881"]
}

variable "vpc_security_group_ids" {
  default = ["sg-0e9e01d2f78b0dd9a"]
}

variable "components" {
  default = {
    frontend ={
      name = "frontend-dev"
      type = "t2.micro"
    }
    mongodb ={
      name = "mongodb-dev"
      type = "t2.micro"
    }
    catalogue ={
      name = "catalogue-dev"
      type = "t2.micro"
    }
  }
}