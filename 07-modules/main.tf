module "test" {
    source = "./local-module"
    instance_type = var.instance_type
    vpc_security_group_ids = var.vpc_security_group_ids
}

variable "vpc_security_group_ids" {
    default = ["sg-0ad8ec6873fafd140"]
}

variable "instance_type" {
    default = "t2.micro"
}