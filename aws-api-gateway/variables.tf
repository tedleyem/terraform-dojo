#ENV VARIABLES
variable "region" {
  description = "aws region to use"
  type        = string
  default     = "us-east-1"
}

variable "environment_name" {
    description = "Environment name used for tagging and isolation"
    type = string
}

variable "stage_name" {
  description = "Cloudwatch logs name for aws_api_gateway_stage resource"
  type    = string
}

variable "domain_name_prefix" {
  description = "Domain name prefix"
  type        = string
}

variable "domain_name" {
  default     = "example.com"
  description = "Custom domain name"
  type        = string
}

# local variables for tagging purposes
locals {
  tags = {
    Environment = "${var.environment_name}"
    Project     = "Terraform-API-Test"
    Department  = "DevOps"
    Owner  = "Tedley.Meralus"
  }
}