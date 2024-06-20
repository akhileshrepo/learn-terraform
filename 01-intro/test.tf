variable "test" {
  default = "Hello world"
}

output "message" {
  value = var.test
}