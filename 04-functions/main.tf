variable "fruits" {
    default = ["apple", "banana"]
}

output "fruit" {
    //value = var.fruits[3]
    value = element(var.fruits, 2)
}

variable "fruit_with_stock" {
    default = {
        apple = 30
    }
}

output "first-stock" {
    value = try(var.fruit_with_stock["banana"], 0)
}

output "fruit_stock_price" {
    value = try(var.fruit_with_stock["apple"].price, 2)
      
        //lookup(var.fruit_with_stock["apple"], "price", 2)
}