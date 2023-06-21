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
   env = var.environment
   pri_sub_cidr = var.private_cidr
   pub_sub_cidr = var.public_cidr
}

module "my_instance" {
  source = "./modules/instance"
  count = var.count
  image_id = var.image_id
  instance_type = var.instance_type
  key_pair = var.key_pair
}