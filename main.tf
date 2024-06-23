/*
provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  region = "us-east-2"
  alias  = "us_east_2"
}
*/

module "vpc_us_east_1" {
  source = "./vpc"
  providers = {
    aws = aws.us_east_1
  }
  region = "us-east-1"
  vpc_cidr_block = "10.30.0.0/16"
}

module "vpc_us_east_2" {
  source = "./vpc"
  providers = {
    aws = aws.us_east_2
  }
  region = "us-east-2"
  vpc_cidr_block = "10.40.0.0/16"
}

resource "aws_instance" "TestVM1" {
  provider               = aws.us_east_1
  ami                    = var.ami_us_east_1
  instance_type          = var.instance_type
  subnet_id              = module.vpc_us_east_1.public_subnet_id
  key_name               = var.key_name_us_east_1
  vpc_security_group_ids = [module.vpc_us_east_1.security_group_id]
  volume_tags            = var.volume_tags_us_east_1
  tags                   = var.tags_us_east_1
}

resource "aws_instance" "TestVM2" {
  provider               = aws.us_east_2
  ami                    = var.ami_us_east_2
  instance_type          = var.instance_type_us_east_2
  subnet_id              = module.vpc_us_east_2.public_subnet_id
  key_name               = var.key_name_us_east_2
  vpc_security_group_ids = [module.vpc_us_east_2.security_group_id]
  volume_tags            = var.volume_tags_us_east_2
  tags                   = var.tags_us_east_2
}
