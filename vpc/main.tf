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
  
}