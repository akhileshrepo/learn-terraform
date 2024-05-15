# Plain variable

variable "fruit_name" {
    default = "apple"
}

output "print_fruit_name" {
    value = var.fruit_name
}

# List variable

variable "veg_name" {
    default = [ "tomato", "potato", "onions"]
}

output "print_veg_name" {
    value = var.veg_name[2]
}

# Map variable - Plain

variable "cooler_name" {
    default = {
        LG = 5000
        sonata = 15000
    }
}

output "print_LG_cooler_cost" {
    value = var.cooler_name["LG"]
}

# Map variable - Map of Maps

variable "servers" {
    default = {
        Frontend = { name = "frontend", type = "t2.micro" }
        Catalogue = { name = "catalogue", type = "t2.micro"}
    }
}

output "print_server_frontend" {
    value = var.servers["Catalogue"].name
}

# variable - Data types

variable "data_types" {
    default = {
        apple = { stock=100, for_sale=true, type="washington"}
    }
}

output "print_fruit" {
    value = " Fruit sale is ${var.data_types["apple"].for_sale}"
}