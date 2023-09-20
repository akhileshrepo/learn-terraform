data "aws_ami" "ami" {
  most_recent = true
  name_regex       = "centos-8-DevOps-practice"
  owners           = ["973714476881"]
}

output "ami" {
    value = data.aws_ami.ami
}

resource "aws_instance" "instance" {
    ami = data.aws_ami.ami.id
    instance_type = "t3.small"
    vpc_security_group_ids = ["sg-0d3e4cc237236453f"]
}
