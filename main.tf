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

# Route Table

resource "aws_route_table" "public_rtb" {
    vpc_id = aws_vpc.main.id

    route {
        cider_block = "0.0.0.0/0"
        gateway_id = aws_internet_geteway.igw.id
    }

    tags = {
        Name = "public_rtb"
    }
}

resource "aws_route_table" "private_rtb" {
    vpc_id = "aws_vpc.main.id"

    route {
        cider_block = "0.0.0.0/0"
        gateway_id = aws_internet_geteway.igw.id
    }

    tags = {
        Name = "private_rtb"
    }
}

resource "aws_route_table" "default_rtb" {
    vpc_id = aws_vpc.main.id

    route {
        cider_block = "0.0.0.0/0"
        gateway_id = aws_internet_geteway.igw.id
    }

    tags = {
        Name = "default_rtb"
    }
}

# Security Group

resource "aws_security_group" "db_sgr" {
    vpc_id = aws_vpc.main.id
        
    tags = {
        Name = "db_sgr"
    }
}

resource "aws_security_group" "alb_sgr" {
    vpc_id = aws_vpc.main.id
        
    tags = {
        Name = "alb_sgr"
    }
}

resource "aws_security_group" "ecs_sgr" {
    vpc_id = aws_vpc.main.id
        
    tags = {
        Name = "ecs_sgr"
    }
}