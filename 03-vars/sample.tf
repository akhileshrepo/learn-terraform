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

output "second_fruit" {
    value = var.fruits_list[1]
}

# Map variable and Accessing the map variable

variable "fruit_stock" {
    default = {
        apple = 500
        pineapple = 100
        orange = 600
    }
}

output "apple_stock" {
    value = var.fruit_stock["apple"]
}

output "pineapple_stock" {
    value = var.fruit_stock["pineapple"]
}

output "orange" {
    value = var.fruit_stock["orange"]
}

# Map of maps variable and Accessing the Map of Maps

variable "Fruit_message" {
    default = {
        apple = {
            stock = 100
            type  = "washington"
            for_sale = true
        }
        orange = {
            stock = 150
            type = "assam"
            for_sale = true
        }
        pineapple = {
            stock = 250
            type  = "delhi"
            for_sale = true
        }
    }
}

output "Fruit_message_apple" {
    value = var.Fruit_message["apple"].type
}

output "Fruit_message_orange" {
    value = var.Fruit_message["orange"].type
}

output "Fruit_message_pineapple" {
    value = var.Fruit_message["pineapple"].type
}

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






