variable "components" {
    default = {
        shipping = { name = "shipping-sg" }
        redis = { name= "redis_sg" }
        catalogue = { name = "catalogue_sg" }
        frontend = { name = "frontend_sg" }
        mongodb   = { name = "mongodb_sg" }
    }
}


resource "aws_security_group" "allow_sg" {
    for_each = var.components
    name = each.value["name"]
}