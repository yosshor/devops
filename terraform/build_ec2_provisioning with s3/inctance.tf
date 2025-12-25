resource "aws_instance" "web" {
  ami                    = var.amiID[var.region] #data.aws_ami.amiID.id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.terraform-key.key_name
  vpc_security_group_ids = [aws_security_group.terraform-sg.id]
  availability_zone      = var.zone1

  tags = {
    Name    = "terraform-instance"
    Project = "terraform-project"
  }

  provisioner "file" {
    source      = "web.sh"
    destination = "/tmp/web.sh"
  }


  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/web.sh",
      "sudo /tmp/web.sh",
    ]
  }
  provisioner "local-exec" {
    command = "echo ${self.private_ip} > private_ip.txt"
  }

  connection {
    type        = "ssh"
    host        = self.public_ip
    user        = var.web_user
    private_key = file("/terraform-key")
  }

}



resource "aws_ec2_instance_state" "web_state" {
  instance_id = aws_instance.web.id
  state       = "running"
}

output "private_ip" {
  value       = aws_instance.web.private_ip
  description = "Private IP address of the instance"
}

output "public_ip" {
  value       = aws_instance.web.public_ip
  description = "Public IP address of the instance"
}