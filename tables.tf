# create a new route table for attaching my_internet_gateway into my_vpc.
resource "aws_route_table" "my_public_route_table" {
    vpc_id = aws_vpc.eks_command.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.my_internet_gateway.id
    }
}

resource "aws_route_table_association" "my_public_route_table_association" {
  subnet_id = aws_subnet.eks_subnet.id
  route_table_id = aws_route_table.my_public_route_table.id
}
