terraform {
  backend "s3" {
    bucket         = "codeasone-infrastructure"
    key            = "terraform-shared.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform-shared-tfstate"
    profile        = "codeasone"
  }
}

provider "aws" {
  region  = "eu-west-1"
  profile = "codeasone"
}
