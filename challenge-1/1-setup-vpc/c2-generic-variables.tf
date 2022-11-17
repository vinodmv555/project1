# Input variables 

# AWS Region
variable "aws_region" {
  description = "Region where AWS resoruces to be created"
  type        = string
  default     = "us-east-1"
}

#Environment variable 
variable "environment" {
  description = "value Environment Variable used as a prefix"
  type        = string
  default     = "dev"
}

#Application information
variable "business_divsion" {
  description = "Information about the team"
  type        = string
  default     = "HR"
}
