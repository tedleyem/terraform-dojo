terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.67.0"
   	  region = var.aws_region
    }
  }

  required_version = ">= 0.6.11"
}

provider "aws" {
   	region = var.aws_region
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
}

terraform {
	backend "s3" {
    	  bucket     = "terraform-state-jenkins-cluster"
        key        = "jenkins/dev/network/terraform.tfstate"
        region     = var.aws_region
        encrypt    = true
   }
}

resource "aws_vpc" "main_vpc" {
	cidr_block           = var.cidr_block
    enable_dns_support   = true
    enable_dns_hostnames = true

    tags = {
    	Name        = "jenkins-cluster-main_vpc"
    }
}
