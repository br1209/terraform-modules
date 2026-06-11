variable "name" {
  description = "my_vpc"
  type = string
  default = "my_vpc"
}

variable "vpc_cidr" {
  description = "cidr range"
  type = string
  default = "10.0.0.0/16"
}