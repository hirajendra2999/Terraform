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

resource "aws_vpc_module" "123"  {
   source = "./modules/vpc"
   project = var.project
   vpc_cidr = var.vpc_cidr
   env = var.environment
   pri_sub_cidr = var.private_cidr
   pub_sub_cidr = var.public_cidr
}

resource "aws_security_group" "my_sg" {
    name = "${var.project}-sg"
    vpc_id = module.my_vpc_module.vpc_id
    description = "allow http and https service"
  
  ingress {
    protocol = "TCP"
    from_port = 80
    to_port = 80
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    protocol = "TCP"
    from_port = 443
    to_port = 443
    cidr_blocks = ["0.0.0.0/0"]
}

 egress {
    protocol = "-1"
    from_port = 0
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
  depends_on = [ 
    module.my_vpc_module
 ]
}   
    
module "my_instance" {
  source = "./modules/instance"
  count = var.count
  image_id = var.image_id
  instance_type = var.instance_type
  key_pair = var.key_pair
  project = var.project
  env = var.environment
  subnet_id = module.my_vpc_module.pub_sub
  sg_ids = [aws_security_group.my_sg.id]
  }

# module "my_instance" {
#  source = "./modules/instance"
#  image_id = var.image_id
#  instance_type = var.instance_type
#  key_pair = var.key_pair
#  project = var.project
#  env = var.environment
#  subnet_id = module.my_vpc_module.pub
#  subnet_id = module.my_vpc_module.pub_sub
#  sg_ids =
#  }
