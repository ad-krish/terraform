resource "aws_instance" " " {
  ami                    = var.ami
  key_name               = aws_key_pair.tera-key.key_name
  vpc_security_group_ids = ["${aws_security_group.terraform_SG.id}"]
  instance_type          = var.ins_type
  tags = {
    Name = "terraform"
  }
  user_data = file("${path.module}/script.sh")

  provisioner "file" {
    source = file("${path.module}/readme.md")
    destination = "/tmp/readme.md"
    connection {
      type = "ssh"
      user = "centos"
      private_key = file("${path.module}/id_rsa")
      host = "${self.terraform_instance.public_ip}"
    }
  }
}
