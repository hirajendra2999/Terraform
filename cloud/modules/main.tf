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

resource "aws_vpc_module"  {
   source = "./modules/vpc"
   project = var.project
   vpc_cidr = var.vpc_cidr
}