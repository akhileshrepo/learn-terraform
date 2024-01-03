variable "fruits" {
    default = ["apple", "banana"]
}

/*
output "fruit" {
    //value = var.fruits[1]
    value = element(var.fruits, 5)
}
*/

variable "fruit_with_stock" {
    default = {
        apple = {
            stock = 100
        }
    }
}

output "fruit_stock" {
    value = try(var.fruit_with_stock["banana"].stock, 0)
}

/*
output "fruit_stock_price" {
    value = lookup(var.fruit_with_stock["apple"], "price", 2)
    // try(var.fruit_with_stock["apple"].price, 2)
}
*/
