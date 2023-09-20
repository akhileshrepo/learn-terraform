data "aws_ami" "ami" {
  most_recent = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

output "ami" {
    value = data.aws_ami.ami
}

resource "aws_instance" "instance" {
    ami = data.aws_ami.ami.id
    instance_type = var.instance_type
    vpc_security_group_ids = ["sg-0d3e4cc237236453f"]
}

variable "instance_type" {}