variable "fruit_name" {
    default = ["apple", "pineapple"]
}

output "fruit_name" {
    value = try(var.fruit_name, 2, null)
}

