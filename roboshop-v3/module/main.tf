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


resource "null_resource" "ansible" {
  depends_on = [aws_route53_record.records]

  provisioner "local-exec" {
    command = <<EOF
cd /home/centos/ansible
git pull
sleep 30
ansible-playbook -i ${var.name}.vinithaws.online, -e ansible_user=centos -e ansible_password=DevOps321 main.yml -e component=${var.name}
EOF
  }
}
