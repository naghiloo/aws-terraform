variable "policy_name" {
  type = string
}

variable "policy_type" {
  type = string
}

variable "adjustment_type" {
  type = string
}

variable "estimated_instance_warmup" {
  type = number
  default = 300
}

variable "predefined_metric_type" {
  type = string
}

variable "target_value" {
  type = number
}

variable "autoscaling_group_name" {}