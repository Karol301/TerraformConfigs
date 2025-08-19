provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "aws_instance_example" {
  ami = "ami-0c55b159cbfafe1f0"
  instance_type = "t3.micro"
  subnet_id = ""
  key_name = "aws_login"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "Karol301-bucket"
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}