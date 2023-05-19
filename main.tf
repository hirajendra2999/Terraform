 provider “aws” {
    region = “ap-south-1”
}
 
resource “aws_instance” “myec2” {
    ami = “ami-0b08bfc6ff7069aff”
    {
    instance_type = “t2.micro”
}
}