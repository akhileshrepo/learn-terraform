variable "components" {
    default = ["user", "mongodb", "catalogue", "frontend"]
}

/*
resource aws_instance "instance" {

    count = length(var.components)
    ami           = "ami-03265a0778a880afb"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-0e9e01d2f78b0dd9a"]

    tags = {
        Name = element(var.components, count.index)
    }
}
*/

resource "aws_security_group" "allow_tls" {
    count = length(var.components)
    name = element(var.components, count.index)
}