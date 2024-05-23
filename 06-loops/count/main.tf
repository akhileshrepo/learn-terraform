variable "components" {
  default = {
    frontend = {
      name = "frontend-dev"
      type = "t2.micro"
    }
    mongodb = {
      name = "mongodb-dev"
      type = "t2.micro"
    }
  }
}

resource "aws_instance" "instances" {
  for_each = var.components
  ami           = "ami-0f3c7d07486cad139"
  instance_type = lookup(var.components, each.value["type"], null)

  tags = {
    Name = lookup(var.components, each.value["name"], null)
  }
}