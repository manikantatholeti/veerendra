# This is the aws provider
provider "aws" {
 	region = "ap-south-1"
    access_key = "AKIAR4J6TIBMKQYLGK5G"
    secret_key = "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"
}


# This is the s3 bucket resource
resource "aws_s3_bucket" "qt-devops-1"  {
    bucket = "12mn"
    tags = {
            Name        = "My bucket from tf"
            Environment = "Dev1"
    }
}
