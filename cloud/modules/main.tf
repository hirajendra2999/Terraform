resource "aws_vpc" "my_vpc" {
cidr
  tags = {
    Name =  "${var.project}-vpc"
    env = var.env
  }
}

