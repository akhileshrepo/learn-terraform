variable "fruits" {
    default = ["apple", "pineapple"]
}

output "fruits" {
#    value = var.fruits[1]
    value = element(var.fruits, 10)
}




variable "fruit_with_stock" {
    default = {
        pineapple = {
            price = 500
            type = "washington"
        }
    }
}

output "fruit_with_stock" {
    value = lookup(lookup(var.fruit_with_stock, "apple", null), "type", null)
}