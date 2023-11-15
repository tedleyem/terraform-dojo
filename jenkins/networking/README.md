## SUBNETS
    count → The count meta-argument accepts a whole number, and creates that many instances of the resource or module. Here we are specifying 2 each to the variables private_subnets_count and public_subnets_count.
    map_public_ip_on_launch → Specify true to indicate that instances launched into the subnet should be assigned a public IP address.
    cidrsubnet() → cidrsubnet calculates a subnet address within a given IP network address prefix.
    element() → element retrieves a single element from a list.

# ROUTE TABLES
We will develop private and public route tables for fine-grained traffic management. This will enable instances deployed in private subnets to access the internet without being exposed to the general public.
How to create a public route table

First we need to establish an Internet gateway resource and link it to the VPC we generated previously. Then we need to define a public route table and a route that points all traffic (0.0.0.0/0) to the internet gateway. And lastly we need to link it with public subnets in our VPC so that traffic flowing from those subnets is routed to the internet gateway by creating a route table association.

## BASTION
    bastion security group resource – Newly generated EC2 instances do not allow SSH access.
    We will link a security group to the active instance in order to enable SSH access to the bastion hosts. Any inbound (ingress) traffic on port 22 (SSH) from anyplace (0.0.0.0/0) will be permitted by the security group. To improve security and prevent security breaches, you can substitute your own public IP address/32 or network address for the CIDR source block.
    aws_key_pair – To be able to connect to the bastion host using SSH and the private key, we added an SSH key pair when we created the EC2. Our public SSH key is used in the key pair. Using the sshkeygen command, you can also create a new one.
    aws_ssm_parameter – The Amazon 2 Linux machine image is used by the EC2 instance. The AMI ID is obtained from the AWS marketplace using the AWS AMI data source
    aws_instance –  Finally, we deploy our EC2 bastion instance with its defined configurations and access
    output – By specifying an output, we use the Terraform outputs functionality to show the IP address in the terminal session.