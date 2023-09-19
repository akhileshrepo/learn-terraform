variable "components" {
    default = [ "catalogue", "redis", "frontend"]
}

resource "aws_instance" "instance" {
    count = length(var.components)
    ami = "ami-03265a0778a880afb"
    instance_type = "t3.small"
    vpc_security_group_ids = ["sg-0d3e4cc237236453f"]

    tags = {
        Name = element(var.components, count.index)
    }
}