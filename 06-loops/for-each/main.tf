variable "components" {
    default = {
        shipping = {name = ""}
        redis = { name= "redis_sg" }
        catalogue = { name = "catalogue_sg" }
        frontend = { name = "frontend_sg" }
        mongodb   = { name = "mongodb_sg" }
    }
}


resource "aws_security_group" "allow_tls" {
    for_each = var.components
    name = lookup(each.value, "name", 0)
}