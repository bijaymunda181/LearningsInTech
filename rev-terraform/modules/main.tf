module "print_amis" {
  source = "./ami"
}

output "print_amis" {
  value = module.print_amis
}