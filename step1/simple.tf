terraform {
  required_version = ">= 0.12"
  # Define local and remote providers here
  required_providers {
    aws = {
      version = "2.7.0"
      source  = "hashicorp/aws"
    }
  } 
}

# Configure providers
provider "aws"{
    region = "us-west-1"
}

provider "aws" {
    alias = "europa"
    region = "eu-west-1"
}


resource "aws_s3_bucket" "europa_bucket" {
    # Using a different provider, not the default
    provider = aws.europa
    bucket = "supermegabucketeuropa"
}


resource "aws_s3_bucket" "default_bucket" {
    bucket = "supermegabucketdefault"
}

# Find an existing resource
data "aws_vpc" "default_vpc" {
    cidr_block = "10.0.0.0/16"
}