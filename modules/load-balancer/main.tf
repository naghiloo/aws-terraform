
resource "aws_lb" "load_balancer" {
    name = "${var.name}"
    security_groups = var.security_groups
    subnets = var.subnets
}