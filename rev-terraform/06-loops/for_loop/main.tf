variable "components" {
  default = {
    catalogue = {name = "catalogue_sg1"}
    mongodb ={name = "mongodb_sg1"}
  }
}

resource "aws_security_group" "allow_tls" {
  for_each = var.components
  name = lookup(var.components,each.value["name"], null )
  }
