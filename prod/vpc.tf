resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr
  enable_dns_hostname = true
  enable_dns_support  =  true

  tags = { 
    Name   = "${var.environment}-vpc"
    Environment = var.environment

    }

}



