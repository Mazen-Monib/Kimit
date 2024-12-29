provider "aws" {
  # Specify the AWS region
  region = "us-west-2"
}

resource "aws_vpc" "main" {
  # CIDR block for the VPC
  cidr_block = "10.0.0.0/16"

  # Enable DNS support
  enable_dns_support = true

  # Enable DNS hostnames
  enable_dns_hostnames = true

  # Tags for the VPC
  tags = {
    Name = "my-vpc"
  }
}

resource "aws_subnet" "public" {
  # Reference the VPC ID
  vpc_id     = aws_vpc.main.id

  # CIDR block for the subnet
  cidr_block = "10.0.1.0/24"

  # Specify that this is a public subnet
  map_public_ip_on_launch = true

  # Availability zone for the subnet
  availability_zone = "us-west-2a"

  # Tags for the subnet
  tags = {
    Name = "my-public-subnet"
  }
}

resource "aws_internet_gateway" "igw" {
  # Reference the VPC ID
  vpc_id = aws_vpc.main.id

  # Tags for the internet gateway
  tags = {
    Name = "my-igw"
  }
}

resource "aws_route_table" "public" {
  # Reference the VPC ID
  vpc_id = aws_vpc.main.id

  # Tags for the route table
  tags = {
    Name = "my-public-route-table"
  }
}

resource "aws_route" "internet_access" {
  # Reference the route table ID
  route_table_id = aws_route_table.public.id

  # Define the destination CIDR block
  destination_cidr_block = "0.0.0.0/0"

  # Reference the internet gateway
  gateway_id = aws_internet_gateway.igw.id
}

resource "aws_route_table_association" "public" {
  # Reference the subnet ID
  subnet_id = aws_subnet.public.id

  # Reference the route table ID
  route_table_id = aws_route_table.public.id
}
