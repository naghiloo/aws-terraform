resource "aws_lb_listener" "lb_listener" {
  load_balancer_arn = "${aws_alb.alb.arn}"
  port              = var.port
  protocol          = var.protocol
  default_action {
    target_group_arn = var.target_group_arn
    type             = var.action_type
  }
}

