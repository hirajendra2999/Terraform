terraform{
    backend "s3" {
        bucket = "terraform-buckend-r27"
        region = "ap-south-1"
        key = "terraform.tfstate"
    }
}

provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance"  "my_instance"{
    ami = var.ami_ids
    instance_type = var.instance_type
    key_name = var.key_pair
    tags = var.tags
    vpc_security_group_ids = var.sg_ids
}

variable  "region" {
    description = "please enter resion"
    default = "ap-south-1"
}
variable "key_pair" {
    default = "rajmumbai"
}
variable "ami_ids" {
    default = "ami-0b08bfc6ff7069aff"
}
variable "instance_type"{
    default = "t2.micro"
}

variable  "tags" {
    type = map
    default= {
        env="dev"
        Name = "my-instance"
    }
}
variable  "sg_ids" {
    type = list 
    default = ["sg-0bcd5fa924b7d0ef0"]
    
}
