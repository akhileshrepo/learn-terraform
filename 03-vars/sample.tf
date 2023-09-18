# plain value
variable "fruit_name" {
    default = "apple"
}

output "fruit_name" {
    value = var.fruit_name
}

# List variable
variable "fruits" {
    default = ["apple", "banana", "Mango']
}
