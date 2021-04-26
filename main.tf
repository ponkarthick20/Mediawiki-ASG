# Update the porfile name and the credentials file path here
provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "C:/Users/611204/.aws/credentials"
  profile                 = "karthi"
}

module "security" {
  source = "./security"
  
}

module "load_balancer" {
  source = "./load_balancer"
  app_sg_id = "${module.security.app_sg_id}"
}

module "auto_scaling" {
  source = "./auto_scaling"
  app_elb_name = "${module.load_balancer.app_elb_name}"
  app_sg_id = "${module.security.app_sg_id}"
  
}

output "final" {
 	value = "${module.load_balancer.dns_name}"
}