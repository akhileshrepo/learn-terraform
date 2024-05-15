variable "components" {
    default = {
        frontend = { name = "catalogue" }
        catalogue = { name = "frontend" }
        mongodb = { name = "mongodb" }
        mysql = { name = "mysql" }
    }
}

resource "aws_security_group" "security_group" {
    for_each = var.components
    name = lookup(each.value, "name", null)
}