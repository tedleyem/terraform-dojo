#ENV VARIABLES

variable "environment_name" {
    description = "Environment name used for tagging and isolation"
    type = string
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