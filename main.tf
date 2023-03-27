resource "aws_instance" "demo123" {
 ami = “ami-0376ec8eacdf70aae”
 
profile    = "default"
 instance_type    = "t2.micro"
  tags = {
   name = "Demo123 System"
 }
}


 provider “aws” {
    region = “ap-south-1”
}
 
resource “aws_instance” “myec2” {
    ami = “ami-12345qwert”
    instance_type = “t2.micro”
}