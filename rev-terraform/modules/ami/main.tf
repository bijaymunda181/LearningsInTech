data "aws_ami_ids" "ami" {
  name_regex       = "Centos-*"
  owners           = ["973714476881"]
}

output "aws_ami_ids" {
  value = data.aws_ami_ids.ami
}