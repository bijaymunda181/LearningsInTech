module "web_server" {
  source = "./module/ec2"
  ami = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
}
