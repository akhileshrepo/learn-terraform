# Plain variable and Accessing the plain variable

variable "fruits" {
    default = "apple"
}

output "fruits" {
    value = var.fruits
}

# List variable and Accessing the list variable

variable "fruits_list" {
    default = ["apple", "pineapple", "orange"]
}

output "first_fruit" {
    value = var.fruits_list[0]
}

# output "second_fruit" {
#     value = var.fruits_list[1]
# }
#
# # Map variable and Accessing the map variable
#
# variable "fruit_with_stock" {
#     default = {
#         apple = 100
#         orange = 500
#         pineapple = 1000
#     }
# }
#
# output "apple_stock" {
#     value = var.fruit_with_stock["apple"]
# }
#
# output "pineapple_stock" {
#     value = var.fruit_with_stock["pineapple"]
# }
#
# output "orange_stock" {
#     value = var.fruit_with_stock["orange"]
# }
#
# # Map of maps variable and Accessing the Map of Maps
#
# variable "fruit_stock_with_price" {
#     default = {
#         apple = {
#             stock = 100
#             price = 50
#         }
#         pineapple = {
#             stock = 500
#             price = 40
#         }
#         orange = {
#             stock = 500
#             price = 30
#         }
#     }
# }
#
# output "apple_price" {
#     value = var.fruit_stock_with_price["apple"].price
# }
#
# output "pineapple_price" {
#     value = var.fruit_stock_with_price["pineapple"].price
# }
#
# output "orange_price" {
#     value = var.fruit_stock_with_price["orange"].price
# }
#
# # variable Data types - Accessing variable Data type
#
# variable "data_type" {
#     default = {
#         fruit_name = "apple"
#         fruit_stock = 500
#         fruit_sale = true
#     }
# }
#
# output "fruit_name_datatype" {
#     value = var.data_type["fruit_name"]
# }
#
# output "fruit_stock_datatype" {
#     value = var.data_type["fruit_stock"]
# }
#
# output "fruit_sale_datatype" {
#     value = var.data_type["fruit_sale"]
# }
#
# # if you're accessing variable in combination of string. you should access the variable with ${}
#
# variable "devops" {
#     default = [ "Terraform", "Variables"]
# }
#
# output "welcome_message" {
#     value = "Welcome to ${var.devops[0]}, learn the ${var.devops[1]}"
# }






