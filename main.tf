resource "aws_instance" "demo" {
 ami = “ami-0376ec8eacdf70aae”
 instance_type = “t2.small”
profile    = "default"
     region     = "ap-south-1"
     key-name =  "ucanapply08jan18"
 tags = {
   name = "Demo System"
 }
}