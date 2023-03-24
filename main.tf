
provider "aws"  {
    region "us-west-1"
}

resource "aws_instance" "web" {
   ami = "ami-84b6c97b14c54de18"
   instance_type = "t2.micro"
   vpc_security_group_ids = ["sg-e6b55c897b98b677b"]
   key-name =  "shubham-idrsa"
   tags = {
    Env = "dev”
    Name = "web"
    }
}
