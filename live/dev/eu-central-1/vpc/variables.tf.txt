variable "project" {
  description = "The project name."
  type        = string
  default     = "A new project"
}


variable "vpc_cidr" {
  description = "The VPC cidr."
  type        = string
  default     = "10.0.0.0/16"
}

variable "region" { 
  description = "The region to deploy to."
  type        = string
  default     = "eu-central-1"
}

variable "environment" { 
  description = "The environment to deploy to."
  type        = string
  default     = "dev"
}