# Deploy WordPress on AWS EC2 with Cloudflare domain through Terraform

This repository contains AWS infrastructure for WordPress
This repo is used for a blog post on [How to Deploy a Wordpress website on AWS]()

## How to use this example

- Run `terraform init`
- Run `terraform plan` and review the changes
- Run `terraform apply`

## Structure
This repository provides the minimal set of resources, which may be required for starting comfortably developing the process of new IaC project:

  alb.tf - AWS Application and Network Load Balancer Terraform module

  asg.tf - AWS Auto Scaling Group (ASG) Terraform module

  efs.tf - Provides an Elastic File System (EFS) File System resource

  output.tf - Terraform Output Values

  rds.tf - AWS RDS Terraform module

  security_group.tf - AWS EC2-VPC Security Group Terraform module

  vpc.tf - AWS VPC Terraform module

  variables.tf - variables used in Terraform. Customize it for your project data !!!

## S3 bucket
```
backend "s3" {
    bucket         = "wp-dev-bucket"
    key            = "wp-dev-com.tfstate"
    region         = "us-east-1"
    encrypt        = "true"
    dynamodb_table = "ecs-terraform-remote-state-dynamodb"
  }
```
It will also use an S3 bucket that will be used as a remote store for our Terraform state. This allows multiple users to work with one set of Infrastructure as Code without causing conflicts.


### Cleaning up

You can destroy this WordPress by running:

```bash
terraform plan -destroy
terraform destroy  --force
```

### TO-DO
Configure SSL Certs
  acm.tf - AWS Certificate Manager Terraform module