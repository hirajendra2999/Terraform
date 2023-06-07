
variable  "region" {
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