variable "project" {
    default = "cloudblitz"
    }

variable "vpc_cidr" {
    default = "10.10.0.0/16"
}

variable "env"{
    default = "dev"
}

variable "private_cidr" {
    default = "10.10.0.0/20"
}

variable "public_cidr" {
    default = "10.10.16.0/20"
}

variable "count" {
    default = 2

variable "image_id"{
    default = 
}

variable "instance_type" {
    default = "t2.micro"
}

variable "key_pair" {
    default = "10.10.16.0/20"
}