# Plain variable and Accessing the plain variable

variable "fruits" {
    default = "apple"
}

output "fruits" {
    value = var.fruits
}

# List variable

variable "fruits_list" {
    default = ["apple", "pineapple", "orange"]
}

output "first_fruit" {
    value = var.fruits_list[0]
}


# # Map variable
#
# variable "mouse" {
#     default = {
#         mouse1 = "hp"
#         mouse2 = "lenovo"
#         mouse3 = "samsung"
#     }
# }
#
# output "mouse" {
#     value = var.mouse
# }
#
# output "mouse1" {
#     value = var.mouse["mouse1"]
# }
#
#
# # Map of maps variable
#
# variable "fruit" {
#     default = {
#         apple = { name = "apple", type = "washington"}
#         pineapple = { name = "pineapple", type = "simla"}
#         guava    = { name = "guava", type = "thyroid"}
#     }
# }
#
# output "fruit" {
#     value = var.fruit
# }
#
# output "fruit_apple" {
#     value = var.fruit["apple"].name
# }
#
# # variable - Data type
#
# variable "datatype" {
#     default = {
#         fruit_name = "apple"
#         fruit_quantity = 100
#         fruit_sale = true
#     }
# }
#
# output "fruit_sale" {
#     value = var.datatype["fruit_sale"]
# }
#
#
# # If you're accessing variable in combination with string, should use - ${}
#
# output "fruit_message" {
#     value = "Fruit Name is ${var.fruit["apple"].name}, Fruit Type is ${var.fruit["pineapple"].type}, Fruit Quantity is ${var.datatype["fruit_quantity"]}, Fruit Sale is ${var.datatype["fruit_sale"]}"
# }
