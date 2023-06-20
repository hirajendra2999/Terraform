resource "aws_vpc" "my_vpc" {
cidr_block = "10.10.0.0/16"
  tags = {
    Name =  "${var.project}-vpc"
    env = var.env
  }
}

resource "aws_subnet" "pri_subnet" {
  vpc_id = aws_vpc.my_vpc.id
  cidr_block = "10.10.16.0/20"
  tags = { 
    Name =  "${var.project}-private_subnet"
    env = var.env
  }
}

resource "aws_subnet" "pub_subnet" {
  vpc_id = aws_vpc.my_vpc.id
  cidr_block = "10.10.0.0/20"
  tags = { 
    Name =  "${var.project}-public_subnet"
    env = var.env
  }
  map
}