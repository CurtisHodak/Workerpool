variable "aws_region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "us-east-2"
}

variable "instance_ami" {
  description = "AMI ID for onboarding EC2 instances (only needed if using onboarding1/onboarding2)"
  type        = string
  default     = "ami-1234567890abcdef0"
}

variable "instance_type" {
  description = "Instance type for onboarding EC2 instances"
  type        = string
  default     = "t3.micro"
}

variable "worker_pool_config" {
  description = "Spacelift worker pool configuration token (SPACELIFT_TOKEN)"
  type        = string
  sensitive   = true
}

variable "worker_pool_private_key" {
  description = "Private key for Spacelift worker pool (SPACELIFT_POOL_PRIVATE_KEY)"
  type        = string
  sensitive   = true
}

variable "worker_pool_id" {
  description = "ID of the Spacelift worker pool"
  type        = string
}