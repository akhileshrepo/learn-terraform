module "test" {
    source    = "./local-module"
}

output "ami" {
    value = module.test
}