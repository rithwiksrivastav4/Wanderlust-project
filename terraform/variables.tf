variable "aws_region" {
  description = "AWS region where resources will be provisioned"
  default     = "ap-south-1"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  default     = "ami-02d26659fd82cf299"
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  default     = "t2.large"
}

variable "build_id" {
  type    = string
  default = "1"
}


