variable "component" {
  default = ["catalogue", "mongodb", "frontend"]
}

#resource "aws_instance" "instances" {
#  count         = length(var.component)
#  ami           = "ami-0f3c7d07486cad139"
#  instance_type = "t2.micro"
#  vpc_security_group_ids = ["sg-0e9e01d2f78b0dd9a"]
#
#  tags = {
#    name = element(var.component, count.index)
#  }
#}

resource "aws_security_group" "sg" {
  count = length(var.component)
  name = element(var.component, count.index)
}