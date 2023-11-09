resource "aws_instance" "frontend" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0e9e01d2f78b0dd9a"]

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z0929615AH1MSD5PXATC"
  name    = "frontend-dev.akhildevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongodb" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0e9e01d2f78b0dd9a"]
  
  tags = {
    Name = "mongodb"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z0929615AH1MSD5PXATC"
  name    = "mongodb-dev.akhildevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}

resource "aws_instance" "catalogue" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0e9e01d2f78b0dd9a"]

  tags = {
    Name = "catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z0929615AH1MSD5PXATC"
  name    = "catalogue-dev.akhildevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}

resource "aws_instance" "cart" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0e9e01d2f78b0dd9a"]

  tags = {
    Name = "cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id = "Z0929615AH1MSD5PXATC"
  name    = "cart-dev.akhildevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}

resource "aws_instance" "redis" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0e9e01d2f78b0dd9a"]

  tags = {
    Name = "redis"
  }
}

resource "aws_route53_record" "redis" {
  zone_id = "Z0929615AH1MSD5PXATC"
  name    = "redis-dev.akhildevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}

resource "aws_instance" "user" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0e9e01d2f78b0dd9a"]

  tags = {
    Name = "user"
  }
}

resource "aws_route53_record" "user" {
  zone_id = "Z0929615AH1MSD5PXATC"
  name    = "user-dev.akhildevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}

resource "aws_instance" "mysql" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0e9e01d2f78b0dd9a"]

  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z0929615AH1MSD5PXATC"
  name    = "mysql-dev.akhildevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}

resource "aws_instance" "shipping" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0e9e01d2f78b0dd9a"]

  tags = {
    Name = "shipping"
  }
}

resource "aws_route53_record" "shipping" {
  zone_id = "Z0929615AH1MSD5PXATC"
  name    = "shipping-dev.akhildevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}


resource "aws_instance" "rabbitmq" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0e9e01d2f78b0dd9a"]

  tags = {
    Name = "rabbitmq"
  }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z0929615AH1MSD5PXATC"
  name    = "rabbitmq-dev.akhildevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}


resource "aws_instance" "payment" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0e9e01d2f78b0dd9a"]

  tags = {
    Name = "payment"
  }
}

resource "aws_route53_record" "payment" {
  zone_id = "Z0929615AH1MSD5PXATC"
  name    = "payment-dev.akhildevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}