terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  profile = "default"  
  region  = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "craig-tf-test-bucket"

  tags = {
    Name        = "craig_bucket"
    Environment = "dev"
  }
}
