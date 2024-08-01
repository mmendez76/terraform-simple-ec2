locals {
  public_ip_address = var.public_ip_address == "" ? "127.0.0.1" : var.public_ip_address
}
resource "aws_security_group" "main" {
  name        = "demo-${var.token}"
  description = "Allow SSH inbound traffic"
  vpc_id      = var.vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${local.public_ip_address}/32"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "main" {
  ami           = var.ami_id
  instance_type = var.instance_type

  subnet_id                   = var.subnet.id
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.main.id]
}
