variable "project" {
    default            = "cloudblitz"
    }
variable "region" {
    default           = "ap-south-1"
}
variable "vpc_cidr" {
    default           = "10.10.0.0/16"
}
variable "environment"{
    default           = "dev"
}
variable "private_cidr" {
    default          = "10.10.0.0/20"
}
variable "public_cidr" {
    default          = "10.10.16.0/20"
}

variable "instance_count" {
    default          = 2
}

variable "image_id"{
    default          = "ami-0b08bfc6ff7069aff"
}

variable "instance_type" {     
    default          = "t2.micro"
}

variable "key_pair" {
    default         = "rajmumbai"
}
