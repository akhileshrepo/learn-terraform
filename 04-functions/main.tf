variable "fruit_name" {
    default = ["apple", "pineapple"]
}

output "fruit_name" {
    value = element(var.fruit_name, count.index)
}