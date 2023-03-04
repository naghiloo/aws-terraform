# vpc
variable "vpc_name" {
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

# key_pair
variable "key_name" {
  type = string
}

# ec2
variable "ec2_elf_name" {
  type = string
}

variable "ec2_ami" {
  type = string
}

variable "instance_type" {
  type = string
}