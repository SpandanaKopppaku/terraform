resource "aws_instance" "app_server" {
  ami                     = "ami-0991b21e0a2692e74"
  instance_type           = "t3.nano"
  vpc_security_group_ids  =[aws_security_group.allows_all.id]

}

variable "sg" {}   # step 3 : Now to use this info, declare an empty varianble and use it ( in root module, we have declared " sg = var.sgid )

output "public_ip" {
  value   = aws_instance.sample.public_ip
}