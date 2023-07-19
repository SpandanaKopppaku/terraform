terraform {
  backend "s3" {
    bucket         = "b54-tf-state"
    key            = "05-remote/terraform.tfstate"     # This is like the folder path that you prefer giving
    region         = "us-east-1"
  }
}

provider "aws" {
    region  = "us-east-1"
}