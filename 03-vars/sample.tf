# plain value
variable "fruit_name" {
    default = "apple"
}

output "fruit_name" {
    value = var.fruit_name
}

# List variable
variable "fruits" {
    default = ["apple", "banana", "Mango"]
}


# Map variable plain
variable "fruit_stock"{
    default = { apple = 100, banana = 209}
}

# Map variable, Map of maps
variable "fruit_stock_with_price" {
    default = {
        apple = {
            stock = 100
            price = 2
        }
        banana = {
            stock = 400
            price = 5
        }
    }
}

## Access list variable, list index starts from zero
output "fruits_first" {
    value = var.fruits[0]
}
output "fruits_second" {
    value = var.fruits[1]
}

## Access a Map variable

output "fruit_stock_apple" {
    value = var.fruit_stock["apple"]
}

output "fruit_stock_with_price_apple" {
    value = var.fruit_stock_with_price["apple"].stock
}

#variable data types

variable "fruit_details" {
    default = {
        apple = {
            stock = 100   ##Number
            type = "washington"    ##string
            for_sale = true     ##Boolean
        }
    }
}

#variable in combination of any string it needs to be in ${}

output "fruit_name_1" {
    value = "Fruit Name = ${var.fruit_name}"
}

output "fruit_details_apple" {
    value = "Apple stock = ${var.fruit_details[apple].stock} , Apple Type = ${var.fruit_details[apple].type} , Apple sale status = ${var.fruit_details[apple].for_sale}"
}


    
