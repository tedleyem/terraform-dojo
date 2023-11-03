variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "Jenkins_2004"
}

variable "region" {
  description = "aws region to use"
  type        = string
  default     = "us-east-1"
}

variable "ami_image" {
  description = "aws ubuntu focal ami of choice"
  type        = string
  default     = "ami-0aa"
}
