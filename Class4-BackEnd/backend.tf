terraform {
  backend "s3" {
    bucket = "hello-kaizen1234"
    key    = "ohio/terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "lock-state"
  }
}
