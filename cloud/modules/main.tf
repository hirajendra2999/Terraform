resource "aws_vpc" "my_vpc" {
cidr_block = "10.10.0.0/16"
  tags = {
    Name =  "${var.project}-vpc"
    env = var.env
  }
}

resource "aws_subnet" "name" {
  
}