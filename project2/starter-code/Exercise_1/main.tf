# TODO: Designate a cloud provider, region, and credentials
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}


# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "ec_t2" {
  count         = 4
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0a4f0a65ad88e8821"
  tags = {
    "Project" = "Udacity-p2"
    "Name"    = "Udacity T2"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
# resource "aws_instance" "tc_m4" {
#   count         = 2
#   ami           = "ami-0cff7528ff583bf9a"
#   instance_type = "m4.large"
#   subnet_id     = "subnet-0a4f0a65ad88e8821"
#   tags = {
#     "Project" = "Udacity-p2"
#     "Name"    = "Udacity M4"
#   }
# }