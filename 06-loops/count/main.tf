variable "components" {
  default = {
    frontend = {
      name          = "frontend-dev"
      instance_type = "t2.micro"
    }
    mongodb = {
      name = "mongodb-dev"
      instance_type = "t2.micro"
    }
  }
}

resource "aws_instance" "instances" {
  for_each = var.components
  ami           = "ami-0f3c7d07486cad139"
  instance_type = lookup(each.value, "instance_type", null)

  tags = {
    Name = lookup(each.value, "name", null)
  }
}