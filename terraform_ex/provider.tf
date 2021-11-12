terraform {
  backend "s3" {
    bucket = "batch-artifact-repository-kiddcorp"
    key    = "state/remote-state"
	region = "us-east-1"
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}