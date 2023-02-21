resource "aws_security_group" "allow_inbound_ssh" {
  ingress {
    description      = "Allow TLS"
    from_port        = 22
    to_port          = 4000
    protocol         = tcp
    cidr_blocks      = ["0.0.0.0/0"]
  }

   tags = {
    Name = "allow_tls"
  }
}