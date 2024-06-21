variable "components" {
    default = {
        frontend = {
            name = "frontend-dev"
            instance_type = "t2.micro"
        }
        mongodb = {
            name = "mongodb-dev"
            instance_type = "t2.micro"
        }
        catalogue = {
            name = "catalogue-dev"
            instance_type = "t2.micro"
        }
    }
}

resource "aws_instance" "web" {
    ami           = "ami-0b4f379183e5706b9"
    instance_type = "t2.micro"
    for_each = var.components

    tags = {
        name = lookup(each.value, "name", null)
    }
}

resource "aws_security_group" "allow_tls" {
    for_each    = var.components

    tags = {
        Name = lookup(each.value, "name", null)
    }
}