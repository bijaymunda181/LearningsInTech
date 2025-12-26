variable "components" {
  default = ["mongodb", "catalogue"]
}


resource "aws_instance""instance" {
  count = length(var.components)
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-03df7f4a9485bc781"]

  tags = {
    // Name = var.components[count.index] # Dont use this because when you add more variable in front of mongodb index will change.so it will destory the server and create new server as the index.
  Name = element(var.components,count.index )
  }
}
