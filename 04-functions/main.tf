# element Function will help in accessing the list values

variable "fruits" {
    default = [ "apple", "pineapple" ]
}

output "second_fruit" {
#     value = var.fruits[3]
    value = element(var.fruits, 5)
}

# lookup Function will help in accessing the map values

variable "fruits_stock_with_price" {
    default = {
        apple = {
            stock = 100
            price = 50
        }
        orange = {
            stock = 600
            price = 40
        }
    }
}

output "apple_stock" {
#     value = var.fruits_stock_with_price["apple"].stock
    value = lookup(lookup(var.fruits_stock_with_price, "apple", null), "stock", null)
}

