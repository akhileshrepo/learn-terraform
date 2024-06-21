data "aws_ami_id" "ami" {
  name_regex = "Centos-*"
  owners     = ["973714476881"]
}

output "ami" {
  value = data.aws_ami_id.ami
}