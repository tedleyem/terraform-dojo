######################################################################
# Output
######################################################################

output "alb_dns_name" {
  value       = module.alb.lb_dns_name
  sensitive   = false
  description = "ALB DNS Name to connect frontend"
}

output "ec2_ssh_ip" {
  value       = data.aws_instances.wp-web.public_ips
  sensitive   = false
  description = "EC2 Pulic IP for SSH"
}

output "db_Username" {
  value       = module.db.db_instance_username
  sensitive   = true
  description = "Database Username"
}

output "db_Name" {
  value       = module.db.db_instance_name
  sensitive   = false
  description = "Database Name"
}

output "db_Password" {
  value       = module.db.db_instance_password
  sensitive   = true
  description = "Database password"
}

output "db_Connection_Name" {
  value       = module.db.db_instance_endpoint
  sensitive   = false
  description = "Database connection string"
}
