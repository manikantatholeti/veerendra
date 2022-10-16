terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
 	region = "ap-south-1"
    access_key = "AKIAR4J6TIBMCMA3FLV2"
    secret_key = "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"
}

# Create a VPC
resource "aws_vpc" "test" {
  cidr_block = "192.172.0.0/16"
}
resource "aws_subnet" "test-subnet-1" {
  vpc_id     = aws_vpc.test.id # implicit dependecy
  cidr_block = "192.172.1.0/24"

  tags = {
    Name = "test-subnet-1"
  }
}

resource "aws_subnet" "test-subnet-2" {
  vpc_id     = aws_vpc.test.id # implicit dependecy
  cidr_block = "192.172.2.0/27"

  tags = {
    Name = "test-subnet-2"
  }
}

resource "aws_subnet" "test-subnet-3" {
  vpc_id     = aws_vpc.test.id # implicit dependecy
  cidr_block = "192.172.4.0/27"

  tags = {
    Name = "test-subnet-3"
  }
}

resource "aws_subnet" "test-subnet-4" {
  vpc_id     = aws_vpc.test.id # implicit dependecy
  cidr_block = "192.172.5.0/27"

  tags = {
    Name = "test-subnet-4"
  }
}

resource "aws_subnet" "test-subnet-5" {
  vpc_id     = aws_vpc.test.id # implicit dependecy
  cidr_block = "192.172.6.0/27"

  tags = {
    Name = "test-subnet-5"
  }
}

resource "aws_subnet" "test-subnet-6" {
  vpc_id     = aws_vpc.test.id # implicit dependecy
  cidr_block = "192.172.7.0/27"

  tags = {
    Name = "test-subnet-6"
  }
}