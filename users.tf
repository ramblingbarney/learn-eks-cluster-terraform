resource "aws_iam_user" "k8_admin" {
  name = "k8-admin"
}

resource "aws_iam_access_key" "k8_admin" {
  user = aws_iam_user.k8_admin.name
}
