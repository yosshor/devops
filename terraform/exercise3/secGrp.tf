resource "aws_security_group" "terraform-sg" {
  name        = "terraform-sg"
  description = "Security group for Terraform"
  tags = {
    Name = "terraform-sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "sshFromMyIP" {
  security_group_id = aws_security_group.terraform-sg.id
  from_port         = 22
  to_port           = 22
  ip_protocol       = "tcp"
  #   cidr_ipv4         = "172.20.60.17/32"
  cidr_ipv4 = "212.187.200.154/32"
}


resource "aws_vpc_security_group_ingress_rule" "allow_http" {
  security_group_id = aws_security_group.terraform-sg.id
  from_port         = 80
  to_port           = 80
  ip_protocol       = "tcp"
  cidr_ipv4         = "0.0.0.0/0"
}


resource "aws_vpc_security_group_egress_rule" "allow_all_ipv4" {
  security_group_id = aws_security_group.terraform-sg.id
  ip_protocol       = "-1" # all ports
  cidr_ipv4         = "0.0.0.0/0"
}


resource "aws_vpc_security_group_egress_rule" "allow_all_ipv6" {
  security_group_id = aws_security_group.terraform-sg.id
  ip_protocol       = "-1" # all ports
  cidr_ipv6         = "::/0"
}