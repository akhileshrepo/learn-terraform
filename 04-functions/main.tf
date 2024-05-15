variable "fruits" {
    default = ["apple", "banana"]
}

/*
output "fruit" {
    //value = var.fruits[0]
    value = element(var.fruits, 7)
}
*/

output "fruits" {
    value = try(var.fruit_with_stock["banana"], null)
}



variable "fruit_with_stock" {
    default = {
        apple = {
            stock = 100
            price = 500
        }
    }
}


/*
output "fruit_stock_price" {
    value = lookup(var.fruit_with_stock["apple"], "price", 2)
    // try(var.fruit_with_stock["apple"].price, 2)
}

*/