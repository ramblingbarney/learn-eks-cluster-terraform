resource "aws_key_pair" "eks_key" {
    key_name = "learning_eks_cluster"
    public_key = file("~/.ssh/id_rsa.pub")
}
