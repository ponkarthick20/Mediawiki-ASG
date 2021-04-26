variable "availability_zones" {
  # No spaces allowed between az names!
  default = "us-east-1a,us-east-1b,us-east-1c"
}
variable "asg_min" {
  default = "1"
}
variable "asg_max" {
  default = "3"
}

data "aws_availability_zones" "az" {
  state = "available"
}

variable "key_name" {
  default = "arun"
}

variable "region" {
  default = "us-east-1"
}
variable "instance_type" {
  default = "t2.micro"
}
# Amazon Linux AMI

variable "ami" {
  default = "ami-0001378efdafd5401"
}
#
# From other modules
#
variable "app_sg_id" {}

variable "app_elb_name" {}