
provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" {
    ami = "ami-0b08bfc6ff7069aff"
    {
    instance_type = "t2.micro"
    key-name = "ucanapply08jan18"
}
