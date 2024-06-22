resource "aws_instance" "instances" {
  ami                       = data.aws_ami.ami.id
  instance_type             = var.instance_type
  vpc_security_group_ids    = var.vpc_security_group_ids

  tags = {
    Name = var.name
  }
}

resource "aws_route53_record" "records" {
  zone_id = var.zone_id
  name    = "${var.name}-dev.akhildevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instances.private_ip]
}



