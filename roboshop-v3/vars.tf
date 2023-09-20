
variable "security_groups" {
  default     = ["sg-0d3e4cc237236453f"]
}

variable "zone_id" {
    default = "Z045851830X54L3IRT9GH"
}

variable "components" {
    default = {
        frontend = {
            name = "frontend"
            instance_type = "t3.micro"
        }
        cart = {
            name = "cart"
            instance_type = "t3.micro"
        }
    }
}