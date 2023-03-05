# Configure the AWS Provider
terraform {
  backend "s3" {
    bucket = "aws-terraform-tfstate-v1"
    key    = "aws-terraform/terraform.tfstate"
    region = "eu-central-1"
  }
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}