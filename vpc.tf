resource "aws_vpc" "eks_command" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  enable_dns_hostnames = true
  tags = {
    Name = "VPC To Expose LB"
  }
}
