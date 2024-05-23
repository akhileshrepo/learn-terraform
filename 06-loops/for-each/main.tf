variable "components" {
    default = {
        catalogue = { name = "catalogue-dev", type = "t2.micro"}
        mongodb = { name = "mongodb-dev", type = "t2.micro"}
        frontend  = { name = "frontend-dev", type = "t2.micro" }
    }
}

resource "aws_security_group" "sg" {
    for_each = var.components
    name = lookup(each.value, "name", null)
}

resource "aws_instance" "instances" {
    for_each      = var.components
    ami           = var.ami
    instance_type = lookup(each.value, "type", null)

    tags = {
        Name = lookup(each.value, "name", null)
    }
}

variable "ami" {
    default = "ami-0f3c7d07486cad139"
}