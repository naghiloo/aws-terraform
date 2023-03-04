
resource "aws_lb" "load_balancer" {
    name = "${var.lb_name}"
    security_groups = ["${var.lb_security_group_id}"]
    subnets = var.subnets
}