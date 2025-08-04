terraform {
  backend "s3" {
    bucket = "Karol301-bucket"
    key    = "myproject/terraform.tfstate"
    region = "eu-north-1"
    dynamodb_table = "terraform-lock"
  }
}
