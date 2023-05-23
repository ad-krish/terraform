resource "aws_key_pair" "tera-key" {
  key_name   = "tera-key"
  public_key = file("${path.module}/id_rsa.pub")
}

output "keyname" {
  value = aws_key_pair.tera-key.key_name
}