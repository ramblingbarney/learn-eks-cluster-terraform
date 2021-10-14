output "aws_secret_key" {
  value = aws_iam_secret_key.k8_admin.encrypted_secret
}

output "aws_access_key" {
  value = aws_iam_access_key.k8_admin.encrypted_secret
}
