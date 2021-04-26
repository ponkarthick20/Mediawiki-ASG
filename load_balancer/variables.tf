
variable "app_sg_id" {}

variable "availability_zones" {
  # No spaces allowed between az names!
  default = "us-east-1a"
}

data "aws_availability_zones" "az" {
  state = "available"
}
