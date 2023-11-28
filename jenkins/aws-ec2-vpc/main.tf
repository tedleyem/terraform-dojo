terraform {
  required_providers {
    aws = {
      source  = "aws"
      #version = "~> 5.25.0"
      version = "~> 4.67.0"
    }
  }
  required_version = ">= 1.6.4"
}

provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_instance" "jenkins_ec2" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
    Name = var.tagging_name
  }

  # Install Jenkins userdata script
  user_data = <<-EOF
    #!/bin/bash
    sudo apt update
    sudo apt install openjdk-8-jdk -y
    sudo apt install openjdk-11-jdk -y
    curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
    echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
    sudo apt update
    sudo apt install jenkins -y

    sudo ufw allow 8080
    sudo ufw enable
    EOF
}

resource "aws_vpc" "main_vpc" {
  cidr_block           = var.cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = var.tagging_name.main_vpc
  }
}
