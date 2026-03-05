terraform {
   required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
    }
   } 
}
provider "aws" {
    region = "us-east-1"
}
resource "aws_s3_bucket"
"security_logs" {
    bucket = "yosin-security-logs-2026"
    tags = {
        Name         = "SecurityLogs"
        Environment  = "Dev"
        ManagedBy    = "Terraform"
    }
}    
