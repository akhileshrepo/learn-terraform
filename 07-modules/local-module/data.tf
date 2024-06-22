data "aws_ami_ids" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}


resource "aws_instance" "instances" {
  ami           = data.aws_ami_ids.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
}

variable "instance_type" {}



variable "vpc_security_group_ids" {}

