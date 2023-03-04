variable "vpc_id" {}
variable "aws_region" {}

# aws_launch_configuration
variable "lc_name" {
  type = string
}

variable "ami" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "key_name" {
  type = string
}

variable "security_groups" {
  type = list(string)
}

# aws_autoscaling_group
variable "asg_name" {
  type = string
}

variable "min_size" {
  type = number
  default = 1
}

variable "max_size" {
  type = number
  default = 3
}

variable "desired_capacity" {
  type = number
  default = 1
}

variable "availability_zones" {
  type = list(string)
  default = [ "a", "b" ]
}

variable "target_group_arns" {
  type = list(string)
}

variable "health_check_type" {
  type = string
}

variable "force_delete" {
  type = bool
  default = true
}

variable "termination_policies" {
  type = list(string)
  default = [ "Default" ]
}

variable "zone_identifiers" {
  type = list(string)
}