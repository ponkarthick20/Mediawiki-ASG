#Update the region where resource is being created
variable "region" {
  default = "us-east-1"
}
variable "ip_range" {
  default = "0.0.0.0/0" # Change to your IP Range!
}
variable "availability_zones" {
  # No spaces allowed between az names!
  default = "us-east-1a,us-east-1b,us-east-1c"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "asg_min" {
  default = "1"
}
variable "asg_max" {
  default = "1"
}

# Update the key pair name Here

variable "asg_desired" {
  default = "1"
}
