variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "tedley-sandbox-ec2"
}

variable "region" {
  description = "aws region to use"
  type        = string
  default     = "us-east-1"
}

