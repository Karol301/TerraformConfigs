# Define instance type as a variable
variable "instance_type" {
  description = "AWS EC2 instance type"
  type = string
  default = "t3.micro"
}

# Configure AWS providers for different regions
provider "aws" {
  alias = "eu-north-1"
  region = "eu-north-1"
}

provider "aws" {
  alias = "eu-west-1"
  region = "eu-west-1"
}

# Create EC2 instance in eu-north-1 
resource "aws_instance" "aws_instance_example1" {
  ami = "ami-0c55b159cbfafe1f0"
  instance_type = var.instance_type
  provider = aws.eu-north-1
}

# Create EC2 instance in eu-west-1 
resource "aws_instance" "aws_instance_example2" {
  ami = "ami-0c55b159cbfafe1f0"
  instance_type = "t3.micro"
  provider = aws.eu-west-1
}

# Output public IP address of instance in eu-north-1
output "public_ip_instance1" {
  description = "IP address of EC2 instance 1"
  value = aws_instance.aws_instance_example1.public_ip
}

# Output public IP address of instance in eu-west-1
output "public_ip_instance2" {
  description = "IP address of EC2 instance 2"
  value = aws_instance.aws_instance_example2.public_ip
}