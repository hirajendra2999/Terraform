   terraform 
  required_providers {
    aws = {
      source = "hashicorp/aws"
  profile    = "default"
     region     = "ap-south-1"

   ami           = "ami-0376ec8eacdf70aae"
  instance_type = "t2.micro"
   vpc_security_group_ids = ["sg-0274e4075f215241c"]
   key-name =  "ucanapply08jan18"
}
}

resource "aws_instance" "demo" {
 ami = “ami-0376ec8eacdf70aae”
 instance_type = “t2.micro”
profile    = "default"
     region     = "ap-south-1"
 tags = {
   name = "Demo System"
 }
}