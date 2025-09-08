provider "aws" {
  region = "ap-southeast-2" # Sydney region
}
resource "aws_s3_bucket" "callisbucket" {
 bucket = "callisbucket-12345"
}
terraform {
    backend "s3" {
        bucket = "callisbucket-12345"
        key    = "global/s3/terraform.tfstate"
        region = "ap-southeast-2"
    }
}