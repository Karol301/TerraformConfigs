#VPC
variable "cidr_block_vpc" {
  description = "CIDR block for VPC"
  type = string
}

variable "cidr_block_sub1" {
  description = "CIDR block for sub 1"
  type = string
}

variable "cidr_block_sub2" {
  description = "CIDR block for sub 2"
  type = string
}

#EKS
variable "desired_size" {
  description = "Initial number of EC2 instances in the Node Group"
  type = number
}

variable "min_size" {
  description = "Minimum number of instances in the Node Group"
  type = number  
}

variable "max_size" {
  description = "Maximum number of instances in the Node Group"
  type = number
}