provider "aws" 
    region = "ap-south-1"


resource "aws_instance" "web" 
   ami = "ami-0376ec8eacdf70aae"
   instance_type = "t2.micro"
   vpc_security_group_ids = ["sg-0274e4075f215241c"]
   key-name =  "ucanapply08jan18"
   tags = 
        Env = "dev”
        Name = web
    

   provider "aws" {
  profile    = "default"
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}