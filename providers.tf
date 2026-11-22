terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"

  default_tags {
    tags = {
      Project   = "bluewater-lab"
      ManagedBy = "terraform"
      Owner     = "luke-lynn"
    }
  }
}