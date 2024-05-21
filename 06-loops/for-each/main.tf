variable "components" {
    default = {
        mongodb = { name = "mongodb-dev", type = "t2.micro"}
        frontend  = { name = "frontend-dev", type = "t2.micro" }
    }
}

resource "aws_security_group" "sg" {
    for_each = var.components
    name = lookup(each.value, "name", null)
}