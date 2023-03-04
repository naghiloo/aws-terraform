resource "aws_lb_target_group" "target_group" {
  name = var.name
  protocol = var.protocol
  port = var.port
  vpc_id = var.vpc_id
 }