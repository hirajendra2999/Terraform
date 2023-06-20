resource "aws_vpc" "my_vpc" {
  tags = {
    Name =  "${var.project}-vpc"
  }
}