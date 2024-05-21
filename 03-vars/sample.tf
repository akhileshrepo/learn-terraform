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

#Map variable

variable "test" {
    default = {
        fruit_name = "apple"
        quantity   = 100
        for_sale   = true
    }
}

output "fruit_stock_name" {
    value = var.test["fruit_name"]
}

output "fruit_stock_number" {
    value = var.test["quantity"]
}

# Map variable - Map of Maps

variable "cars" {
    default = {
        Nexa ={ name="nexa", model="GDSJSB2541", type="rooftop"}
        Alto ={ name="alto", model="GDSJSB65541", type="sunroof"}
    }
}

output "cars" {
    value = var.cars["Alto"].type
}



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