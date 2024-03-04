provider "aws" {
  region = var.region
}

terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

resource "random_integer" "bucket_suffix" {
  min = 0
  max = 9999  # Adjust the range as needed
}

terraform {
  backend "s3" {
    bucket  = "terraform-state-bucket-4985-unique-name"
    key     = "terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
    # dynamodb_table = "terraform-up-and-running-locks"
  }
  # backend "local" {}
}
# Create an S3 bucket
resource "aws_s3_bucket" "my_action_bucket" {
  bucket = "terraform-state-bucket-${random_integer.bucket_suffix.result}-unique-name"

  lifecycle {
    prevent_destroy = true
  }
}
