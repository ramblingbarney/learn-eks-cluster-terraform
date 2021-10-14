resource "aws_iam_user_policy" "k8_admin_p" {
  name = "admin_access"
  user = aws_iam_user.k8_admin.name

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "*",
      "Resource": "*"
    }
  ]
}
EOF
}
