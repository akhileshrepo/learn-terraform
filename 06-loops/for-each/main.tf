resource "aws_instance" "instances" {
    for_each      = var.components
    ami           = "ami-0b4f379183e5706b9"
    instance_type = "t2.micro"

    tags = {
        name = lookup(each.value, "name", null)
    }
}

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
            name          = "catalogue-dev"
            instance_type = "t2.micro"
        }
    }
}