terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}

# Provider AWS for remote state
provider "aws" {
  region = var.aws_region
}

# Provider Google for GCP resource
provider "google" {
  project = var.gcp_project_id
  region  = var.gcp_region
#  zone    = var.gcp_zone
}

