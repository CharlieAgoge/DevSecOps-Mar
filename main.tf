provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "terraform_today_today" {
  bucket = "terraform-up-and-running-state-today-today"
}
