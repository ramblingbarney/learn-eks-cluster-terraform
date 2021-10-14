resource "aws_vpc" "eks_command" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  tags = {
    Name = "VPC To Expose LB"
  }
}
