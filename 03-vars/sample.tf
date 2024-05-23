# Plain variable

variable "fruit_name" {
    default = "apple"
}

output "fruit_name" {
    value = var.fruit_name
}

# List variable

variable "laptop" {
    default = ["hp", "samsung", "DELL"]
}

output "laptop" {
    value = var.laptop
}


# Map variable

variable "mouse" {
    default = {
        mouse1 = "hp"
        mouse2 = "lenovo"
        mouse3 = "samsung"
    }
}

output "mouse" {
    value = var.mouse
}


















## Map variable - Map of Maps
#
#variable "cars" {
#    default = {
#        Nexa ={ name="nexa", model="GDSJSB2541", type="rooftop"}
#        Alto ={ name="alto", model="GDSJSB65541", type="sunroof"}
#    }
#}
#
#output "cars" {
#    value = var.cars["Alto"].type
#}
#
#
### variable - Data types
#
#variable "fruits" {
#    default = {
#        name = "apple"
#        brand = "washington"
#        for_sale = true
#    }
#}
#
#output "fruits" {
#    value = var.fruits["name"]
#}
#
### If you're accessing variable in combination with string, should use - ${}
#
#output "message" {
#    value = "Car name is ${var.cars["Nexa"].name}, Car model is ${var.cars["Nexa"].model}, type is ${var.cars["Nexa"].type}"
#}

