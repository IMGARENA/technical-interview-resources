resource "aws_instance" "server_dev" {
  ami                         = "ami-034cbbcab987d589f"
  instance_type               = "m5.large"
  associate_public_ip_address = false
  monitoring                  = false
  subnet_id                   = "subnet-0be3be45b79297320" // The ID of subnet_1 created from vpc.tf
}

resource "aws_instance" "server_staging" {
  ami                         = "ami-034cbbcab987d589f"
  instance_type               = "m5.large"
  associate_public_ip_address = true
  monitoring                  = true
  subnet_id                   = "subnet-1051beacb71417630" // The ID of subnet_2 created from vpc.tf
}

resource "aws_instance" "server_prod_1" {
  ami                         = "ami-034cbbcab987d589f"
  instance_type               = "q5.2xlarge"
  associate_public_ip_address = true
  monitoring                  = true
  subnet_id                   = "subnet-0be3be45b79297320" // The ID of subnet_1 created from vpc.tf
}

resource "aws_instance" "server_prod_2" {
  ami                         = "ami-034cbbcab987d589f"
  instance_type               = "q5.2xlarge"
  associate_public_ip_address = true
  monitoring                  = true
  subnet_id                   = "subnet-1051beacb71417630" // The ID of subnet_2 created from vpc.tf
}

resource "aws_instance" "server_prod_3" {
  ami                         = "ami-034cbbcab987d589f"
  instance_type               = "q5.2xlarge"
  associate_public_ip_address = true
  monitoring                  = true
  subnet_id                   = "subnet-a055e730ba1b13637" // The ID of subnet_3 created from vpc.tf
}
