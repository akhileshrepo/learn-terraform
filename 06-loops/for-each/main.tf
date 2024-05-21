variable "components" {
    default = {
        frontend = { name = "mongodb-dev", type = "t2.micro"}
        mongodb  = { name = "frontend-dev", type = "t2.micro" }
    }
}

resource "aws_security_group" "sg" {
    for_each = var.components
    name = lookup(each.value, "name", null)
}