# Creating 1st subnet
resource "aws_subnet" "eks_subnet" {
  vpc_id                  = aws_vpc.eks_command.id
  cidr_block              = var.subnet_cidr
  map_public_ip_on_launch = true
  availability_zone       = "eu-west-1a"
  tags = {
    Name = "Demo subnet"
  }
}
