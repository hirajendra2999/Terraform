resource "aws_vpc" "my_vpc" {
cidr_block = "10.10.0.0/16"
  tags = {
    Name =  "${var.project}-vpc"
    env = var.env
  }
}

resource "aws_subnet" "main" {
  vpc_id = aws_vpc.
  cidr_block = "10.10.0.0/16"
  tags = {
    Name =  "${var.project}-vpc"
    env = var.env
  }
}