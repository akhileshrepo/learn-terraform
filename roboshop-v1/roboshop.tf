resource "aws_instance" "frontend" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"

  tags = {
    Name = "Frontend"
  }
}

resource "aws_route53_record" "www" {
  zone_id = "Z0929615AH1MSD5PXATC"
  name    = "frontend-dev.akhildevops.online"
  type    = "A"
  ttl     = 30
  records = "aws_instance.frontend.private_ip"
}

