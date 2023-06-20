variable  "region" {
       default = "ap-south-1"
    }

variable "az1" {
  default = "ap-south-1a"
}

variable "az2" {
  default = "ap-south-1b"
}

variable "terraform-buckend" {
        default = "terraform-buckend-r271"
}

variable "vpc_name" {
    default = "cbz-vpc"
    }

variable "vpc_cidr" {
    default = "10.10.0.0/16"
}

variable "env"{
    default = "dev"
}

variable "pri_sub_cidr" {
    default = "10.10.0.0/20"
}

variable "project" {
  default = "cbz"
}

variable "pub_sub_cidr" {
    default = "10.10.16.0/20"
} 

variable "image_id" {
    default = "ami-0b08bfc6ff7069aff"  
}
variable "instance_type" {
  default = "t2.micro"
}

variable "key_pair" {
  default = "rajmumbai"
}