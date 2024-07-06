resource "aws_instance" "instance" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0ad8ec6873fafd140"]

  tags = {
    Name = "Terraform"
  }
}

resource "aws_route53_record" "record" {
  zone_id = "Z093842334KRCLE5WWCFA"
  name    = "terraform.akhildevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instance.private_ip]
}
