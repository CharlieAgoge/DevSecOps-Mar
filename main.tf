provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "terraform23" {
  bucket = "terraform-up-and-running-state-today-today"
}
resource "aws_s3_bucket" "terraform_" {
  bucket = "terraform23"
}
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraform-up-and-running-state-today-today"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}
