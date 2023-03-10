# Configure the AWS Provider
terraform {
  backend "s3" {
    bucket = "aws-terraform-tfstate-v1"
    key    = "aws-terraform/terraform.tfstate"
    region = var.aws_region
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
  shared_config_files      = ["~/.aws/config"]
  shared_credentials_files = ["~/.aws/credentials"]

}