
resource "aws_elb" "app_elb" {
  name = "demo-app-elb"
  availability_zones = "${(data.aws_availability_zones.az.names)}"
  listener {
    instance_port = 80
    instance_protocol = "http"
    lb_port = 80
    lb_protocol = "http"
  }
  health_check {
    healthy_threshold = 2
    unhealthy_threshold = 2
    timeout = 3
    target = "HTTP:80/mediawiki/"
    interval = 10
  }
  security_groups = ["${var.app_sg_id}"]

}


output "app_elb_name" {
  value = "${aws_elb.app_elb.name}"
}

output "dns_name" {
  value = "${aws_elb.app_elb.dns_name}/mediawiki/"
}