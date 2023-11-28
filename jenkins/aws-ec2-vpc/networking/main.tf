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

module "subnet_module" {
	source     = "./modules"
    vpc_id     = aws_vpc.main_vpc.id
    vpc_cidr_block = aws_vpc.main_vpc.cidr_block
    availability_zones = var.availability_zones
    public_subnets_count = var.public_subnets_count
    private_subnets_count = var.private_subnets_count
    public_key = var.public_key
 }

varable "public_key" {}
module "subnet_module" {
	source     = "./modules"
    ...
    public_key = var.public_key
}