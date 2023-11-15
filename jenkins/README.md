# Jenkins Terraform Project

This project spins up a fresh Jenkins server
EC2 Instance.

AWS Resources:
 VPC - 1 private and 1 public subnet
 VPC Bastion - host to access Jenkins instance
 EC2 - Jenkins master
 Internet Gateway

#### Things to note

 -- PUBLIC AND PRVIATE VPC
 This project secures the jenkins cluster and create a Private and Public VPC
 To have full controle of the network setup I created the vpc within the networking dir.

-- BASTION FOR ACCESS TO JENKINS
We deployed our Jenkins cluster inside the private subnets. Because the cluster lacks a public IP, instances won't be publicly available via the internet. So to take care of this, we'll set up a bastion host so that we can access Jenkins instances safely.



-- GRABBING LATEST UBUNTU AMI
 It uses the filter attribute in the data source to grab the latest ubuntu-focal-20.04-amd64 ami

-- Terraform state file
 The Terraform state files for this project are stored in cloud storage to help with access for team collaboration. The files can be changed and stored elsewhere. To learn more about the state files you can [read about terraform state here](https://developer.hashicorp.com/terraform/tutorials/state/state-cli)
