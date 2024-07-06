variable "fruits" {
  default = ["apple", "orange", "pineapple"]
}

resource "aws_instance" "instance" {
  count         = length(var.fruits)
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"

  tags = {
#     Name = var.fruits[count.index]
    Name = element(var.fruits, count.index+1)
  }
}