variable "name" {
  type = string
}

variable "security_groups" {
  type = list(string)
}

variable "subnets" {
  type = list(string)
}

variable "port" {
  type = number
}

variable "protocol" {
  type = string
}


variable "action_type" {
  type = string
}

variable "target_group_arn"{
  type = string
}
