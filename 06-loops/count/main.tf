variable "components" {
  default = [ "frontend", "mongodb", "catalogue" ]
}

resource "aws_instance" "web" {
  count         = length(var.components)
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"

  tags = {
    name = var.components[count.index]
#     name = element(var.components, count.index)
  }
}