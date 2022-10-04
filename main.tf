provider "aws" {
    region = "ap-northeast-1"
}

# VPC
resource "aws_vpc" "main" {
    cider_block = "10.0.0.0/18"

    tops = {
        Name = "main"
    }
}

# Public Subnet 1
resource "aws_subnet" "public_1" {
    vpc_id = aws_vpc.main.id
    cider_block = "10.0.0.0/24"

    tags = {
        Name = "public_1"
    }
}

# Public Subnet 2
resource "aws_subnet" "public_2" {
    vpc_id = aws_vpc.main.id
    cider_block = "10.0.0.0/24"

    tags = {
        Name = "public_2"
    }
}

# Private Subnet 1
resource "aws_subnet" "private_1" {
    vpc_id = aws_vpc.main.id
    cider_block = "10.0.0.0/24"

    tags = {
        Name = "private_1"
    }
}

# Private Subnet 2
resource "aws_subnet" "private_2" {
    vpc_id = aws_vpc.main.id
    cider_block = "10.0.0.0/24"

    tags = {
        Name = "private_2"
    }
}

# Internet gateway
resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.main.id

    tags = {
        Name = "igw"
    }
}