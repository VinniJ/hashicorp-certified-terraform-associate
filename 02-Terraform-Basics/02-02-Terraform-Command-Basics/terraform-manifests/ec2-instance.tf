# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 3.21" # Optional but recommended in production
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = "af-south-1"
}

# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-0a797f6e4448b3b6f" # Amazon Linux in af-south-1, update as per your region
  instance_type = "t3.micro"
}
