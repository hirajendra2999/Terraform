output "pri_subnet_id" {
  values = aws_subnet.pri_subnet.sg_id
}

output "pub_subnet_id" {
  values = aws_subnet.pri_subnet.sg_id
}