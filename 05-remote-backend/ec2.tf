# Creates EC2

resource "aws_instance" "app_server" {
  ami                     = "ami-0991b21e0a2692e74"
  instance_type           = "t3.nano"


tags = {
    Name = "Linux_server_with_Remote.backend"
  }
}