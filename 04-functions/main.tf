variable "fruit_name" {
    default = ["apple", "pineapple"]
}

output "fruit_name" {
    value = var.fruit_name[1]
    #value = element(var.fruit_name, 2)
}

variable "laptop" {
    default = {
        samsung = {
            name = "samsung-dev", type = "andriod", model = 2015
        }
        lenovo = {
            name = "lenovo-dev", type = "snapdragon", model = 2018
        }
    }
}

output "laptop" {
#    value = lookup(lookup(var.laptop, "samsung", null), "type", null)
    value = try(var.laptop["samsung"].type, null)
}

