terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
provider "aws" {
    region = "ap-south-1"
}
resource "aws_instance" "main" {
  ami           = "ami-062df10d14676e201" # us-west-2
  instance_type = "t2.micro"
  key_name  = "manikey"
  vpc_security_group_ids = ["sg-05b02cc6dcca24cc8"]
  tags = {
    "Name" = "chandu"
  }
}