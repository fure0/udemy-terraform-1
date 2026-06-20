resource "aws_instance" "server" {
  ami           = "ami-0d71b1617df761282"
  instance_type = var.instance_type

  tags = {
    Name = "TestWebserver"
  }
  user_data = <<EOF
  #!/bin/bash
  amazon-linux-extras install -y nginx1.12
  systemctl start nginx
  EOF
}
