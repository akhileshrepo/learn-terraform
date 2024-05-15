variable "components" {
  default = [ "frontend", "mongodb", "catalogue", "shipping"]
}



resource "aws_instance" "instances" {

  count = length(var.components)

  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0e9e01d2f78b0dd9a"]

  tags = {
#    Name = var.components[count.index]
    Name = element(var.components, count.index)
  }
}