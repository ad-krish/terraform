resource "aws_security_group" "terraform_SG" {
  name        = "terraform_SG"
  description = "Allow TLS inbound traffic"

  dynamic "ingress" {
    for_each = var.ports
    iterator = port
    content {
      description = "TLS from VPC"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  tags = {
    Name = "terraform_SG"
  }
}

output "Security_Group" {
  value = aws_security_group.terraform_SG.id
}