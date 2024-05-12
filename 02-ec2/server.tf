resource "aws_instance" "web" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0e9e01d2f78b0dd9a"]

  tags = {
    Name = "HelloWorld"
  }
}