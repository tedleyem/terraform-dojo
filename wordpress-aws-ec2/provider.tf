terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.22"
    }
  }
  backend "s3" {
    bucket                  = "wp-bucket-state"
    key                     = "wordpress-dev-state"
    region                  = "us-east-1"
    shared_credentials_file = "~/.aws/credentials"
    }
}

provider "aws" {
  region = "us-east-1"
}