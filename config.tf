terraform {
  backend "s3" {
    bucket         = "codeasone-infrastructure"
    key            = "terraform-infrastructure.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform-infrastructure-tfstate"
    profile        = "codeasone"
  }
}

provider "aws" {
  region  = "eu-west-1"
  profile = "codeasone"
}
