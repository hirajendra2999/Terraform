variable  "region" {
       default = "ap-south-1"
    }

variable "az1" {
  default = "ap-south-1"
}

variable "az2" {
  default = "ap-south-1"
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
    default = "10.0.0.0/20"
}
variable "project" {
  default = "cbz"
}

variable "pri_sub_cidr" {
    default = "10.0.0.0/20"
}

variable "subnet_name" {
defdefault = "cbz-private-subnet"  
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