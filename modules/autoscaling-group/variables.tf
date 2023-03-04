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

variable "create_before_destroy" {
  type = string
  default = true
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

