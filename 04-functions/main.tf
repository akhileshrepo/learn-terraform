variable "fruits" {
    default = [ "apple", "pineapple" ]
}

output "second_fruit" {
    value = element(var.fruits, 8)
}



# variable "laptop" {
#     default = {
#         samsung = {
#             name = "samsung-dev", type = "andriod", model = 2015
#         }
#         lenovo = {
#             name = "lenovo-dev", type = "snapdragon", model = 2018
#         }
#     }
# }
#
# output "laptop" {
# #    value = lookup(lookup(var.laptop, "samsung", null), "type", null)
#     value = try(var.laptop["samsung"].type, null)
# }

