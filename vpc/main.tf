terraform{
    backend "s3" {
        bucket = "terraform-buckend-r271"
        region = "ap-south-1"
        key = "terraform.tfstate"
    }
}

provider "aws" {
    region = var.region
}

resource "aws_vpc" "my_vpc" {
    name = var.vpc_name
    cidr =  var.vpc_cidr
    tags = {
        Name = "cbz-vpc"
        env = var.env
    }
  
}

resource "aws_subnet" "pri_subnet" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = var.pri_sub_cidr
    availability_zone  
}