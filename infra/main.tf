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

resource "aws_s3_bucket" "bad_bucket" {
  bucket = "nm-hard-test-bucket-001"
}
# retrigger sentinel test
# advisory retest
# soft mandatory evidence
