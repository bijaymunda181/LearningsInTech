resource "aws_security_group" "terraform-sg" {
  name        = "terraform-sg"

  tags = {
    Name = "terraform-Sg"
  }
}