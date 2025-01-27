provider "aws" {
    region = "us-east-1"
  
}
resource "aws_vpc" "vpc-terraform" {
    cidr_block = "10.0.0.0/16"

    tags = {
        Name = "terraform-vpc"
    }
  
}

resource "aws_internet_gateway" "IGW-terraform" {
    vpc_id = aws_vpc.vpc-terraform.id

    tags = {
      Name = "main"
    }
  
}