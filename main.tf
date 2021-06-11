# provider "aws" {
#   region = var.aws_region
# }

# provider "random" {}

# resource "random_pet" "table_name" {}

# resource "aws_dynamodb_table" "tfc_example_table" {
#   name = "${var.db_table_name}-${random_pet.table_name.id}"

#   read_capacity  = var.db_read_capacity
#   write_capacity = var.db_write_capacity
#   hash_key       = "UUID"

#   attribute {
#     name = "UUID"
#     type = "S"
#   }
# }
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = var.region
}

resource "aws_instance" "app_server" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}


