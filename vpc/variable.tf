
variable  "region" {
       default = "ap-south-1"
    }
variable "terraform-buckend" {
        default = "terraform-buckend-r271"
}
variable "vpc_name" {
    default = "cbz-vpc"
    }
variable "vpc_name" {
    default = "cbz-vpc"
}
variable "instance_type"{
    default = "t2.micro"
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