variable "name" {
  type = string
}

variable "availability_zone" {
  type = string
}

variable "cidr_block" {
  type = string
}

variable "vpc_id" {
  description = "The ID of the VPC where the subnets will be created"
}


variable "map_public_ip_on_launch" {
  type = bool
  default = true
}