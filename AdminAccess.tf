resource "aws_security_group" "noncompliant_allow_inbound_ssh" {
  ingress {
    from_port        = 22
    to_port          = 4000
    protocol         = tcp
    cidr_blocks      = ["0.0.0.0/0"] # Noncompliant
  }
}