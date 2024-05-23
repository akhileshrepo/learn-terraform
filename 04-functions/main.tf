variable "fruit_name" {
    default = ["apple", "pineapple"]
}

output "fruit_name" {
    count = 2
    value = element(var.fruit_name, count.index)
}

