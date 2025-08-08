output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.vpc_id
}

output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value       = module.vpc.public_subnet_ids
}

output "alb_dns_name" {
  description = "DNS name of the Application Load Balancer"
  value       = module.alb.alb_dns_name
}

output "alb_zone_id" {
  description = "Zone ID of the Application Load Balancer"
  value       = module.alb.alb_zone_id
}

output "target_group_arn" {
  description = "ARN of the target group"
  value       = module.alb.target_group_arn
}

output "ec2_instance_ids" {
  description = "IDs of the EC2 instances"
  value       = module.ec2.instance_ids
}

output "ec2_public_ips" {
  description = "Public IP addresses of the EC2 instances"
  value       = module.ec2.public_ips
}

output "ec2_private_ips" {
  description = "Private IP addresses of the EC2 instances"
  value       = module.ec2.private_ips
}

output "key_pair_name" {
  description = "Name of the EC2 key pair"
  value       = module.ec2.key_pair_name
}

output "alb_security_group_id" {
  description = "ID of the ALB security group"
  value       = module.alb.alb_security_group_id
}

output "ec2_security_group_id" {
  description = "ID of the EC2 security group"
  value       = module.ec2.ec2_security_group_id
}
