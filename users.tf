resource "aws_iam_user" "k8_admin" {
  name = "8-admin"
}

resource "aws_iam_access_key" "k8_admin" {
  user = aws_iam_user.k8_admin.name
}

resource "aws_iam_secret_key" "k8_admin" {
  user = aws_iam_user.k8_admin.name
}
