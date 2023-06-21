output "pri_subnet_id" {
  values = aws_subnet.pri_subnet.id
}

output "pub_subnet_id" {
  values = aws_subnet.pub_subnet.id
}