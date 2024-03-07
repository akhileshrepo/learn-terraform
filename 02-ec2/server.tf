resource "aws_instance" "web" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}