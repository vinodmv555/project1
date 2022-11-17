# Terraform Block
terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket = "terrafrom-bucket-my-project"
    key    = "dev/project1-vpc/terraform.tfstate"
    region = "us-east-1" 
    dynamodb_table = "dev-project1-vpc"
    
  }
}

# Provider Block
provider "aws" {
  region = var.aws_region
}

