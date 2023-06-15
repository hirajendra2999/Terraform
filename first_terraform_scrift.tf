/*terraform {
    backend "s3" {
        bucket = "terraform-buckend-r271"
        region = "ap-south-1"
        key = "terraform.tfstate"
    }
}
*/


provider "aws" {
    region = var.region
}

resource "aws_instance"  "my_instance"{
    ami = var.ami_ids
    instance_type = var.instance_type
    key_name = var.key_pair
    tags =  {
        env = "dev"
        Name = "instance-1"
    }
    vpc_security_group_ids = ["sg-0bcd5fa924b7d0ef0"]
}

variable  "region" {
    description = "please enter resion"
    default = "ap-south-1"
    }
variable "instance_type"{
    default = "t2.micro"
}
variable "key_pair" {
    default = "rajmumbai"
}
variable "ami_ids" {
    default = "ami-0b08bfc6ff7069aff"

}
variable  "tags" {
    type = map
    default= {
        env="dev"
        Name = "my-instance"
    }
}
#variable  "sg_ids" {
#    type = list 
#    default = ["sg-0bcd5fa924b7d0ef0"]
# 
#  }
output "demo" {
    value = "Hello World"
}
output "public_ip"{
        value = aws_instance.my_instance.public_ip
}