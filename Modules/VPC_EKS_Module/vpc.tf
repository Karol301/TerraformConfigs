resource "aws_vpc" "myvpc" {
  cidr_block = var.cidr_block_vpc
}

resource "aws_subnet" "mysub1" {
  vpc_id = aws_vpc.myvpc.id
  cidr_block = var.cidr_block_sub1
  availability_zone = "eu-central-1a"
}

resource "aws_subnet" "mysub2" {
  vpc_id = aws_vpc.myvpc.id
  cidr_block = var.cidr_block_sub2
  availability_zone = "eu-central-1b"
}

resource "aws_internet_gateway" "myigw" {
  vpc_id = aws_vpc.myvpc.id
}

resource "aws_route_table" "myrt" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.myigw
  }
}

resource "aws_route_table_association" "mysub1_rt" {
  subnet_id = aws_subnet.mysub1.id
  route_table_id = aws_route_table.myrt.id
}


resource "aws_route_table_association" "mysub2_rt" {
  subnet_id = aws_subnet.mysub2.id
  route_table_id = aws_route_table.myrt.id
}