output "key_name" {
  value = aws_key_pair.key_pair.key_name
}

output "key_fingerprint" {
  value = aws_key_pair.key_pair.fingerprint
}

output "public_key" {
  value = aws_key_pair.key_pair.public_key
}