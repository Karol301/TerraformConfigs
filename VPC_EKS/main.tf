provider "aws" {
  region = eu-central-1
}

module "myvpc" {
  source = "../Modules/VPC_EKS"

  cidr_block_vpc = var.cidr_block_vpc
  cidr_block_sub1 = var.cidr_block_sub1
  cidr_block_sub2 = var.cidr_block_sub2
}