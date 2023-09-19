variable "components" {
    default = [ "catalogue", "frontend", "mongodb"]
}

resource "aws_instance" "instance" {
    count = length(var.components)
    ami = ""
    instance_type = "t3.small"
    vpc_security_group_ids = [""]

    tags = {
        Name = element(var.components, count.index)
    }
}