variable "components" {
  default = ["mongodb", "catalogue"]
}


resource "aws_instance""instance" {
  count = 2
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_groups

  tags = {
    Name = ""
  }
}
