resource "aws_security_group" "allows_all" {
  name        = "allows_${var.COMPONENT}"
  description = "Allows SSH inbound traffic"

  ingress {
    description = "SSH from VPC"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allows_${var.COMPONENT}"
  }
}

# Step 1 : Declaring the output that we wish to pass to the root Module
output "sgid" {
    value = aws_security_group.allows_all.id
}