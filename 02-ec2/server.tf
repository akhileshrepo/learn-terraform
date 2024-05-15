resource "aws_instance" "devops" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
}