variable "env" {
  description = "Environment name (e.g., dev, test, prod)"
  type        = string
}

variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "The instance type for the EC2 instances"
  type        = string
  default     = "t2.micro"
}

variable "my_ip" {
  description = "Your IP address in CIDR format (e.g., '203.0.113.1/32') for SSH access"
  type        = string
}

variable "public_key" {
  description = "The public key content for the EC2 key pair (contents of your .pub file)"
  type        = string
}
