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
    cidr_cidr_block = var.vpc_cidr
    tags = {
        Name = "${var.project}-vpc"
        env = var.env
    }  
}

resource "aws_subnet" "pri_subnet" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = var.pri_sub_cidr
    availability_zone = var.az1
    tags = {
        Name = "${var.project}-private-subnet"
        env = var.env
    }
}

resource "aws_subnet" "pub_subnet" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = var.pub_sub_cidr
    availability_zone = var.az2
    tags = {
        Name = "${var.project}-public-subnet"
        env = var.env
    }
    map_public_ip_on_launch = true
}

resource "aws_internet_gateway" "my_igw" {
  vpc_id = aws_vpc.my_vpc.id
  tags = {
    Name = "${var.project}-igw"
    env = var.env
  }
}

resource "aws_default_route_table" "main_rt" {
  default_route_table_id = aws_vpc.my_vpc.default_route_table_id
}