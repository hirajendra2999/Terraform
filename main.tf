resource "aws_instance" "demo" {
 ami = “ami-0376ec8eacdf70aae”
 
profile    = "default"
 instance_type    = 't2.micro'
     region     = "ap-south-1"
     key-name =  "ucanapply08jan18"
 tags = {
   name = "Demo System"
 }
}


resource "aws_instance" "demo" {
 ami = “ami-00831fc7c1e3ddc60”
 instance_type = “t2.micro”

 tags = {
   name = "Demo System"
 }
}