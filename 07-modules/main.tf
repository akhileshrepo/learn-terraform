module "test" {
    source    = "./local-module"
    ami                     = var.ami
    vpc_security_group_ids  = var.vpc_security_group_ids
    instance_type           = var.instance_type
}


variable "ami" {
    default = "ami-0f3c7d07486cad139"
}

variable "vpc_security_group_ids" {
    default = ["sg-0e9e01d2f78b0dd9a"]
}

variable "instance_type" {
    default = "t2.micro"
}