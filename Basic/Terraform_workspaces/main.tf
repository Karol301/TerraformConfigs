provider "aws" {
  region = "eu-north-1"
}

variable "ami" {
  description = "AMI for EC2 instance"
}

variable "instance_type" {
  description = "Instance type for EC2 instance"
}

module "EC2_Instance" {
  source = "./modules/EC2_instance"
  ami = var.ami
  instance_type = var.instance_type
}