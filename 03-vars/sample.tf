# Plain variable

variable "fruit_name" {
    default = "apple"
}

output "fruit_name" {
    value = var.fruit_name
}

# List variable

variable "veg_name" {
    default = ["neem", "tomato", "carrot", "potato"]
}

output "veg_name" {
    value = var.veg_name[0]
}
## Map variable - Plain
#
#variable "cooler_name" {
#    default = {
#        LG = 5000
#        sonata = 15000
#    }
#}
#
#output "print_LG_cooler_cost" {
#    value = var.cooler_name["LG"]
#}
#
## Map variable - Map of Maps
#
#variable "servers" {
#    default = {
#        Frontend = { name = "frontend", type = "t2.micro" }
#        Catalogue = { name = "catalogue", type = "t2.micro"}
#    }
#}
#
#output "print_server_frontend" {
#    value = var.servers["Catalogue"].name
#}
#
## variable - Data types
#
#variable "data_types" {
#    default = {
#        apple = { stock=100, for_sale=true, type="washington"}
#    }
#}
#
## If you're accessing variable in combination with string, should use - ${}
#
#output "print_fruit" {
#    value = " Fruit sale is ${var.data_types["apple"].for_sale}, Fruit Type = ${var.data_types["apple"].type}"
#}