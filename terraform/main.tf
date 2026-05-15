# -------------------------------------------------
# Terraform Configuration
# -------------------------------------------------
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0.0"
    }
  }

  backend "s3" {
    bucket  = "tastylog-tfstate-bucket-kimty"
    key     = "tastylog-dev.tfstate"
    region  = "ap-northeast-1"
    profile = "terraform"
  }
}
# -------------------------------------------------
# provider
# -------------------------------------------------

provider "aws" {
  profile = "terraform"
  region  = "ap-northeast-1"
}

# -------------------------------------------------
# Variables
# -------------------------------------------------
variable "project" {
  type = string
}

variable "environment" {
  type = string
}
