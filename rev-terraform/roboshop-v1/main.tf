variable "components" {
  default = ["mongodb", "catalogue"]
}


resource "aws_instance""instance" {
  count = 2
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-03df7f4a9485bc781"]

  tags = {
    Name = ""
  }
}
