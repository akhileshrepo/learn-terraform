resource "aws_instance" "instances" {
  ami           = data.aws_ami.ami.id
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    name = var.name
  }
}

resource "aws_route53_record" "records" {
  name      = "${var.name}.akhildevops.online"
  type      = "A"
  zone_id   = var.zone_id
  ttl       = 30
  records   = [aws_instance.instances.private_ip]
}

