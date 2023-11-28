output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.jenkins_ec2.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.jenkins_ec2.public_ip
}

output "vcp_id" {
  description = "Checking the VPC created after apply"
  value       = aws_vpc.jenkins_vpc.id
}


output "vpc_cidr_block" {
  value = aws_vpc.main_vpc.cidr_block
}

