terraform {
  backend "s3" {}
}

# VPC Module
module "vpc" {
  source = "./vpc"
  
  env        = var.env
  cidr_block = var.cidr_block
}

# ALB Module
module "alb" {
  source = "./alb"
  
  env        = var.env
  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.public_subnet_ids
}

# EC2 Module  
module "ec2" {
  source = "./ec2"
  
  env                   = var.env
  ami_id                = var.ami_id
  instance_type         = var.instance_type
  subnet_ids            = module.vpc.public_subnet_ids
  vpc_id                = module.vpc.vpc_id
  alb_security_group_id = module.alb.alb_security_group_id
  my_ip                 = var.my_ip
  public_key            = var.public_key
}

# Attach EC2 instances to ALB target group
resource "aws_lb_target_group_attachment" "ec2_attachment" {
  count            = length(module.ec2.instance_ids)
  target_group_arn = module.alb.target_group_arn
  target_id        = module.ec2.instance_ids[count.index]
  port             = 80

  depends_on = [
    module.alb,
    module.ec2
  ]
}
