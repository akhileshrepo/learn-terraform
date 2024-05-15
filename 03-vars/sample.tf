# Plain variable

variable "fruit_name" {
    default = "apple"
}

output "print_fruit_name" {
    value = var.fruit_name
}
