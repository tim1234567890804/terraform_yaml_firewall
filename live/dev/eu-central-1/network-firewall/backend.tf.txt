terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "prod/eu-central-1/networking/terraform.tfstate" #This state file will conflict with VPC module.
    region         = "eu-central-1"
    encrypt        = true
    use_lockfile   = true
  }
}
