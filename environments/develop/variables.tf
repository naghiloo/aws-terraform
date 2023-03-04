variable "aws_region" {
  type = string
}

variable "aws_ami" {
  type = string
}

variable "aws_instance_type" {
  type = string
}

# vpc
variable "vpc_name" {
  type = string
}

variable "vpc_cidr_block" {
  type = string
}

#igw
variable "igw_name" {
  type = string
}

# subnet
variable "subnet_public_name" {
  type = string
}

variable "subnet_public_cidr_block" {
  type = string
}

variable "subnet_public_az" {
  type = string
}

# security_group
variable "sg_name" {
  type = string
}

# security_group_rule
variable "sgr_type" {
  type = string
}

variable "sgr_from_port" {
  type = number
}

variable "sgr_to_port" {
  type = number
}

variable "sgr_protocol" {
  type = string  
}

variable "sgr_cidr_block" {
  type = list(string)
}

# key_pair
variable "key_name" {
  type = string
}

# asg
variable "lc_name" {
  type = string
}

variable "asg_name" {
  type = string
}

variable "asg_health_check_type" {
  type = string
}

# lb
variable "lb_name" {
  type = string
}

variable "lb_action_type" {
  type = string
}

variable "lb_protocol" {
  type = string
}

variable "lb_port" {
  type = number
}

# target_group
variable "tg_name" {
  type = string
}

variable "tg_protocol" {
  type =string
}

variable "tg_port" {
  type = number
}