variable "name" {
  type = string
}

variable "cidr_block" {
  type = string
}

variable "availability_zones" {
  type = list(string)
  default = [ "a", "b", "c", "d", "e", "f" ]
}

# variable "enable_nat_gateway" {
#   type = bool
#   default = false
# }

# variable "enable_vpn_gateway" {
#   type = bool
#   default = false
# }