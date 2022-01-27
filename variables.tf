# variable "aws_region" {
#   type    = string
#   default = "us-west-1"
# }

# variable "db_table_name" {
#   type    = string
#   default = "terraform-learn"
# }

# variable "db_read_capacity" {
#   type    = number
#   default = 1
# }

# variable "db_write_capacity" {
#   type    = number
#   default = 1
# }
variable "instance_name" {
 description = "value of the name tag for the ec2 INSTANCE"
 type        = string
 default     = "Instance2"
}
variable "region" {
 description = "value of the region"
 type        = string
 default     = "ap-south-1"
}
variable "ami" {
 description = "value of the ami id"
 type        = string
 default     = "ami-08ee6644906ff4d6c "
}
variable "instance_type" {
 description = "value of instance type"
 type        = string
 default     = "t2.micro"
}
