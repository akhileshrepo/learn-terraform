module "test" {
    source    = "./local-module"
    vpc_security_group_ids  = var.vpc_security_group_ids
    instance_type           = var.instance_type
}

variable "vpc_security_group_ids" {
    default = ["sg-0e9e01d2f78b0dd9a"]
}

variable "instance_type" {
    default = "t2.micro"
}

