variable "components" {
    default = {
        redis = { name= "redis_sg" }
        frontend  = { name = "frontend_sg" }
        catalogue = { name = "catalogue_sg" }
        mongodb   = { name = "mongodb_sg" }
    }
}


resource "aws_security_group" "allow_tls" {
    for_each = var.components
    name     = lookup(each.value, "name", null)
}