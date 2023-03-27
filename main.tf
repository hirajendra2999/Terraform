resource "aws_instance" "demo" {
 ami = “ami-0376ec8eacdf70aae”
 
 instance_type = “t2.micro”
profile    = "default"
 instance_type    = 't2.micro'
  tags = {
   name = "Demo System"
 }
}


 