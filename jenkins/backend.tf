data "aws_ami" "ubuntu" {
    most_recent = true

    filter {
        name   = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }

    owners = ["099720109477"] # Canonical
}

resource "aws_vpc" "jenkins_vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = var.tagging_name
  }
}

# s3 bucket
resource "aws_s3_bucket" "jenkins-s3" {
  bucket     = var.s3_bucket_name

  lifecycle {
    prevent_destroy = true
  }

  versioning {
    enabled = true
  }

  tags = {
    Name        = var.tagging_name
    Environment = "Dev"
  }
}

resource "server_side_encryption_configuration" "sse_config" {
    rule {
      apply_server_side_encryption_by_default {
          sse_algorithm = "AES256"
      }
    }
}

resource "aws_s3_bucket_versioning" "jenksins-s3-bucket-version" {
  bucket = var.s3_bucket_name
  versioning_configuration {
    status = "Enabled"
  }
}