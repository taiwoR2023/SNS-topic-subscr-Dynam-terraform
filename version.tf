provider "aws" {
  region = var.region
  profile = "default"
}
terraform {
  backend "s3" {
    bucket = "11-28-23-terraform"
    key    = "Prac/Prac.tfstate"
    region = "us-east-1"
    dynamodb_table = "11-28-23-s3lock"
  }
}
