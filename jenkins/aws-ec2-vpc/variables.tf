variable "instance_name" {
  description = "Name to use for tagging"
  type        = string
  default     = "jenkins"
}

variable "aws_region" {
  description = "aws region to use"
  default     = "us-east-1"
}

variable "tagging_name" {
  description = "aws region to use"
  default     = "jenkins-ec2-cluster"
}

variable "s3_bucket_name" {
  description = "aws S3 bucket name"
  default     = "jenkins-s3-bucket"
}

variable "s3_bucket_state" {
  default = "jenkins-cluster/terraform.tfstate"
}

variable "cidr_block" {
  default = "172.0.0.0/16"
}

variable "private_subnets_count" {
  default = "2"
}

variable "public_subnets_count" {
  default = "2"
}

variable "vpc_id" {
  default = ""
}

variable "vpc_cidr_block" {
  default = ""
}