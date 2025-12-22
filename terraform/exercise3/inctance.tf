resource "aws_instance" "web" {
  ami                    = data.aws_ami.amiID.id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.terraform-key.key_name
  vpc_security_group_ids = [aws_security_group.terraform-sg.id]
  availability_zone      = var.zone1

  tags = {
    Name    = "terraform-instance"
    Project = "terraform-project"
  }
}

resource "aws_ec2_instance_state" "web_state" {
  instance_id = aws_instance.web.id
  state       = "running"
}   