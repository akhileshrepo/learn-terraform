# element Function will help in accessing the list values

variable "Fruits" {
    default = ["apple", "orange", "pineapple"]
}

output "Fruit_name" {
    value = element(var.Fruits, 0)
}

# lookup Function will help in accessing the map values

variable "fruits" {
    default = {
        apple = {
            stock = 100
            price = 10
        }
        orange = {
            stock = 200
            price = 25
        }
    }
}

output "apple_price" {
    value = lookup(lookup(var.fruits, "apple", null), "price", null)
}

output "orange_stock" {
    value = lookup(lookup(var.fruits, "orange", null), "stock", null)
}

