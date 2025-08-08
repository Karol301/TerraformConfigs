provider "aws" {
  region = "eu-north-1"
}

variable "ami" {
  description = "AMI for EC2 instance"
}

variable "instance_type" {
  description = "Instance type for EC2 instance"
}

resource "aws_instance" "aws_instance_example" {
  ami = var.ami
  instance_type = var.instance_type
}