terraform {
  backend "s3" {
    bucket = "sample-terraformstfile"
    key    = "sample/iam-role/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "sample_db"
  }
}