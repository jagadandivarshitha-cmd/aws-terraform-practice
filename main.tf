terraform {
    required_providers {
        aws={
            source = "hashicorp/aws"
            version = "~> 5.0"
        }
    }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "my_bucket"{
    bucket = var.bucket_name
    tags = {
        Environment = var.environment
    }
}