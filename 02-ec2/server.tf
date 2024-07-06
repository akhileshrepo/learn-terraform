resource "aws_instance" "instance" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform"
  }
}
