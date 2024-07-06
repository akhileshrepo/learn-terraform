variable "components" {
    default = {
        frontend = {
            instance_type = "t2.micro"
        }
        mongodb = {
            instance_type = "t2.micro"
        }
        catalogue = {
            instance_type = "t2.micro"
        }
    }
}

resource "aws_instance" "instance" {
    for_each      = var.components
    ami           = "ami-0b4f379183e5706b9"
    instance_type = each.value["instance_type"]
    vpc_security_group_ids = ["sg-0ad8ec6873fafd140"]

    tags = {
        Name = each.key
    }
}

