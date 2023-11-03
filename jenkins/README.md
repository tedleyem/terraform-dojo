# Jenkins Terraform Project

This project spins up a fresh Jenkins server
EC2 Instance.

AWS Resources:
 VPC - 1 private and 1 public subnet
 VPC Bastion - host to access Jenkins instance
 EC2 - Jenkins master
 Internet Gateway


It uses the filter attribute in the data source
to grab the latest ubuntu-focal-20.04-amd64 ami



    count → The count meta-argument accepts a whole number, and creates that many instances of the resource or module. Here we are specifying 2 each to the variables private_subnets_count and public_subnets_count.
    map_public_ip_on_launch → Specify true to indicate that instances launched into the subnet should be assigned a public IP address.
    cidrsubnet() → cidrsubnet calculates a subnet address within a given IP network address prefix.
    element() → element retrieves a single element from a list.