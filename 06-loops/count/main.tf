variable "components" {
  default = ["frontend", "mongodb", "catalogue"]
}

resource "aws_instance" "instances" {
  count         = length(var.components)
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    name = element(var.components, count.index)
  }
}


variable "ami" {
  default = "ami-0f3c7d07486cad139"
}
variable "instance_type" {
  default = "t2.micro"
}