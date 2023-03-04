resource "tls_private_key" "key_pair" {
  algorithm = "ED25519"
}

resource "local_file" "key_pair" {
  content = tls_private_key.key_pair.private_key_pem
  filename = "${var.name}.pem"
}

resource "aws_key_pair" "key_pair" {
  key_name = var.name
  public_key = tls_private_key.key_pair.public_key_openssh
}