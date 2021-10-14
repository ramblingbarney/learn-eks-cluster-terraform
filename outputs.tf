output "k8_admin_user_id" {
  value = aws_iam_access_key.k8_admin.id
}

output "k8_admin_user_secret" {
  value     = aws_iam_access_key.k8_admin.encrypted_secret
  sensitive = true
}

output "public-dns" {
    value = aws_instance.command_instance.*.public_dns[0]
}
output "public-ip" {
    value = aws_instance.command_instance.public_ip
}
