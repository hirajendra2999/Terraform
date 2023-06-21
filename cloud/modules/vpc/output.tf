output "subnet_id" {
  values = aws_subnet.pri_subnet.sg_ids
}