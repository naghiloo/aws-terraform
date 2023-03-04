resource "aws_launch_configuration" "lunch_configuration" {
    name = var.lc_name
    image_id = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    security_groups = var.security_groups

    lifecycle {
      create_before_destroy = true
    }
  
}

resource "aws_autoscaling_group" "autoscaling_group" {
  name = var.asg_name
  launch_configuration = aws_launch_configuration.lunch_configuration.name
  min_size = var.min_size
  max_size = var.max_size
  desired_capacity = var.desired_capacity
  availability_zones = [ "eu-central-1a" ]
  target_group_arns = var.target_group_arns
  health_check_type = var.health_check_type
  force_delete = var.force_delete
  termination_policies =  var.termination_policies
}