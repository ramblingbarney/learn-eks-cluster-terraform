resource "aws_instance" "command_instance" {

    ami = data.aws_ami.amazon_linux.id
    instance_type = "t2.micro"

    user_data = <<-EOF
                  #!/bin/bash
                  echo "Hello, World" > index.html
                  nohup busybox httpd -f -p "${var.server_port}" &
                  EOF

    lifecycle {
      create_before_destroy = true
    }

    key_name = aws_key_pair.eks_key.key_name

    vpc_security_group_ids = [aws_security_group.eks_sg.id]

    subnet_id = aws_subnet.eks_subnet.id

    associate_public_ip_address = true
}
