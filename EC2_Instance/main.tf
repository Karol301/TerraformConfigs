provider "aws" {
    region = "eu-north-1"
}

resource "aws_instance" "EC2_Instance" {
  ami = var.ami_value
  instance_type = var.instance_type
  subnet_id = var.subnet_id
}