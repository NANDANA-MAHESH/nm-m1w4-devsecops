terraform {
  cloud {
    organization = "nandana_mahesh_org"

    workspaces {
      name = "nm-m1w4-pipeline"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "devsecops_lab" {
  bucket = "nm-mahesh-devsecops-lab-2026-001"

  tags = {
    Owner       = "Nandana"
    Environment = "Lab"
    CostCentre  = "Cyber"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "devsecops_lab" {
  bucket = aws_s3_bucket.devsecops_lab.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

# rerun after sentinel tests
