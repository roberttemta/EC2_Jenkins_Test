
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.61.0"
    }
  }
}


provider "aws" {
  region = "us-east-2"
  #region = "us-east-1"
}