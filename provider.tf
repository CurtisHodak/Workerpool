terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.5.0" # allow v6
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.0.0"
    }
  }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
    CreatedBy = "Terraform-custom" }
  }

  # ignore_tags {
  #   keys         = ["Environment", "Owner"]
  #   key_prefixes = ["kubernetes.io/", "eks.amazonaws.com/"]
  # }

}


provider "azurerm" {
  features {}

  ignore_tags {
    keys = ["environment", "owner"]
  }
}