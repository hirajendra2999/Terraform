output "pri_subnet_id" {
  value = aws_subnet.pri_subnet.id
}

output "pub_subnet_id" {
  value = aws_subnet.pub_subnet.id
}

output "vpc_id" {
  value = aws_vpc.my_vpc.id
}
