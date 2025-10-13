terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.65.0"
    }
    null = {
      source  = "hashicorp/null" # or your chosen namespace
      version = "~> 3.1"         # Replace with a suitable version constraint
    }
  }
}

provider "aws" {
  region = var.aws_region
}
