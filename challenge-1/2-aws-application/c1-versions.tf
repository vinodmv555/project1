# Terraform Block
terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "terrafrom-bucket-my-project"
    key    = "dev/project2-app1/terraform.tfstate"
    region = "us-east-1"

    dynamodb_table = "dev-project2-app1"
  }
}

# Provider Block
provider "aws" {
  region  = var.aws_region
  profile = "default"
}

