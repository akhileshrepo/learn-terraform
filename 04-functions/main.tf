variable "fruits" {
    default = ["apple", "pineapple"]
}

output "fruits" {
    value = var.fruits[5]
}




#
#output "apple_stock" {
##    value = try(var.fruit_with_stock["apple"].stock, 1000)
#    value = lookup(var.fruit_with_stock["apple"], "price", 1000)
#}
#
#
#
#variable "fruit_with_stock" {
#    default = {
#        apple = {
#            price = 500
#        }
#    }
#}
#
#
#/*
#output "fruit_stock_price" {
#    value = lookup(var.fruit_with_stock["apple"], "price", 2)
#    // try(var.fruit_with_stock["apple"].price, 2)
#}
#
#*/