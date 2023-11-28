variable "vpc_id" {
  default = ""
}

variable "vpc_cidr_block" {
  default = ""
}

variable "public_subnet" {
  default = "2"
}

variable "private_subnet" {
  default = "2"
}

variable "vpc_id" {}
variable "vpc_cidr_block" {}
variable "private_subnets_count" {}
variable "public_subnets_count" {}
variable "availability_zones" {}
variable "public_subnets" {}
variable "public_key" {}

variable "availability_zones" {
  default     = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d", "us-east-1e"]
}