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

variable "fruit_with_stock" {
    default = {
        apple = 100
        orange = 500
        pineapple = 1000
    }
}

output "apple_stock" {
    value = var.fruit_with_stock["apple"]
}

output "pineapple_stock" {
    value = var.fruit_with_stock["pineapple"]
}

output "orange_stock" {
    value = var.fruit_with_stock["orange"]
}

# Map of maps variable and Accessing the Map of Maps

variable "fruit_stock_with_price" {
    default = {
        apple = {
            stock = 100
            price = 50
        }
        pineapple = {
            stock = 500
            price = 40
        }
        orange = {
            stock = 500
            price = 30
        }
    }
}

output "apple_price" {
    value = var.fruit_stock_with_price["apple"].price
}











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
