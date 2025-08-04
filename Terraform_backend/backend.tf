terraform {
  backend "s3" {
    bucket = "mybucket"
    key    = "path/to/my/key"
    region = "eu-north-1"
    dynamodb_table = "terraform-lock"
  }
}
