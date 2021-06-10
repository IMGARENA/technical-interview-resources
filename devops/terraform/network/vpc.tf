resource "aws_vpc" "vpc" {
  cidr_block = "192.1.0.0/16"
}

resource "aws_subnet" "subnet_1" {
  cidr_block = "192.1.0.0/24"
  vpc_id     = aws_vpc.vpc.id
}

resource "aws_subnet" "subnet_2" {
  cidr_block = "192.1.1.0/24"
  vpc_id     = aws_vpc.vpc.id
}

resource "aws_subnet" "subnet_3" {
  cidr_block = "192.1.2.0/24"
  vpc_id     = aws_vpc.vpc.id
}
