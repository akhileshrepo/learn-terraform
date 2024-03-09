variable "fruits" {
    default = ["apple", "banana"]
}

/*
output "fruit" {
    //value = var.fruits[0]
    value = element(var.fruits, 7)
}
*/

variable "fruit_with_stock" {
    default = {
        apple = {
            stock = 100
        }
    }
}

output "test" {
    value = try(var.fruit_with_stock["apple"].price, 0)
}



/*
output "fruit_stock_price" {
    value = lookup(var.fruit_with_stock["apple"], "price", 2)
    // try(var.fruit_with_stock["apple"].price, 2)
}

*/